unit frmuInsInPNPagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCGrids, RxLookup, Mask, DBCtrls, ExtCtrls, Db,
  RxMemDS, CurrEdit, RXSpin, ToolEdit, RXDBCtrl, Grids, DBGrids,
  IBCustomDataSet, IBQuery, RxDBComb;

type
  TfrmInsInPNPagamento = class(TForm)
    dsContab: TDataSource;
    dsPianoConti: TDataSource;
    dsCliFor: TDataSource;
    pnlDatiContab: TPanel;
    lblDatMov: TLabel;
    lblDataDoc: TLabel;
    lblTotFattura: TLabel;
    lblDescrMov: TLabel;
    lblCliFor: TLabel;
    rxdblcCliFor: TRxDBLookupCombo;
    pnlBilancio: TPanel;
    lblTotale: TLabel;
    lblSbilancio: TLabel;
    bbNuovo: TBitBtn;
    bbSalva: TBitBtn;
    bbAnnulla: TBitBtn;
    bbEsci: TBitBtn;
    stTotale: TStaticText;
    stSbilancio: TStaticText;
    bbSottoConti: TBitBtn;
    lblContrprt2: TLabel;
    rxdblcContropartita: TRxDBLookupCombo;
    lblNota: TLabel;
    lblBanca: TLabel;
    rxmdPrimaNota: TRxMemoryData;
    lblNfatt: TLabel;
    lblDataFatt: TLabel;
    lblImporto: TLabel;
    lblAbbuono: TLabel;
    dtedtDataMov: TDateEdit;
    dtedtDataDoc: TDateEdit;
    rxcalcedtTotalePagato: TRxCalcEdit;
    edtDescrMov: TEdit;
    edtNote: TEdit;
    bbScadenze: TBitBtn;
    edtBanca: TEdit;
    lblDataScadAss: TLabel;
    dtedtDataScadenza: TDateEdit;
    lblNumAss: TLabel;
    lblDataScad: TLabel;
    rxdblcContropartitaNOME: TRxDBLookupCombo;
    rxmdPrimaNotaPK_CODICE: TIntegerField;
    rxmdPrimaNotaNUM_PROT: TIntegerField;
    rxmdPrimaNotaDATA_MOV: TDateField;
    rxmdPrimaNotaDATA_DOC: TDateField;
    rxmdPrimaNotaNUM_DOC: TIntegerField;
    rxmdPrimaNotaDOC_ID: TIntegerField;
    rxmdPrimaNotaDESCR_MOV: TStringField;
    rxmdPrimaNotaSOTTOCONTO_DESCR: TStringField;
    rxmdPrimaNotaDARE: TFloatField;
    rxmdPrimaNotaAVERE: TFloatField;
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
    rxmdPrimaNotaTIPO_MOV: TSmallintField;
    rxmdPrimaNotaNUM_FATTURA: TIntegerField;
    rxmdPrimaNotaDATA_FATTURA: TDateField;
    rxmdPrimaNotaIMPORTO: TFloatField;
    rxmdPrimaNotaABBUONO: TFloatField;
    rxmdPrimaNotaFK_SCADENZA: TIntegerField;
    rxmdPrimaNotaASS_DATA_SCAD: TDateField;
    rxmdPrimaNotaIMPOSTA: TFloatField;
    rxmdPrimaNotaIVA_PERC: TFloatField;
    rxmdPrimaNotaIMPONIBILE: TFloatField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit3: TDBEdit;
    pnlContab: TPanel;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    IBQuery1ID_PIANO_CONTO: TIntegerField;
    IBQuery1GRUPPO: TIBStringField;
    IBQuery1CONTO: TIBStringField;
    IBQuery1SOTTOCONTO: TIBStringField;
    IBQuery1NOME_CONTO: TIBStringField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1NATURA: TSmallintField;
    IBQuery1LIVELLO: TSmallintField;
    IBQuery1RIVENDITA: TSmallintField;
    IBQuery1STRUMENTALE: TSmallintField;
    IBQuery1INDEDUCIBILE: TFloatField;
    IBQuery1STAMPA_IN_BILANCIO: TSmallintField;
    IBQuery1VARIAZIONE_FISCALE: TSmallintField;
    IBQuery1DICH_REDDITI_ID: TIBStringField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField;
    IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField;
    IBQuery1SPECIALE: TIntegerField;
    dsDeposito: TDataSource;
    Label2: TLabel;
    rxdblcDeposito: TRxDBLookupCombo;
    dsVisContab: TDataSource;
    IBQuery2: TIBQuery;
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
    IBStringField1: TIBStringField;
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
    rxspedtAssNum: TEdit;
    IBQuery2NUM_ASS: TIBStringField;
    rxmdPrimaNotaNUM_ASS: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    rxspedtNumDoc: TEdit;
    lblNumDoc: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    rxmdPrimaNotaNUM_PROT2: TIntegerField;
    rxmdPrimaNotaNUM_REG: TIntegerField;
    rxmdPrimaNotaNUM_DOC_LETT: TStringField;
    IBQuery2NUM_PROT2: TIntegerField;
    IBQuery2NUM_REG: TIntegerField;
    IBQuery2NUM_DOC_LETT: TIBStringField;
    IBQuery2PAGAMENTO_ID: TIBStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1campo1: TIntegerField;
    RxMemoryData1campo2: TIntegerField;
    DataSource1: TDataSource;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    RxCalcEdit1: TRxCalcEdit;
    Label7: TLabel;
    Label8: TLabel;
    StaticText1: TStaticText;
    IBQuery2COD_ESENZ: TIntegerField;
    IBQuery2DESCR_ESENZ: TIBStringField;
    IBQuery2REG_IVA: TIntegerField;
    IBQuery2MESE_COMP: TIBStringField;
    rxmdPrimaNotaREG_IVA: TIntegerField;
    rxmdPrimaNotaMESE_COMP: TStringField;
    ibqCliPIva: TIBQuery;
    ibqForPIva: TIBQuery;
    DataSource2: TDataSource;
    RxDBLookupCombo3: TRxDBLookupCombo;
    ibqSaldo: TIBQuery;
    ibqSaldoPIANOCONTO_ID: TIntegerField;
    ibqSaldoSALDO: TFloatField;
    DataSource3: TDataSource;
    DBEdit5: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure pnlDatiContabExit(Sender: TObject);
    procedure bbAnnullaClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure bbSalvaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbNuovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbScadenzeClick(Sender: TObject);
    procedure rxcalcedtTotalePagatoExit(Sender: TObject);
    procedure rxdblcContropartitaChange(Sender: TObject);
    procedure rxdblcContropartitaNOMEChange(Sender: TObject);
    procedure dtedtDataMovKeyPress(Sender: TObject; var Key: Char);
    procedure dtedtDataDocKeyPress(Sender: TObject; var Key: Char);
    procedure rxdblcCliForKeyPress(Sender: TObject; var Key: Char);
    procedure rxdblcContropartitaNOMEKeyPress(Sender: TObject;
      var Key: Char);
    procedure rxcalcedtTotalePagatoKeyPress(Sender: TObject;
      var Key: Char);
    procedure rxdblcContropartitaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescrMovKeyPress(Sender: TObject; var Key: Char);
    procedure bbSottoContiClick(Sender: TObject);
    procedure RxDBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure rxdblcCliForChange(Sender: TObject);
    procedure dtedtDataMovChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rxspedtNumDocKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);

   private
    dTotale, dTotalePagato, {dTotaleDare, dTotaleAvere,} dSbilancio: Currency;
    dTotaleDare, dTotaleAvere: Currency;
    dDataScad,dDataMov,dDataDoc: TDate;
    intNumAss,CONTR: Integer;
    intNDoc, intNProt, intCliForID, intCliFor_PianoConti, intIDPianoConti, intID_Banca: Integer;
    strDescMov, strCliFor, strNota, strBanca,strCliFor_Contropartita,strNomeConto,
    strCliFor_NomeConto, strContropartita: String;
    Procedure Prepare_Per_Vendita;
    Procedure Prepare_Per_Acquisto;
    Procedure Kill_rxMemData;
    Procedure Save_In_DB;
    Procedure Aggiorna_Scadenze;
    Procedure Set_Values;
    Procedure Set_Stats_To_Null;
    Procedure Refresh_Stats;
    Procedure Set_Stats_Initial;
    Procedure Brws_Mode(boolMode: Boolean);
    Procedure Pulsanti(boolMode: Boolean);
    Procedure Pulsanti2(boolMode: Boolean);    
    procedure CONTROLLONUMREG;
   public
    boolVendita: Boolean;
    intPK_Scadenza,iPianoConto: Integer;
    sControPart: String;
  end;

