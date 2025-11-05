unit uSitORd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids,
  Buttons, RxLookup, ExtCtrls, Mask, ToolEdit, Menus, RxMemDS, FR_Class, Variants;

type
  TfSitOrd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup4: TRadioGroup;
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
    RadioGroup3: TRadioGroup;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBGrid2: TDBGrid;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DataSource1: TDataSource;
    frReport1: TfrReport;
    dsoCli: TDataSource;
    dsArticoli: TDataSource;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    dsDipendente: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3ID_DOC_DET: TIntegerField;
    IBQuery3NUM_RIGA_ID: TIntegerField;
    IBQuery3TIPO_RIGA: TIntegerField;
    IBQuery3CODICE_ARTICOLO: TIBStringField;
    IBQuery3DESCR: TIBStringField;
    IBQuery3COSTO: TFloatField;
    IBQuery3COSTOINVALUTA: TFloatField;
    IBQuery3UNITA_MISURA: TIBStringField;
    IBQuery3FATTCONV: TFloatField;
    IBQuery3QTA_UM: TFloatField;
    IBQuery3QUANTITA: TFloatField;
    IBQuery3Col0: TStringField;
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
    dsoMARCA: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoGRUPPO: TDataSource;
    dsoTIPO: TDataSource;
    DataSource2: TDataSource;
    IBQuery4: TIBQuery;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    IBQuery1: TIBQuery;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1QTA: TFloatField;
    IBQuery1Descr: TStringField;
    DataSource4: TDataSource;
    IBQuery4CLIFOR_ID: TIntegerField;
    IBQuery4CODICE_ARTICOLO: TIBStringField;
    IBQuery4QTA: TFloatField;
    IBQuery4DESCR: TStringField;
    IBQuery4CLIDESCR: TStringField;
    IBQuery3Cliente: TStringField;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    IBQuery5: TIBQuery;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CodiceArticolo: TStringField;
    IBQuery3Consegnato: TFloatField;
    IBQuery3Magazzino: TFloatField;
    IBQuery6: TIBQuery;
    IBQuery3ALTRA_DEST2: TIBStringField;
    IBQuery3DESCR1: TIBStringField;
    IBQuery3CODICE: TIBStringField;
    IBQuery3CODICE_ZONA_ID: TIBStringField;
    IBQuery3CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery3PROVVIGIONE: TFloatField;
    IBQuery3IMPORTO_FISSO: TFloatField;
    IBQuery3TIPO_CLI_FOR: TSmallintField;
    IBQuery3CLI_FOR_ID: TIntegerField;
    IBQuery3TIPO_SOMMA_PRV: TSmallintField;
    IBQuery3TIPO_PROVVIGIONE1: TSmallintField;
    IBQuery3TOTALE_FATTURATO: TFloatField;
    IBQuery3TOTALE_PROVVIGIONE: TFloatField;
    IBQuery3CG: TIBStringField;
    IBQuery3CA: TIBStringField;
    IBQuery3TIPO_AG: TIntegerField;
    IBQuery7: TIBQuery;
    IBQuery7ORDINATO: TFloatField;
    IBQuery7CLIFOR_ID: TIntegerField;
    IBQuery7DENOMINAZIONE: TStringField;
    IBQuery8: TIBQuery;
    IBQuery7CODICE_ARTICOLO: TIBStringField;
    IBQuery7CONSE: TFloatField;
    IBQuery7DescrArt: TStringField;
    IBQuery3COSTOR: TFloatField;
    IBQuery1IMP: TFloatField;
    IBQuery1SCAT: TFloatField;
    RxMemoryData2: TRxMemoryData;
    RxMemoryData2CODART: TStringField;
    RxMemoryData2CODCLI: TIntegerField;
    RxMemoryData2RIMAN: TFloatField;
    BitBtn7: TBitBtn;
    IBQuery9: TIBQuery;
    IBQuery9CODICE_ARTICOLO: TIBStringField;
    IBQuery9DESCR: TIBStringField;
    IBQuery9QTA: TFloatField;
    IBQuery9MAGAZZINO: TFloatField;
    IBQuery9CONS: TFloatField;
    IBQuery10: TIBQuery;
    IBQuery3A: TIBStringField;
    IBQuery3B: TIBStringField;
    IBQuery3C: TIBStringField;
    procedure RadioGroup3Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure cbGruppoClick(Sender: TObject);
    procedure cbFamigliaClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcDaArtExit(Sender: TObject);
    procedure rxdblcDaArtCodiceExit(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtCodiceExit(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rxdblcAdArtExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure IBQuery4FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure IBQuery1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure IBQuery3FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Stampe1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure IBQuery7CalcFields(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure IBQuery3BeforeOpen(DataSet: TDataSet);
    procedure IBQuery3CalcFields(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure IBQuery9CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
                strDaArt, strAdArt: String;
 procedure Ripassa;
  public
    { Public declarations }
  boolTipo,boolFamiglia,boolGruppo,boolMarca: Boolean;
  end;

var
  fSitOrd: TfSitOrd;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfSitOrd.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then
RxDBLookupCombo1.Enabled := True
else
RxDBLookupCombo1.Enabled := False;
end;

procedure TfSitOrd.RadioGroup4Click(Sender: TObject);
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

procedure TfSitOrd.cbMarcaClick(Sender: TObject);
begin
 boolMarca:=cbMarca.Checked;
end;

procedure TfSitOrd.cbGruppoClick(Sender: TObject);
begin
 boolGruppo:=cbGruppo.Checked;
end;

procedure TfSitOrd.cbFamigliaClick(Sender: TObject);
begin
 boolFamiglia:=cbFamiglia.Checked;
end;

procedure TfSitOrd.cbTipoClick(Sender: TObject);
begin
 boolTipo:=cbTipo.Checked;
end;

procedure TfSitOrd.BitBtn2Click(Sender: TObject);
var
Scelta : String;
begin
scelta:=InputBox('Scegliere l''ordinamento della Stampa :','1)x Codice - 2)x q.tà  - 3)x Valore - 4) x guadagno','1');

 With (IBQuery1) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT');
   SQL.Add('TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,');
   SQL.Add('SUM(TAB_DET_DOC.quantita) as QTA,SUM(TAB_DET_DOC.importo_sconto) as IMP,SUM(TAB_DET_DOC.qta_um) as SCAT');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('left JOIN TAB_articoli ON');
   SQL.Add('(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)');
   sql.add('left JOIN TAB_AGENTI ON');
   sql.add('TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =201');
   SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

   //  Open;

If RadioGroup4.ItemIndex = 1 then
 Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
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
   // Causale Magazzino
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;

 SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');

 if scelta = '1' then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo');
if scelta = '2' then
 SQL.Add('ORDER BY 3 desc');
if scelta = '3' then
 SQL.Add('ORDER BY 4 desc');

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

 Open;
   // Causale Magazzino
   // Depisito
   // Tipo Cli/Forn and Cli/Forn

{
if RadioGroup2.ItemIndex = 1 then
begin
//IBQuery3.FieldByName('cli').AsString := RxDBLookupCombo5.Text;
IBQuery1.Filtered := True;
end
else
IBQuery1.Filtered := False;
  Open;
}

 End;

 frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'StOrdTot_R.frf');
 frReport1.ShowReport;

end;

procedure TfSitOrd.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfSitOrd.RadioGroup1Click(Sender: TObject);
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

procedure TfSitOrd.RadioGroup2Click(Sender: TObject);
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

procedure TfSitOrd.FormCreate(Sender: TObject);
begin
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;
 dsArticoli.DataSet.Open;
end;

procedure TfSitOrd.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfSitOrd.rxdblcDaArtExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfSitOrd.rxdblcDaArtCodiceExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfSitOrd.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfSitOrd.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfSitOrd.rxdblcAdArtCodiceExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfSitOrd.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfSitOrd.rxdblcAdArtExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfSitOrd.BitBtn5Click(Sender: TObject);
begin
{RxMemoryData2.close;
RxMemoryData2.EmptyTable;
RxMemoryData2.Open;}
//Ripassa;
 frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'StOrdTot2_R.frf');
 frReport1.ShowReport;
end;

procedure TfSitOrd.IBQuery4FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept := DataSet['agente_id'] = RxDBLookupCombo4.Value;
end;

procedure TfSitOrd.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
{
if RadioGroup2.ItemIndex = 1 then
begin
if ParName = 'Agente' then
ParValue := RxDBLookupCombo3.Text;

end;
}
if RadioGroup1.ItemIndex = 1 then
begin
if ParName = 'Agente' then
ParValue := RxDBLookupCombo5.Text;

end;
end;

procedure TfSitOrd.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo4.Value := RxDBLookupCombo3.Value; 
end;

procedure TfSitOrd.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo3.Value := RxDBLookupCombo4.Value;
end;

procedure TfSitOrd.IBQuery1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
//Accept := DataSet['agente_id'] = RxDBLookupCombo4.Value;
end;

procedure TfSitOrd.FormShow(Sender: TObject);
begin
dsDipendente.DataSet.Open;
IBQuery3.Close;
IBQuery3.Open;
//Ripassa;
end;

procedure TfSitOrd.BitBtn1Click(Sender: TObject);
begin
 With (IBQuery3) Do
 Begin
Close;
SQL.Clear;
sql.add('select * from tab_det_doc');
sql.add('JOIN TAB_DOCUMENTI ON');
sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
sql.add('JOIN TAB_AGENTI ON');
sql.add('TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID');

sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =201');
SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

If RadioGroup4.ItemIndex = 1 then
 Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
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
   // Causale Magazzino
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
// SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
{
if RadioGroup2.ItemIndex = 1 then
begin
IBQuery3.Filtered := True;
end
else
IBQuery3.Filtered := False;
}
If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;


if RadioGroup6.ItemIndex = 0 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.NUM_DOC,TAB_DOCUMENTI.DATA_DOC');
if RadioGroup6.ItemIndex = 1 then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo,DATA_DOC');
if RadioGroup6.ItemIndex = 2 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC');

Open;
End;
//Ripassa;
end;

procedure TfSitOrd.IBQuery3FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
//Accept := DataSet['agente_id'] = RxDBLookupCombo4.Value;
end;

procedure TfSitOrd.Stampe1Click(Sender: TObject);
begin
frReport1.DesignReport;
end;

procedure TfSitOrd.BitBtn6Click(Sender: TObject);
begin
with IBQuery7 do
begin
Close;
SQL.Clear;
SQL.Add('SELECT DISTINCT');
SQL.Add('TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo,');
SQL.Add('sum(TAB_DET_DOC.QUANTITA) AS CONSE FROM TAB_DET_DOC');
SQL.Add('JOIN TAB_DOCUMENTI ON');
SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');

SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');
If RadioGroup4.ItemIndex = 1 then
 Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
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
   // Causale Magazzino
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;


 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

SQL.Add('GROUP BY TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo');
SQL.Add('order by TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo');
Open;
end;
 frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'StExtra.frf');
 frReport1.ShowReport;

end;

procedure TfSitOrd.IBQuery7CalcFields(DataSet: TDataSet);
begin
with IBQuery8 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as ORD FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =201 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
   SQL.Add(' AND TAB_DOCUMENTI.CLIFOR_ID =:parcli');

ParamByName('parArt').AsString:=IBQuery7CODICE_ARTICOLO.AsString;
ParamByName('parcli').AsInteger:=IBQuery7CLIFOR_ID.AsInteger;
//ParamByName('parPass').AsString:='N';
Open;
IBQuery7ORDINATO.AsFloat := IBQuery8.fieldbyname('ORD').AsFloat;
end;

end;

procedure TfSitOrd.BitBtn4Click(Sender: TObject);
begin
with IBQuery7 do
begin
Close;
SQL.Clear;
SQL.Add('SELECT DISTINCT');
SQL.Add('TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo,');
SQL.Add('sum(TAB_DET_DOC.QUANTITA) AS CONSE FROM TAB_DET_DOC');
SQL.Add('JOIN TAB_DOCUMENTI ON');
SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');
If RadioGroup4.ItemIndex = 1 then
 Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
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
   // Causale Magazzino
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 
SQL.Add('GROUP BY TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo');
SQL.Add('order by TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.codice_articolo');
Open;
end;
 frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'StExtra2.frf');
 frReport1.ShowReport;


