unit frmSituazRicami;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, DBCtrls, Buttons, Grids,
  DBGrids, RxLookup, ExtCtrls, Mask, ToolEdit, RxMemDS, Menus, FR_Class;

type
  TfSituazRicami = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RadioGroup6: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1F_1: TLargeintField;
    IBQuery1F_2: TLargeintField;
    DataSource2: TDataSource;
    dsoCli: TDataSource;
    dsArticoli: TDataSource;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    dsDipendente: TDataSource;
    dsoMARCA: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoTIPO: TDataSource;
    dsoGRUPPO: TDataSource;
    dsFor: TDataSource;
    ibCalcAcc: TIBQuery;
    DBGrid2: TDBGrid;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CodiceArticolo: TStringField;
    IBQuery3: TIBQuery;
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
    IBQuery3Cliente: TIBStringField;
    IBQuery3numero: TIntegerField;
    frReport1: TfrReport;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    IBQuery3NUMPRET: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcDaArtCodiceExit(Sender: TObject);
    procedure rxdblcDaArtExit(Sender: TObject);
    procedure rxdblcAdArtCodiceExit(Sender: TObject);
    procedure rxdblcAdArtExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
  private
    { Private declarations }
            strDaArt, strAdArt: String;
  public
    { Public declarations }
              boolTipo,boolFamiglia,boolGruppo,boolMarca: Boolean;
  end;

var
  fSituazRicami: TfSituazRicami;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfSituazRicami.FormShow(Sender: TObject);
begin
dmodAz.RxMemoryData1.Open;
dmodAz.RxMemoryData1.EmptyTable;
dmodAz.RxMemoryData1.Close;
dsArticoli.DataSet.Open;
dsoGRUPPO.DataSet.Open;
dsoTIPO.DataSet.Open;
dsoFAMIGLIA.DataSet.Open;
dsoMARCA.DataSet.Open;
dsFor.DataSet.Open;
end;

procedure TfSituazRicami.RadioGroup4Click(Sender: TObject);
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

procedure TfSituazRicami.RadioGroup2Click(Sender: TObject);
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

procedure TfSituazRicami.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then
begin
RxDBLookupCombo5.Enabled := True;
RxDBLookupCombo6.Enabled := True;
end
else
begin
RxDBLookupCombo5.Enabled := False;
RxDBLookupCombo6.Enabled := False;
end;
end;

procedure TfSituazRicami.BitBtn3Click(Sender: TObject);
begin
Close();
end;

procedure TfSituazRicami.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfSituazRicami.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfSituazRicami.rxdblcAdArtCodiceChange(Sender: TObject);
begin
  rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfSituazRicami.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;

end;

procedure TfSituazRicami.rxdblcDaArtCodiceExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfSituazRicami.rxdblcDaArtExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfSituazRicami.rxdblcAdArtCodiceExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfSituazRicami.rxdblcAdArtExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfSituazRicami.BitBtn1Click(Sender: TObject);
begin
 With (IBQuery3) Do
 Begin
Close;
SQL.Clear;
sql.add('select * from tab_det_doc');
sql.add('JOIN TAB_DOCUMENTI ON');
sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');


sql.add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =590) or (TAB_DOCUMENTI.TIPO_DOC =591))');
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
if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo4.KeyValue;
end;
// SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo');
 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;


if RadioGroup6.ItemIndex = 0 then
 SQL.Add('ORDER BY TAB_DET_DOC.SCHEDA,TAB_DOCUMENTI.DATA_DOC');
if RadioGroup6.ItemIndex = 1 then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo,TAB_DOCUMENTI.DATA_DOC');
if RadioGroup6.ItemIndex = 2 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC');

Open;
End;
//Ripassa;
end;

procedure TfSituazRicami.RxDBLookupCombo4Change(Sender: TObject);
begin
  RxDBLookupCombo3.KeyValue:=RxDBLookupCombo4.KeyValue;
end;

procedure TfSituazRicami.RxDBLookupCombo3Change(Sender: TObject);
begin
  RxDBLookupCombo4.KeyValue:=RxDBLookupCombo3.KeyValue;
end;

procedure TfSituazRicami.BitBtn2Click(Sender: TObject);
begin
 frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'StRicami.frf');
 frReport1.ShowReport;

end;

procedure TfSituazRicami.Stampe1Click(Sender: TObject);
begin
frReport1.DesignReport;
end;

end.
