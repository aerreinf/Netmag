unit frmuPNinsMovGener;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, DBCGrids, ExtCtrls, Db, Buttons,
  ToolEdit, RXSpin, RxMemDS, RxLookup, IBCustomDataSet, IBQuery, CurrEdit,
  DBActns, ActnList, Grids, DBGrids;

type
  TfrmPNinsMovGener = class(TForm)
    dsContab: TDataSource;
    pnlContab: TPanel;
    pnlDatiContab: TPanel;
    lblDatMov: TLabel;
    lblDataDoc: TLabel;
    lblNumDoc: TLabel;
    Label1: TLabel;
    pnlBilancio: TPanel;
    bbSalva: TBitBtn;
    bbAnnulla: TBitBtn;
    bbEsci: TBitBtn;
    lblTotaleDare: TLabel;
    lblTotaleAvere: TLabel;
    lblSbilancio: TLabel;
    bbNuovo: TBitBtn;
    bbSottoConti: TBitBtn;
    dtedtDataMov: TDateEdit;
    dtedtDataDoc: TDateEdit;
    edtDescr: TEdit;
    rxspinedtNumDoc: TRxSpinEdit;
    rxmdPrimaNota: TRxMemoryData;
    lblContropartita: TLabel;
    lblImponibile: TLabel;
    lblImposta: TLabel;
    rxmdPrimaNotaDARE: TFloatField;
    rxmdPrimaNotaAVERE: TFloatField;
    rxmdPrimaNotaPK_CODICE: TIntegerField;
    rxmdPrimaNotaNUM_PROT: TIntegerField;
    rxmdPrimaNotaDATA_MOV: TDateField;
    rxmdPrimaNotaDATA_DOC: TDateField;
    rxmdPrimaNotaNUM_DOC: TIntegerField;
    rxmdPrimaNotaDOC_ID: TIntegerField;
    rxmdPrimaNotaDESCR_MOV: TStringField;
    rxmdPrimaNotaSOTTOCONTO_DESCR: TStringField;
    rxmdPrimaNotaCLIFOR_ID: TIntegerField;
    rxmdPrimaNotaTIPO_CLIFOR: TSmallintField;
    rxmdPrimaNotaBANCA_ID: TIntegerField;
    rxmdPrimaNotaBANCA_DESCR: TStringField;
    rxmdPrimaNotaNOTE: TStringField;
    rxmdPrimaNotaDATA_SCADENZA: TDateField;
    rxmdPrimaNotaTOTALE_PAGATO: TFloatField;
    rxmdPrimaNotaSBILANCIO: TFloatField;
    rxmdPrimaNotaPIANOCONTO_ID: TIntegerField;
    rxmdPrimaNotaNOME_CONTO: TStringField;
    rxmdPrimaNotaCON_DETT: TSmallintField;
    rxmdPrimaNotadeposito_codice: TStringField;
    rxmdPrimaNotadeposito_descr: TStringField;
    rxdblcDeposito: TRxDBLookupCombo;
    dsDeposito: TDataSource;
    dsVisContab: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1PK_CODICE: TIntegerField;
    IBQuery1NUM_PROT: TIntegerField;
    IBQuery1DATA_MOV: TDateField;
    IBQuery1DATA_DOC: TDateField;
    IBQuery1NUM_DOC: TIntegerField;
    IBQuery1DOC_ID: TIntegerField;
    IBQuery1DESCR_MOV: TIBStringField;
    IBQuery1SOTTOCONTO_DESCR: TIBStringField;
    IBQuery1DARE: TFloatField;
    IBQuery1AVERE: TFloatField;
    IBQuery1CLIFOR_ID: TIntegerField;
    IBQuery1TIPO_CLIFOR: TSmallintField;
    IBQuery1BANCA_ID: TIntegerField;
    IBQuery1BANCA_DESCR: TIBStringField;
    IBQuery1NOTE: TIBStringField;
    IBQuery1DATA_SCADENZA: TDateField;
    IBQuery1TOTALE_PAGATO: TFloatField;
    IBQuery1SBILANCIO: TFloatField;
    IBQuery1PIANOCONTO_ID: TIntegerField;
    IBQuery1NOME_CONTO: TIBStringField;
    IBQuery1CON_DETT: TSmallintField;
    IBQuery1NUM_FATTURA: TIntegerField;
    IBQuery1DATA_FATTURA: TDateField;
    IBQuery1IMPORTO: TFloatField;
    IBQuery1ABBUONO: TFloatField;
    IBQuery1TIPO_MOV: TSmallintField;
    IBQuery1IMPONIBILE: TFloatField;
    IBQuery1IMPOSTA: TFloatField;
    IBQuery1IVA_PERC: TFloatField;
    IBQuery1FK_SCADENZA: TIntegerField;
    IBQuery1ASS_DATA_SCAD: TDateField;
    IBQuery1DEPOSITO_CODICE: TIBStringField;
    IBQuery1DEPOSITO_DESCR: TIBStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    stTotaleDare: TRxCalcEdit;
    stTotaleAvere: TRxCalcEdit;
    stSbilancio: TRxCalcEdit;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label3: TLabel;
    IBQuery1NUM_ASS: TIBStringField;
    rxmdPrimaNotaNUM_ASS: TStringField;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Edit2: TEdit;
    IBQuery1NUM_PROT2: TIntegerField;
    IBQuery1NUM_REG: TIntegerField;
    IBQuery1NUM_DOC_LETT: TIBStringField;
    rxmdPrimaNotaNUM_PROT2: TIntegerField;
    rxmdPrimaNotaNUM_REG: TIntegerField;
    rxmdPrimaNotaNUM_DOC_LETT: TStringField;
    IBQuery1PAGAMENTO_ID: TIBStringField;
    IBQuery2: TIBQuery;
    IBQuery2ID_PIANO_CONTO: TIntegerField;
    IBQuery2GRUPPO: TIBStringField;
    IBQuery2CONTO: TIBStringField;
    IBQuery2SOTTOCONTO: TIBStringField;
    IBQuery2NOME_CONTO: TIBStringField;
    IBQuery2TIPO: TSmallintField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2NATURA: TSmallintField;
    IBQuery2LIVELLO: TSmallintField;
    IBQuery2RIVENDITA: TSmallintField;
    IBQuery2STRUMENTALE: TSmallintField;
    IBQuery2INDEDUCIBILE: TFloatField;
    IBQuery2STAMPA_IN_BILANCIO: TSmallintField;
    IBQuery2VARIAZIONE_FISCALE: TSmallintField;
    IBQuery2DICH_REDDITI_ID: TIBStringField;
    IBQuery2RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery2CONTO_PERSONALIZZATO_ID: TIntegerField;
    IBQuery2CAPO_CONTO_CLI_FOR: TSmallintField;
    IBQuery2SPECIALE: TIntegerField;
    ibqSaldo: TIBQuery;
    ibqSaldoPIANOCONTO_ID: TIntegerField;
    ibqSaldoSALDO: TFloatField;
    DBEdit5: TDBEdit;
    DataSource1: TDataSource;
    procedure bbEsciClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbSalvaClick(Sender: TObject);
    procedure bbAnnullaClick(Sender: TObject);
    procedure bbNuovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSottoContiClick(Sender: TObject);
    procedure dbnNavPNBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure pnlDatiContabExit(Sender: TObject);
    procedure dtedtDataMovKeyPress(Sender: TObject; var Key: Char);
    procedure dtedtDataDocKeyPress(Sender: TObject; var Key: Char);
    procedure rxspinedtNumDocKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescrKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dtedtDataMovChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure rxspinedtNumDocEnter(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
   private
    dTotaleDare, dTotaleAvere, dSbilancio: Currency;
    dDataMov,dDataDoc: TDate;
    intNDoc, intNProt,CONTR: Integer;
    strDescMov: String;

    Procedure Brws_Mode(boolMode: Boolean);
    Procedure Refresh_Stats;
    Procedure Set_Stats_To_Null;
    Procedure Set_Stats_Initial;
    Procedure Kill_rxMemData;
    Procedure Save_In_DB;
    Procedure Set_Values;
    Procedure Calcola;
    Procedure Pulsanti(boolMode: Boolean);
    procedure CONTROLLONUMREG;
   public

  end;

var
  frmPNinsMovGener: TfrmPNinsMovGener;

implementation

uses frmuRicercaSottoconto, uAzDM, uPianoConti, frmuVisPrimaNota, uClienti,
  uForn;

{$R *.DFM}

{ TfrmPNinsMovGener }

procedure TfrmPNinsMovGener.Refresh_Stats;
begin
 Try
// CURRENCY  stTotaleDare.Text:=Format('%m',[dTotaleDare]);
  stTotaleDare.Value:=dTotaleDare;
  stTotaleAvere.Value:=dTotaleAvere;
  dSbilancio:=dTotaleDare-dTotaleAvere;
  stSbilancio.Value:=dSbilancio;
 Except
  stTotaleDare.Text:='0';
  stTotaleAvere.Text:='0';
  stSbilancio.Text:='0';
 End;
end;

procedure TfrmPNinsMovGener.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPNinsMovGener.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:=bbEsci.Enabled;
end;

procedure TfrmPNinsMovGener.bbSalvaClick(Sender: TObject);
begin
If (rxmdPrimaNota.IsEmpty)
Then Begin
Application.MessageBox('Scegli almeno un sottoconto.',
                     'Attendere',MB_OK);
Exit;
End;
if dmodAz.modifica = false then
begin
CONTROLLONUMREG;
if contr = 1 then
exit;
end;

If Not(stSbilancio.Value=0) Then
If (MessageDlg('Operazione sbilanciata, vuoi salvare comunque?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then  Exit;

If (dsContab.DataSet.State in [dsInsert, dsEdit])
  Then  dsContab.DataSet.Post;
if dmodAz.modifica = True then
begin

end;
/////////////////////
 Save_In_DB;
 // pulire DS memoria
 Kill_rxMemData;
 // rimettere la situazione dei controlli
 Brws_Mode(True);
 If (Application.MessageBox('Vuoi procedere con un nuovo inserimento?','Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
   Then Close;
end;

procedure TfrmPNinsMovGener.bbAnnullaClick(Sender: TObject);
begin
If (MessageDlg('Annullare?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
then begin
If (dsContab.DataSet.State in [dsInsert, dsEdit])
Then  dsContab.DataSet.Cancel;
Brws_Mode(True);
Kill_rxMemData;
Set_Stats_To_Null;
If (Application.MessageBox('Vuoi continuare con nuovo inserimento?','Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
Then Close;
end;
End;

procedure TfrmPNinsMovGener.bbNuovoClick(Sender: TObject);
begin
dmodAz.modifica := False;
dmodAz.ibspLastNumProt.ExecProc;
intNProt:=1+dmodAz.ibspLastNumProt.ParamByName('LAST_NUM_PROT').AsInteger;
dmodAz.IBQDepositi.Close;
dmodAz.IBQDepositi.Open;
Brws_Mode(False);
Kill_rxMemData;
Set_Stats_To_Null;
edtDescr.Text :='';
rxspinedtNumDoc.Value := 0;

dmodAz.ibNum_Reg.Params[0].asdate:=dtedtDataMov.Date;
dmodAz.ibNum_Reg.ExecProc;
Edit2.Text := inttostr(dmodAz.ibNum_Reg.Params[1].AsInteger+1);

dtedtDataMov.SetFocus;
dtedtDataMov.SelectAll;
End;

procedure TfrmPNinsMovGener.Brws_Mode(boolMode: Boolean);
begin
 // panels
 pnlDatiContab.Enabled:=Not(boolMode);
 pnlContab.Enabled:=Not(boolMode);
// dsContab.AutoEdit:=Not(boolMode);
 // buttons
 bbNuovo.Enabled:=boolMode;
 bbEsci.Enabled:=boolMode;
 bbSalva.Enabled:=Not(boolMode);
 bbAnnulla.Enabled:=Not(boolMode);
end;

procedure TfrmPNinsMovGener.Set_Stats_To_Null;
begin
 dTotaleDare:=0;
 dTotaleAvere:=0;
 dSbilancio:=0;
 stTotaleAvere.Value := dTotaleAvere;
 stTotaleDare.Value := dTotaleDare;
 stSbilancio.Value := dSbilancio;

 Refresh_Stats;
end;

procedure TfrmPNinsMovGener.Set_Stats_Initial;
begin
 dTotaleDare:=0;
 dTotaleAvere:=0;
 dsContab.DataSet.Last;
 While Not(dsContab.DataSet.BoF) Do
 Begin
   dTotaleDare:=dTotaleDare+dsContab.DataSet.FieldByName('DARE').AsCurrency;
   dTotaleAvere:=dTotaleAvere+dsContab.DataSet.FieldByName('AVERE').AsCurrency;
   dsContab.DataSet.Prior;
 End;
 dSbilancio:=dTotaleDare-dTotaleAvere;
 Refresh_Stats;
End;

procedure TfrmPNinsMovGener.FormShow(Sender: TObject);
begin
 Set_Stats_To_Null;
 Set_Stats_Initial;
if dmodAz.modifica = true then
begin
Kill_rxMemData;
dtedtDataDoc.Date := dsVisContab.DataSet.FieldByName('DATA_DOC').AsDateTime;
dtedtDataMov.Date := dsVisContab.DataSet.FieldByName('DATA_MOV').AsDateTime;
edtDescr.Text := dsVisContab.DataSet.FieldByName('DESCR_MOV').AsString;
Edit2.Text := inttostr(dsVisContab.DataSet.FieldByName('NUM_REG').AsInteger);
rxdblcDeposito.KeyValue := dsVisContab.DataSet.FieldByName('DEPOSITO_DESCR').AsString;
rxspinedtNumDoc.AsInteger :=dsVisContab.DataSet.FieldByName('num_doc').AsInteger;
IBQuery1.Close;
dmodAz.icodic:= dsVisContab.DataSet.FieldByName('NUM_PROT').AsInteger;
IBQuery1.ParamByName('N').AsInteger := dsVisContab.DataSet.FieldByName('NUM_PROT').AsInteger;
IBQuery1.Open;
IBQuery1.First;
while not IBQuery1.Eof do
begin
rxmdPrimaNota.Insert;
 rxmdPrimaNota.FieldByName('DARE').AsCurrency:= IBQuery1.FieldByName('DARE').AsCurrency;
 rxmdPrimaNota.FieldByName('AVERE').AsCurrency:= IBQuery1.FieldByName('AVERE').AsCurrency;
 rxmdPrimaNota.FieldByName('DATA_MOV').AsDateTime:= IBQuery1.FieldByName('DATA_MOV').AsDateTime;
 rxmdPrimaNota.FieldByName('DATA_DOC').AsDateTime:= IBQuery1.FieldByName('DATA_DOC').AsDateTime;
 rxmdPrimaNota.FieldByName('NUM_DOC').AsInteger:= IBQuery1.FieldByName('NUM_DOC').AsInteger;
 rxmdPrimaNota.FieldByName('DOC_ID').AsInteger:= IBQuery1.FieldByName('DOC_ID').AsInteger;
 rxmdPrimaNota.FieldByName('DESCR_MOV').AsString:= IBQuery1.FieldByName('DESCR_MOV').AsString;
 rxmdPrimaNota.FieldByName('SOTTOCONTO_DESCR').AsString:= IBQuery1.FieldByName('SOTTOCONTO_DESCR').AsString;
 rxmdPrimaNota.FieldByName('CLIFOR_ID').AsInteger:= IBQuery1.FieldByName('CLIFOR_ID').AsInteger;
 rxmdPrimaNota.FieldByName('TIPO_CLIFOR').AsInteger:= IBQuery1.FieldByName('TIPO_CLIFOR').AsInteger;
 rxmdPrimaNota.FieldByName('DEPOSITO_CODICE').AsString:= IBQuery1.FieldByName('DEPOSITO_CODICE').AsString;
 rxmdPrimaNota.FieldByName('DEPOSITO_DESCR').AsString:= IBQuery1.FieldByName('DEPOSITO_DESCR').AsString;
 rxmdPrimaNota.FieldByName('BANCA_ID').AsInteger:= IBQuery1.FieldByName('BANCA_ID').AsInteger;
 rxmdPrimaNota.FieldByName('BANCA_DESCR').AsString:= IBQuery1.FieldByName('BANCA_DESCR').AsString;
 rxmdPrimaNota.FieldByName('NOTE').AsString:= IBQuery1.FieldByName('NOTE').AsString;
 rxmdPrimaNota.FieldByName('DATA_SCADENZA').AsDateTime:= IBQuery1.FieldByName('DATA_SCADENZA').AsDateTime;
 rxmdPrimaNota.FieldByName('TOTALE_PAGATO').AsCurrency:= IBQuery1.FieldByName('TOTALE_PAGATO').AsCurrency;
 rxmdPrimaNota.FieldByName('SBILANCIO').AsFloat:= IBQuery1.FieldByName('SBILANCIO').AsFloat;
 rxmdPrimaNota.FieldByName('NUM_ASS').AsString:= IBQuery1.FieldByName('NUM_ASS').AsString;
 rxmdPrimaNota.FieldByName('PIANOCONTO_ID').AsInteger:= IBQuery1.FieldByName('PIANOCONTO_ID').AsInteger;
 rxmdPrimaNota.FieldByName('NOME_CONTO').AsString:= IBQuery1.FieldByName('NOME_CONTO').AsString;
 rxmdPrimaNota.FieldByName('CON_DETT').AsInteger:= IBQuery1.FieldByName('CON_DETT').AsInteger;

rxmdPrimaNota.Post;
IBQuery1.Next;
end;
bbNuovo.Enabled := False;
bbSalva.Enabled := True;
bbAnnulla.Enabled := True;
Brws_Mode(False);

end
else
begin
//dtedtDataDoc.Date := Now;
dtedtDataMov.Date := Now;
end;

end;

procedure TfrmPNinsMovGener.FormCreate(Sender: TObject);
begin
 Kill_rxMemData;
 If Not(dmodAz.ibqryContab.Active)
   Then dmodAz.ibqryContab.Active:=True;
end;

procedure TfrmPNinsMovGener.bbSottoContiClick(Sender: TObject);
begin
 With (TfPianoConti.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPNinsMovGener.Kill_rxMemData;
begin
//rxmdPrimaNota.DisableControls;
rxmdPrimaNota.Active:=True;
rxmdPrimaNota.First;
While Not(rxmdPrimaNota.EoF) DO rxmdPrimaNota.Delete;
rxmdPrimaNota.Active:=False;
rxmdPrimaNota.Active:=True;
//rxmdPrimaNota.EnableControls;
end;

procedure TfrmPNinsMovGener.Save_In_DB;
begin
 Try

  rxmdPrimaNota.First;
  dmodAz.ibqryContab.Open;
If Not(dmodAz.ibtrDef.InTransaction)
Then dmodAz.ibtrDef.StartTransaction;
Try
if dmodAz.modifica = true then
begin
intNProt := dmodAz.icodic;
 With (dmodAz) Do
 Begin
  ibqricerca.Close;
  ibqricerca.SQL.CLEAR;
  ibqricerca.SQL.Add('Delete from contabilita');
  ibqricerca.SQL.Add('Where NUM_PROT='+IntToStr(dmodAz.icodic));
  ibqricerca.ExecSQL;
  ibqricerca.Close;
  ibqricerca.SQL.Clear;
 End;
end
else
begin
dmodAz.ibspLastNumProt.ExecProc;
intNProt:=1+dmodAz.ibspLastNumProt.ParamByName('LAST_NUM_PROT').AsInteger;

end;
While Not(rxmdPrimaNota.EoF) Do
Begin
dmodAz.ibqryContab.Insert;
dmodAz.ibqryContab.FieldByName('DATA_DOC').AsDateTime := dtedtDataDoc.Date;
dmodAz.ibqryContab.FieldByName('DATA_MOV').AsDateTime := dtedtDataMov.Date;
dmodAz.ibqryContab.FieldByName('NUM_REG').asinteger := strtoint(Edit2.Text);
dmodAz.ibqryContab.FieldByName('DESCR_MOV').asstring := edtDescr.Text;
dmodAz.ibqryContab.FieldByName('NOTE').asstring := Edit1.Text;
dmodAz.ibqryContab.FieldByName('NUM_DOC').AsInteger:=rxspinedtNumDoc.AsInteger;
dmodAz.ibqryContab.FieldByName('NUM_PROT').asinteger := intNProt;
dmodAz.ibqryContab.FieldByName('DARE').AsCurrency := rxmdPrimaNota.FieldByname('DARE').AsCurrency;
dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency := rxmdPrimaNota.FieldByname('AVERE').AsCurrency;
dmodAz.ibqryContab.FieldByName('SOTTOCONTO_DESCR').asstring := rxmdPrimaNota.FieldByname('SOTTOCONTO_DESCR').AsString;
dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 1;
dmodAz.ibqryContab.FieldByName('CON_DETT').AsInteger := 0;
dmodAz.ibqryContab.FieldByName('CLIFOR_ID').AsInteger := rxmdPrimaNota.FieldByname('CLIFOR_ID').AsInteger;
dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').AsInteger := rxmdPrimaNota.FieldByname('TIPO_CLIFOR').AsInteger;
dmodAz.ibqryContab.FieldByName('NOME_CONTO').AsString := rxmdPrimaNota.FieldByname('NOME_CONTO').AsString;
dmodAz.ibqryContab.FieldByName('PIANOCONTO_ID').AsInteger := rxmdPrimaNota.FieldByname('PIANOCONTO_ID').AsInteger;
dmodAz.ibqryContab.FieldByName('deposito_codice').AsString := rxmdPrimaNota.FieldByname('deposito_codice').AsString;
dmodAz.ibqryContab.FieldByName('deposito_descr').AsString := rxmdPrimaNota.FieldByname('deposito_descr').AsString;

dmodAz.ibqryContab.Post;

rxmdPrimaNota.Next;
End;
if dmodAz.modifica = false then
begin
dmodAz.ibNum_RegD.Open;
dmodAz.ibNum_RegD.Insert;
dmodAz.ibNum_RegD.FieldByName('NUMERO').asinteger := strtoint(Edit2.Text);
dmodAz.ibNum_RegD.FieldByName('DATA').AsDateTime := dtedtDataMov.Date;
dmodAz.ibNum_RegD.Post;
end;
dmodAz.ibtrDef.Commit;
Except
Application.MessageBox('ERRORE durante il salvataggio !!!',
                     'Attendere',MB_OK);
dmodAz.ibtrDef.Rollback;
End;
Kill_rxMemData;

Except
End;
end;

procedure TfrmPNinsMovGener.Set_Values;
begin
  dDataMov:=StrToDate(dtedtDataMov.Text);
  dDataDoc:=StrToDate(dtedtDataDoc.Text);
  intNDoc:=(rxspinedtNumDoc.AsInteger);
  strDescMov:=edtDescr.Text;
end;

procedure TfrmPNinsMovGener.dbnNavPNBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
{ Set_Values;
 dbeContropartita.SetFocus;
 If (Button=nbRefresh)
  Then Set_Stats_Initial;}
end;

procedure TfrmPNinsMovGener.pnlDatiContabExit(Sender: TObject);
begin
 // Dopo aver inserito i dati, bisogna salvarli nelle variabili 
 Set_Values;
end;

procedure TfrmPNinsMovGener.dtedtDataMovKeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
begin
dtedtDataDoc.SetFocus;
dtedtDataDoc.SelectAll;
end;
end;

procedure TfrmPNinsMovGener.dtedtDataDocKeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
begin
rxspinedtNumDoc.SetFocus;
rxspinedtNumDoc.SelectAll;
end;
end;

procedure TfrmPNinsMovGener.rxspinedtNumDocKeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
begin
edtDescr.SetFocus;
edtDescr.SelectAll;
end;
end;

procedure TfrmPNinsMovGener.edtDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
rxdblcDeposito.SetFocus;
end;

procedure TfrmPNinsMovGener.SpeedButton1Click(Sender: TObject);
begin
Set_Values;
Pulsanti(False);
dsContab.DataSet.Insert;
rxmdPrimaNota.FieldByName('PK_Codice').AsInteger:= intNProt;
rxmdPrimaNota.FieldByName('NUM_PROT').AsInteger:=intNProt;
rxmdPrimaNota.FieldByName('Con_dett').AsInteger:=0;
rxmdPrimaNota.FieldByName('NUM_DOC').AsInteger:=rxspinedtNumDoc.AsInteger;
rxmdPrimaNota.FieldByName('DATA_MOV').AsDateTime:=dDataMov;
rxmdPrimaNota.FieldByName('DATA_DOC').AsDateTime:=dDataDoc;
rxmdPrimaNota.FieldByName('DESCR_MOV').AsString:=strDescMov;
rxmdPrimaNota.FieldByName('DARE').AsFloat:=0;
rxmdPrimaNota.FieldByName('AVERE').AsFloat:=0;
DBEdit1.SetFocus;
DBEdit1.SelectAll;
end;

procedure TfrmPNinsMovGener.SpeedButton2Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
Pulsanti(False);
dsContab.DataSet.Edit;
end;

procedure TfrmPNinsMovGener.SpeedButton3Click(Sender: TObject);
begin
dsContab.DataSet.Cancel;
Pulsanti(True);
end;

procedure TfrmPNinsMovGener.SpeedButton4Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;

dsContab.DataSet.FieldByName('deposito_codice').AsString := dsDeposito.DataSet.FieldByName('codice').AsString;
dsContab.DataSet.FieldByName('deposito_descr').AsString := dsDeposito.DataSet.FieldByName('descr').AsString;

dsContab.DataSet.Post;
Calcola;
Pulsanti(True);
end;

procedure TfrmPNinsMovGener.SpeedButton5Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
If (MessageDlg('Eliminare riga?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then  Begin
dsContab.DataSet.Delete;
Calcola;

End;    
end;

procedure TfrmPNinsMovGener.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
DBEdit3.SetFocus;
DBEdit3.SelectAll;
end;

procedure TfrmPNinsMovGener.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
DBEdit4.SetFocus;
DBEdit4.SelectAll;
end;

procedure TfrmPNinsMovGener.DBEdit1DblClick(Sender: TObject);
begin
if not (rxmdPrimaNota.State in [dsInsert, dsEdit]) then exit;
With (TfrmRicercaSottoconto.Create(Self)) DO
Begin
ShowModal;
If (boolSelected)
Then Begin
dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:=strDescrPC;
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=intID_PC;
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=strNomeConto;
dsContab.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=TIPO_CLIFOR ;

ibqSaldo.Close;
ibqSaldo.ParamByName('PCON').AsInteger :=intID_PC;
ibqSaldo.Open;
End;
Free;
End;

DBEdit3.SetFocus;
DBEdit3.SelectAll;
end;

procedure TfrmPNinsMovGener.Calcola;
begin
 dTotaleDare:=0;
 dTotaleAvere:=0;
 dSbilancio:=0;
 dsContab.DataSet.DisableControls;
 dsContab.DataSet.First;
 While Not(dsContab.DataSet.Eof) Do
 Begin
   dTotaleDare:=dTotaleDare+dsContab.DataSet.FieldByName('DARE').AsCurrency;
   dTotaleAvere:=dTotaleAvere+dsContab.DataSet.FieldByName('AVERE').AsCurrency;
   dsContab.DataSet.Next;
 End;
 dSbilancio:=dTotaleDare-dTotaleAvere;
 dsContab.DataSet.EnableControls;
 stTotaleAvere.Value := dTotaleAvere;
 stTotaleDare.Value := dTotaleDare;
 stSbilancio.Value := dSbilancio;
 end;

procedure TfrmPNinsMovGener.Pulsanti(boolMode: Boolean);
begin
 SpeedButton1.Enabled:=boolMode;
 SpeedButton2.Enabled:=boolMode;
 SpeedButton4.Enabled:=Not(boolMode);
 SpeedButton3.Enabled:=Not(boolMode);
 SpeedButton5.Enabled:=boolMode;
end;

procedure TfrmPNinsMovGener.BitBtn1Click(Sender: TObject);
var
scelta : string;
FileData: TStringList;
i:integer;
begin
scelta:=InputBox('Scegli il tipo di Importazione','1)Saldi CLIENTI - 2)Saldi FORNITORI','1');

 FileData := TStringList.Create;
 try
 OpenDialog1.Title := 'Apertura file di documenti';
 OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
 if OpenDialog1.Execute then begin
 FileData.Clear;
 FileData.LoadFromFile(OpenDialog1.FileName);
 for i := 0 to FileData.Count - 1 do begin
 SpeedButton1.Click;

dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:=
     Trim(Copy(FileData.Strings[i], 13, 100));
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
     StrToInt(Trim(Copy(FileData.Strings[i], 113, 10)));
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=
     Trim(Copy(FileData.Strings[i], 1, 12));

if scelta = '1' then
begin
dsContab.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=1 ;
dsContab.DataSet.FieldByName('DARE').AsFloat:=
     StrTofloat(Trim(Copy(FileData.Strings[i], 123, 12)))-StrTofloat(Trim(Copy(FileData.Strings[i], 135, 12)));
end
else
begin
dsContab.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=2 ;
dsContab.DataSet.FieldByName('AVERE').AsFloat:=
     StrTofloat(Trim(Copy(FileData.Strings[i], 135, 12)))-StrTofloat(Trim(Copy(FileData.Strings[i], 123, 12)));

end;

SpeedButton4.Click;
end;
end;
   finally
      FileData.Free;
end;
end;

procedure TfrmPNinsMovGener.BitBtn2Click(Sender: TObject);
begin
fClienti:=TfClienti.Create(Self);
fClienti.ShowModal;
fClienti.Free;
end;

procedure TfrmPNinsMovGener.BitBtn3Click(Sender: TObject);
begin
fForn:=TfForn.Create(Self);

fForn.ShowModal;
fForn.Free;
end;

procedure TfrmPNinsMovGener.dtedtDataMovChange(Sender: TObject);
begin
if dmodAz.modifica = false then
begin
dmodAz.ibNum_Reg.Params[0].asdate:=dtedtDataMov.Date;
dmodAz.ibNum_Reg.ExecProc;
Edit2.Text := inttostr(dmodAz.ibNum_Reg.Params[1].AsInteger+1);
end;
end;

procedure TfrmPNinsMovGener.DBEdit1Exit(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT * FROM tab_piano_conti WHERE NOME_CONTO LIKE '''+DBEdit1.Text+'%'' order by NOME_CONTO');
IBQuery2.Open;
dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:=IBQuery2.FieldByName('DESCR').AsString;
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=IBQuery2.FieldByName('ID_PIANO_CONTO').AsInteger;
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=IBQuery2.FieldByName('NOME_CONTO').AsString;
dsContab.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=IBQuery2.FieldByName('CAPO_CONTO_CLI_FOR').AsInteger;

end;

procedure TfrmPNinsMovGener.CONTROLLONUMREG;
begin
dmodAz.ibqNumReg_Contr.Close;
dmodAz.ibqNumReg_Contr.ParamByName('pardata').asdate:=dtedtDataMov.Date;
dmodAz.ibqNumReg_Contr.ParamByName('parnum').AsInteger:=StrToInt(Edit2.Text);
dmodAz.ibqNumReg_Contr.Open;
if not dmodAz.ibqNumReg_Contr.IsEmpty then
begin
Application.MessageBox('Num. Reg. ESISTENTE !!!',
                     'Attendere',MB_OK);
CONTR := 1;
end
else
CONTR := 0;
end;


procedure TfrmPNinsMovGener.Edit2Exit(Sender: TObject);
begin
CONTROLLONUMREG;
end;

procedure TfrmPNinsMovGener.rxspinedtNumDocEnter(Sender: TObject);
begin
rxspinedtNumDoc.SelectAll;
end;

procedure TfrmPNinsMovGener.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
begin
SpeedButton4.Click;
end;
end;

END.