end;

procedure TfSitOrd.RxDBLookupCombo2Change(Sender: TObject);
begin
  RxDBLookupCombo5.KeyValue:=RxDBLookupCombo2.KeyValue;
end;

procedure TfSitOrd.RxDBLookupCombo5Change(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue:=RxDBLookupCombo5.KeyValue;
end;

procedure TfSitOrd.IBQuery1CalcFields(DataSet: TDataSet);
var
a: double;
begin
{
a:=0;
with IBQuery5 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
   SQL.Add(' AND TAB_DOCUMENTI.CLIFOR_ID =:parcli');

ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;
ParamByName('parcli').AsInteger:=IBQuery3CLIFOR_ID.AsInteger;
//ParamByName('parPass').AsString:='N';
Open;
if IBQuery5.fieldbyname('CONS').AsFloat >=IBQuery3quantita.AsFloat then
IBQuery3Consegnato.AsFloat :=IBQuery3quantita.AsFloat
else
IBQuery3Consegnato.AsFloat := IBQuery5.fieldbyname('CONS').AsFloat;
end;

with IBQuery6 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as MAG1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =502 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;;
Open;
a:= IBQuery6.fieldbyname('MAG1').AsFloat;
end;

with IBQuery6 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;
Open;
IBQuery3Magazzino.AsFloat := a-IBQuery6.fieldbyname('CONS').AsFloat;
end;

}
end;

procedure TfSitOrd.IBQuery3BeforeOpen(DataSet: TDataSet);
begin
RxMemoryData2.Open;
RxMemoryData2.EmptyTable;
RxMemoryData2.Open;
end;

procedure TfSitOrd.Ripassa;
var
a,k: double;
f : string;
g: integer;
begin
RxMemoryData2.Open;
a:=0;
ibquery3.First;
while not ibquery3.Eof do
begin
with IBQuery5 do
begin
Close;
SQL.Clear;
SQL.Add('SELECT ');
SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
SQL.Add('JOIN TAB_DOCUMENTI ON');
SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
SQL.Add(' AND TAB_DOCUMENTI.CLIFOR_ID =:parcli');

ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;
ParamByName('parcli').AsInteger:=IBQuery3CLIFOR_ID.AsInteger;
//ParamByName('parPass').AsString:='N';
Open;
f:=IBQuery3CODICE_ARTICOLO.AsString;
g:=IBQuery3CLIFOR_ID.AsInteger;
if RxMemoryData2.Locate('CODART;CODCLI', VarArrayOf([f,g]),[]) then
k:=RxMemoryData2RIMAN.AsFloat
else
k:=IBQuery5.fieldbyname('CONS').AsFloat;

if k >=IBQuery3quantita.AsFloat then
begin
IBQuery3Consegnato.AsFloat :=IBQuery3quantita.AsFloat;
k:=k-IBQuery3quantita.AsFloat;
RxMemoryData2.Insert;
RxMemoryData2CODART.AsString:=f;
RxMemoryData2CODCLI.AsInteger:=g;
RxMemoryData2RIMAN.AsFloat:=k;
RxMemoryData2.Post;
end
else
begin
IBQuery3Consegnato.AsFloat := k;
RxMemoryData2.Insert;
RxMemoryData2CODART.AsString:=f;
RxMemoryData2CODCLI.AsInteger:=g;
RxMemoryData2RIMAN.AsFloat:=0;
RxMemoryData2.Post;
end;
end;



with IBQuery6 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as MAG1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =502 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;;
Open;
a:= IBQuery6.fieldbyname('MAG1').AsFloat;
end;

with IBQuery6 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;
Open;
IBQuery3Magazzino.AsFloat := a-IBQuery6.fieldbyname('CONS').AsFloat;
end;
IBQuery3.Next;
end;
end;

procedure TfSitOrd.IBQuery3CalcFields(DataSet: TDataSet);
var
a,k: double;
f : string;
g: integer;
begin
with IBQuery10 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as MAG1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =502) or  (TAB_DOCUMENTI.TIPO_DOC =222))');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;;
Open;
a:= IBQuery10.fieldbyname('MAG1').AsFloat;
end;