var
  frmInsInPNPagamento: TfrmInsInPNPagamento;

implementation

uses frmuRicercaSottoconto, uPianoConti, uAzDM, frmuScadenze,
  frmuVisPrimaNota, uClienti, uForn, frmuPrincipale;

{$R *.DFM}

Procedure TfrmInsInPNPagamento.Prepare_Per_Vendita;
Begin
 strDescMov:='Incasso Fattura di Vendita';
 edtDescrMov.Text:=strDescMov;
 self.Caption:=strDescMov;
 lblCliFor.caption:='Cliente';
// lblTotFattura.Caption := 'Totale Incassato';
 dsCliFor.DataSet:=dmodAz.ibqTab_Cli;

dmodAz.ibqTab_Cli.Close;
dmodAz.ibqTab_Cli.Open;

DataSource2.DataSet:=ibqCliPIva;
DataSource2.DataSet.Open;

 BitBtn2.Visible := True;
 BitBtn3.Visible := False;
End;

Procedure TfrmInsInPNPagamento.Prepare_Per_Acquisto;
Begin
 strDescMov:='Pagamento Fattura di Acquisto';
 edtDescrMov.Text:=strDescMov;
 self.Caption:=strDescMov;
 lblCliFor.caption:='Fornitore';
// lblTotFattura.Caption := 'Totale Pagato';
 dsCliFor.DataSet:=dmodAz.ibqTab_For;

dmodAz.ibqTab_For.Close;
dmodAz.ibqTab_For.Open;
DataSource2.DataSet:=ibqForPIva;
DataSource2.DataSet.Open;

 BitBtn3.Visible := True;
 BitBtn2.Visible := False;
End;

procedure TfrmInsInPNPagamento.FormShow(Sender: TObject);
begin
 // svuotare tutte le variabili
 dTotalePagato:=0;
 dTotale:=0;
 dSbilancio:=0;
 dDataMov:=Date;
// dDataDoc:=Date;
 dtedtDataMov.Date:=Date;
// dtedtDataDoc.Date:=Date;
 intNDoc:=0;
 intNProt:=-1;
 intCliForID:=-1;
 intIDPianoConti:=-1;
 strDescMov:='';
 strCliFor:='';
 strNota:='';
 strContropartita:='';
Set_Stats_To_Null;
// Refresh_Stats;
 If (boolVendita)
   Then Prepare_Per_Vendita
   Else Prepare_Per_Acquisto;
if dmodAz.modifica = true then
begin
edit2.ReadOnly := True;
edit3.ReadOnly := True;
end
else
begin
edit2.ReadOnly := False;
edit3.ReadOnly := False;
end;
if dmodAz.modifica = true then
begin
rxmdPrimaNota.Open;
IBQuery2.Close;
dmodAz.icodic:= dsVisContab.DataSet.FieldByName('NUM_PROT').AsInteger;
IBQuery2.ParamByName('N').AsInteger := dsVisContab.DataSet.FieldByName('NUM_PROT').AsInteger;
IBQuery2.Open;
IBQuery2.First;
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger =4
   Then Prepare_Per_Vendita
   Else Prepare_Per_Acquisto;
while not IBQuery2.Eof do
begin
if IBQuery2.FieldByName('CliFor_Id').asinteger = -1 then
begin
dtedtDataDoc.Date := IBQuery2.FieldByName('DATA_DOC').AsDateTime;
dtedtDataMov.Date := IBQuery2.FieldByName('DATA_MOV').AsDateTime;
edtDescrMov.Text := IBQuery2.FieldByName('DESCR_MOV').AsString;
rxspedtNumDoc.Text :=IntToStr(IBQuery2.FieldByName('NUM_DOC').AsInteger);
//rxdblcContropartitaNOME.KeyValue := IBQuery2.FieldByName('PIANOCONTO_ID').AsInteger;
rxdblcContropartitaNOME.KeyValue := IBQuery2.FieldByName('PIANOCONTO_ID').AsInteger;
if IBQuery2.FieldByName('TIPO_MOV').AsInteger =4 then
rxcalcedtTotalePagato.Value := IBQuery2.FieldByName('DARE').AsCurrency
else
RxCalcEdit1.Value := IBQuery2.FieldByName('AVERE').AsCurrency;
edtBanca.Text :=IBQuery2.FieldByName('BANCA_DESCR').AsString;
edtNote.Text :=IBQuery2.FieldByName('Note').AsString;
Edit2.Text := inttostr(IBQuery2.FieldByName('NUM_REG').AsInteger);
Edit3.Text := inttostr(IBQuery2.FieldByName('NUM_PROT2').AsInteger);


