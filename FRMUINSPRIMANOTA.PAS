unit frmuInsPrimaNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, ActnList, Db, StdCtrls, Mask, DBCtrls,
  RxLookup, DBCGrids, Buttons, CurrEdit, RXSpin, ToolEdit;

type
  TfrmPrimaNotaInsert = class(TForm)
    dsContab: TDataSource;
    pnlDatiContab: TPanel;
    lblDatMov: TLabel;
    lblDataDoc: TLabel;
    lblNumDoc: TLabel;
    lblTotFattura: TLabel;
    Label1: TLabel;
    lblCliFor: TLabel;
    rxdblcCliFor: TRxDBLookupCombo;
    dsCliFor: TDataSource;
    pnlContab_Det: TPanel;
    pnlBilancio: TPanel;
    dbcgContab: TDBCtrlGrid;
    dbeContropartita: TDBEdit;
    dbeImposta: TDBEdit;
    dbeIVAperc: TDBEdit;
    dbeImponibile: TDBEdit;
    bbNuovo: TBitBtn;
    bbSalva: TBitBtn;
    bbAnnulla: TBitBtn;
    bbEsci: TBitBtn;
    lblTotale: TLabel;
    stTotale: TStaticText;
    lblSbilancio: TLabel;
    stSbilancio: TStaticText;
    bbSottoConti: TBitBtn;
    DBNavigator1: TDBNavigator;
    lblContropartita: TLabel;
    lblImponibile: TLabel;
    lblIVAperc: TLabel;
    lblImposta: TLabel;
    dtedtDataMov: TDateEdit;
    edtDescrMov: TEdit;
    dtedtDataDoc: TDateEdit;
    rxspedtNumDoc: TRxSpinEdit;
    rxcalcedtTotalePagato: TRxCalcEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbeContropartitaDblClick(Sender: TObject);
    procedure dbeImponibileExit(Sender: TObject);
    procedure dbeIVApercExit(Sender: TObject);
    procedure bbNuovoClick(Sender: TObject);
    procedure bbSalvaClick(Sender: TObject);
    procedure bbAnnullaClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSottoContiClick(Sender: TObject);
    procedure pnlDatiContabExit(Sender: TObject);
   private
    strDescrMov: String;
    intNProt: Integer;
    intCliFor_ID, intCliFor_PianoConto: Integer;
    strCliFor_NomeConto,strCliFor_ControPartita: String;
    dDataMov, dDataDoc: TDateTime;
    dTotaleFattura,dTotale,dSbilancio: Double;
    Procedure Browse_Mode(bBrMode: Boolean);
    Procedure Prepare_Per_Acquisto;
    Procedure Prepare_Per_Vendita;
    Procedure Refresh_Stats;
    Procedure Set_Values;
   public
    boolVendita: Boolean;
  End;

var
  frmPrimaNotaInsert: TfrmPrimaNotaInsert;

implementation

uses uPubDM, uAzDM, frmuRicercaSottoconto, uPianoConti;

{$R *.DFM}

procedure TfrmPrimaNotaInsert.Browse_Mode(bBrMode: Boolean);
begin
 // tbtns
 bbEsci.Enabled:=bBrMode;
 bbNuovo.Enabled:=bBrMode;
 bbSalva.Enabled:=Not(bBrMode);
 bbAnnulla.Enabled:=Not(bBrMode);
 // other
 dsContab.AutoEdit:=Not(bBrMode);
end;

procedure TfrmPrimaNotaInsert.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:=bbEsci.Enabled;
end;

procedure TfrmPrimaNotaInsert.dbeContropartitaDblClick(Sender: TObject);
begin
 With (TfrmRicercaSottoconto.Create(Self)) DO
 Begin
   ShowModal;
   If (boolSelected)
    Then Begin
           dbeContropartita.Field.AsString:=strDescrPC;
           dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=intID_PC;
         End; 
   Free;
 End;
end;

