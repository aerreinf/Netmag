unit uselectCL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, Buttons, IBSQL;

type
  TfselectCL = class(TForm)
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1ID_DOC_DET: TIntegerField;
    IBQuery1NUM_RIGA_ID: TIntegerField;
    IBQuery1TIPO_RIGA: TIntegerField;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1COSTO: TFloatField;
    IBQuery1COSTOINVALUTA: TFloatField;
    IBQuery1UNITA_MISURA: TIBStringField;
    IBQuery1FATTCONV: TFloatField;
    IBQuery1QTA_UM: TFloatField;
    IBQuery1QUANTITA: TFloatField;
    IBQuery1SCONTO1: TFloatField;
    IBQuery1SCONTO2: TFloatField;
    IBQuery1SCONTO3: TFloatField;
    IBQuery1SCONTO4: TFloatField;
    IBQuery1IMPORTO_SCONTO: TFloatField;
    IBQuery1IMPORTO: TFloatField;
    IBQuery1IMPORTOINVALUTA: TFloatField;
    IBQuery1OMAGGIO: TSmallintField;
    IBQuery1DEP: TIBStringField;
    IBQuery1SCONTO_EQ: TFloatField;
    IBQuery1PERC_PROVV: TFloatField;
    IBQuery1TIPO_SERVIZIO: TIBStringField;
    IBQuery1IVATO: TFloatField;
    IBQuery1IMPORTO_CON_IVA: TFloatField;
    IBQuery1CODICE_IVA_ID: TIBStringField;
    IBQuery1DATA_REG: TDateTimeField;
    IBQuery1RIF_A: TSmallintField;
    IBQuery1RIF_A_PRE: TSmallintField;
    IBQuery1RIF_A_ORD: TSmallintField;
    IBQuery1RIF_A_DDT: TSmallintField;
    IBQuery1RIF_ID_DOC_DET: TIntegerField;
    IBQuery1RIF_DDT_ID_DOC: TIntegerField;
    IBQuery1RIF_DDT_DATA_DOC: TDateTimeField;
    IBQuery1RIF_ORD_ID_DOC: TIntegerField;
    IBQuery1RIF_ORD_DATA_DOC: TDateTimeField;
    IBQuery1RIF_PRE_ID_DOC: TIntegerField;
    IBQuery1RIF_PRE_DATA_DOC: TDateTimeField;
    IBQuery1PIANOCONTO_ID: TIntegerField;
    IBQuery1RIF_PRE_NUM_DOC: TIntegerField;
    IBQuery1RIF_ORD_NUM_DOC: TIntegerField;
    IBQuery1RIF_DDT_NUM_DOC: TIntegerField;
    IBQuery1OP_QTA_DISPONIBILE: TFloatField;
    IBQuery1OP_VAL_DISPONIBILE: TFloatField;
    IBQuery1OP_QTA_GIACENZA: TFloatField;
    IBQuery1OP_VAL_GIACENZA: TFloatField;
    IBQuery1DOC_ID: TIntegerField;
    IBQuery1TOTCOLLI: TIBStringField;
    IBQuery1TOTSCAT: TFloatField;
    IBQuery1PREZZOLIST: TFloatField;
    IBQuery1SCHEDA: TFloatField;
    IBQuery1PASSATA: TIBStringField;
    IBQuery1COL: TIBStringField;
    IBQuery1ID_DOCUMENTO: TIntegerField;
    IBQuery1TESTATA_PN_ID: TIntegerField;
    IBQuery1CAUSALE_DOC: TIBStringField;
    IBQuery1TIPO_DOC: TIntegerField;
    IBQuery1DA_FATTURARE: TSmallintField;
    IBQuery1CLIFOR_ID: TIntegerField;
    IBQuery1TIPO_CLIFOR: TSmallintField;
    IBQuery1DEPOSITO: TIBStringField;
    IBQuery1CONTRO_CLIFOR_ID: TIntegerField;
    IBQuery1CONTRO_TIPO_CLIFOR: TSmallintField;
    IBQuery1CONTRO_DEPOSITO: TIBStringField;
    IBQuery1CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery1CONTRO_CAUS_MAG: TIBStringField;
    IBQuery1ATTIVITA: TIBStringField;
    IBQuery1SUBATTIVITA: TIBStringField;
    IBQuery1DATA_REGISTRAZIONE: TDateTimeField;
    IBQuery1DATA_DOC: TDateTimeField;
    IBQuery1DATA_CONFERMA: TDateTimeField;
    IBQuery1DATA_EVASIONE: TDateTimeField;
    IBQuery1STATO_DOCUMENTO: TIntegerField;
    IBQuery1STATO_CONTABILITA: TIntegerField;
    IBQuery1MONETA_ID: TIBStringField;
    IBQuery1CAMBIO: TFloatField;
    IBQuery1KINGUA_ID: TIBStringField;
    IBQuery1LISTINO: TIBStringField;
    IBQuery1NS_RIFERIMENTO: TIBStringField;
    IBQuery1VS_RIFERIMENTO: TIBStringField;
    IBQuery1CAUSALE_CONTABILE: TIBStringField;
    IBQuery1CODICE_BOLL: TIBStringField;
    IBQuery1PAGAMENTO_ID: TIBStringField;
    IBQuery1BANCA_CLIFOR: TIBStringField;
    IBQuery1BANCA_AZIENDA: TIBStringField;
    IBQuery1VETTORE1: TIBStringField;
    IBQuery1VETTORE2: TIBStringField;
    IBQuery1VETTORE3: TIBStringField;
    IBQuery1PORTO: TIBStringField;
    IBQuery1ASPETTO: TIBStringField;
    IBQuery1SPEDIZIONE: TIBStringField;
    IBQuery1PESO_NETTO: TFloatField;
    IBQuery1PESO_LORDO: TFloatField;
    IBQuery1CUBAGGIO: TFloatField;
    IBQuery1DESTINARIO: TIBStringField;
    IBQuery1IMBALLO: TIBStringField;
    IBQuery1SCONTO11: TFloatField;
    IBQuery1AGENTE_ID: TIBStringField;
    IBQuery1DATA_CONSEGNA: TDateTimeField;
    IBQuery1NUM_DOC: TIntegerField;
    IBQuery1NRCOLLI: TFloatField;
    IBQuery1SCONTO21: TFloatField;
    IBQuery1IMPORTO_SCONTO1: TFloatField;
    IBQuery1NOTA: TIBStringField;
    IBQuery1SOSPESO: TSmallintField;
    IBQuery1IVA_SOSPESA: TSmallintField;
    IBQuery1COD_IVA_ESENTE: TIBStringField;
    IBQuery1COD_IVA_SPESE_BOLLI: TIBStringField;
    IBQuery1COD_IVA_SPESE_INCASSO: TIBStringField;
    IBQuery1COD_IVA_SPESE_IMVALLO: TIBStringField;
    IBQuery1COD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    IBQuery1COD_IVA_SPESE_ACCESSIONE: TIBStringField;
    IBQuery1COD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    IBQuery1ACCORPA_RIGHE: TSmallintField;
    IBQuery1ATTIVITA2: TIBStringField;
    IBQuery1SUBATTIVITA2: TIBStringField;
    IBQuery1SOGGETTO_CEE: TSmallintField;
    IBQuery1REPORT: TIBStringField;
    IBQuery1RILEVA_ACCONTO: TSmallintField;
    IBQuery1ORA: TIBStringField;
    IBQuery1FATT_ACCOMP: TSmallintField;
    IBQuery1TIPO_FATT: TSmallintField;
    IBQuery1ST_NOTE_CLIFOR: TSmallintField;
    IBQuery1IVATO1: TSmallintField;
    IBQuery1STAMPATO: TSmallintField;
    IBQuery1DATA_COMPETENZA_IVA: TDateTimeField;
    IBQuery1MEZZO_TRASPORTO: TSmallintField;
    IBQuery1TOT_PROVVIGIONE: TFloatField;
    IBQuery1TIPO_PROVVIGIONE: TSmallintField;
    IBQuery1TOT_IMP_PROVVIGIONE: TFloatField;
    IBQuery1CAST_MANUALE: TSmallintField;
    IBQuery1NUM_DOC2: TIntegerField;
    IBQuery1SERIE_DOC2: TIBStringField;
    IBQuery1MESE_CONT: TIntegerField;
    IBQuery1ALTRE_DERT_SI_NO: TSmallintField;
    IBQuery1SPESE_IMBALLO: TFloatField;
    IBQuery1SPESE_BOLLI: TFloatField;
    IBQuery1SPESE_ACCESSORIE: TFloatField;
    IBQuery1SPESE_INCASSO: TFloatField;
    IBQuery1SPESE_SPEDIZIONE: TFloatField;
    IBQuery1SPESE_CONTRASS: TFloatField;
    IBQuery1CAU_TRASP_ID: TIBStringField;
    IBQuery1PER_ALTRA_DEST: TSmallintField;
    IBQuery1IMPORTO_CON_IVA1: TFloatField;
    IBQuery1TOTALE_MERCE: TFloatField;
    IBQuery1TOTALE_SERVIZI: TFloatField;
    IBQuery1TOTALE: TFloatField;
    IBQuery1TOTALE_IVA: TFloatField;
    IBQuery1TOTALE_IVATO: TFloatField;
    IBQuery1TOTALE_SCONTI: TFloatField;
    IBQuery1TOTALE_EURO: TFloatField;
    IBQuery1TOTALE_EURO_IVATO: TFloatField;
    IBQuery1CODIVA1: TIBStringField;
    IBQuery1ALIVA1: TFloatField;
    IBQuery1IMPON1: TFloatField;
    IBQuery1IMPOSTA1: TFloatField;
    IBQuery1CODIVA2: TIBStringField;
    IBQuery1ALIVA2: TFloatField;
    IBQuery1IMPON2: TFloatField;
    IBQuery1IMPOSTA2: TFloatField;
    IBQuery1CODIVA3: TIBStringField;
    IBQuery1ALIVA3: TFloatField;
    IBQuery1IMPON3: TFloatField;
    IBQuery1IMPOSTA3: TFloatField;
    IBQuery1CODIVA4: TIBStringField;
    IBQuery1ALIVA4: TFloatField;
    IBQuery1IMPON4: TFloatField;
    IBQuery1IMPOSTA4: TFloatField;
    IBQuery1CODIVA5: TIBStringField;
    IBQuery1ALIVA5: TFloatField;
    IBQuery1IMPON5: TFloatField;
    IBQuery1IMPOSTA5: TFloatField;
    IBQuery1TOT_SPESE: TFloatField;
    IBQuery1ALTRA_DEST: TIBStringField;
    IBQuery1SERIE_DOC: TIBStringField;
    IBQuery1CLI_FOR_IND: TIBStringField;
    IBQuery1ACCONTO: TFloatField;
    IBQuery1RATA1_IMPORTO: TFloatField;
    IBQuery1RATA2_IMPORTO: TFloatField;
    IBQuery1RATA3_IMPORTO: TFloatField;
    IBQuery1RATA4_IMPORTO: TFloatField;
    IBQuery1RATA5_IMPORTO: TFloatField;
    IBQuery1RATA6_IMPORTO: TFloatField;
    IBQuery1TEL1: TIBStringField;
    IBQuery1TEL2: TIBStringField;
    IBQuery1TEL3: TIBStringField;
    IBQuery1IVA_ESENTE: TSmallintField;
    IBQuery1IVA_ESENTE_ID: TIntegerField;
    IBQuery1VETTORE_IND: TIBStringField;
    IBQuery1VETTORE_IND2: TIBStringField;
    IBQuery1CLI_FOR_IND2: TIBStringField;
    IBQuery1RATA1_DATA: TDateField;
    IBQuery1RATA2_DATA: TDateField;
    IBQuery1RATA3_DATA: TDateField;
    IBQuery1RATA4_DATA: TDateField;
    IBQuery1RATA5_DATA: TDateField;
    IBQuery1RATA6_DATA: TDateField;
    IBQuery1PIANOCONTO_ID1: TIntegerField;
    SpeedButton1: TSpeedButton;
    IBQuery1DEP2: TFloatField;
    IBSQL1: TIBSQL;
    IBQuery1RIMASTI: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fselectCL: TfselectCL;