rxspedtAssNum.Text := IBQuery2.FieldByName('Num_ass').AsString;
dtedtDataScadenza.date := IBQuery2.FieldByName('ASS_DATA_SCAD').AsDateTime;
try
rxdblcDeposito.KeyValue := IBQuery2.FieldByName('DEPOSITO_DESCR').AsString;
except
end;
rxmdPrimaNota.Insert;
dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:= IBQuery2.FieldByName('SOTTOCONTO_DESCR').AsString;
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=IBQuery2.FieldByName('PIANOCONTO_ID').AsInteger;
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=IBQuery2.FieldByName('NOME_CONTO').AsString;
dsContab.DataSet.FieldByName('NUM_DOC').AsString:=IBQuery2.FieldByName('NUM_DOC').AsString;
dsContab.DataSet.FieldByName('NUM_DOC_LETT').AsString:=IBQuery2.FieldByName('NUM_DOC_LETT').AsString;
rxmdPrimaNota.FieldByName('AVERE').AsCurrency:= 0;
rxmdPrimaNota.FieldByName('DARE').AsCurrency:= 0;
dsContab.DataSet.FieldByName('DARE').AsCurrency :=IBQuery2.FieldByName('DARE').AsCurrency;
dsContab.DataSet.FieldByName('AVERE').AsCurrency:=IBQuery2.FieldByName('AVERE').AsCurrency;
dsContab.DataSet.FieldByName('DATA_DOC').AsDateTime := IBQuery2.FieldByName('DATA_DOC').AsDateTime;
dsContab.DataSet.FieldByName('DATA_MOV').AsDateTime := IBQuery2.FieldByName('DATA_MOV').AsDateTime;
dsContab.DataSet.FieldByName('Doc_ID').asinteger :=-1;
dsContab.DataSet.FieldByName('CliFor_Id').asinteger := -1;
dsContab.DataSet.FieldByName('abbuono').AsCurrency :=0;
dsContab.DataSet.FieldByName('fk_scadenza').asinteger :=-1;
dsContab.DataSet.FieldByName('ASS_DATA_SCAD').AsDateTime :=IBQuery2.FieldByName('DATA_MOV').AsDateTime;
dsContab.DataSet.FieldByName('Num_ass').AsString :=IBQuery2.FieldByName('Num_ass').AsString;
dsContab.DataSet.FieldByName('BANCA_ID').AsInteger:=IBQuery2.FieldByName('BANCA_ID').AsInteger;
dsContab.DataSet.FieldByName('BANCA_DESCR').AsString:=IBQuery2.FieldByName('BANCA_DESCR').AsString;
rxmdPrimaNota.Post;

end
else
begin
RxDBLookupCombo1.KeyValue :=IBQuery2.FieldByName('CliFor_Id').AsInteger;
rxmdPrimaNota.Insert;
rxmdPrimaNota.FieldByName('NUM_FATTURA').AsInteger:= IBQuery2.FieldByName('NUM_FATTURA').AsInteger;
rxmdPrimaNota.FieldByName('DATA_FATTURA').AsDateTime:= IBQuery2.FieldByName('DATA_FATTURA').AsDateTime;
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger =4 then
rxmdPrimaNota.FieldByName('IMPORTO').AsCurrency:= IBQuery2.FieldByName('AVERE').AsCurrency
else
rxmdPrimaNota.FieldByName('IMPORTO').AsCurrency:= IBQuery2.FieldByName('DARE').AsCurrency;

rxmdPrimaNota.FieldByName('AVERE').AsCurrency:= 0;
rxmdPrimaNota.FieldByName('DARE').AsCurrency:= 0;

if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger =4 then
rxmdPrimaNota.FieldByName('AVERE').AsCurrency:= IBQuery2.FieldByName('AVERE').AsCurrency
else
rxmdPrimaNota.FieldByName('DARE').AsCurrency:= IBQuery2.FieldByName('DARE').AsCurrency;

rxmdPrimaNota.FieldByName('DATA_SCADENZA').AsDateTime:= IBQuery2.FieldByName('DATA_SCADENZA').AsDateTime;
rxmdPrimaNota.FieldByName('FK_Scadenza').AsInteger:=IBQuery2.FieldByName('FK_Scadenza').AsInteger;
rxmdPrimaNota.FieldByName('Doc_ID').AsInteger:=IBQuery2.FieldByName('Doc_ID').AsInteger;
rxmdPrimaNota.FieldByName('CliFor_ID').AsInteger:=IBQuery2.FieldByName('CliFor_ID').AsInteger;
rxmdPrimaNota.FieldByName('Tipo_CliFor').AsInteger:=IBQuery2.FieldByName('Tipo_CliFor').AsInteger;
rxmdPrimaNota.FieldByName('Num_Doc').AsInteger:=IBQuery2.FieldByName('Num_Doc').AsInteger;
rxmdPrimaNota.FieldByName('NUM_FATTURA').AsInteger:=IBQuery2.FieldByName('NUM_FATTURA').AsInteger;
rxmdPrimaNota.FieldByname('SOTTOCONTO_DESCR').AsString:=IBQuery2.FieldByName('SOTTOCONTO_DESCR').AsString;
rxmdPrimaNota.FieldByname('PIANOCONTO_ID').AsInteger:=IBQuery2.FieldByName('PIANOCONTO_ID').AsInteger;
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=IBQuery2.FieldByName('NOME_CONTO').AsString;
dsContab.DataSet.FieldByName('NUM_DOC_LETT').AsString:=IBQuery2.FieldByName('NUM_DOC_LETT').AsString;
dsContab.DataSet.FieldByName('DATA_DOC').AsDateTime := IBQuery2.FieldByName('DATA_DOC').AsDateTime;
dsContab.DataSet.FieldByName('DATA_MOV').AsDateTime := IBQuery2.FieldByName('DATA_MOV').AsDateTime;
dsContab.DataSet.FieldByName('ASS_DATA_SCAD').AsDateTime :=IBQuery2.FieldByName('DATA_MOV').AsDateTime;
dsContab.DataSet.FieldByName('Num_ass').AsString :=IBQuery2.FieldByName('Num_ass').AsString;
dsContab.DataSet.FieldByName('BANCA_ID').AsInteger:=IBQuery2.FieldByName('BANCA_ID').AsInteger;
dsContab.DataSet.FieldByName('BANCA_DESCR').AsString:=IBQuery2.FieldByName('BANCA_DESCR').AsString;


rxmdPrimaNota.Post;
end;
IBQuery2.Next;
end;
bbNuovo.Enabled := False;
bbSalva.Enabled := True;
bbAnnulla.Enabled := True;
Brws_Mode(False);


end;
end;

procedure TfrmInsInPNPagamento.Kill_rxMemData;
begin
 rxmdPrimaNota.Active:=True;
 rxmdPrimaNota.First;
 While Not(rxmdPrimaNota.EoF) DO rxmdPrimaNota.Delete;
 rxmdPrimaNota.Active:=False;
 rxmdPrimaNota.Active:=True;
