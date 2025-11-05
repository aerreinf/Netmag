unit uVisConto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, DBCtrls, StdCtrls, Buttons,
  Grids, DBGrids, RxLookup, ExtCtrls, Mask, ToolEdit, Menus, FR_Class;

type
  TfVisConto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    Button1: TButton;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DataSource1: TDataSource;
    dsoCli: TDataSource;
    dsArticoli: TDataSource;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    dsDipendente: TDataSource;
    RadioGroup3: TRadioGroup;
    RxDBLookupCombo1: TRxDBLookupCombo;
    IBQuery3: TIBQuery;
    DBGrid2: TDBGrid;
    dsoMARCA: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoGRUPPO: TDataSource;
    dsoTIPO: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    PopupMenu1: TPopupMenu;
    St1: TMenuItem;
    IBQuery4: TIBQuery;
    BitBtn5: TBitBtn;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    IBQuery4Cli: TStringField;
    IBQuery4SCHEDA: TFloatField;
    IBQuery4CODICE_ARTICOLO: TIBStringField;
    IBQuery4DESCR: TIBStringField;
    IBQuery4QUANTITA: TFloatField;
    IBQuery4SCONTO4: TFloatField;
    IBQuery4CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery4NUM_DOC: TIntegerField;
    IBQuery4DATA_DOC: TDateTimeField;
    IBQuery4DENOMINAZIONE: TIBStringField;
    BitBtn6: TBitBtn;
    IBQuery5SCHEDA: TFloatField;
    IBQuery5CODICE_ARTICOLO: TIBStringField;
    IBQuery5CL: TFloatField;
    IBQuery5DENOMINAZIONE: TIBStringField;
    IBQuery5DEPO: TFloatField;
    IBQuery5DESCR: TIBStringField;
    IBQuery7: TIBQuery;
    GroupBox1: TGroupBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Button2: TButton;
    IBQuery8: TIBQuery;
    IBQuery8MAGA: TFloatField;
    IBQuery8SCHEDA: TFloatField;
    IBQuery8CODICE_ARTICOLO: TIBStringField;
    IBQuery8DESCR: TIBStringField;
    IBQuery8DEPOS: TFloatField;
    IBQuery8DENOMINAZIONE: TIBStringField;
    IBQuery8SCONTO4: TFloatField;
    GroupBox2: TGroupBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Button3: TButton;
    IBQuery9: TIBQuery;
    FloatField2: TFloatField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    FloatField4: TFloatField;
    IBQuery9MAGAZ: TFloatField;
    BitBtn11: TBitBtn;
    IBQuery10: TIBQuery;
    IBQuery11: TIBQuery;
    IBQuery10DENOMINAZIONE: TIBStringField;
    IBQuery10CL: TFloatField;
    IBQuery10DEPO: TFloatField;
    IBQuery10CLIFOR_ID: TIntegerField;
    IBQuery8RISCONTRATI: TFloatField;
    IBQuery12: TIBQuery;
    IBQuery3ID_DOC_DET: TIntegerField;
    IBQuery3TIPO_RIGA: TIntegerField;
    IBQuery3CODICE_ARTICOLO: TIBStringField;
    IBQuery3DESCR: TIBStringField;
    IBQuery3COSTO: TFloatField;
    IBQuery3COSTOINVALUTA: TFloatField;
    IBQuery3UNITA_MISURA: TIBStringField;
    IBQuery3FATTCONV: TFloatField;
    IBQuery3QTA_UM: TFloatField;
    IBQuery3QUANTITA: TFloatField;
    IBQuery3SCONTO1: TFloatField;
    IBQuery3SCONTO2: TFloatField;
    IBQuery3SCONTO3: TFloatField;
    IBQuery3SCONTO4: TFloatField;
    IBQuery3IMPORTO_SCONTO: TFloatField;
    IBQuery3IMPORTO: TFloatField;
    IBQuery3IMPORTOINVALUTA: TFloatField;
    IBQuery3OMAGGIO: TSmallintField;
    IBQuery3DEP: TIBStringField;
    IBQuery3SCONTO_EQ: TFloatField;
    IBQuery3PERC_PROVV: TFloatField;
    IBQuery3TIPO_SERVIZIO: TIBStringField;
    IBQuery3IVATO: TFloatField;
    IBQuery3IMPORTO_CON_IVA: TFloatField;
    IBQuery3CODICE_IVA_ID: TIBStringField;
    IBQuery3DATA_REG: TDateTimeField;
    IBQuery3RIF_A: TSmallintField;
    IBQuery3RIF_A_PRE: TSmallintField;
    IBQuery3RIF_A_ORD: TSmallintField;
    IBQuery3RIF_A_DDT: TSmallintField;
    IBQuery3RIF_ID_DOC_DET: TIntegerField;
    IBQuery3RIF_DDT_ID_DOC: TIntegerField;
    IBQuery3RIF_DDT_DATA_DOC: TDateTimeField;
    IBQuery3RIF_ORD_ID_DOC: TIntegerField;
    IBQuery3RIF_ORD_DATA_DOC: TDateTimeField;
    IBQuery3RIF_PRE_ID_DOC: TIntegerField;
    IBQuery3RIF_PRE_DATA_DOC: TDateTimeField;
    IBQuery3PIANOCONTO_ID: TIntegerField;
    IBQuery3RIF_PRE_NUM_DOC: TIntegerField;
    IBQuery3RIF_ORD_NUM_DOC: TIntegerField;
    IBQuery3RIF_DDT_NUM_DOC: TIntegerField;
    IBQuery3OP_QTA_DISPONIBILE: TFloatField;
    IBQuery3OP_VAL_DISPONIBILE: TFloatField;
    IBQuery3OP_QTA_GIACENZA: TFloatField;
    IBQuery3OP_VAL_GIACENZA: TFloatField;
    IBQuery3DOC_ID: TIntegerField;
    IBQuery3TOTCOLLI: TIBStringField;
    IBQuery3TOTSCAT: TFloatField;
    IBQuery3PREZZOLIST: TFloatField;
    IBQuery3SCHEDA: TFloatField;
    IBQuery3PASSATA: TIBStringField;
    IBQuery3COL: TIBStringField;
    IBQuery3A: TIBStringField;
    IBQuery3B: TIBStringField;
    IBQuery3C: TIBStringField;
    IBQuery3NUM_RIGA_ID: TIntegerField;
    IBQuery3ID_DOCUMENTO: TIntegerField;
    IBQuery3TESTATA_PN_ID: TIntegerField;
    IBQuery3CAUSALE_DOC: TIBStringField;
    IBQuery3TIPO_DOC: TIntegerField;
    IBQuery3DA_FATTURARE: TSmallintField;
    IBQuery3CLIFOR_ID: TIntegerField;
    IBQuery3TIPO_CLIFOR: TSmallintField;
    IBQuery3DEPOSITO: TIBStringField;
    IBQuery3CONTRO_CLIFOR_ID: TIntegerField;
    IBQuery3CONTRO_TIPO_CLIFOR: TSmallintField;
    IBQuery3CONTRO_DEPOSITO: TIBStringField;
    IBQuery3CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery3CONTRO_CAUS_MAG: TIBStringField;
    IBQuery3ATTIVITA: TIBStringField;
    IBQuery3SUBATTIVITA: TIBStringField;
    IBQuery3DATA_REGISTRAZIONE: TDateTimeField;
    IBQuery3DATA_DOC: TDateTimeField;
    IBQuery3DATA_CONFERMA: TDateTimeField;
    IBQuery3DATA_EVASIONE: TDateTimeField;
    IBQuery3STATO_DOCUMENTO: TIntegerField;
    IBQuery3STATO_CONTABILITA: TIntegerField;
    IBQuery3MONETA_ID: TIBStringField;
    IBQuery3CAMBIO: TFloatField;
    IBQuery3KINGUA_ID: TIBStringField;
    IBQuery3LISTINO: TIBStringField;
    IBQuery3NS_RIFERIMENTO: TIBStringField;
    IBQuery3VS_RIFERIMENTO: TIBStringField;
    IBQuery3CAUSALE_CONTABILE: TIBStringField;
    IBQuery3CODICE_BOLL: TIBStringField;
    IBQuery3PAGAMENTO_ID: TIBStringField;
    IBQuery3BANCA_CLIFOR: TIBStringField;
    IBQuery3BANCA_AZIENDA: TIBStringField;
    IBQuery3VETTORE1: TIBStringField;
    IBQuery3VETTORE2: TIBStringField;
    IBQuery3VETTORE3: TIBStringField;
    IBQuery3PORTO: TIBStringField;
    IBQuery3ASPETTO: TIBStringField;
    IBQuery3SPEDIZIONE: TIBStringField;
    IBQuery3PESO_NETTO: TFloatField;
    IBQuery3PESO_LORDO: TFloatField;
    IBQuery3CUBAGGIO: TFloatField;
    IBQuery3DESTINARIO: TIBStringField;
    IBQuery3IMBALLO: TIBStringField;
    IBQuery3SCONTO11: TFloatField;
    IBQuery3AGENTE_ID: TIBStringField;
    IBQuery3DATA_CONSEGNA: TDateTimeField;
    IBQuery3NUM_DOC: TIntegerField;
    IBQuery3NRCOLLI: TFloatField;
    IBQuery3SCONTO21: TFloatField;
    IBQuery3IMPORTO_SCONTO1: TFloatField;
    IBQuery3NOTA: TIBStringField;
    IBQuery3SOSPESO: TSmallintField;
    IBQuery3IVA_SOSPESA: TSmallintField;
    IBQuery3COD_IVA_ESENTE: TIBStringField;
    IBQuery3COD_IVA_SPESE_BOLLI: TIBStringField;
    IBQuery3COD_IVA_SPESE_INCASSO: TIBStringField;
    IBQuery3COD_IVA_SPESE_IMVALLO: TIBStringField;
    IBQuery3COD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    IBQuery3COD_IVA_SPESE_ACCESSIONE: TIBStringField;
    IBQuery3COD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    IBQuery3ACCORPA_RIGHE: TSmallintField;
    IBQuery3ATTIVITA2: TIBStringField;
    IBQuery3SUBATTIVITA2: TIBStringField;
    IBQuery3SOGGETTO_CEE: TSmallintField;
    IBQuery3REPORT: TIBStringField;
    IBQuery3RILEVA_ACCONTO: TSmallintField;
    IBQuery3ORA: TIBStringField;
    IBQuery3FATT_ACCOMP: TSmallintField;
    IBQuery3TIPO_FATT: TSmallintField;
    IBQuery3ST_NOTE_CLIFOR: TSmallintField;
    IBQuery3IVATO1: TSmallintField;
    IBQuery3STAMPATO: TSmallintField;
    IBQuery3DATA_COMPETENZA_IVA: TDateTimeField;
    IBQuery3MEZZO_TRASPORTO: TSmallintField;
    IBQuery3TOT_PROVVIGIONE: TFloatField;
    IBQuery3TIPO_PROVVIGIONE: TSmallintField;
    IBQuery3TOT_IMP_PROVVIGIONE: TFloatField;
    IBQuery3CAST_MANUALE: TSmallintField;
    IBQuery3NUM_DOC2: TIntegerField;
    IBQuery3SERIE_DOC2: TIBStringField;
    IBQuery3MESE_CONT: TIntegerField;
    IBQuery3ALTRE_DERT_SI_NO: TSmallintField;
    IBQuery3SPESE_IMBALLO: TFloatField;
    IBQuery3SPESE_BOLLI: TFloatField;
    IBQuery3SPESE_ACCESSORIE: TFloatField;
    IBQuery3SPESE_INCASSO: TFloatField;
    IBQuery3SPESE_SPEDIZIONE: TFloatField;
    IBQuery3SPESE_CONTRASS: TFloatField;
    IBQuery3CAU_TRASP_ID: TIBStringField;
    IBQuery3PER_ALTRA_DEST: TSmallintField;
    IBQuery3IMPORTO_CON_IVA1: TFloatField;
    IBQuery3TOTALE_MERCE: TFloatField;
    IBQuery3TOTALE_SERVIZI: TFloatField;
    IBQuery3TOTALE: TFloatField;
    IBQuery3TOTALE_IVA: TFloatField;
    IBQuery3TOTALE_IVATO: TFloatField;
    IBQuery3TOTALE_SCONTI: TFloatField;
    IBQuery3TOTALE_EURO: TFloatField;
    IBQuery3TOTALE_EURO_IVATO: TFloatField;
    IBQuery3CODIVA1: TIBStringField;
    IBQuery3ALIVA1: TFloatField;
    IBQuery3IMPON1: TFloatField;
    IBQuery3IMPOSTA1: TFloatField;
    IBQuery3CODIVA2: TIBStringField;
    IBQuery3ALIVA2: TFloatField;
    IBQuery3IMPON2: TFloatField;
    IBQuery3IMPOSTA2: TFloatField;
    IBQuery3CODIVA3: TIBStringField;
    IBQuery3ALIVA3: TFloatField;
    IBQuery3IMPON3: TFloatField;
    IBQuery3IMPOSTA3: TFloatField;
    IBQuery3CODIVA4: TIBStringField;
    IBQuery3ALIVA4: TFloatField;
    IBQuery3IMPON4: TFloatField;
    IBQuery3IMPOSTA4: TFloatField;
    IBQuery3CODIVA5: TIBStringField;
    IBQuery3ALIVA5: TFloatField;
    IBQuery3IMPON5: TFloatField;
    IBQuery3IMPOSTA5: TFloatField;
    IBQuery3TOT_SPESE: TFloatField;
    IBQuery3ALTRA_DEST: TIBStringField;
    IBQuery3SERIE_DOC: TIBStringField;
    IBQuery3CLI_FOR_IND: TIBStringField;
    IBQuery3ACCONTO: TFloatField;
    IBQuery3RATA1_IMPORTO: TFloatField;
    IBQuery3RATA2_IMPORTO: TFloatField;
    IBQuery3RATA3_IMPORTO: TFloatField;
    IBQuery3RATA4_IMPORTO: TFloatField;
    IBQuery3RATA5_IMPORTO: TFloatField;
    IBQuery3RATA6_IMPORTO: TFloatField;
    IBQuery3TEL1: TIBStringField;
    IBQuery3TEL2: TIBStringField;
    IBQuery3TEL3: TIBStringField;
    IBQuery3IVA_ESENTE: TSmallintField;
    IBQuery3IVA_ESENTE_ID: TIntegerField;
    IBQuery3VETTORE_IND: TIBStringField;
    IBQuery3VETTORE_IND2: TIBStringField;
    IBQuery3CLI_FOR_IND2: TIBStringField;
    IBQuery3RATA1_DATA: TDateField;
    IBQuery3RATA2_DATA: TDateField;
    IBQuery3RATA3_DATA: TDateField;
    IBQuery3RATA4_DATA: TDateField;
    IBQuery3RATA5_DATA: TDateField;
    IBQuery3RATA6_DATA: TDateField;
    IBQuery3PIANOCONTO_ID1: TIntegerField;
    IBQuery3ALTRA_DEST2: TIBStringField;
    IBQuery3CA_ID: TIBStringField;
    IBQuery3CLIENTE: TIBStringField;
    IBQuery3COLORE0: TIBStringField;
    IBQuery3COLORE1: TIBStringField;
    IBQuery3COLORE2: TIBStringField;
    IBQuery3COLORE3: TIBStringField;
    IBQuery13: TIBQuery;
    IBQuery13CODICE_ARTICOLO: TIBStringField;
    IBQuery13DESCR: TIBStringField;
    IBQuery13COSTO: TFloatField;
    IBQuery13QUANTITA: TFloatField;
    IBQuery13SCHEDA: TFloatField;
    IBQuery13COL: TIBStringField;
    IBQuery13A: TIBStringField;
    IBQuery13B: TIBStringField;
    IBQuery13C: TIBStringField;
    IBQuery13TIPO_DOC: TIntegerField;
    IBQuery13CAUSALE_DOC: TIBStringField;
    IBQuery13CLIFOR_ID: TIntegerField;
    IBQuery13DEPOSITO: TIBStringField;
    IBQuery13CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery13DATA_DOC: TDateTimeField;
    IBQuery13NUM_DOC: TIntegerField;
    IBQuery13CLIENTE: TIBStringField;
    IBQuery13COLORE0: TIBStringField;
    IBQuery13COLORE1: TIBStringField;
    IBQuery13COLORE2: TIBStringField;
    IBQuery13COLORE3: TIBStringField;
    IBQuery13DENOMINAZIONE: TIBStringField;
    IBQuery14: TIBQuery;
    IBQuery15: TIBQuery;
    IBQuery14SCHEDA: TFloatField;
    IBQuery14CODICE_ARTICOLO: TIBStringField;
    IBQuery14DESCR: TIBStringField;
    IBQuery14CL: TFloatField;
    IBQuery14DENOMINAZIONE: TIBStringField;
    IBQuery14DEPO: TFloatField;
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcDaArtCodiceExit(Sender: TObject);
    procedure rxdblcDaArtExit(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtCodiceExit(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rxdblcAdArtExit(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure RxDBLookupCombo4CloseUp(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo3CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure cbFamigliaClick(Sender: TObject);
    procedure cbGruppoClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure RxDBLookupCombo2CloseUp(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo5CloseUp(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IBQuery3CalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure IBQuery3FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure St1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure IBQuery5CalcFields(DataSet: TDataSet);
    procedure IBQuery4CalcFields(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure IBQuery8CalcFields(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure IBQuery10CalcFields(DataSet: TDataSet);
    procedure IBQuery14CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
            strDaArt, strAdArt: String;
  public
    { Public declarations }
       boolTipo,boolFamiglia,boolGruppo,boolMarca: Boolean;
  end;

var
  fVisConto: TfVisConto;

implementation

uses uAzDM, uBolConto;

{$R *.DFM}

procedure TfVisConto.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfVisConto.RadioGroup4Click(Sender: TObject);
begin
if RadioGroup4.ItemIndex = 1 then
begin
rxdblcAdArt.Enabled := True;
rxdblcAdArtCodice.Enabled := True;
rxdblcDaArt.Enabled := True;
rxdblcDaArtCodice.Enabled := True;
end
else
begin
rxdblcAdArt.Enabled := False;
rxdblcAdArtCodice.Enabled := False;
rxdblcDaArt.Enabled := False;
rxdblcDaArtCodice.Enabled := False;
end;

if RadioGroup4.ItemIndex = 2 then
begin
 rxdblcMarca.Enabled:=True;
 rxdblcFamiglia.Enabled:=True;
 rxdblcGruppo.Enabled:=True;
 rxdblcTipo.Enabled:=True;
end
else
begin
 rxdblcMarca.Enabled:=False;
 rxdblcFamiglia.Enabled:=False;
 rxdblcGruppo.Enabled:=False;
 rxdblcTipo.Enabled:=False;

 rxdblcMarca.KeyValue:=-1;
 rxdblcFamiglia.KeyValue:=-1;
 rxdblcGruppo.KeyValue:=-1;
 rxdblcTipo.KeyValue:=-1;

end;
end;

procedure TfVisConto.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfVisConto.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfVisConto.rxdblcDaArtCodiceExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfVisConto.rxdblcDaArtExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfVisConto.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfVisConto.rxdblcAdArtCodiceExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfVisConto.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfVisConto.rxdblcAdArtExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfVisConto.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 1 then
begin
RxDBLookupCombo3.Enabled := True;
RxDBLookupCombo4.Enabled := True;
end
else
begin
RxDBLookupCombo3.Enabled := False;
RxDBLookupCombo4.Enabled := False;
end;
end;

procedure TfVisConto.BitBtn1Click(Sender: TObject);
begin
with IBQuery3 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.*,tab_documenti.*,tagliofas.cliente,tagliofas.colore0,tagliofas.colore1,tagliofas.colore2,tagliofas.colore3 from tab_det_doc');
sql.Add('jOIN TAB_DOCUMENTI ON');
sql.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
sql.Add('join TAGLIOFAS on');
sql.Add('tab_det_doc.scheda=TAGLIOFAS.numero');
sql.Add('where tab_det_doc.sconto4=1 and TIPO_DOC=:tipdoc');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
///////////////////////////
if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND tagliofas.cliente =:parclifas');
ParamByName('parclifas').AsString:= RxDBLookupCombo5.Text;
//IBQuery3.FieldByName('cli').AsString := RxDBLookupCombo5.Text;
end;

if RadioGroup3.ItemIndex = 1 then
begin
SQL.Add('AND NUM_DOC =:numdoc');
ParamByName('numdoc').AsInteger:= RxDBLookupCombo1.KeyValue;
end;
if RadioGroup5.ItemIndex = 1 then
begin
SQL.Add('AND SCHEDA =:numscheda');
ParamByName('numscheda').AsInteger:= RxDBLookupCombo11.KeyValue;
end;
If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND codice_ARTICOLO>=:parCodArtDa and codice_ARTICOLO<=:parCodArtAd');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;


//////////////////////////

sql.Add('union all');
sql.Add('select tab_det_doc.*,tab_documenti.*,taglio.cliente,taglio.colore0,taglio.colore1,taglio.colore2,taglio.colore3 from tab_det_doc');
sql.Add('jOIN TAB_DOCUMENTI ON');
sql.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
sql.Add('join taglio on');
sql.Add('tab_det_doc.scheda=taglio.numero');
sql.Add('where (tab_det_doc.sconto4<>1 or tab_det_doc.sconto4 is null) and TIPO_DOC=:tipdoc');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
{
sql.Add('select * from tab_det_doc');
sql.Add('JOIN TAB_DOCUMENTI ON');
sql.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
sql.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =:tipdoc');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
}
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 ParamByName('tipdoc').AsInteger :=fBolConto.intTipoDoc;
if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND taglio.cliente =:parclifas');
ParamByName('parclifas').AsString:= RxDBLookupCombo5.Text;
//IBQuery3.FieldByName('cli').AsString := RxDBLookupCombo5.Text;
end;

if RadioGroup3.ItemIndex = 1 then
begin
SQL.Add('AND NUM_DOC =:numdoc');
ParamByName('numdoc').AsInteger:= RxDBLookupCombo1.KeyValue;
end;
if RadioGroup5.ItemIndex = 1 then
begin
SQL.Add('AND SCHEDA =:numscheda');
ParamByName('numscheda').AsInteger:= RxDBLookupCombo11.KeyValue;
end;
If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND codice_ARTICOLO>=:parCodArtDa and codice_ARTICOLO<=:parCodArtAd');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

{
if RadioGroup7.ItemIndex = 1 then
begin
sql.add('AND PASSATA <>''S''');
sql.add('OR PASSATA is null');
end;
if RadioGroup7.ItemIndex = 2 then
sql.add('AND PASSATA =''S''');
}
{
if RadioGroup6.ItemIndex = 0 then
sql.Add('Order by SCHEDA');
if RadioGroup6.ItemIndex = 1 then
sql.Add('Order by CODICE_ARTICOLO');
if RadioGroup6.ItemIndex = 2 then
sql.Add('Order by DATA_DOC');}
Open;
end;

end;

procedure TfVisConto.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then
RxDBLookupCombo1.Enabled := True
else
RxDBLookupCombo1.Enabled := False;
end;

procedure TfVisConto.RadioGroup5Click(Sender: TObject);
begin
if RadioGroup5.ItemIndex = 1 then
RxDBLookupCombo11.Enabled := True
else
RxDBLookupCombo11.Enabled := False;
end;

procedure TfVisConto.RxDBLookupCombo4CloseUp(Sender: TObject);
begin
  RxDBLookupCombo3.KeyValue:=RxDBLookupCombo4.KeyValue;
end;

procedure TfVisConto.RxDBLookupCombo4Exit(Sender: TObject);
begin
  RxDBLookupCombo3.KeyValue:=RxDBLookupCombo4.KeyValue;
end;

procedure TfVisConto.RxDBLookupCombo3Exit(Sender: TObject);
begin
  RxDBLookupCombo4.KeyValue:=RxDBLookupCombo3.KeyValue;
end;

procedure TfVisConto.RxDBLookupCombo3CloseUp(Sender: TObject);
begin
  RxDBLookupCombo4.KeyValue:=RxDBLookupCombo3.KeyValue;
end;

procedure TfVisConto.FormCreate(Sender: TObject);
begin
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;
 dsArticoli.DataSet.Open;
end;

procedure TfVisConto.cbMarcaClick(Sender: TObject);
begin
 boolMarca:=cbMarca.Checked;
end;

procedure TfVisConto.cbFamigliaClick(Sender: TObject);
begin
 boolFamiglia:=cbFamiglia.Checked;
end;

procedure TfVisConto.cbGruppoClick(Sender: TObject);
begin
 boolGruppo:=cbFamiglia.Checked;
end;

procedure TfVisConto.cbTipoClick(Sender: TObject);
begin
 boolTipo:=cbTipo.Checked;
end;

procedure TfVisConto.RxDBLookupCombo2CloseUp(Sender: TObject);
begin
  RxDBLookupCombo5.KeyValue:=RxDBLookupCombo2.KeyValue;
end;

procedure TfVisConto.RxDBLookupCombo2Exit(Sender: TObject);
begin
  RxDBLookupCombo5.KeyValue:=RxDBLookupCombo2.KeyValue;
end;

procedure TfVisConto.RxDBLookupCombo5CloseUp(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue:=RxDBLookupCombo5.KeyValue;
end;

procedure TfVisConto.RxDBLookupCombo5Exit(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue:=RxDBLookupCombo5.KeyValue;
end;

procedure TfVisConto.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 1 then
begin
RxDBLookupCombo2.Enabled := True;
RxDBLookupCombo5.Enabled := True;
end
else
begin
RxDBLookupCombo2.Enabled := False;
RxDBLookupCombo5.Enabled := False;
end;

end;

procedure TfVisConto.Button1Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
scatolo,iNormal,qt: Integer;
b,c,d,e:Double;
 begin
with IBQuery5 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_articoli.DESCR,tab_det_doc.codice_articolo,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS CL ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

sql.Add('where tab_documenti.causale_magazzino = ''CLAV''');
sql.Add('group by tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_articoli.DESCR,tab_cli_for.denominazione');
sql.Add('order by tab_det_doc.codice_articolo');

Open;
end;
 // Aggiornamento da Distinta degli Accessori.
dmodAz.ibqryTaglio.Open;
dmodAz.ibqryPretFas.Open;
dmodAz.RxMemoryData1.EmptyTable;
dmodAz.RxMemoryData1.Close;
dmodAz.RxMemoryData1.Open;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery5.First;
 With (dmodAz) Do
  While Not(IBQuery5.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery5.Fieldbyname('CODICE_ARTICOLO').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not dmodAz.RxMemoryData1.Locate('Codice',a,[]) then
                       begin
                       dmodAz.RxMemoryData1.Append;
                       dmodAz.RxMemoryData1CODICE.AsString:=a;

                    End
               Else RxMemoryData1.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
begin

if (fBolConto.intTipoDoc=501) and (IBQuery5.Fieldbyname('sconto4').AsFloat =1) then
begin
dmodAz.ibqryPretFas.locate('NUMERO',IBQuery5.Fieldbyname('SCHEDA').AsInteger,[]);
scatolo := dmodAz.ibqryPretFas.FieldByName('scat').AsInteger;
qt := dmodAz.ibqryPretFas.FieldByName('TOTALE').AsInteger;
end
ELSE
begin
dmodAz.ibqryTaglio.locate('NUMERO',IBQuery5.Fieldbyname('SCHEDA').AsInteger,[]);
scatolo := dmodAz.ibqryTaglio.FieldByName('scat').AsInteger;
qt := dmodAz.ibqryTaglio.FieldByName('TOTALE').AsInteger;
end;
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+
(b*((IBQuery5.FieldByName('CL').AsFloat-
IBQuery5.FieldByName('DEPO').AsFloat)/(qt/scatolo)))
end
else
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((IBQuery5.FieldByName('CL').AsFloat-
IBQuery5.FieldByName('DEPO').AsFloat)* b);


           dmodAz.RxMemoryData1.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery5.Next;
  End;
// RxMemoryData1.Close;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frVISCONTO_ACC.frf');
dmodAz.rePRN.ShowReport;

end;


procedure TfVisConto.IBQuery3CalcFields(DataSet: TDataSet);
begin
{
If (IBQuery3SCONTO4.AsInteger=1) then
begin
if dmodAz.ibqryPretFas.Locate('NUMERO',IBQuery3SCHEDA.AsString,[]) then
IBQuery3cli.AsString := dmodAz.ibqryPretFas.Fieldbyname('CLIENTE').AsString;
end
else
begin
if dmodAz.ibqryTaglio.Locate('NUMERO',IBQuery3SCHEDA.AsString,[]) then
IBQuery3cli.AsString := dmodAz.ibqryTaglio.Fieldbyname('CLIENTE').AsString;
end;}
end;

procedure TfVisConto.BitBtn2Click(Sender: TObject);
begin
if fBolConto.intTipoDoc=501 then
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frDEP.frf');
if fBolConto.intTipoDoc=500 then
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frCL.frf');
if fBolConto.intTipoDoc=502 then
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frMAG.frf');

dmodAz.rePRN.ShowReport;

end;

procedure TfVisConto.IBQuery3FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
//Accept := DataSet['cli'] = RxDBLookupCombo5.Text;
end;

procedure TfVisConto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
IBQuery3.Filtered := False;
end;

procedure TfVisConto.St1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfVisConto.BitBtn4Click(Sender: TObject);
begin
with IBQuery14 do
begin
Close;
SQL.Clear;
sql.Add('select scheda,DESCR,codice_articolo,denominazione,');
sql.Add('SUM(quantita) AS CL ');
sql.Add('from conto_lav');
sql.Add('where conto_lav.causale_magazzino = ''CLAV''');
SQL.Add('AND DATA_DOC >=:parDataDa AND DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIENTE =:parCLI');
ParamByName('parCLI').AsString:= RxDBLookupCombo5.Text;
end;
If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND codice_ARTICOLO>=:parCodArtDa and codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

///////////////

sql.Add('group by scheda,codice_articolo,DESCR,denominazione');
sql.Add('order by codice_articolo');
{
with IBQuery5 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_articoli.DESCR,tab_det_doc.codice_articolo,tab_det_doc.SCONTO4,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS CL ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

sql.Add('where tab_documenti.causale_magazzino = ''CLAV''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

///////////////

sql.Add('group by tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_det_doc.SCONTO4,tab_articoli.DESCR,tab_cli_for.denominazione');
sql.Add('order by tab_det_doc.codice_articolo');
}
Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSit2.frf');
dmodAz.rePRN.ShowReport;
end;

procedure TfVisConto.BitBtn5Click(Sender: TObject);
begin
with IBQuery13 do
begin
Close;
SQL.Clear;
sql.Add('select * from conto_lav');
sql.Add('where (causale_magazzino = ''CLAV'' or causale_magazzino=''DEPO'')');
if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIENTE =:parCLI');
ParamByName('parCLI').AsString:= RxDBLookupCombo5.Text;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND CODICE_ARTICOLO>=:parCodArtDa and codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

//sql.Add('where causale_magazzino = ''CLAV'' or causale_magazzino=''DEPO''');
if RadioGroup6.ItemIndex = 1 then
sql.Add('order by codice_articolo,scheda,causale_magazzino')
else
sql.Add('order by denominazione,scheda,causale_magazzino');


{
dmodAz.ibqryTaglio.Open;
dmodAz.ibqryPretFas.Open;
with IBQuery4 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_det_doc.descr,');
sql.Add('tab_det_doc.quantita,tab_det_doc.SCONTO4,tab_documenti.causale_magazzino,tab_documenti.NUM_DOC,tab_documenti.clifor_id,');
sql.Add('tab_documenti.data_doc,tab_cli_for.denominazione from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

sql.Add('where causale_magazzino = ''CLAV'' or causale_magazzino=''DEPO''');
if RadioGroup6.ItemIndex = 1 then
sql.Add('order by codice_articolo,scheda,causale_magazzino')
else
sql.Add('order by tab_cli_for.denominazione,scheda,causale_magazzino');
}
Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSit1.frf');
dmodAz.rePRN.ShowReport;

end;

procedure TfVisConto.IBQuery5CalcFields(DataSet: TDataSet);
begin
with IBQuery6 do
begin
Close;
SQL.Clear;
sql.Add('select SUM(tab_det_doc.quantita) AS DEPO');
sql.Add(' from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id ');
SQL.Add('where tab_documenti.causale_magazzino = ''DEPO''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
SQL.Add(' and tab_det_doc.codice_ARTICOLO=:parCodArt');
//SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
SQL.Add('AND tab_det_doc.SCHEDA=:parScheda');

//ParamByName('parfas').AsInteger:= IBQuery5SCHEDA.AsInteger;
ParamByName('parCodArt').AsString:= IBQuery5CODICE_ARTICOLO.AsString;
ParamByName('parScheda').AsInteger:= IBQuery5SCHEDA.AsInteger;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

//ParamByName('parPass').AsString:='N';
Open;
IBQuery5DEPO.AsFloat := IBQuery6.fieldbyname('DEPO').AsFloat;
end;

end;

procedure TfVisConto.IBQuery4CalcFields(DataSet: TDataSet);
begin
If (IBQuery4SCONTO4.AsInteger=1) then
begin
if dmodAz.ibqryPretFas.Locate('NUMERO',IBQuery4SCHEDA.AsString,[]) then
IBQuery4cli.AsString := dmodAz.ibqryPretFas.Fieldbyname('CLIENTE').AsString;
end
else
begin
if dmodAz.ibqryTaglio.Locate('NUMERO',IBQuery4SCHEDA.AsString,[]) then
IBQuery4cli.AsString := dmodAz.ibqryTaglio.Fieldbyname('CLIENTE').AsString;
end;

end;

procedure TfVisConto.BitBtn6Click(Sender: TObject);
begin
with IBQuery7 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS CL ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

sql.Add('where tab_documenti.causale_magazzino = ''CLAV''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

//sql.Add('where tab_documenti.causale_magazzino = ''CLAV''');
sql.Add('group by tab_cli_for.denominazione,tab_det_doc.codice_articolo,tab_det_doc.scheda');
sql.Add('order by tab_cli_for.denominazione,tab_det_doc.codice_articolo');

Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSit3.frf');
dmodAz.rePRN.ShowReport;

end;

procedure TfVisConto.BitBtn7Click(Sender: TObject);
begin
with IBQuery8 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_det_doc.sconto4,tab_articoli.DESCR,tab_det_doc.codice_articolo,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS DEPOS ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

sql.Add('where tab_documenti.causale_magazzino = ''DEPO''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

//sql.Add('where tab_documenti.causale_magazzino = ''DEPO''');
sql.Add('AND (TAB_DOCUMENTI.DATA_DOC >=:parDataDa) AND (TAB_DOCUMENTI.DATA_DOC<=:parDataA)');
sql.Add('group by tab_det_doc.scheda,tab_det_doc.sconto4,tab_det_doc.codice_articolo,tab_articoli.DESCR,tab_cli_for.denominazione');
sql.Add('order by tab_det_doc.codice_articolo');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSit2D.frf');
dmodAz.rePRN.ShowReport;

end;

procedure TfVisConto.BitBtn8Click(Sender: TObject);
begin
with IBQuery7 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS CL ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

sql.Add('where tab_documenti.causale_magazzino = ''DEPO''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

//sql.Add('where tab_documenti.causale_magazzino = ''DEPO''');
sql.Add('group by tab_cli_for.denominazione,tab_det_doc.codice_articolo,tab_det_doc.scheda');
sql.Add('order by tab_cli_for.denominazione,tab_det_doc.codice_articolo');

Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSit3D.frf');
dmodAz.rePRN.ShowReport;


end;

procedure TfVisConto.IBQuery8CalcFields(DataSet: TDataSet);
begin
with IBQuery6 do
begin
Close;
SQL.Clear;
sql.Add('select SUM(tab_det_doc.quantita) AS MAGA');
sql.Add(' from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id ');
SQL.Add('where tab_documenti.causale_magazzino = ''CMAG''');

SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

SQL.Add(' and tab_det_doc.codice_ARTICOLO=:parCodArt');
//SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
SQL.Add('AND tab_det_doc.SCHEDA=:parScheda');

//ParamByName('parfas').AsInteger:= IBQuery5SCHEDA.AsInteger;
ParamByName('parCodArt').AsString:= IBQuery8CODICE_ARTICOLO.AsString;
ParamByName('parScheda').AsInteger:= IBQuery8SCHEDA.AsInteger;

//ParamByName('parPass').AsString:='N';
Open;
IBQuery8MAGA.AsFloat := IBQuery6.fieldbyname('MAGA').AsFloat;
end;
with IBQuery12 do
begin
Close;
SQL.Clear;
sql.Add('select SUM(tab_det_doc.quantita) AS MAGA');
sql.Add(' from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id ');
SQL.Add('where tab_documenti.causale_magazzino = ''CMAG''');

SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

SQL.Add(' and tab_det_doc.codice_ARTICOLO=:parCodArt');
//SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
SQL.Add('AND tab_det_doc.SCHEDA=:parScheda');
SQL.Add('AND tab_det_doc.COL is not null');

//ParamByName('parfas').AsInteger:= IBQuery5SCHEDA.AsInteger;
ParamByName('parCodArt').AsString:= IBQuery8CODICE_ARTICOLO.AsString;
ParamByName('parScheda').AsInteger:= IBQuery8SCHEDA.AsInteger;

//ParamByName('parPass').AsString:='N';
Open;
IBQuery8RISCONTRATI.AsFloat := IBQuery12.fieldbyname('MAGA').AsFloat;
end;

end;

procedure TfVisConto.Button2Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
scatolo,iNormal,qt: Integer;
b,c,d,e:Double;
 begin
with IBQuery8 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_det_doc.sconto4,tab_articoli.DESCR,tab_det_doc.codice_articolo,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS DEPOS ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

sql.Add('where tab_documenti.causale_magazzino = ''DEPO''');
sql.Add('group by tab_det_doc.scheda,tab_det_doc.sconto4,tab_det_doc.codice_articolo,tab_articoli.DESCR,tab_cli_for.denominazione');
sql.Add('order by tab_det_doc.codice_articolo');


Open;
end;
 // Aggiornamento da Distinta degli Accessori.
dmodAz.ibqryTaglio.Open;
dmodAz.ibqryPretFas.Open;
dmodAz.RxMemoryData1.EmptyTable;
dmodAz.RxMemoryData1.Close;
dmodAz.RxMemoryData1.Open;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery8.First;
 With (dmodAz) Do
  While Not(IBQuery8.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery8.Fieldbyname('CODICE_ARTICOLO').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not dmodAz.RxMemoryData1.Locate('Codice',a,[]) then
                       begin
                       dmodAz.RxMemoryData1.Append;
                       dmodAz.RxMemoryData1CODICE.AsString:=a;

                    End
               Else RxMemoryData1.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
begin

if (fBolConto.intTipoDoc=501) and (IBQuery8.Fieldbyname('sconto4').AsFloat =1) then
begin
dmodAz.ibqryPretFas.locate('NUMERO',IBQuery8.Fieldbyname('SCHEDA').AsInteger,[]);
scatolo := dmodAz.ibqryPretFas.FieldByName('scat').AsInteger;
qt := dmodAz.ibqryPretFas.FieldByName('TOTALE').AsInteger;
end
ELSE
begin
dmodAz.ibqryTaglio.locate('NUMERO',IBQuery8.Fieldbyname('SCHEDA').AsInteger,[]);
scatolo := dmodAz.ibqryTaglio.FieldByName('scat').AsInteger;
qt := dmodAz.ibqryTaglio.FieldByName('TOTALE').AsInteger;
end;
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+
(b*((IBQuery8.FieldByName('DEPOS').AsFloat-
IBQuery8.FieldByName('MAGA').AsFloat)/(qt/scatolo)))

//(scatolo * b)
end
else
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((IBQuery8.FieldByName('DEPOS').AsFloat-
IBQuery8.FieldByName('MAGA').AsFloat)* b);


           dmodAz.RxMemoryData1.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery8.Next;
  End;
// RxMemoryData1.Close;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frDEPOS_ACC.frf');
dmodAz.rePRN.ShowReport;

end;


procedure TfVisConto.BitBtn9Click(Sender: TObject);
begin
with IBQuery9 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_det_doc.sconto4,tab_articoli.DESCR,tab_det_doc.codice_articolo,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS MAGAZ ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

sql.Add('where tab_documenti.causale_magazzino = ''CMAG''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

//sql.Add('where tab_documenti.causale_magazzino = ''CMAG''');
sql.Add('group by tab_det_doc.scheda,tab_det_doc.sconto4,tab_det_doc.codice_articolo,tab_articoli.DESCR,tab_cli_for.denominazione');
sql.Add('order by tab_det_doc.codice_articolo');

Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSit2M.frf');
dmodAz.rePRN.ShowReport;


end;

procedure TfVisConto.Button3Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
scatolo,iNormal,qt: Integer;
b,c,d,e:Double;
 begin
with IBQuery9 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_det_doc.sconto4,tab_articoli.DESCR,tab_det_doc.codice_articolo,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS MAGAZ ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

sql.Add('where tab_documenti.causale_magazzino = ''CMAG''');
sql.Add('group by tab_det_doc.scheda,tab_det_doc.sconto4,tab_det_doc.codice_articolo,tab_articoli.DESCR,tab_cli_for.denominazione');
sql.Add('order by tab_det_doc.codice_articolo');


Open;
end;
 // Aggiornamento da Distinta degli Accessori.
dmodAz.ibqryTaglio.Open;
dmodAz.ibqryPretFas.Open;
dmodAz.RxMemoryData1.EmptyTable;
dmodAz.RxMemoryData1.Close;
dmodAz.RxMemoryData1.Open;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery9.First;
 With (dmodAz) Do
  While Not(IBQuery9.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery9.Fieldbyname('CODICE_ARTICOLO').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not dmodAz.RxMemoryData1.Locate('Codice',a,[]) then
                       begin
                       dmodAz.RxMemoryData1.Append;
                       dmodAz.RxMemoryData1CODICE.AsString:=a;

                    End
               Else RxMemoryData1.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
begin

if (fBolConto.intTipoDoc=501) and (IBQuery9.Fieldbyname('sconto4').AsFloat =1) then
begin
dmodAz.ibqryPretFas.locate('NUMERO',IBQuery9.Fieldbyname('SCHEDA').AsInteger,[]);
scatolo := dmodAz.ibqryPretFas.FieldByName('scat').AsInteger;
qt := dmodAz.ibqryPretFas.FieldByName('TOTALE').AsInteger;
end
ELSE
begin
dmodAz.ibqryTaglio.locate('NUMERO',IBQuery9.Fieldbyname('SCHEDA').AsInteger,[]);
scatolo := dmodAz.ibqryTaglio.FieldByName('scat').AsInteger;
qt := dmodAz.ibqryTaglio.FieldByName('TOTALE').AsInteger;
end;
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+
(b*((IBQuery9.FieldByName('MAGAZ').AsFloat)/(qt/scatolo)))

//(scatolo * b)
end
else
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((IBQuery9.FieldByName('MAGAZ').AsFloat)* b);


           dmodAz.RxMemoryData1.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery9.Next;
  End;
// RxMemoryData1.Close;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frMAGAZ_ACC.frf');
dmodAz.rePRN.ShowReport;

end;


procedure TfVisConto.BitBtn11Click(Sender: TObject);
var
scelta:String;
begin
scelta:=InputBox('Stampa :','1)Analitica - 2)Sintetica','1');
if scelta='2' then
begin
with IBQuery10 do
begin
Close;
SQL.Clear;
sql.Add('select tab_cli_for.denominazione,tab_documenti.CLIFOR_ID,');
sql.Add('SUM(tab_det_doc.quantita) AS CL ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

sql.Add('where tab_documenti.causale_magazzino = ''CLAV''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

//sql.Add('where tab_documenti.causale_magazzino = ''CLAV''');
sql.Add('group by tab_cli_for.denominazione,tab_documenti.CLIFOR_ID');
sql.Add('order by tab_cli_for.denominazione');

Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSitTotF.frf');
dmodAz.rePRN.ShowReport;
end;

if scelta='1' then
begin
with IBQuery5 do
begin
Close;
SQL.Clear;
sql.Add('select tab_det_doc.scheda,tab_articoli.DESCR,tab_det_doc.codice_articolo,tab_det_doc.SCONTO4,tab_cli_for.denominazione,');
sql.Add('SUM(tab_det_doc.quantita) AS CL ');
sql.Add('from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id join tab_cli_for on tab_cli_for.id_cli_for=tab_documenti.clifor_id');
sql.Add('left join tab_articoli');
sql.Add('on tab_Articoli.codice_articolo=tab_det_doc.codice_articolo');

sql.Add('where tab_documenti.causale_magazzino = ''CLAV''');
SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

If RadioGroup4.ItemIndex = 1 then
 Begin
SQL.Add('AND tab_det_doc.codice_ARTICOLO>=:parCodArtDa and tab_det_doc.codice_ARTICOLO<=:parCodArtAd');

            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;

If RadioGroup4.ItemIndex = 2 then
      Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (cbTipo.Checked)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (cbGruppo.Checked)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (cbFamiglia.Checked)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
            SQL.Add('))');
           End;

///////////////

sql.Add('group by tab_det_doc.scheda,tab_det_doc.codice_articolo,tab_det_doc.SCONTO4,tab_articoli.DESCR,tab_cli_for.denominazione');
sql.Add('order by tab_cli_for.denominazione,tab_det_doc.codice_articolo');

Open;
end;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSitTotF2.frf');
dmodAz.rePRN.ShowReport;
end;
end;

procedure TfVisConto.IBQuery10CalcFields(DataSet: TDataSet);
begin
with IBQuery11 do
begin
Close;
SQL.Clear;
sql.Add('select SUM(tab_det_doc.quantita) AS DEPO');
sql.Add(' from tab_det_doc');
sql.Add('join tab_documenti on tab_documenti.id_documento=tab_det_doc.doc_id ');
SQL.Add('where tab_documenti.causale_magazzino = ''DEPO''');

SQL.Add('AND TAB_DOCUMENTI.DATA_DOC >=:parDataDa AND TAB_DOCUMENTI.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');

ParamByName('parfas').AsInteger:= IBQuery10CLIFOR_ID.AsInteger;
Open;
IBQuery10DEPO.AsFloat := IBQuery11.fieldbyname('DEPO').AsFloat;
end;
end;

procedure TfVisConto.IBQuery14CalcFields(DataSet: TDataSet);
begin
with IBQuery15 do
begin
Close;
SQL.Clear;
sql.Add('select SUM(conto_lav.quantita) AS DEPO');
sql.Add(' from conto_lav');
SQL.Add('where conto_lav.causale_magazzino = ''DEPO''');
SQL.Add('AND conto_lav.DATA_DOC >=:parDataDa AND conto_lav.DATA_DOC<=:parDataA');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
SQL.Add(' and codice_ARTICOLO=:parCodArt');
//SQL.Add('AND tab_documenti.CLIFOR_ID =:parfas');
SQL.Add('AND conto_lav.SCHEDA=:parScheda');

//ParamByName('parfas').AsInteger:= IBQuery5SCHEDA.AsInteger;
ParamByName('parCodArt').AsString:= IBQuery14CODICE_ARTICOLO.AsString;
ParamByName('parScheda').AsInteger:= IBQuery14SCHEDA.AsInteger;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND conto_lav.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;

if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIENTE =:parCLI');
ParamByName('parCLI').AsString:= RxDBLookupCombo5.Text;
end;

//ParamByName('parPass').AsString:='N';
Open;
IBQuery14DEPO.AsFloat := IBQuery15.fieldbyname('DEPO').AsFloat;
end;

end;

end.
