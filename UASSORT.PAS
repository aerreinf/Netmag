unit UAssort;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBTable, StdCtrls, Grids, DBGrids, Mask, DBCtrls,
  ExtCtrls, IBQuery, IBUpdateSQL;

type
  TfAssort = class(TForm)
    DsAssort: TDataSource;
    dbgAssort: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1TAGLIA: TFloatField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    IBQuery3: TIBQuery;
    IBQuery3COLORE: TIBStringField;
    IBQuery3DESCR: TIBStringField;
    IBQuery3CODICE_ARTICOLO: TIBStringField;
    Edit8: TEdit;
    DataSource2: TDataSource;
    IBQuery2: TIBDataSet;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    IBQuery2TAGLIA01: TIntegerField;
    IBQuery2TAGLIA02: TIntegerField;
    IBQuery2TAGLIA03: TIntegerField;
    IBQuery2TAGLIA04: TIntegerField;
    IBQuery2TAGLIA05: TIntegerField;
    IBQuery2TAGLIA06: TIntegerField;
    IBQuery2TAGLIA07: TIntegerField;
    IBQuery2TAGLIA08: TIntegerField;
    IBQuery2TAGLIA09: TIntegerField;
    IBQuery2TAGLIA10: TIntegerField;
    IBQuery2COLORE: TIBStringField;
    IBQuery2PK_CODICE: TIntegerField;
    Button5: TButton;
    DBNavigator2: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure IBQuery2BeforeEdit(DataSet: TDataSet);
    procedure IBQuery2BeforeDelete(DataSet: TDataSet);
    procedure IBQuery2BeforeInsert(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
procedure Totali;
  public
    { Public declarations }
  end;

var
  fAssort: TfAssort;

implementation

uses uAzDM, frmuVisTgCol;

{$R *.DFM}

procedure TfAssort.Button1Click(Sender: TObject);
Var
 iCntrT: Integer;
 iTotale: Integer;
begin
 Edit1.Text := '0';
 If (fVisTgCol.dstg.DataSet.IsEmpty)
  Then Exit;
//IBQuery2.Close;
//IBQuery2.ParamByName('CA').AsString := DBEdit1.Text;
IBQuery2.Open;
//IBQuery2.First;

//IBQuery1.Close;
//IBQuery1.ParamByName('CA').AsString := DBEdit1.Text;
IBQuery1.Open;
IBQuery1.First;

DataSource1.DataSet.First;
 For iCntrT:=1 To 10 Do
 Begin
  If Not( DataSource1.DataSet.Eof)
   Then dbgAssort.Columns[iCntrT].Title.Caption:=
               DataSource1.DataSet.FieldByName('DESCR').AsString
   Else dbgAssort.Columns[iCntrT].Title.Caption:='-';
  If ( DataSource1.DataSet.IsEmpty) then
dbgAssort.Columns[iCntrT].Title.Caption:='-';
    DataSource1.DataSet.Next;

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
 Edit1.Text:='Totale: '+IntToStr(iTotale);

{
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
}
// End;
 End;

procedure TfAssort.Button2Click(Sender: TObject);
begin
// fVisTgCol.dscol.DataSet.First;
//IBQuery3.Close;
//IBQuery3.ParamByName('CA').AsString := DBEdit1.Text;
IBQuery3.Open;
IBQuery3.First;

 While Not (IBQuery3.EOF) Do
 Begin

dsAssort.DataSet.Insert;
dsAssort.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
  IBQuery3.FieldByName('CODICE_ARTICOLO').AsString;
dsAssort.DataSet.FieldByName('COLORE').AsString:=
  IBQuery3.FieldByName('COLORE').AsString;
dsAssort.DataSet.Post;
IBQuery3.Next;
 End;
end;

Procedure TfAssort.Totali;
var
itotale : integer;
begin
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

 Edit1.Text:='Totale: '+IntToStr(iTotale);

 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA01').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA01').AsInteger;
  dsAssort.DataSet.Next;
end;
  Edit2.Text := IntToStr(iTotale);

 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA02').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA02').AsInteger;
  dsAssort.DataSet.Next;
end;
  Edit3.Text := IntToStr(iTotale);

 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA03').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA03').AsInteger;
  dsAssort.DataSet.Next;
end;
  Edit4.Text := IntToStr(iTotale);
 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA04').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA04').AsInteger;
  dsAssort.DataSet.Next;
end;
  Edit5.Text := IntToStr(iTotale);
 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA05').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA05').AsInteger;
  dsAssort.DataSet.Next;
end;
  Edit6.Text := IntToStr(iTotale);
 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA06').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA06').AsInteger;
  dsAssort.DataSet.Next;
end;
  Edit7.Text := IntToStr(iTotale);
 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA07').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA07').AsInteger;
  dsAssort.DataSet.Next;
end;
  Edit8.Text := IntToStr(iTotale);


end;

procedure TfAssort.Button3Click(Sender: TObject);
begin
Totali;
end;

procedure TfAssort.Button4Click(Sender: TObject);
var
  SavePlace: TBookmark;
  SavePlace2: String;
begin
Totali;
 SavePlace2 := DBEdit1.Text;
 SavePlace := fVisTgCol.IBTable3.GetBookmark;
if dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.Commit;
//IBQuery2.ParamByName('CA').AsString := SavePlace2;
IBQuery2.Open;
IBQuery1.Open;
//////
 fVisTgCol.Apri;
 fVisTgCol.IBTable3.GotoBookmark(SavePlace);
 fVisTgCol.IBTable3.FreeBookmark(SavePlace);
end;

procedure TfAssort.FormClose(Sender: TObject; var Action: TCloseAction);
begin
IBQuery2.Close;
end;

procedure TfAssort.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
Button1.Click;
end;

procedure TfAssort.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
Button1.Click;
end;

procedure TfAssort.IBQuery2BeforeEdit(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfAssort.IBQuery2BeforeDelete(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfAssort.IBQuery2BeforeInsert(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfAssort.Button5Click(Sender: TObject);
begin
Close;
end;

procedure TfAssort.FormShow(Sender: TObject);
begin
Button1.Click;
end;

procedure TfAssort.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
Button1.Click;
end;

end.