end;

procedure TfrmInsInPNPagamento.Save_In_DB;
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
//dmodAz.ibNum_Reg.Params[0].asdate:=dtedtDataMov.Date;
//dmodAz.ibNum_Reg.ExecProc;
//Edit2.Text := inttostr(dmodAz.ibNum_Reg.Params[1].AsInteger+1);
end;
Set_Values;
{
dmodAz.ibqryContab.Insert;
dmodAz.ibqryContab.FieldByName('DATA_DOC').AsDateTime := dDataDoc;
dmodAz.ibqryContab.FieldByName('DATA_MOV').AsDateTime := dDataMov;
dmodAz.ibqryContab.FieldByName('NUM_REG').asinteger := strtoint(Edit2.Text);
dmodAz.ibqryContab.FieldByName('DESCR_MOV').asstring := strDescMov;
dmodAz.ibqryContab.FieldByName('NUM_DOC').AsInteger:= intNDoc;
dmodAz.ibqryContab.FieldByName('NUM_PROT').asinteger := intNProt;
dmodAz.ibqryContab.FieldByName('DARE').AsCurrency := 0;
dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:= 0;
dmodAz.ibqryContab.FieldByName('Doc_ID').asinteger :=-1;
dmodAz.ibqryContab.FieldByName('CliFor_Id').asinteger := -1;
dmodAz.ibqryContab.FieldByName('Note').AsString :=strNota;
dmodAz.ibqryContab.FieldByName('Totale_Pagato').AsCurrency :=rxcalcedtTotalePagato.Value;
dmodAz.ibqryContab.FieldByName('sbilancio').AsCurrency :=0;
dmodAz.ibqryContab.FieldByName('nome_Conto').AsString :=strNomeConto;
dmodAz.ibqryContab.FieldByName('abbuono').AsCurrency :=0;
dmodAz.ibqryContab.FieldByName('fk_scadenza').asinteger :=-1;
dmodAz.ibqryContab.FieldByName('ASS_DATA_SCAD').AsDateTime :=dDataScad;
dmodAz.ibqryContab.FieldByName('Num_ass').AsString :=rxspedtAssNum.Text;
dmodAz.ibqryContab.FieldByName('BANCA_ID').AsInteger:=intID_Banca;
dmodAz.ibqryContab.FieldByName('BANCA_DESCR').AsString:=strBanca;
dmodAz.ibqryContab.FieldByName('deposito_codice').AsString := dsDeposito.DataSet.FieldByName('codice').AsString;
dmodAz.ibqryContab.FieldByName('deposito_descr').AsString := dsDeposito.DataSet.FieldByName('descr').AsString;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('DARE').AsCurrency :=rxcalcedtTotalePagato.Value
Else dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:=rxcalcedtTotalePagato.Value;
dmodAz.ibqryContab.FieldByName('SOTTOCONTO_DESCR').asstring :=strContropartita;
dmodAz.ibqryContab.FieldByName('PIANOCONTO_ID').AsInteger :=intIDPianoConti;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 1
Else dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 2;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 4
Else dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 5;
dmodAz.ibqryContab.FieldByName('CON_DETT').AsInteger := 0;
dmodAz.ibqryContab.Post;
}
While Not(rxmdPrimaNota.EoF) Do
Begin
dmodAz.ibqryContab.Insert;
dmodAz.ibqryContab.FieldByName('DATA_DOC').AsDateTime := dtedtDataDoc.Date; 
//rxmdPrimaNota.FieldByname('DATA_DOC').AsDateTime;
dmodAz.ibqryContab.FieldByName('DATA_MOV').AsDateTime := dDataMov;
dmodAz.ibqryContab.FieldByName('NUM_REG').asinteger := strtoint(Edit2.Text);
dmodAz.ibqryContab.FieldByName('DESCR_MOV').asstring := strDescMov;
dmodAz.ibqryContab.FieldByName('NUM_DOC').AsInteger:=rxmdPrimaNota.FieldByName('NUM_DOC').AsInteger;
dmodAz.ibqryContab.FieldByName('NUM_DOC_LETT').AsString:=rxmdPrimaNota.FieldByName('NUM_DOC_LETT').AsString;
dmodAz.ibqryContab.FieldByName('NUM_PROT').asinteger := intNProt;
dmodAz.ibqryContab.FieldByName('DARE').AsCurrency := rxmdPrimaNota.FieldByname('DARE').AsCurrency;
dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:= rxmdPrimaNota.FieldByname('AVERE').AsCurrency;
dmodAz.ibqryContab.FieldByName('Doc_ID').asinteger := rxmdPrimaNota.FieldByname('Doc_Id').AsInteger;
dmodAz.ibqryContab.FieldByName('CliFor_Id').asinteger := rxmdPrimaNota.FieldByname('CliFor_Id').AsInteger;
dmodAz.ibqryContab.FieldByName('Note').AsString := edtNote.Text;
dmodAz.ibqryContab.FieldByName('Totale_Pagato').AsCurrency := rxmdPrimaNota.FieldByname('Totale_Pagato').AsCurrency;
dmodAz.ibqryContab.FieldByName('sbilancio').AsCurrency := rxmdPrimaNota.FieldByname('sbilancio').AsCurrency;
dmodAz.ibqryContab.FieldByName('num_fattura').asinteger := rxmdPrimaNota.FieldByname('num_fattura').AsInteger;
dmodAz.ibqryContab.FieldByName('nome_Conto').AsString := rxmdPrimaNota.FieldByname('nome_Conto').AsString;
dmodAz.ibqryContab.FieldByName('data_fattura').asdatetime := rxmdPrimaNota.FieldByname('data_fattura').AsDateTime;
dmodAz.ibqryContab.FieldByName('abbuono').AsFloat := rxmdPrimaNota.FieldByname('abbuono').AsCurrency;
dmodAz.ibqryContab.FieldByName('fk_scadenza').asinteger := rxmdPrimaNota.FieldByname('fk_scadenza').AsInteger;
dmodAz.ibqryContab.FieldByName('ASS_DATA_SCAD').AsDateTime :=  rxmdPrimaNota.FieldByname('ASS_DATA_SCAD').AsDateTime;
dmodAz.ibqryContab.FieldByName('Num_ass').AsString :=  rxmdPrimaNota.FieldByName('Num_ass').AsString;
dmodAz.ibqryContab.FieldByName('BANCA_ID').AsInteger:=intID_Banca;
dmodAz.ibqryContab.FieldByName('BANCA_DESCR').AsString:=strBanca;
dmodAz.ibqryContab.FieldByName('DATA_SCADENZA').AsDateTime:=rxmdPrimaNota.FieldByname('DATA_SCADENZA').AsDateTime;
dmodAz.ibqryContab.FieldByName('deposito_codice').AsString := dsDeposito.DataSet.FieldByName('codice').AsString;
dmodAz.ibqryContab.FieldByName('deposito_descr').AsString := dsDeposito.DataSet.FieldByName('descr').AsString;
//If Not(boolVendita)
//Then dmodAz.ibqryContab.FieldByName('DARE').AsCurrency :=
//                 rxmdPrimaNota.FieldByname('IMPORTO').AsCurrency
//Else dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:=
//                 rxmdPrimaNota.FieldByname('IMPORTO').AsCurrency;
dmodAz.ibqryContab.FieldByName('SOTTOCONTO_DESCR').asstring :=  rxmdPrimaNota.FieldByName('SOTTOCONTO_DESCR').AsString;
dmodAz.ibqryContab.FieldByName('PIANOCONTO_ID').AsInteger :=  rxmdPrimaNota.FieldByName('PIANOCONTO_ID').AsInteger;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 1
Else dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 2;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 4
Else dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 5;
dmodAz.ibqryContab.FieldByName('CON_DETT').AsInteger := 0;
dmodAz.ibqryContab.Post;