with IBQuery10 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;
Open;
IBQuery3MAGAZZINO.AsFloat := a-IBQuery10.fieldbyname('CONS').AsFloat;
end;
with IBQuery5 do
begin
Close;
SQL.Clear;
SQL.Add('SELECT ');
SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
SQL.Add('JOIN TAB_DOCUMENTI ON');
SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
SQL.Add(' AND TAB_DOCUMENTI.CLIFOR_ID =:parcli');
ParamByName('parcli').AsInteger:= IBQuery3CLIFOR_ID.AsInteger;
ParamByName('parArt').AsString:=IBQuery3CODICE_ARTICOLO.AsString;

//ParamByName('parPass').AsString:='N';
Open;
end;
IBQuery3Consegnato.AsFloat :=IBQuery5.fieldbyname('CONS').AsFloat;


//IBQuery3Consegnato.AsFloat:= IBQuery3Consegnato.AsFloat;
end;

procedure TfSitOrd.BitBtn7Click(Sender: TObject);
begin
 With (IBQuery9) Do
 Begin
Close;
SQL.Clear;
SQL.Add('select TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,');
SQL.Add('SUM(TAB_DET_DOC.quantita) as QTA from tab_det_doc');
sql.add('JOIN TAB_DOCUMENTI ON');
sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
sql.add('JOIN TAB_AGENTI ON');
sql.add('TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID');
sql.add('left join tab_cli_for on');
sql.add('TAB_cli_for.ID_CLI_FOR=TAB_DOCUMENTI.CLIFOR_ID');
sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =201');
SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