procedure TfrmPrimaNotaInsert.dbeImponibileExit(Sender: TObject);
begin
 Try
  IF (dbeIVAperc.Field.AsFloat=0)
   Then dbeImposta.Field.AsFloat:=0
   Else dbeImposta.Field.AsFloat:=dbeImponibile.Field.AsFloat*
                             dbeIVAperc.Field.AsFloat/100;
  dsContab.DataSet.FieldByName('TOTALE').AsFloat:=
    dbeImponibile.Field.AsFloat+dbeImposta.Field.AsFloat;   
 Except

 End;

 Try
  dTotale:=dTotale+dsContab.DataSet.FieldByName('TOTALE').AsFloat;
  Refresh_Stats;
 Except

 End;
end;

procedure TfrmPrimaNotaInsert.dbeIVApercExit(Sender: TObject);
begin
 Try
  IF (dbeIVAperc.Field.AsFloat=0)
   Then dbeImposta.Field.AsFloat:=0
   Else dbeImposta.Field.AsFloat:=dbeImponibile.Field.AsFloat*
                             dbeIVAperc.Field.AsFloat/100;
  dsContab.DataSet.FieldByName('TOTALE').AsFloat:=
    dbeImponibile.Field.AsFloat+dbeImposta.Field.AsFloat;
 Except

 End;
 Try
  dTotale:=dTotale+dsContab.DataSet.FieldByName('TOTALE').AsFloat;
  Refresh_Stats;
 Except

 End;
end;

procedure TfrmPrimaNotaInsert.Prepare_Per_Vendita;
begin
 strDescrMov:='Fattura di Vendita';
 self.Caption:=self.Caption+strDescrMov;
 lblCliFor.Caption:='Cliente';
 dsCliFor.DataSet:=dmodAz.ibqTab_Cli;
 dsCliFor.DataSet.Open;
end;

procedure TfrmPrimaNotaInsert.Prepare_Per_Acquisto;
begin
 strDescrMov:='Fattura di Acquisto';
 self.Caption:=self.Caption+strDescrMov;
 lblCliFor.Caption:='Fornitore';
 dsCliFor.DataSet:=dmodAz.ibqTab_For;
 dsCliFor.DataSet.Open;
end;

procedure TfrmPrimaNotaInsert.bbNuovoClick(Sender: TObject);
begin
 dTotale:=0;
 dSbilancio:=0;
 Browse_Mode(False);
 dsContab.DataSet.Insert;
 // ottenere il numero di protocollo
 dmodAz.ibspLastNumProt.ExecProc;
 intNProt:=1+dmodAz.ibspLastNumProt.ParamByName('LAST_NUM_PROT').AsInteger;
{ // info su protocollo
 Application.MessageBox(PChar('N° Prot. per querto movimento: '+IntToStr(intNProt)),
          'Informazione',MB_OK+MB_ICONINFORMATION);
 }
 // asociare il numero
 dsContab.DataSet.FieldByName('NUM_PROT').AsInteger;
end;

procedure TfrmPrimaNotaInsert.bbSalvaClick(Sender: TObject);
begin
 Try
  dsContab.DataSet.Post;
  Browse_Mode(True);
 Except
 End; 
end;

procedure TfrmPrimaNotaInsert.bbAnnullaClick(Sender: TObject);
begin
 Try
  dsContab.DataSet.Cancel;
  Browse_Mode(True);
 Except
 End; 

end;

procedure TfrmPrimaNotaInsert.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrimaNotaInsert.FormShow(Sender: TObject);
begin
 dTotale:=0;
 dSbilancio:=0;
 Refresh_Stats;
 If (boolVendita)Then
   Prepare_Per_Vendita
 Else Prepare_Per_Acquisto;
end;

procedure TfrmPrimaNotaInsert.bbSottoContiClick(Sender: TObject);
begin
 With (TfPianoConti.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrimaNotaInsert.Refresh_Stats;
begin
 dSbilancio:=dTotaleFattura-dTotale;
 stTotale.Caption:=Format('%m',[dTotale]);
 stSbilancio.Caption:=Format('%m',[dSbilancio]);
end;

procedure TfrmPrimaNotaInsert.pnlDatiContabExit(Sender: TObject);
begin
 Set_Values;
end;

procedure TfrmPrimaNotaInsert.Set_Values;
begin
 dTotaleFattura:=rxcalcedtTotalePagato.value;
 strDescrMov:=edtDescrMov.Text;
 dDataMov:=dtedtDataMov.Date;
 dDataDoc:=dtedtDataDoc.Date;
end;

end.