rxmdPrimaNota.Next;
End;
  Aggiorna_Scadenze;

if dmodAz.modifica = false then
begin
dmodAz.ibNum_RegD.Open;
dmodAz.ibNum_RegD.Insert;
dmodAz.ibNum_RegD.FieldByName('NUMERO').asinteger := strtoint(Edit2.Text);
dmodAz.ibNum_RegD.FieldByName('DATA').AsDateTime :=dDataMov;
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
End;

procedure TfrmInsInPNPagamento.Set_Values;
begin
  Try
   dTotalePagato:=rxcalcedtTotalePagato.Value;
   dDataMov:=dtedtDataMov.Date;
   dDataDoc:=dtedtDataDoc.Date;
   dDataScad:=dtedtDataScadenza.Date;
   intNDoc:=strtoint(rxspedtNumDoc.Text);
   strDescMov:=edtDescrMov.text;
   strNota:=edtNote.text;
   //intNumAss:=rxspedtAssNum.AsInteger;
  Except
  End;
{
  Try
   intCliForID:=rxdblcCliFor.KeyValue;
   strCliFor:=rxdblcCliFor.LookupSource.DataSet.FieldByName('DENOMINAZIONE').AsString;
   // Contropartita
   If (dmodAz.ibTab_Piano_Conti.Locate('TIPO',intCliForID,[]))Then
    Begin
     intCliFor_PianoConti:=dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger;
     strCliFor_Contropartita:=dmodAz.ibTab_Piano_ContiDESCR.AsString;
     strCliFor_NomeConto:=dmodAz.ibTab_Piano_ContiNOME_CONTO.AsString;
    End
   Else Begin
          intCliFor_PianoConti:=-1;
          strCliFor_Contropartita:='-';
          strCliFor_NomeConto:='-';
        End;
  Except
  End;
   intIDPianoConti:=rxdblcContropartita.KeyValue;
   strContropartita:=rxdblcContropartita.LookupSource.DataSet.FieldByName('DESCR').AsString;
   strNomeConto:=rxdblcContropartita.LookupSource.DataSet.FieldByName('Nome_Conto').AsString;
      }
  Try
    intID_Banca:=-1;//rxdblcBanca.keyvalue;
    //    strBanca:=rxdblcBanca.DataSource.DataSet.FieldByName('DESCR').AsString;
    strBanca:=edtBanca.Text;
  Except
    intID_Banca:=-1;
    strBanca:='';
  End;
end;

procedure TfrmInsInPNPagamento.Set_Stats_To_Null;
begin
 dTotale:=0;
 dSbilancio:=0;
 Refresh_Stats;
 rxcalcedtTotalePagato.Value := 0;
 rxspedtNumDoc.Text := '0';
end;

procedure TfrmInsInPNPagamento.Refresh_Stats;
begin
 Try
  stTotale.Caption:=FormatFloat('0.00',dTotale);
  //Format('%m',[dTotale]);
  stSbilancio.Caption:=FormatFloat('0.00',dTotale);
  //Format('%m',[dSbilancio]);
 Except
  stTotale.Caption:='0';
  stSbilancio.Caption:='0';
 End;
end;

procedure TfrmInsInPNPagamento.Set_Stats_Initial;
begin
if dsContab.DataSet.IsEmpty then exit;
 dTotaleDare:=0;
 dTotaleAvere:=0;
 dTotale:=0;
 dsContab.DataSet.DisableControls;
 dsContab.DataSet.First;
 While Not(dsContab.DataSet.eof) Do
 Begin
   dTotaleDare:=dTotaleDare+dsContab.DataSet.FieldByName('DARE').AsCurrency;
   dTotaleAvere:=dTotaleAvere+dsContab.DataSet.FieldByName('AVERE').AsCurrency;
   dsContab.DataSet.Next;
 End;
 dsContab.DataSet.EnableControls;
 dSbilancio:=dTotaleDare-dTotaleAvere;
 stSbilancio.Caption := FormatFloat('0.00',dSbilancio);
 stTotale.Caption := FormatFloat('0.00',dTotaleDare);
 StaticText1.Caption := FormatFloat('0.00',dTotaleAvere);
end;

procedure TfrmInsInPNPagamento.pnlDatiContabExit(Sender: TObject);
begin
// Set_Values;
end;