If RadioGroup4.ItemIndex = 1 then
 Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
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
   // Causale Magazzino
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
// SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
{
if RadioGroup2.ItemIndex = 1 then
begin
IBQuery3.Filtered := True;
end
else
IBQuery3.Filtered := False;
}
If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;

SQL.Add('group by TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo');
Open;
End;

 frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'StOrdTot3_R.frf');
 frReport1.ShowReport;
end;

procedure TfSitOrd.IBQuery9CalcFields(DataSet: TDataSet);
var
a,k: double;
f : string;
g: integer;
begin
with IBQuery5 do
begin
Close;
SQL.Clear;
SQL.Add('SELECT ');
SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
SQL.Add('JOIN TAB_DOCUMENTI ON');
SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add(' AND TAB_DOCUMENTI.CLIFOR_ID =:parcli');
ParamByName('parcli').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
ParamByName('parArt').AsString:=IBQuery9CODICE_ARTICOLO.AsString;

If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;
//ParamByName('parPass').AsString:='N';
Open;
end;
IBQuery9CONS.AsFloat :=IBQuery5.fieldbyname('CONS').AsFloat;


with IBQuery5 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as MAG1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =502 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=IBQuery9CODICE_ARTICOLO.AsString;
Open;
a:= IBQuery5.fieldbyname('MAG1').AsFloat;
end;

with IBQuery5 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');   //per calcolare la quantità basta sapere il cliente
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=IBQuery9CODICE_ARTICOLO.AsString;
Open;
IBQuery9MAGAZZINO.AsFloat := a-IBQuery5.fieldbyname('CONS').AsFloat;
end;

end;


end.