implementation

uses uBolConto, uAzDM;

{$R *.DFM}

procedure TfselectCL.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfselectCL.DBGrid1DblClick(Sender: TObject);
begin
if fBolConto.RadioGroup1.ItemIndex = 0 then
begin
fBolConto.DBScheda.Field.AsInteger :=
         DataSource1.DataSet['SCHEDA'];
fBolConto.dsoRigheDoc.DataSet.FieldByName('RIF_PRE_ID_DOC').AsInteger :=
         DataSource1.DataSet['DOC_ID'];
fBolConto.dsoRigheDoc.DataSet.FieldByName('RIF_A_PRE').AsInteger :=
         DataSource1.DataSet['NUM_RIGA_ID'];
end;
Close;
end;

procedure TfselectCL.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TfselectCL.IBQuery1CalcFields(DataSet: TDataSet);
begin
IBSQL1.Close;
IBSQL1.ParamByName('parID_Doc').AsFloat :=
        IBQuery1SCHEDA.AsFloat;
IBSQL1.ExecQuery;
IBQuery1DEP2.AsFloat := IBSQL1.fieldbyname('F_1').AsInteger;
IBQuery1RIMASTI.AsFloat := IBQuery1QUANTITA.AsFloat -IBQuery1DEP2.AsFloat;
end;

end.