procedure TfrmInsInPNPagamento.bbAnnullaClick(Sender: TObject);
begin
If (MessageDlg('Annullare?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
then begin
If (dsContab.DataSet.State in [dsInsert, dsEdit])
 Then  dsContab.DataSet.Cancel;
Brws_Mode(True);
Kill_rxMemData;
If (Application.MessageBox('Vuoi continuare con un nuovo inserimento?','Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
 Then Close
 else
 frmInsInPNPagamento.Show;
End;
end;

procedure TfrmInsInPNPagamento.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmInsInPNPagamento.bbSalvaClick(Sender: TObject);
begin
If (rxmdPrimaNota.IsEmpty)
Then Begin
Application.MessageBox('Inserire almeno una fattura!!',
                     'Attendere',MB_OK);
Exit;
End;
if dmodAz.modifica = false then
CONTROLLONUMREG;
if contr = 1 then
exit;

 Set_Stats_Initial;
// Set_Values;
If Not(dSbilancio=0) Then
Case (Application.MessageBox('Operazione sbilanciata, vuoi salvare comunque?',
      'Attendere',MB_YESNOCANCEL+MB_ICONWARNING)) Of
ID_No: Begin
     Kill_rxMemData;
     Brws_Mode(True);
     exit;
If (Application.MessageBox('Vuoi continuare con nuovo inserimento?',
   'Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
Then Close;
       End;
    ID_Cancel: Exit;
   End;
If (dsContab.DataSet.State in [dsInsert, dsEdit])
Then  dsContab.DataSet.Post;
 Save_In_DB;
 Kill_rxMemData;
 Brws_Mode(True);
Pulsanti2(True);
Pulsanti(True);
 If (Application.MessageBox('Vuoi continuare con nuovo inserimento?','Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
   Then Close;
end;

procedure TfrmInsInPNPagamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:=bbEsci.Enabled;
end;

procedure TfrmInsInPNPagamento.bbNuovoClick(Sender: TObject);
begin
RxMemoryData1.Open;
RxMemoryData1.Insert;

 dTotalePagato:=0;
 dTotale:=0;
 dSbilancio:=0;
 dDataMov:=Date;
// dDataDoc:=Date;
 dtedtDataMov.Date:=Date;
// dtedtDataDoc.Date:=Date;
 intNDoc:=0;
 intNProt:=-1;
 intCliForID:=-1;
 intIDPianoConti:=-1;
 strDescMov:='';
 strCliFor:='';
 strNota:='';
 strContropartita:='';

 Brws_Mode(False);
 Kill_rxMemData;
 Set_Stats_To_Null;

//dsCliFor.DataSet.Open;

// Refresh_Stats;
 If (boolVendita)
   Then Prepare_Per_Vendita
   Else Prepare_Per_Acquisto;

dtedtDataScadenza.Date := Now;
dtedtDataMov.SetFocus;
dtedtDataMov.SelectAll;
dmodAz.ibTab_Piano_Conti.Open;
IBQuery1.Open;
rxmdPrimaNota.Open;
//dsCliFor.DataSet.Open;
dmodAz.ibNum_Reg.Params[0].asdate:=dtedtDataMov.Date;
dmodAz.ibNum_Reg.ExecProc;
Edit2.Text := inttostr(dmodAz.ibNum_Reg.Params[1].AsInteger+1);

End;

Procedure TfrmInsInPNPagamento.Brws_Mode(boolMode: Boolean);
Begin
 // panels
 pnlDatiContab.Enabled:=Not(boolMode);
 pnlContab.Enabled:=Not(boolMode);
// dsContab.AutoEdit:=Not(boolMode);
 // buttons
 bbNuovo.Enabled:=boolMode;
 bbEsci.Enabled:=boolMode;
 bbSalva.Enabled:=Not(boolMode);
 bbAnnulla.Enabled:=Not(boolMode);
 bbScadenze.Enabled:=Not(boolMode);
End;

procedure TfrmInsInPNPagamento.FormCreate(Sender: TObject);
begin
 dsPianoConti.DataSet.Open;
end;

procedure TfrmInsInPNPagamento.bbScadenzeClick(Sender: TObject);
begin
 frmScadenze:=TfrmScadenze.Create(self);

frmScadenze.rbNonPagScad.Checked:=True;
frmScadenze.rbTutteScad.Enabled:=False;
intPK_Scadenza:=-1;
frmScadenze.boolPerPassareInPrimaNota:=True;
If Not(dmodAz.ibqTab_Cli.Active)
Then dmodAz.ibqTab_Cli.Active:=True;
If Not(dmodAz.ibqTab_For.Active)
Then dmodAz.ibqTab_For.Active:=True;
// Ifo for Cli/For
If (boolVendita)
Then Begin
frmScadenze.rbCli.Checked:=True;
frmScadenze.rxdblcCliID.KeyValue:=rxdblcCliFor.KeyValue;
End
Else Begin
frmScadenze.rbForn.Checked:=True;
frmScadenze.rxdblcForID.KeyValue:=rxdblcCliFor.KeyValue;
End;
Try
frmScadenze.Make_SQL;
frmScadenze.bbAggiorna.Click;
Except
End;
frmScadenze.ShowModal;
{
If (boolOK_Scadenza_Passata) Then
Begin
intPK_Scadenza:=intPK_Scadenza_PerPassare;
Try
// Contropartita
dmodAz.ibTab_Piano_Conti.Locate('Tipo',intCliFor_ID_PP,[]);
iPianoConto:=dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger;
sControPart:=dmodAz.ibTab_Piano_ContiDESCR.AsString;
Except
iPianoConto:=-1;
sControPart:='';
End;
Try
rxmdPrimaNota.Insert;
rxmdPrimaNota.FieldByName('FK_Scadenza').AsInteger:=intPK_Scadenza;
rxmdPrimaNota.FieldByName('Doc_ID').AsInteger:=intDoc_ID_PP;
rxmdPrimaNota.FieldByName('CliFor_ID').AsInteger:=intCliFor_ID_PP;
rxmdPrimaNota.FieldByName('Tipo_CliFor').AsInteger:=intCliFor_Tipo_PP;
rxmdPrimaNota.FieldByName('Num_Doc').AsInteger:=intNum_Doc_PP;
rxmdPrimaNota.FieldByName('NUM_FATTURA').AsInteger:=intNum_Doc_PP;
rxmdPrimaNota.FieldByname('SOTTOCONTO_DESCR').AsString:=sControPart;
rxmdPrimaNota.FieldByname('PIANOCONTO_ID').AsInteger:=iPianoConto;
rxmdPrimaNota.FieldByName('Importo').asFloat:=dImporto_PP;
rxmdPrimaNota.FieldByName('DATA_SCADENZA').AsDateTime:=dtDataScad_PP;
rxmdPrimaNota.Post;
Except
End;
End
Else intPK_Scadenza:=-1;

}
frmScadenze.Free;


//Set_Stats_Initial;
end;

procedure TfrmInsInPNPagamento.Aggiorna_Scadenze;
Var
 iPK_Scad_Locale: Integer;
begin
 dmodAz.ibqryScadenze.Open;
 rxmdPrimaNota.First;
 While Not(rxmdPrimaNota.EoF) Do
 Begin
  iPK_Scad_Locale:=rxmdPrimaNota.FieldByname('FK_SCADENZA').AsInteger;
   If Not(iPK_Scad_Locale=-1) Then
    If (dmodAz.ibqryScadenze.Locate('PK_Codice',iPK_Scad_Locale,[]))Then
     Begin
      Try
        dmodAz.ibqryScadenze.Edit;
        dmodAz.ibqryScadenzeDATO.AsCurrency:=rxmdPrimaNota.FieldByname('IMPORTO').AsCurrency+dmodAz.ibqryScadenzeDATO.AsCurrency;
        dmodAz.ibqryScadenzeDADARE.AsCurrency:=dmodAz.ibqryScadenzeDADARE.AsCurrency-rxmdPrimaNota.FieldByname('IMPORTO').AsCurrency;
        IF (dmodAz.ibqryScadenzeDADARE.AsFloat <=0) THEN
        dmodAz.ibqryScadenzePAGATO.AsString:='S';
        dmodAz.ibqryScadenze.Post;
      Except
      End;
     End;
   rxmdPrimaNota.Next;
 End;
 dmodAz.ibqryScadenze.Close;
end;



procedure TfrmInsInPNPagamento.rxcalcedtTotalePagatoExit(Sender: TObject);
begin
 Try
 If (dsContab.DataSet.State in [dsInsert, dsEdit]) then exit;
  dTotalePagato:=rxcalcedtTotalePagato.Value;
  Set_Stats_Initial;
  Refresh_Stats
 Except
 End;
end;

procedure TfrmInsInPNPagamento.rxdblcContropartitaChange(Sender: TObject);
begin
 Try
  rxdblcContropartitaNOME.KeyValue:=rxdblcContropartita.KeyValue;
 Except
End;
ibqSaldo.Close;
ibqSaldo.ParamByName('PCON').AsInteger :=rxdblcContropartitaNOME.KeyValue;
ibqSaldo.Open;
end;

procedure TfrmInsInPNPagamento.rxdblcContropartitaNOMEChange(
  Sender: TObject);
begin
 rxdblcContropartita.KeyValue:=rxdblcContropartitaNOME.KeyValue;

ibqSaldo.Close;
ibqSaldo.ParamByName('PCON').AsInteger :=rxdblcContropartitaNOME.KeyValue;
ibqSaldo.Open;
end;

procedure TfrmInsInPNPagamento.dtedtDataMovKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
dtedtDataDoc.SetFocus;
dtedtDataDoc.SelectAll;
end;
end;

procedure TfrmInsInPNPagamento.dtedtDataDocKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
rxspedtNumDoc.SetFocus;
rxspedtNumDoc.SelectAll;
end;

end;

procedure TfrmInsInPNPagamento.rxdblcCliForKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
rxcalcedtTotalePagato.SetFocus;
rxcalcedtTotalePagato.SelectAll;
end;

procedure TfrmInsInPNPagamento.rxdblcContropartitaNOMEKeyPress(
  Sender: TObject; var Key: Char);
begin
if key = #13 then
rxdblcContropartita.SetFocus;
end;

procedure TfrmInsInPNPagamento.rxcalcedtTotalePagatoKeyPress(
  Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
RxCalcEdit1.SetFocus;
RxCalcEdit1.SelectAll;
end;
end;

procedure TfrmInsInPNPagamento.rxdblcContropartitaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
rxcalcedtTotalePagato.SetFocus;
rxcalcedtTotalePagato.SelectAll;
end;
end;

procedure TfrmInsInPNPagamento.edtDescrMovKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
RxDBLookupCombo1.SetFocus;
end;
end;

procedure TfrmInsInPNPagamento.Pulsanti(boolMode: Boolean);
begin
 SpeedButton1.Enabled:=boolMode;
 SpeedButton2.Enabled:=boolMode;
 SpeedButton4.Enabled:=Not(boolMode);
 SpeedButton3.Enabled:=Not(boolMode);
 SpeedButton5.Enabled:=boolMode;
end;

procedure TfrmInsInPNPagamento.Pulsanti2(boolMode: Boolean);
begin
 SpeedButton7.Enabled:=boolMode;
 SpeedButton8.Enabled:=boolMode;
 SpeedButton10.Enabled:=Not(boolMode);
 SpeedButton9.Enabled:=Not(boolMode);
 SpeedButton11.Enabled:=boolMode;
end;

procedure TfrmInsInPNPagamento.bbSottoContiClick(Sender: TObject);
begin
 With (TfPianoConti.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;

end;

procedure TfrmInsInPNPagamento.RxDBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
rxdblcCliFor.SetFocus;
end;
end;

procedure TfrmInsInPNPagamento.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
DBDateEdit1.SetFocus;
end;
end;

procedure TfrmInsInPNPagamento.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
DBEdit2.SetFocus;
end;
end;

procedure TfrmInsInPNPagamento.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
DBDateEdit2.SetFocus;
end;
end;

procedure TfrmInsInPNPagamento.SpeedButton1Click(Sender: TObject);
begin
Pulsanti(False);
///////////////
rxdblcCliFor.Enabled := True;
RxDBLookupCombo1.Enabled := True;
////////////////
dsContab.DataSet.Insert;
DBEdit1.SetFocus;
end;

procedure TfrmInsInPNPagamento.SpeedButton2Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
dsPianoConti.DataSet.Open;
dsCliFor.DataSet.Open;
Pulsanti(False);
dsContab.DataSet.Edit;
rxdblcCliFor.Enabled := True;
RxDBLookupCombo1.Enabled := True;
end;

procedure TfrmInsInPNPagamento.SpeedButton3Click(Sender: TObject);
begin
dsContab.DataSet.Cancel;
Pulsanti(True);
rxdblcCliFor.Enabled := False;
RxDBLookupCombo1.Enabled := False;
end;

procedure TfrmInsInPNPagamento.SpeedButton4Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
DBDateEdit2.SetFocus;
Try
intCliForID:=rxdblcCliFor.KeyValue;
strCliFor:=rxdblcCliFor.LookupSource.DataSet.FieldByName('DENOMINAZIONE').AsString;
   // Contropartita
   If (dmodAz.ibTab_Piano_Conti.Locate('TIPO',intCliForID,[]))Then
    Begin
     intCliFor_PianoConti:=dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger;
     strCliFor_Contropartita:=dmodAz.ibTab_Piano_ContiDESCR.AsString;
     strCliFor_NomeConto:=dmodAz.ibTab_Piano_ContiNOME_CONTO.AsString;
    End
   Else Begin
          intCliFor_PianoConti:=-1;
          strCliFor_Contropartita:='-';
          strCliFor_NomeConto:='-';
        End;
  Except
  End;

dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:= strCliFor_Contropartita;
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=intCliFor_PianoConti;
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=strCliFor_NomeConto;
If (boolVendita)
Then dsContab.DataSet.FieldByName('TIPO_CLIFOR').asinteger := 1
Else dsContab.DataSet.FieldByName('TIPO_CLIFOR').asinteger := 2;
dsContab.DataSet.FieldByName('DARE').AsCurrency :=0;
dsContab.DataSet.FieldByName('AVERE').AsCurrency:=0;
If Not(boolVendita)
Then dsContab.DataSet.FieldByName('DARE').AsCurrency :=
                 DBEdit2.Field.AsCurrency
Else dsContab.DataSet.FieldByName('AVERE').AsCurrency:=
                 DBEdit2.Field.AsCurrency;

//dsContab.DataSet.FieldByName('DATA_DOC').AsDateTime :=DBDateEdit1.Field.AsDateTime;
dsContab.DataSet.FieldByName('DATA_DOC').AsDateTime :=dtedtDataDoc.Date;
dsContab.DataSet.FieldByName('NUM_DOC_LETT').AsString:=DBEdit4.Field.AsString;
dsContab.DataSet.FieldByName('NUM_DOC').AsString:=DBEdit1.Field.AsString;
dsContab.DataSet.FieldByName('DATA_MOV').AsDateTime := dtedtDataMov.Date;
dsContab.DataSet.FieldByName('CliFor_Id').asinteger := intCliForID;

dsContab.DataSet.Post;
Set_Stats_Initial;
Refresh_Stats;
Pulsanti(True);
rxdblcCliFor.Enabled := False;
RxDBLookupCombo1.Enabled := False;
end;

procedure TfrmInsInPNPagamento.SpeedButton5Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
If (MessageDlg('Eliminare riga?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then  Begin
dsContab.DataSet.Delete;
Set_Stats_Initial;
Refresh_Stats;
//Pulsanti(False);
End;

end;

procedure TfrmInsInPNPagamento.RxDBLookupCombo1Change(Sender: TObject);
begin
 rxdblcCliFor.KeyValue:=RxDBLookupCombo1.KeyValue;
end;

procedure TfrmInsInPNPagamento.rxdblcCliForChange(Sender: TObject);
begin
 RxDBLookupCombo1.KeyValue:=rxdblcCliFor.KeyValue;
end;

procedure TfrmInsInPNPagamento.dtedtDataMovChange(Sender: TObject);
begin
if dmodAz.modifica = false then
begin
dmodAz.ibNum_Reg.Params[0].asdate:=dtedtDataMov.Date;
dmodAz.ibNum_Reg.ExecProc;
Edit2.Text := inttostr(dmodAz.ibNum_Reg.Params[1].AsInteger+1);
end;
end;

procedure TfrmInsInPNPagamento.BitBtn2Click(Sender: TObject);
begin
fClienti:=TfClienti.Create(Self);

fClienti.ShowModal;
fClienti.Free;

end;

procedure TfrmInsInPNPagamento.BitBtn3Click(Sender: TObject);
begin
fForn:=TfForn.Create(Self);

fForn.ShowModal;
fForn.Free;
end;

procedure TfrmInsInPNPagamento.rxspedtNumDocKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
edtDescrMov.SetFocus;
edtDescrMov.SelectAll;
end;

end;

procedure TfrmInsInPNPagamento.CONTROLLONUMREG;
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


procedure TfrmInsInPNPagamento.Edit2Exit(Sender: TObject);
begin
CONTROLLONUMREG;
end;

procedure TfrmInsInPNPagamento.DBEdit2Exit(Sender: TObject);
begin
 If (dsContab.DataSet.State in [dsbrowse]) then exit;
end;

procedure TfrmInsInPNPagamento.SpeedButton7Click(Sender: TObject);
begin
Pulsanti2(False);
///////////////
rxdblcContropartita.Enabled := True;
rxdblcContropartitaNOME.Enabled := True;
////////////////
dsContab.DataSet.Insert;
rxdblcContropartitaNOME.SetFocus;
rxcalcedtTotalePagato.Value := 0;
RxCalcEdit1.Value := 0;
end;

procedure TfrmInsInPNPagamento.SpeedButton8Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
dsPianoConti.DataSet.Open;
Pulsanti2(False);
dsContab.DataSet.Edit;
rxdblcContropartita.Enabled := True;
rxdblcContropartitaNOME.Enabled := True;
end;

procedure TfrmInsInPNPagamento.SpeedButton9Click(Sender: TObject);
begin
dsContab.DataSet.Cancel;
Pulsanti2(True);
rxdblcContropartita.Enabled := False;
rxdblcContropartitaNOME.Enabled := False;
end;

procedure TfrmInsInPNPagamento.SpeedButton11Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
If (MessageDlg('Eliminare riga?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then  Begin
dsContab.DataSet.Delete;
Set_Stats_Initial;
Refresh_Stats;
//Pulsanti(False);
End;

end;

procedure TfrmInsInPNPagamento.SpeedButton10Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
rxdblcContropartitaNOME.SetFocus;
Try
//intCliForID:=rxdblcContropartitaNOME.KeyValue;
strCliFor:=rxdblcCliFor.LookupSource.DataSet.FieldByName('DENOMINAZIONE').AsString;
   // Contropartita
   If (dmodAz.ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',rxdblcContropartita.KeyValue,[]))Then
    Begin
dsContab.DataSet.FieldByName('TIPO_CLIFOR').asinteger :=dmodAz.ibTab_Piano_Conti.FieldByName('CAPO_CONTO_CLI_FOR').AsInteger;
    End
   Else Begin
        End;
  Except
  End;


dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:= rxdblcContropartita.Text;
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=rxdblcContropartita.KeyValue;;
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=rxdblcContropartitaNOME.Text;
dsContab.DataSet.FieldByName('NUM_DOC').AsString:=rxspedtNumDoc.Text;
dsContab.DataSet.FieldByName('NUM_DOC_LETT').AsString:=edit4.Text;
dsContab.DataSet.FieldByName('DARE').AsCurrency :=0;
dsContab.DataSet.FieldByName('AVERE').AsCurrency:=0;
dsContab.DataSet.FieldByName('DARE').AsCurrency :=rxcalcedtTotalePagato.Value;
dsContab.DataSet.FieldByName('AVERE').AsCurrency:=RxCalcEdit1.Value;
dsContab.DataSet.FieldByName('DATA_DOC').AsDateTime := dtedtDataDoc.Date;
dsContab.DataSet.FieldByName('DATA_MOV').AsDateTime := dtedtDataMov.Date;
dsContab.DataSet.FieldByName('Doc_ID').asinteger :=-1;
dsContab.DataSet.FieldByName('CliFor_Id').asinteger := -1;
dsContab.DataSet.FieldByName('abbuono').AsCurrency :=0;
dsContab.DataSet.FieldByName('fk_scadenza').asinteger :=-1;
dsContab.DataSet.FieldByName('ASS_DATA_SCAD').AsDateTime :=dDataScad;
dsContab.DataSet.FieldByName('Num_ass').AsString :=rxspedtAssNum.Text;
dsContab.DataSet.FieldByName('BANCA_ID').AsInteger:=intID_Banca;
dsContab.DataSet.FieldByName('BANCA_DESCR').AsString:=strBanca;
//dsContab.DataSet.FieldByName('deposito_codice').AsString := dsDeposito.DataSet.FieldByName('codice').AsString;
//dsContab.DataSet.FieldByName('deposito_descr').AsString := dsDeposito.DataSet.FieldByName('descr').AsString;

dsContab.DataSet.Post;
Set_Stats_Initial;
Refresh_Stats;
Pulsanti2(True);
rxdblcContropartita.Enabled := False;
rxdblcContropartitaNOME.Enabled := False;
end;

END.



