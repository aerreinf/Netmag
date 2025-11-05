unit frmuAssortimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, StdCtrls, Buttons, ExtCtrls;

type
  TfrmAssortimento = class(TForm)
    dsAssort: TDataSource;
    dbgAssort: TDBGrid;
    pnlCtrl: TPanel;
    bbEsci: TBitBtn;
    bbRiempi: TBitBtn;
    stAssortQta: TStaticText;
    dsColori: TDataSource;
    dsTaglia: TDataSource;
    Button1: TButton;
    procedure bbRiempiClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   private
    Procedure Riempire;
   public
    { Public declarations }
  end;

var
  frmAssortimento: TfrmAssortimento;

implementation

{$R *.DFM}

procedure TfrmAssortimento.bbRiempiClick(Sender: TObject);
Begin
 Riempire;
End;

procedure TfrmAssortimento.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmAssortimento.Riempire;
Var
 iCntrT: Integer;
 iTotale: Integer;
begin
 TRY
  dsAssort.DataSet.Last;
  While Not(dsAssort.DataSet.BoF) Do
  Begin
   dsAssort.DataSet.Edit;
   dsAssort.DataSet.FieldByName('TAGLIA01').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA02').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA03').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA04').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA05').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA06').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA07').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA08').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA09').AsInteger:=0;
   dsAssort.DataSet.FieldByName('TAGLIA10').AsInteger:=0;
   dsAssort.DataSet.Post;
   dsAssort.DataSet.Prior;
  End;
 Except
  Beep;
 End;
 dsColori.DataSet.First;
 While Not (dsColori.DataSet.EOF) Do
 Begin

  If Not(dsAssort.DataSet.Locate('COLORE',
                 dsColori.DataSet.FieldByName('COLORE').AsString,[]))
   Then Begin
         dsAssort.DataSet.Insert;
         dsAssort.DataSet.FieldByName('COLORE').AsString:=
                 dsColori.DataSet.FieldByName('COLORE').AsString;
         dsAssort.DataSet.Post;
        End;
  dsColori.DataSet.Next;
 End;


 stAssortQta.Caption:='Totale: 0';
 If (dsTaglia.DataSet.IsEmpty)
  Then Exit;
 dsTaglia.DataSet.First;
 For iCntrT:=1 To 10 Do
 Begin
  If Not(dsTaglia.DataSet.Eof)
   Then dbgAssort.Columns[iCntrT].Title.Caption:=
              dsTaglia.DataSet.FieldByName('DESCR').AsString
   Else dbgAssort.Columns[iCntrT].Title.Caption:='-';

   dsTaglia.DataSet.Next;

 End;

 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA01').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA01').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA02').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA02').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA03').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA03').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA04').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA04').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA05').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA05').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA06').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA06').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA07').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA07').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA08').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA08').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA09').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA09').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA10').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA10').AsInteger;
  dsAssort.DataSet.Next;
 End;
 stAssortQta.Caption:='Totale: '+IntToStr(iTotale);

end;

procedure TfrmAssortimento.FormShow(Sender: TObject);
begin
  Riempire;
end;

procedure TfrmAssortimento.Button1Click(Sender: TObject);
var
itotale : integer;
begin
   dsAssort.DataSet.Post;

 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA01').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA01').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA02').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA02').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA03').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA03').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA04').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA04').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA05').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA05').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA06').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA06').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA07').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA07').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA08').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA08').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA09').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA09').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA10').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA10').AsInteger;
  dsAssort.DataSet.Next;
 End;
 stAssortQta.Caption:='Totale: '+IntToStr(iTotale);

end;

end.
