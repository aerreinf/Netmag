Unit frmuInsDistinte;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, Db, ExtCtrls, Grids, DBGrids, Buttons;

Type
  TfrmInsDistinte = Class(TForm)
    pnlDati: TPanel;
    pnlCtrl: TPanel;
    dsArticoli_Vend: TDataSource;
    lblCodArt: TLabel;
    rxdblcCodArt: TRxDBLookupCombo;
    lblDescr: TLabel;
    rxdblcDescrArt: TRxDBLookupCombo;
    dbgArticoliVend: TDBGrid;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    shback: TShape;
    Procedure rxdblcDescrArtExit(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure bbCancelClick(Sender: TObject);
    Procedure bbOKClick(Sender: TObject);
    Procedure dbgArticoliVendDblClick(Sender: TObject);
    procedure dbgArticoliVendCellClick(Column: TColumn);
    procedure rxdblcCodArtExit(Sender: TObject);
   Private
    Procedure Set_Vals;

   Public
    boolConfermato: Boolean;
    strCodiceArticolo_selezionato, strDescrArt_selezionato: String;
    dCosto: Currency;
  End;

Var
  frmInsDistinte: TfrmInsDistinte;

Implementation

{$R *.DFM}

Procedure TfrmInsDistinte.rxdblcDescrArtExit(Sender: TObject);
Begin
 Try
  Set_Vals;
  rxdblcCodArt.KeyValue := rxdblcDescrArt.KeyValue;
 Except
 End;
End;

procedure TfrmInsDistinte.FormCreate(Sender: TObject);
begin
 boolConfermato:=False;
end;

procedure TfrmInsDistinte.bbCancelClick(Sender: TObject);
begin
 boolConfermato:=False;
 Close;
end;

Procedure TfrmInsDistinte.bbOKClick(Sender: TObject);
Begin
Set_Vals ;
 boolConfermato:=True;
 Close;
End;

procedure TfrmInsDistinte.Set_Vals;
begin
 Try
  strCodiceArticolo_selezionato:=
    dsArticoli_Vend.DataSet.fieldByName('CODICE_ARTICOLO').AsString;
  strDescrArt_selezionato:=
    dsArticoli_Vend.DataSet.fieldByName('DESCR').AsString;
  strDescrArt_selezionato:=
    dsArticoli_Vend.DataSet.fieldByName('DESCR').AsString;
 Except
  strCodiceArticolo_selezionato:='';
  strDescrArt_selezionato:='';
 End;
End;

procedure TfrmInsDistinte.dbgArticoliVendDblClick(Sender: TObject);
begin
// Set_Vals;
 bbOK.Click;
end;

procedure TfrmInsDistinte.dbgArticoliVendCellClick(Column: TColumn);
begin
 Try
  rxdblcDescrArt.KeyValue:=
     dsArticoli_Vend.DataSet.FieldByname('CODICE_ARTICOLO').AsString;
  rxdblcCodArt.KeyValue:=
     dsArticoli_Vend.DataSet.FieldByname('CODICE_ARTICOLO').AsString;
 Except
 End;
End;

procedure TfrmInsDistinte.rxdblcCodArtExit(Sender: TObject);
begin
 Try
  Set_Vals;
  rxdblcDescrArt.KeyValue := rxdblcCodArt.KeyValue;
 Except
 End;
end;

END.

