unit frmuInsInPN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCGrids, RxLookup, Mask, DBCtrls, ExtCtrls, Db,
  RxMemDS, CurrEdit, RXSpin, ToolEdit, RXDBCtrl, Grids, DBGrids,
  IBCustomDataSet, IBQuery, RxDBComb;

type
  TfrmInsInPN = class(TForm)
    dsContab: TDataSource;
    dsPianoConti: TDataSource;
    dsCliFor: TDataSource;
    pnlContab: TPanel;
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
    rxmdPrimaNota: TRxMemoryData;
    DBGrid1: TDBGrid;
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
    dsDeposito: TDataSource;
    dsVisContab: TDataSource;
    IBQuery2: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField5: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField6: TIntegerField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    DateField3: TDateField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField8: TIntegerField;
    IBStringField5: TIBStringField;
    SmallintField2: TSmallintField;
    IntegerField9: TIntegerField;
    DateField4: TDateField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    SmallintField3: TSmallintField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField10: TIntegerField;
    DateField5: TDateField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    rxmdPrimaNotaNUM_ASS: TStringField;
    IBQuery2NUM_ASS: TIBStringField;
    IBQuery1NUM_ASS: TIBStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ibProtAcq: TIBDataSet;
    ibProtVen: TIBDataSet;
    ibProtAcqNUMERO: TIntegerField;
    ibProtAcqDATA: TDateField;
    ibProtVenNUMERO: TIntegerField;
    ibProtVenDATA: TDateField;
    rxmdPrimaNotaNUM_PROT2: TIntegerField;
    IBQuery2NUM_PROT2: TIntegerField;
    IBQuery1NUM_PROT2: TIntegerField;
    rxmdPrimaNotaNUM_REG: TIntegerField;
    IBQuery2NUM_REG: TIntegerField;
    IBQuery1NUM_REG: TIntegerField;
    IBDataSet1: TIBDataSet;
    IBDataSet1NUMERO: TIntegerField;
    IBDataSet1DATA: TDateTimeField;
    BitBtn1: TBitBtn;
    IBQuery2NUM_DOC_LETT: TIBStringField;
    rxmdPrimaNotaNUM_DOC_LETT: TStringField;
    IBQuery1NUM_DOC_LETT: TIBStringField;
    pnlDatiContab: TPanel;
    lblDatMov: TLabel;
    lblDataDoc: TLabel;
    lblNumDoc: TLabel;
    lblTotFattura: TLabel;
    lblDescrMov: TLabel;
    lblCliFor: TLabel;
    lblContropartita: TLabel;
    lblImponibile: TLabel;
    lblIVAperc: TLabel;
    lblImposta: TLabel;
    lblNota: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    rxdblcCliFor: TRxDBLookupCombo;
    dtedtDataMov: TDateEdit;
    dtedtDataDoc: TDateEdit;
    rxcalcedtTotalePagato: TRxCalcEdit;
    edtDescrMov: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    edtNote: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    rxdblcDeposito: TRxDBLookupCombo;
    Edit1: TEdit;
    Edit2: TEdit;
    rxspedtNumDoc: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    I1: TRxCalcEdit;
    D1: TDateEdit;
    D2: TDateEdit;
    I2: TRxCalcEdit;
    D3: TDateEdit;
    I3: TRxCalcEdit;
    D4: TDateEdit;
    I4: TRxCalcEdit;
    D5: TDateEdit;
    I5: TRxCalcEdit;
    D6: TDateEdit;
    I6: TRxCalcEdit;
    LookPagCod2: TRxDBLookupCombo;
    LookPagDescr: TRxDBLookupCombo;
    dsoPagamenti: TDataSource;
    Label6: TLabel;
    rxmdPrimaNotaPAGAMENTO_ID: TIntegerField;
    IBQuery2PAGAMENTO_ID: TIBStringField;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1campo1: TIntegerField;
    RxMemoryData1campo2: TIntegerField;
    DataSource1: TDataSource;
    IBQuery3: TIBQuery;
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
    Edit5: TEdit;
    Edit6: TEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    IBQuery2COD_ESENZ: TIntegerField;
    IBQuery2DESCR_ESENZ: TIBStringField;
    rxmdPrimaNotaCOD_ESENZ: TIntegerField;
    rxmdPrimaNotaDESCR_ESENZ: TStringField;
    IBQuery1PAGAMENTO_ID: TIBStringField;
    IBQuery1COD_ESENZ: TIntegerField;
    IBQuery1DESCR_ESENZ: TIBStringField;
    CheckBox1: TCheckBox;
    Label25: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label26: TLabel;
    rxmdPrimaNotaREG_IVA: TIntegerField;
    rxmdPrimaNotaMESE_COMP: TStringField;
    Edit7: TEdit;
    IBQuery2REG_IVA: TIntegerField;
    IBQuery2MESE_COMP: TIBStringField;
    RxDBLookupCombo3: TRxDBLookupCombo;
    ibqCliPIva: TIBQuery;
    DataSource2: TDataSource;
    ibqForPIva: TIBQuery;
    DBEdit7: TDBEdit;
    ibqSaldo: TIBQuery;
    ibqSaldoPIANOCONTO_ID: TIntegerField;
    ibqSaldoSALDO: TFloatField;
    DataSource3: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure pnlDatiContabExit(Sender: TObject);
    procedure bbAnnullaClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure bbSalvaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbNuovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure dtedtDataMovKeyPress(Sender: TObject; var Key: Char);
    procedure dtedtDataDocKeyPress(Sender: TObject; var Key: Char);
    procedure rxspedtNumDocKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure rxdblcCliForKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescrMovKeyPress(Sender: TObject; var Key: Char);
    procedure rxcalcedtTotalePagatoKeyPress(Sender: TObject;
      var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure bbSottoContiClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure rxcalcedtTotalePagatoExit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure rxdblcCliForChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dtedtDataMovChange(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure dtedtDataDocExit(Sender: TObject);
    procedure dtedtDataDocChange(Sender: TObject);
   private
    dTotale, dTotalePagato, {dTotaleDare, dTotaleAvere,} dSbilancio: Currency;
    dDataMov,dDataDoc: TDate;
    intNDoc, intNProt, intCliForID, intCliFor_PianoConti, intIDPianoConti: Integer;
    iNumProt,iNumProt2,CONTR,CONTR_PA,CONTR_PV: Integer;
    strDescMov, strCliFor, strCliFor_Contropartita,strNomeConto,
    strCliFor_NomeConto, strContropartita: String;
    Procedure Prepare_Per_Vendita;
    Procedure Prepare_Per_Acquisto;
    Procedure Kill_rxMemData;
    Procedure Save_In_DB;
    Procedure Set_Values;
    Procedure Set_Stats_To_Null;
    Procedure Refresh_Stats;
    Procedure Set_Stats_Initial;
    Procedure Brws_Mode(boolMode: Boolean);
    Procedure Pulsanti(boolMode: Boolean);
    procedure CONTROLLONUMREG;
    procedure CONTROLLONUMPROT_A;
    procedure CONTROLLONUMPROT_V;
   public
    boolVendita: Boolean;
    tipo_acq:integer;
  end;

var
  frmInsInPN: TfrmInsInPN;

implementation

uses frmuRicercaSottoconto, uPianoConti, uAzDM, frmuScadenze, uClienti,
  uForn, uPubDM;

{$R *.DFM}

Procedure TfrmInsInPN.Prepare_Per_Vendita;
Begin
 strDescMov:='Fattura di Vendita';
 edtDescrMov.Text:=strDescMov;
 self.Caption:=strDescMov;
 lblCliFor.caption:='Cliente';
 dsCliFor.DataSet:=dmodAz.ibqTab_Cli;
 dsCliFor.DataSet.Open;
 DataSource2.DataSet:=ibqCliPIva;
 DataSource2.DataSet.Open;

 lblTotFattura.Caption := 'Totale Fattura';
 BitBtn2.Visible := True;
 BitBtn3.Visible := False;
End;

Procedure TfrmInsInPN.Prepare_Per_Acquisto;
Begin

 lblCliFor.caption:='Fornitore';
 dsCliFor.DataSet:=dmodAz.ibqTab_For;
 dsCliFor.DataSet.Open;
 DataSource2.DataSet:=ibqForPIva;
 DataSource2.DataSet.Open;
 lblTotFattura.Caption := 'Totale Fattura';
 BitBtn3.Visible := True;
 BitBtn2.Visible := False;
 if tipo_acq=1 then
 begin
 strDescMov:='Fattura di Acquisto';
 edtDescrMov.Text:=strDescMov;
 self.Caption:=strDescMov;
 end;
 if tipo_acq=2 then
 begin
 strDescMov:='Fattura di Acquisto INTRA';
 edtDescrMov.Text:=strDescMov;
 self.Caption:=strDescMov;
 end;

End;

procedure TfrmInsInPN.FormShow(Sender: TObject);
begin
 // svuotare tutti i variabili
 dTotalePagato:=0;
 dTotale:=0;
 dSbilancio:=0;
 dDataMov:=Date;
 dDataDoc:=Date;
 dtedtDataMov.Date:=Date;
 dtedtDataDoc.Date:=Date;
 intNDoc:=0;
 intNProt:=-1;
 intCliForID:=-1;
 intIDPianoConti:=-1;
 strDescMov:='';
 strCliFor:='';
 strContropartita:='';
 Set_Stats_To_Null;
 // Refresh_Stats;
 If (boolVendita)
   Then Prepare_Per_Vendita
   Else Prepare_Per_Acquisto;
dsoPagamenti.DataSet.active:=True;
////////////
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
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger =2
   Then Prepare_Per_Vendita
   Else Prepare_Per_Acquisto;
while not IBQuery2.Eof do
begin
if IBQuery2.FieldByName('CliFor_Id').asinteger >0 then
begin
dtedtDataDoc.Date := IBQuery2.FieldByName('DATA_DOC').AsDateTime;
dtedtDataMov.Date := IBQuery2.FieldByName('DATA_MOV').AsDateTime;
edtDescrMov.Text := IBQuery2.FieldByName('DESCR_MOV').AsString;
rxspedtNumDoc.Text :=IntToStr(IBQuery2.FieldByName('NUM_DOC').AsInteger);
rxcalcedtTotalePagato.Value :=IBQuery2.FieldByName('Totale_Pagato').AsCurrency;
edtNote.Text :=IBQuery2.FieldByName('Note').AsString;
Edit2.Text := inttostr(IBQuery2.FieldByName('NUM_REG').AsInteger);
Edit3.Text := inttostr(IBQuery2.FieldByName('NUM_PROT2').AsInteger);
Edit4.Text := (IBQuery2.FieldByName('NUM_DOC_LETT').AsString);
Edit7.Text := (IBQuery2.FieldByName('MESE_COMP').AsString);
RxDBComboBox1.ItemIndex := (IBQuery2.FieldByName('REG_IVA').AsInteger)-1;
RxDBLookupCombo1.KeyValue := IBQuery2.FieldByName('CliFor_Id').AsInteger;
try
rxdblcDeposito.KeyValue := IBQuery2.FieldByName('DEPOSITO_DESCR').AsString;
except
end;
end
else

if ((IBQuery2.FieldByName('DARE').AsCurrency <> IBQuery2.FieldByName('IMPOSTA').AsCurrency) OR
   (IBQuery2.FieldByName('AVERE').AsCurrency <> IBQuery2.FieldByName('IMPOSTA').AsCurrency)) and
   (IBQuery2.FieldByName('DOC_ID').AsInteger <>0)  then
begin
rxmdPrimaNota.Insert;
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger =2 then
rxmdPrimaNota.FieldByName('IMPORTO').AsCurrency:= IBQuery2.FieldByName('AVERE').AsCurrency
else
rxmdPrimaNota.FieldByName('IMPORTO').AsCurrency:= IBQuery2.FieldByName('DARE').AsCurrency;
rxmdPrimaNota.FieldByName('NOME_CONTO').AsString:= IBQuery2.FieldByName('NOME_CONTO').AsString;
rxmdPrimaNota.FieldByname('SOTTOCONTO_DESCR').AsString:=IBQuery2.FieldByName('SOTTOCONTO_DESCR').AsString;
rxmdPrimaNota.FieldByname('IVA_PERC').AsInteger:=IBQuery2.FieldByName('IVA_PERC').AsInteger;
rxmdPrimaNota.FieldByname('IMPONIBILE').AsCurrency:=IBQuery2.FieldByName('IMPONIBILE').AsCurrency;
rxmdPrimaNota.FieldByname('IMPORTO').AsCurrency:=IBQuery2.FieldByName('IMPORTO').AsCurrency;
rxmdPrimaNota.FieldByname('IMPOSTA').AsCurrency:=IBQuery2.FieldByName('IMPOSTA').AsCurrency;
rxmdPrimaNota.FieldByname('PIANOCONTO_ID').AsInteger:=IBQuery2.FieldByName('PIANOCONTO_ID').AsInteger;
RxDBLookupCombo2.KeyValue:= IBQuery2.FieldByName('COD_ESENZ').AsInteger;

rxmdPrimaNota.Post;
end;
IBQuery2.Next;
end;
bbNuovo.Enabled := False;
bbSalva.Enabled := True;
bbAnnulla.Enabled := True;
Brws_Mode(False);


end;
///////////
end;

procedure TfrmInsInPN.Kill_rxMemData;
begin
 // azzerrare  Memory DS!
 rxmdPrimaNota.Active:=True;
 rxmdPrimaNota.First;
 While Not(rxmdPrimaNota.EoF) DO rxmdPrimaNota.Delete;
 rxmdPrimaNota.Active:=False;
 rxmdPrimaNota.Active:=True;
end;

Procedure TfrmInsInPN.Save_In_DB;
Var
 iIVA_PC: INTEGER;
Begin
  Try
  dmodAz.ibTabPersAz.Open;
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
//////
//////

intNProt:=1+dmodAz.ibspLastNumProt.ParamByName('LAST_NUM_PROT').AsInteger;
end;
Set_Values;
dmodAz.ibqryContab.Insert;
dmodAz.ibqryContab.FieldByName('NUM_PROT2').asinteger := strtoint(Edit3.Text);
dmodAz.ibqryContab.FieldByName('NUM_REG').asinteger := strtoint(Edit2.Text);

dmodAz.ibqryContab.FieldByName('DATA_DOC').AsDateTime := dtedtDataDoc.Date;
dmodAz.ibqryContab.FieldByName('DATA_MOV').AsDateTime := dtedtDataMov.Date;
dmodAz.ibqryContab.FieldByName('DESCR_MOV').asstring := edtDescrMov.Text;
dmodAz.ibqryContab.FieldByName('NUM_DOC').AsInteger:= intNDoc;
dmodAz.ibqryContab.FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
dmodAz.ibqryContab.FieldByName('NUM_PROT').asinteger := intNProt;
dmodAz.ibqryContab.FieldByName('PAGAMENTO_ID').AsString:=dsoPagamenti.DataSet.FieldByName('ID_PAGAMENTO').AsString;
dmodAz.ibqryContab.FieldByName('num_fattura').asinteger := intNDoc;
dmodAz.ibqryContab.FieldByName('data_fattura').asdatetime := dtedtDataDoc.Date;
dmodAz.ibqryContab.FieldByName('DARE').AsCurrency := 0;
dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:= 0;
dmodAz.ibqryContab.FieldByName('Doc_ID').asinteger :=-1;
dmodAz.ibqryContab.FieldByName('Note').AsString :=edtNote.Text;
dmodAz.ibqryContab.FieldByName('CliFor_Id').asinteger := intCliForID;
dmodAz.ibqryContab.FieldByName('Totale_Pagato').AsCurrency :=rxcalcedtTotalePagato.Value;
dmodAz.ibqryContab.FieldByName('sbilancio').AsCurrency :=0;
dmodAz.ibqryContab.FieldByName('abbuono').AsCurrency :=0;
dmodAz.ibqryContab.FieldByName('fk_scadenza').asinteger :=-1;
dmodAz.ibqryContab.FieldByName('deposito_codice').AsString := dsDeposito.DataSet.FieldByName('codice').AsString;
dmodAz.ibqryContab.FieldByName('deposito_descr').AsString := dsDeposito.DataSet.FieldByName('descr').AsString;
dmodAz.ibqryContab.FieldByName('REG_IVA').AsInteger := RxDBComboBox1.ItemIndex+1;
dmodAz.ibqryContab.FieldByName('MESE_COMP').AsString := Edit7.Text;

If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('DARE').AsCurrency :=rxcalcedtTotalePagato.Value
Else dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:=rxcalcedtTotalePagato.Value;
dmodAz.ibqryContab.FieldByName('SOTTOCONTO_DESCR').asstring :=strCliFor_Contropartita;
dmodAz.ibqryContab.FieldByName('PIANOCONTO_ID').AsInteger :=intCliFor_PianoConti;
dmodAz.ibqryContab.FieldByName('nome_Conto').AsString :=strCliFor_NomeConto;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 1
Else dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 2;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 2
Else
begin
if tipo_acq=1 then
dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 3;
if tipo_acq=2 then
dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 32;
end;
dmodAz.ibqryContab.FieldByName('CON_DETT').AsInteger := 0;
dmodAz.ibqryContab.Post;
// inserire le righe

While Not(rxmdPrimaNota.EoF) Do
Begin
dmodAz.ibqryContab.Insert;

dmodAz.ibqryContab.FieldByName('NUM_PROT2').asinteger := strtoint(Edit3.Text);
dmodAz.ibqryContab.FieldByName('NUM_REG').asinteger := strtoint(Edit2.Text);

dmodAz.ibqryContab.FieldByName('DATA_DOC').AsDateTime := dtedtDataDoc.Date;
dmodAz.ibqryContab.FieldByName('DATA_MOV').AsDateTime := dtedtDataMov.Date;
dmodAz.ibqryContab.FieldByName('DESCR_MOV').asstring := edtDescrMov.Text;
dmodAz.ibqryContab.FieldByName('NUM_DOC').AsInteger:= intNDoc;
dmodAz.ibqryContab.FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
dmodAz.ibqryContab.FieldByName('NUM_PROT').asinteger := intNProt;
dmodAz.ibqryContab.FieldByName('num_fattura').asinteger := intNDoc;
dmodAz.ibqryContab.FieldByName('PAGAMENTO_ID').AsString:=dsoPagamenti.DataSet.FieldByName('ID_PAGAMENTO').AsString;
dmodAz.ibqryContab.FieldByName('data_fattura').asdatetime := dDataDoc;
dmodAz.ibqryContab.FieldByName('DARE').AsCurrency := 0;
dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:= 0;
dmodAz.ibqryContab.FieldByName('IVA_PERC').asfloat:=rxmdPrimaNota.FieldByName('IVA_PERC').AsFloat;
dmodAz.ibqryContab.FieldByName('IMPOSTA').AsCurrency:=rxmdPrimaNota.FieldByName('IMPOSTA').AsCurrency;
dmodAz.ibqryContab.FieldByName('IMPONIBILE').AsCurrency:=rxmdPrimaNota.FieldByName('IMPONIBILE').AsCurrency;
dmodAz.ibqryContab.FieldByName('IMPORTO').AsCurrency:=rxmdPrimaNota.FieldByName('IMPORTO').AsCurrency;
dmodAz.ibqryContab.FieldByName('Doc_ID').asinteger :=-1;
dmodAz.ibqryContab.FieldByName('Note').AsString :=edtNote.Text;
dmodAz.ibqryContab.FieldByName('CliFor_Id').asinteger := -1;
dmodAz.ibqryContab.FieldByName('Totale_Pagato').AsCurrency :=rxcalcedtTotalePagato.Value;
dmodAz.ibqryContab.FieldByName('sbilancio').AsFloat := 0;
dmodAz.ibqryContab.FieldByName('nome_Conto').AsString := rxmdPrimaNota.FieldByname('nome_Conto').AsString;
dmodAz.ibqryContab.FieldByName('abbuono').AsFloat := rxmdPrimaNota.FieldByname('abbuono').AsFloat;
dmodAz.ibqryContab.FieldByName('fk_scadenza').asinteger := rxmdPrimaNota.FieldByname('fk_scadenza').AsInteger;
dmodAz.ibqryContab.FieldByName('deposito_codice').AsString := dsDeposito.DataSet.FieldByName('codice').AsString;
dmodAz.ibqryContab.FieldByName('deposito_descr').AsString := dsDeposito.DataSet.FieldByName('descr').AsString;
dmodAz.ibqryContab.FieldByName('REG_IVA').AsInteger := RxDBComboBox1.ItemIndex+1;
dmodAz.ibqryContab.FieldByName('MESE_COMP').AsString := Edit7.Text;
If not (boolVendita)
Then dmodAz.ibqryContab.FieldByName('DARE').AsCurrency  :=
    rxmdPrimaNota.FieldByname('IMPOnibile').AsCurrency
Else dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency :=
    rxmdPrimaNota.FieldByname('IMPOnibile').AsCurrency;
dmodAz.ibqryContab.FieldByName('SOTTOCONTO_DESCR').asstring :=
    rxmdPrimaNota.FieldByname('SOTTOCONTO_DESCR').AsString;
dmodAz.ibqryContab.FieldByName('PIANOCONTO_ID').AsInteger :=
    rxmdPrimaNota.FieldByname('PIANOCONTO_ID').AsInteger;
If Not(boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 1
Else dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 2;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 2
Else
begin
if tipo_acq=1 then
dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 3;
if tipo_acq=2 then
dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 32;
end;
dmodAz.ibqryContab.FieldByName('CON_DETT').AsInteger := 1;
dmodAz.ibqryContab.Post;

// Inerire riga con IVA
//If Not(rxmdPrimaNota.FieldByName('IVA_PERC').AsFloat=0)Then
Begin
dmodAz.ibqryContab.Insert;

dmodAz.ibqryContab.FieldByName('NUM_PROT2').asinteger := strtoint(Edit3.Text);
dmodAz.ibqryContab.FieldByName('NUM_REG').asinteger := strtoint(Edit2.Text);

dmodAz.ibqryContab.FieldByName('DATA_DOC').AsDateTime := dtedtDataDoc.Date;
dmodAz.ibqryContab.FieldByName('DATA_MOV').AsDateTime := dtedtDataMov.Date;
dmodAz.ibqryContab.FieldByName('DESCR_MOV').asstring := edtDescrMov.Text;
dmodAz.ibqryContab.FieldByName('NUM_DOC').AsInteger:= intNDoc;
dmodAz.ibqryContab.FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
dmodAz.ibqryContab.FieldByName('NUM_PROT').asinteger := intNProt;
dmodAz.ibqryContab.FieldByName('PAGAMENTO_ID').AsString:=dsoPagamenti.DataSet.FieldByName('ID_PAGAMENTO').AsString;
dmodAz.ibqryContab.FieldByName('num_fattura').asinteger := intNDoc;
dmodAz.ibqryContab.FieldByName('data_fattura').asdatetime := dDataDoc;
dmodAz.ibqryContab.FieldByName('DARE').AsCurrency := 0;
dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:= 0;
dmodAz.ibqryContab.FieldByName('IVA_PERC').AsFloat:=rxmdPrimaNota.FieldByName('IVA_PERC').AsFloat;
dmodAz.ibqryContab.FieldByName('IMPOSTA').AsCurrency:=rxmdPrimaNota.FieldByName('IMPOSTA').AsCurrency;
dmodAz.ibqryContab.FieldByName('Doc_ID').asinteger := rxmdPrimaNota.FieldByname('Doc_Id').AsInteger;
dmodAz.ibqryContab.FieldByName('CliFor_Id').asinteger := -1;
dmodAz.ibqryContab.FieldByName('Totale_Pagato').AsCurrency := rxmdPrimaNota.FieldByname('Totale_Pagato').AsCurrency;
dmodAz.ibqryContab.FieldByName('sbilancio').AsFloat := rxmdPrimaNota.FieldByname('sbilancio').AsFloat;
dmodAz.ibqryContab.FieldByName('abbuono').AsFloat := rxmdPrimaNota.FieldByname('abbuono').AsFloat;
dmodAz.ibqryContab.FieldByName('fk_scadenza').asinteger := rxmdPrimaNota.FieldByname('fk_scadenza').AsInteger;
dmodAz.ibqryContab.FieldByName('deposito_codice').AsString := dsDeposito.DataSet.FieldByName('codice').AsString;
dmodAz.ibqryContab.FieldByName('deposito_descr').AsString := dsDeposito.DataSet.FieldByName('descr').AsString;
dmodAz.ibqryContab.FieldByName('REG_IVA').AsInteger := RxDBComboBox1.ItemIndex+1;
dmodAz.ibqryContab.FieldByName('MESE_COMP').AsString := Edit7.Text;
If not (boolVendita)
Then dmodAz.ibqryContab.FieldByName('DARE').AsCurrency :=
    rxmdPrimaNota.FieldByName('IMPOSTA').AsCurrency
Else dmodAz.ibqryContab.FieldByName('AVERE').AsCurrency:=
    rxmdPrimaNota.FieldByName('IMPOSTA').AsCurrency;
If (boolVendita)
Then iIVA_PC:=dmodAz.ibTabPersAzIVA_VEN.asInteger
Else iIVA_PC:=dmodAz.ibTabPersAzIVA_ACQ.asInteger;
dsPianoConti.Dataset.Locate('ID_PIANO_CONTO',iIVA_PC,[]);
dmodAz.ibqryContab.FieldByName('PIANOCONTO_ID').AsInteger := iIVA_PC;
dmodAz.ibqryContab.FieldByName('SOTTOCONTO_DESCR').asstring :=
         dmodaz.ibTab_Piano_ContiDESCR.AsString;
dmodAz.ibqryContab.FieldByName('nome_Conto').AsString :=
       dmodaz.ibTab_Piano_ContiNOME_CONTO.AsString;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 1
Else dmodAz.ibqryContab.FieldByName('TIPO_CLIFOR').asinteger := 2;
If (boolVendita)
Then dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 2
Else begin
if tipo_acq=1 then
dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 3;
if tipo_acq=2 then
dmodAz.ibqryContab.FieldByName('TIPO_MOV').AsInteger := 32;
end;

dmodAz.ibqryContab.FieldByName('CON_DETT').AsInteger := 0;
dmodAz.ibqryContab.FieldByName('COD_ESENZ').AsInteger:=  rxmdPrimaNota.FieldByName('COD_ESENZ').AsInteger;
dmodAz.ibqryContab.FieldByName('DESCR_ESENZ').AsString:= rxmdPrimaNota.FieldByName('DESCR_ESENZ').AsString;

dmodAz.ibqryContab.Post;
End;
//---------------------------------------------------------------
rxmdPrimaNota.Next;
End;

if dmodAz.modifica = false then
begin

If (boolVendita) then
begin
dmodAz.ibNumProtVen.Open;
dmodAz.ibNumProtVen.Insert;
dmodAz.ibNumProtVen.FieldByName('NUMERO').asinteger := strtoint(Edit3.Text);
dmodAz.ibNumProtVen.Post;
end
else
begin
if tipo_acq=1 then begin
dmodAz.ibNumProtAcq.Open;
dmodAz.ibNumProtAcq.Insert;
dmodAz.ibNumProtAcq.FieldByName('NUMERO').asinteger := strtoint(Edit3.Text);
dmodAz.ibNumProtAcq.Post;
end
else
if tipo_acq=2 then begin
dmodAz.ibNumProtACQ_INTRA.Open;
dmodAz.ibNumProtACQ_INTRA.Insert;
dmodAz.ibNumProtACQ_INTRA.FieldByName('NUMERO').asinteger := strtoint(Edit3.Text);
dmodAz.ibNumProtACQ_INTRA.Post;
end
end;

dmodAz.ibNum_RegD.Open;
dmodAz.ibNum_RegD.Insert;
dmodAz.ibNum_RegD.FieldByName('NUMERO').asinteger := strtoint(Edit2.Text);
dmodAz.ibNum_RegD.FieldByName('DATA').AsDateTime := dtedtDataMov.Date;
dmodAz.ibNum_RegD.Post;

dmodAz.ibqryScadenze.Active:= true;
With (dmodAz.ibqryScadenze) Do
BEgin
if i1.Value <>0 then begin
Insert;
FieldByName('DOCUMENTO_ID').AsInteger:=0;
FieldByName('PAGAMENTO_ID').AsString:=LookPagDescr.KeyValue;
FieldByName('CLIFOR_ID').AsInteger:=intCliForID;
If (boolVendita) then
FieldByName('CLIFOR_TIPO').AsInteger:=1
else
FieldByName('CLIFOR_TIPO').AsInteger:=2;
FieldByName('CLIFOR_DESCR').AsString:=strCliFor_Contropartita;
FieldByName('PAGATO').AsString:='N';
FieldByName('IMPORTO').AsCurrency:=i1.Value;
FieldByName('NUM_DOC').AsInteger:=intNDoc;
FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
FieldByName('DATA_DOC').AsDateTime:=dDataDoc;
FieldByName('DATA_SCADENZA').AsDateTime:=d1.Date;
FieldByName('DATO').AsCurrency:=0;
FieldByName('DADARE').AsCurrency:=i1.Value;
Post;
end;
if i2.Value <>0 then begin
Insert;
FieldByName('DOCUMENTO_ID').AsInteger:=0;
FieldByName('PAGAMENTO_ID').AsString:=LookPagDescr.KeyValue;
FieldByName('CLIFOR_ID').AsInteger:=intCliForID;
If (boolVendita) then
FieldByName('CLIFOR_TIPO').AsInteger:=1
else
FieldByName('CLIFOR_TIPO').AsInteger:=2;
FieldByName('CLIFOR_DESCR').AsString:=strCliFor_Contropartita;
FieldByName('PAGATO').AsString:='N';
FieldByName('IMPORTO').AsCurrency:=i2.Value;
FieldByName('NUM_DOC').AsInteger:=intNDoc;
FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
FieldByName('DATA_DOC').AsDateTime:=dDataDoc;
FieldByName('DATA_SCADENZA').AsDateTime:=d2.Date;
FieldByName('DATO').AsCurrency:=0;
FieldByName('DADARE').AsCurrency:=i1.Value;
Post;
end;
if i3.Value <>0 then begin
Insert;
FieldByName('DOCUMENTO_ID').AsInteger:=0;
FieldByName('PAGAMENTO_ID').AsString:=LookPagDescr.KeyValue;
FieldByName('CLIFOR_ID').AsInteger:=intCliForID;
If (boolVendita) then
FieldByName('CLIFOR_TIPO').AsInteger:=1
else
FieldByName('CLIFOR_TIPO').AsInteger:=2;
FieldByName('CLIFOR_DESCR').AsString:=strCliFor_Contropartita;
FieldByName('PAGATO').AsString:='N';
FieldByName('IMPORTO').AsCurrency:=i3.Value;
FieldByName('NUM_DOC').AsInteger:=intNDoc;
FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
FieldByName('DATA_DOC').AsDateTime:=dDataDoc;
FieldByName('DATA_SCADENZA').AsDateTime:=d3.Date;
FieldByName('DATO').AsCurrency:=0;
FieldByName('DADARE').AsCurrency:=i1.Value;
Post;
end;
if i4.Value <>0 then begin
Insert;
FieldByName('DOCUMENTO_ID').AsInteger:=0;
FieldByName('PAGAMENTO_ID').AsString:=LookPagDescr.KeyValue;
FieldByName('CLIFOR_ID').AsInteger:=intCliForID;
If (boolVendita) then
FieldByName('CLIFOR_TIPO').AsInteger:=1
else
FieldByName('CLIFOR_TIPO').AsInteger:=2;
FieldByName('CLIFOR_DESCR').AsString:=strCliFor_Contropartita;
FieldByName('PAGATO').AsString:='N';
FieldByName('IMPORTO').AsCurrency:=i4.Value;
FieldByName('NUM_DOC').AsInteger:=intNDoc;
FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
FieldByName('DATA_DOC').AsDateTime:=dDataDoc;
FieldByName('DATA_SCADENZA').AsDateTime:=d4.Date;
FieldByName('DATO').AsCurrency:=0;
FieldByName('DADARE').AsCurrency:=i1.Value;
Post;
end;
if i5.Value <>0 then begin
Insert;
FieldByName('DOCUMENTO_ID').AsInteger:=0;
FieldByName('PAGAMENTO_ID').AsString:=LookPagDescr.KeyValue;
FieldByName('CLIFOR_ID').AsInteger:=intCliForID;
If (boolVendita) then
FieldByName('CLIFOR_TIPO').AsInteger:=1
else
FieldByName('CLIFOR_TIPO').AsInteger:=2;
FieldByName('CLIFOR_DESCR').AsString:=strCliFor_Contropartita;
FieldByName('PAGATO').AsString:='N';
FieldByName('IMPORTO').AsCurrency:=i5.Value;
FieldByName('NUM_DOC').AsInteger:=intNDoc;
FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
FieldByName('DATA_DOC').AsDateTime:=dDataDoc;
FieldByName('DATA_SCADENZA').AsDateTime:=d5.Date;
FieldByName('DATO').AsCurrency:=0;
FieldByName('DADARE').AsCurrency:=i1.Value;
Post;
end;
if i6.Value <>0 then begin
Insert;
FieldByName('DOCUMENTO_ID').AsInteger:=0;
FieldByName('PAGAMENTO_ID').AsString:=LookPagDescr.KeyValue;
FieldByName('CLIFOR_ID').AsInteger:=intCliForID;
If (boolVendita) then
FieldByName('CLIFOR_TIPO').AsInteger:=1
else
FieldByName('CLIFOR_TIPO').AsInteger:=2;
FieldByName('CLIFOR_DESCR').AsString:=strCliFor_Contropartita;
FieldByName('PAGATO').AsString:='N';
FieldByName('IMPORTO').AsCurrency:=i6.Value;
FieldByName('NUM_DOC').AsInteger:=intNDoc;
FieldByName('NUM_DOC_LETT').AsString:= Edit4.Text;
FieldByName('DATA_DOC').AsDateTime:=dDataDoc;
FieldByName('DATA_SCADENZA').AsDateTime:=d6.Date;
FieldByName('DATO').AsCurrency:=0;
FieldByName('DADARE').AsCurrency:=i1.Value;
Post;
end;
End;
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

procedure TfrmInsInPN.Set_Values;
begin
  Try
   dTotalePagato:=rxcalcedtTotalePagato.Value;
   dDataMov:=dtedtDataMov.Date;
   dDataDoc:=dtedtDataDoc.Date;
   intNDoc:=strtoint(rxspedtNumDoc.Text);
   strDescMov:=edtDescrMov.text;
  Except
  End;
  Try
  intCliForID:=rxdblcCliFor.KeyValue;
  strCliFor:=rxdblcCliFor.LookupSource.DataSet.FieldByName('DENOMINAZIONE').AsString;
  If (dmodAz.ibTab_Piano_Conti.Locate('Tipo',intCliForID,[])) Then
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
end;

procedure TfrmInsInPN.Set_Stats_To_Null;
begin
 dTotale:=0;
 dSbilancio:=0;
 Refresh_Stats;
 rxspedtNumDoc.Text:='';
 Edit4.Text:='';
 rxcalcedtTotalePagato.Value:=0;
// RxDBLookupCombo1.KeyValue:=-1;
end;

procedure TfrmInsInPN.Refresh_Stats;
begin
 Try
  stTotale.Caption:=Format('%m',[dTotale]);
//  dSbilancio:=dTotalePagato-dTotale;
  stSbilancio.Caption:=Format('%m',[dSbilancio]);
 Except
  stTotale.Caption:='0';
  stSbilancio.Caption:='0';
 End;
end;

procedure TfrmInsInPN.Set_Stats_Initial;
begin
if dsContab.DataSet.IsEmpty then exit;
 dTotale:=0;
 dsContab.DataSet.DisableControls;
 dsContab.DataSet.First;
 While Not(dsContab.DataSet.eof) Do
 Begin
   dTotale:=dTotale+dsContab.DataSet.FieldByName('IMPORTO').AsCurrency;
   dsContab.DataSet.Next;
 End;
 dsContab.DataSet.EnableControls;
 dTotalePagato:= rxcalcedtTotalePagato.Value;
 dSbilancio:=dTotalePagato-dTotale;

// Edit5.Text := FloatToStr(dTotalePagato);
// edit6.Text := CurrToStrFFormat('%m',[dTotale]);
 Refresh_Stats;
end;

procedure TfrmInsInPN.pnlDatiContabExit(Sender: TObject);
begin
 Set_Values;
end;

procedure TfrmInsInPN.bbAnnullaClick(Sender: TObject);
begin
 If (Application.MessageBox('Annullare?','Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
   Then Exit;
 If (dsContab.DataSet.State in [dsInsert, dsEdit])
 Then  dsContab.DataSet.Cancel;
 Brws_Mode(True);
 Kill_rxMemData;
 If (Application.MessageBox('Vuoi continuare con nuovo inserimento?','Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
   Then Close;
end;

procedure TfrmInsInPN.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmInsInPN.bbSalvaClick(Sender: TObject);
begin
If (rxmdPrimaNota.IsEmpty)
Then Begin
Application.MessageBox('Scegli almeno un sottoconto.',
                     'Attendere',MB_OK);
Exit;
End;
If (rxspedtNumDoc.Text='')
Then Begin
Application.MessageBox('Inserire un Num.Doc. Valido ..',
                     'Attendere',MB_OK);
Exit;
End;

if dmodAz.modifica = false then
begin
CONTROLLONUMREG;
if contr = 1 then
exit;
end;
if dmodAz.modifica = false then
begin
If (boolVendita) Then
begin
CONTROLLONUMPROT_V;
end
Else begin
if tipo_acq=1 then begin
CONTROLLONUMPROT_A;
if CONTR_PA = 1 then
exit;
end;
if tipo_acq=2 then begin
end;
end;
end;

Set_Stats_Initial;
 //
Edit5.Text := FloatToStr(dSbilancio);

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
//Application.MessageBox(PCHAR(inttostr(iNumProt2)),'Attendere',MB_OK);
 If (Application.MessageBox('Vuoi continuare con nuovo inserimento?','Avviso',MB_YESNO+MB_ICONQUESTION)=ID_No)
   Then Close;
end;

procedure TfrmInsInPN.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:=bbEsci.Enabled;
end;

procedure TfrmInsInPN.bbNuovoClick(Sender: TObject);
begin
dmodAz.modifica := False;
RxMemoryData1.Open;
RxMemoryData1.Insert;
RxDBComboBox1.ItemIndex := 0;

 Brws_Mode(False);
 Kill_rxMemData;
 Set_Stats_To_Null;
 dtedtDataMov.SetFocus;
 dtedtDataMov.SelectAll;
 dmodAz.ibTab_Piano_Conti.Open;

 rxmdPrimaNota.Open;
 dsCliFor.DataSet.Open;
 dsoPagamenti.DataSet.active:=True;
// dmodPub.dsoTab_Esente_IVA.DataSet.Active:=True;
If (boolVendita) Then
begin
dmodAz.ibNum_prot_VEN.ExecProc;
iNumProt2:=1+dmodAz.ibNum_prot_VEN.ParamByName('LAST_NUM_PROT').AsInteger;
end
Else begin
if tipo_acq=1 then begin
dmodAz.ibNum_prot_ACQ.ExecProc;
iNumProt2:=1+dmodAz.ibNum_prot_ACQ.ParamByName('LAST_NUM_PROT').AsInteger;
end;
if tipo_acq=2 then begin
dmodAz.ibNum_Prot_Acq_INTRA.ExecProc;
iNumProt2:=1+dmodAz.ibNum_Prot_Acq_INTRA.ParamByName('LAST_NUM_PROT_INTRA').AsInteger;
end;
end;
If (boolVendita)
 Then Prepare_Per_Vendita
  Else Prepare_Per_Acquisto;
rxcalcedtTotalePagato.Value := 0;
Edit3.Text := inttostr(iNumProt2);
dmodAz.ibNum_Reg.Params[0].asdate:=dtedtDataMov.Date;
dmodAz.ibNum_Reg.ExecProc;
Edit2.Text := inttostr(dmodAz.ibNum_Reg.Params[1].AsInteger+1);

End;

Procedure TfrmInsInPN.Brws_Mode(boolMode: Boolean);
Begin
 pnlDatiContab.Enabled:=Not(boolMode);
 pnlContab.Enabled:=Not(boolMode);
 bbNuovo.Enabled:=boolMode;
 bbEsci.Enabled:=boolMode;
 bbSalva.Enabled:=Not(boolMode);
 bbAnnulla.Enabled:=Not(boolMode);
End;

procedure TfrmInsInPN.FormCreate(Sender: TObject);
begin
 Try
  dsPianoConti.DataSet.Open;
 Except

 End;
end;

procedure TfrmInsInPN.DBEdit5DblClick(Sender: TObject);
begin
if not (rxmdPrimaNota.State in [dsInsert, dsEdit]) then exit;
With (TfrmRicercaSottoconto.Create(Self)) DO
Begin
ShowModal;
If (boolSelected)
Then Begin
dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:=strDescrPC;
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=intID_PC;
If (dsPianoDeiConti.DataSet.Locate('ID_PIANO_CONTO',intID_PC,[]))
Then dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=
  dsPianoDeiConti.DataSet.FieldByName('NOME_CONTO').AsString
Else dsContab.DataSet.FieldByName('NOME_CONTO').AsString:='-';
dsContab.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=TIPO_CLIFOR ;
End;
ibqSaldo.Close;
ibqSaldo.ParamByName('PCON').AsInteger :=intID_PC;
ibqSaldo.Open;


Free;
End;
DBEdit2.SetFocus;
DBEdit2.SelectAll;
end;

procedure TfrmInsInPN.dtedtDataMovKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
dtedtDataDoc.SetFocus;
dtedtDataDoc.SelectAll;
end;

end;

procedure TfrmInsInPN.dtedtDataDocKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
rxspedtNumDoc.SetFocus;
rxspedtNumDoc.SelectAll;
end;

end;

procedure TfrmInsInPN.rxspedtNumDocKeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
begin
RxDBLookupCombo1.SetFocus;
end;
end;

procedure TfrmInsInPN.RxDBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
begin
rxdblcCliFor.SetFocus;
end;
end;

procedure TfrmInsInPN.rxdblcCliForKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
edtDescrMov.SetFocus;
edtDescrMov.SelectAll;
end;
end;

procedure TfrmInsInPN.edtDescrMovKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
rxcalcedtTotalePagato.SetFocus;
rxcalcedtTotalePagato.SelectAll;
end;
end;

procedure TfrmInsInPN.rxcalcedtTotalePagatoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key= #13 then
begin
edtNote.SetFocus;
edtNote.SelectAll;
end;
end;

procedure TfrmInsInPN.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
DBEdit2.SetFocus;
DBEdit2.SelectAll;
end;
end;

procedure TfrmInsInPN.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
DBEdit3.SetFocus;
DBEdit3.SelectAll;
end;
end;

procedure TfrmInsInPN.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
DBEdit4.SetFocus;
DBEdit4.SelectAll;
end;
end;

procedure TfrmInsInPN.SpeedButton1Click(Sender: TObject);
begin
dsContab.DataSet.Insert;
Pulsanti(False);
dsContab.DataSet.FieldByName('IVA_PERC').Asinteger := 20;
DBEdit5.Text := '';
DBEdit1.Text := '';
DBEdit5.SetFocus;
DBEdit5.SelectAll;
end;

procedure TfrmInsInPN.SpeedButton2Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
Pulsanti(False);
dsContab.DataSet.Edit;
end;

procedure TfrmInsInPN.SpeedButton3Click(Sender: TObject);
begin
dsContab.DataSet.Cancel;
Pulsanti(True);
end;

procedure TfrmInsInPN.SpeedButton4Click(Sender: TObject);
begin
if dsContab.DataSet.IsEmpty then exit;
if CheckBox1.Checked then
begin
dsContab.DataSet.FieldByName('COD_ESENZ').AsInteger:= RxDBLookupCombo2.KeyValue;
dsContab.DataSet.FieldByName('DESCR_ESENZ').AsString:=RxDBLookupCombo2.Text;
end;
dsContab.DataSet.Post;
Set_Stats_Initial;
Refresh_Stats;
Pulsanti(True);
end;

procedure TfrmInsInPN.SpeedButton5Click(Sender: TObject);
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

procedure TfrmInsInPN.Pulsanti(boolMode: Boolean);
begin
 SpeedButton1.Enabled:=boolMode;
 SpeedButton2.Enabled:=boolMode;
 SpeedButton4.Enabled:=Not(boolMode);
 SpeedButton3.Enabled:=Not(boolMode);
 SpeedButton5.Enabled:=boolMode;
end;

procedure TfrmInsInPN.bbSottoContiClick(Sender: TObject);
begin
 With (TfPianoConti.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmInsInPN.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
DBEdit6.SetFocus;
DBEdit6.SelectAll;
end;
end;

procedure TfrmInsInPN.DBEdit3Exit(Sender: TObject);
begin
Try
 If (dsContab.DataSet.State in [dsbrowse]) then exit;
IF (DBEdit3.Field.AsInteger=0)
Then begin
DBEdit4.Field.AsCurrency:=0;
DBEdit6.Field.AsCurrency:=DBEdit2.Field.AsCurrency;
end
Else
begin
DBEdit4.Field.AsCurrency:=DBEdit2.Field.AsCurrency*
      DBEdit3.Field.AsFloat/100;
dsContab.DataSet.FieldByName('importo').AsCurrency:=
 DBEdit2.Field.AsCurrency+DBEdit4.Field.AsCurrency;
end
Except
DBEdit2.Field.AsCurrency:=0;
DBEdit3.Field.AsInteger:=0;
DBEdit4.Field.AsCurrency:=0;
DBEdit6.Field.AsCurrency:=0;
End;

end;

procedure TfrmInsInPN.rxcalcedtTotalePagatoExit(Sender: TObject);
begin
 Try
 If (dsContab.DataSet.State in [dsInsert, dsEdit]) then exit;
  dTotalePagato:=rxcalcedtTotalePagato.Value;
  Set_Stats_Initial;
  Refresh_Stats
 Except
 End; 
end;

procedure TfrmInsInPN.RxDBLookupCombo1Change(Sender: TObject);
begin
rxdblcCliFor.KeyValue:=RxDBLookupCombo1.KeyValue;
end;

procedure TfrmInsInPN.rxdblcCliForChange(Sender: TObject);
begin
RxDBLookupCombo1.KeyValue:=rxdblcCliFor.KeyValue;
if RxDBLookupCombo1.KeyValue<>-1 then begin
 LookPagDescr.KeyValue:=
 rxdblcCliFor.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
 LookPagCod2.KeyValue:=
 rxdblcCliFor.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
end;
end;

procedure TfrmInsInPN.BitBtn2Click(Sender: TObject);
begin
fClienti:=TfClienti.Create(Self);

fClienti.ShowModal;
fClienti.Free;

end;

procedure TfrmInsInPN.BitBtn3Click(Sender: TObject);
begin
fForn:=TfForn.Create(Self);

fForn.ShowModal;
fForn.Free;
end;

procedure TfrmInsInPN.dtedtDataMovChange(Sender: TObject);
begin
if dmodAz.modifica = false then
begin
dmodAz.ibNum_Reg.Params[0].asdate:=dtedtDataMov.Date;
dmodAz.ibNum_Reg.ExecProc;
Edit2.Text := inttostr(dmodAz.ibNum_Reg.Params[1].AsInteger+1);
end;
end;

procedure TfrmInsInPN.CONTROLLONUMREG;
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

procedure TfrmInsInPN.Edit2Exit(Sender: TObject);
begin
CONTROLLONUMREG;
end;

procedure TfrmInsInPN.CONTROLLONUMPROT_A;
begin
dmodAz.ibqNumProtA_Contr.Close;
dmodAz.ibqNumProtA_Contr.ParamByName('parnum').AsInteger:=StrToInt(Edit3.Text);
dmodAz.ibqNumProtA_Contr.Open;
if not dmodAz.ibqNumProtA_Contr.IsEmpty then
begin
Application.MessageBox('Num. Prot. ESISTENTE !!!',
                     'Attendere',MB_OK);
CONTR_PA := 1;
end
else
CONTR_PA := 0;
end;

procedure TfrmInsInPN.Edit3Exit(Sender: TObject);
begin
If (boolVendita) Then
begin
CONTROLLONUMPROT_V;
end
Else begin
if tipo_acq=1 then begin
CONTROLLONUMPROT_A;
end;
if tipo_acq=2 then begin
end;
end;
end;

procedure TfrmInsInPN.CONTROLLONUMPROT_V;
begin
dmodAz.ibqNumProtV_Contr.Close;
dmodAz.ibqNumProtV_Contr.ParamByName('parnum').AsInteger:=StrToInt(Edit3.Text);
dmodAz.ibqNumProtV_Contr.Open;
if not dmodAz.ibqNumProtV_Contr.IsEmpty then
begin
Application.MessageBox('Num. Prot. ESISTENTE !!!',
                     'Attendere',MB_OK);
CONTR_PV := 1;
end
else
CONTR_PV := 0;
end;

procedure TfrmInsInPN.DBEdit5Exit(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.SQL.Clear;
IBQuery3.SQL.Add('SELECT * FROM tab_piano_conti WHERE NOME_CONTO LIKE '''+DBEdit5.Text+'%'' order by NOME_CONTO');
IBQuery3.Open;
dsContab.DataSet.FieldByName('SOTTOCONTO_DESCR').AsString:=IBQuery3.FieldByName('DESCR').AsString;
dsContab.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=IBQuery3.FieldByName('ID_PIANO_CONTO').AsInteger;
dsContab.DataSet.FieldByName('NOME_CONTO').AsString:=IBQuery3.FieldByName('NOME_CONTO').AsString;
dsContab.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=IBQuery3.FieldByName('CAPO_CONTO_CLI_FOR').AsInteger;

end;

procedure TfrmInsInPN.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
dmodPub.dsoTab_Esente_IVA.DataSet.Active:=True
else
dmodPub.dsoTab_Esente_IVA.DataSet.Active:=False;
end;

procedure TfrmInsInPN.dtedtDataDocExit(Sender: TObject);
var
 wAnno,wMese,wGiorno: Word;
begin
 DecodeDate(dtedtDataDoc.Date,wAnno,wMese,wGiorno);
Edit7.Text:=inttostr(wMese);
end;

procedure TfrmInsInPN.dtedtDataDocChange(Sender: TObject);
var
 wAnno,wMese,wGiorno: Word;
begin
DecodeDate(dtedtDataDoc.Date,wAnno,wMese,wGiorno);
Edit7.Text:=inttostr(wMese);
end;

END.

