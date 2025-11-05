unit uSitBol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids,
  Buttons, RxLookup, ExtCtrls, Mask, ToolEdit, Menus, RxMemDS, FR_Class;

type
  TfSitBol = class(TForm)
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
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DataSource1: TDataSource;
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
    IBQuery4CLIFOR_ID: TIntegerField;
    IBQuery4CODICE_ARTICOLO: TIBStringField;
    IBQuery4QTA: TFloatField;
    IBQuery4DESCR: TStringField;
    IBQuery4CLIDESCR: TStringField;
    IBQuery1: TIBQuery;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1QTA: TFloatField;
    DataSource4: TDataSource;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    IBQuery5: TIBQuery;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CodiceArticolo: TStringField;
    IBQuery6: TIBQuery;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    IBQuery3ALTRA_DEST2: TIBStringField;
    IBQuery3ID_CLI_FOR: TIntegerField;
    IBQuery3TIPO: TSmallintField;
    IBQuery3DENOMINAZIONE: TIBStringField;
    IBQuery3COGNOME: TIBStringField;
    IBQuery3NOME: TIBStringField;
    IBQuery3NOME_ALTRO: TIBStringField;
    IBQuery3FULL_NAME: TIBStringField;
    IBQuery3INDIRIZZO: TIBStringField;
    IBQuery3COMUNE_ID: TIntegerField;
    IBQuery3PARTITA_IVA: TIBStringField;
    IBQuery3CODICE_FISCALE: TIBStringField;
    IBQuery3PERSONA_FISICA: TSmallintField;
    IBQuery3PIANO_CONTI_ID: TIntegerField;
    IBQuery3CONTO_CORRENTE: TIBStringField;
    IBQuery3MONETA_ID1: TIBStringField;
    IBQuery3PAGAMENTO_ID1: TIBStringField;
    IBQuery3CODICE_ZONA_ID: TIBStringField;
    IBQuery3CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery3CATEGORIA_CLIENTE_ID: TIBStringField;
    IBQuery3AGENTE_ID1: TIBStringField;
    IBQuery3PROVVIGIONE: TFloatField;
    IBQuery3LINGUA_ID: TIBStringField;
    IBQuery3CODICE_LISTINO: TIBStringField;
    IBQuery3SCONTO_TESTATA1: TFloatField;
    IBQuery3SCONTO_TESTATA2: TFloatField;
    IBQuery3TEL11: TIBStringField;
    IBQuery3TEL21: TIBStringField;
    IBQuery3FAX: TIBStringField;
    IBQuery3EMAIL: TIBStringField;
    IBQuery3INTERNET: TIBStringField;
    IBQuery3DATA_DI_NASCITA: TDateTimeField;
    IBQuery3SESSO: TIntegerField;
    IBQuery3TITOLO_ID: TIntegerField;
    IBQuery3PORTO_ID: TIBStringField;
    IBQuery3FIDO: TFloatField;
    IBQuery3ABILITA_PARTITA: TSmallintField;
    IBQuery3FATTURA_RIEPILOGATIVA: TIntegerField;
    IBQuery3ACCORPA_ARTICOLI: TSmallintField;
    IBQuery3IVA_SOSPESA1: TSmallintField;
    IBQuery3POS_RIF_BOLLE: TSmallintField;
    IBQuery3CODICE_IVA_ESENTE: TIBStringField;
    IBQuery3RIP_RIF_BOLLE: TIntegerField;
    IBQuery3ESCLUDI_MESE1: TIntegerField;
    IBQuery3RIP_RIF_ORDINI: TIntegerField;
    IBQuery3ESCLUDI_MESE2: TIntegerField;
    IBQuery3TIPO_CONTO_ID: TSmallintField;
    IBQuery3NAZIONE_ID: TIntegerField;
    IBQuery3NAZIONE_DI_NASCITA_ID: TIntegerField;
    IBQuery3RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery3RISCHIO: TFloatField;
    IBQuery3GG_SCADENZA1: TIntegerField;
    IBQuery3GG_SCADENZA2: TIntegerField;
    IBQuery3CONTROPARTITA_ID: TIntegerField;
    IBQuery3TIPO_CONTROPARTITA: TSmallintField;
    IBQuery3CERTIFICATO: TSmallintField;
    IBQuery3DENOMINAZIONE2: TIBStringField;
    IBQuery3INDIRIZZO2: TIBStringField;
    IBQuery3LOCALITA: TIBStringField;
    IBQuery3COMUNE_DI_NASCITA_ID: TIntegerField;
    IBQuery3CAB_ID: TIBStringField;
    IBQuery3ABI_ID: TIBStringField;
    IBQuery3TITOLO_DESCR: TIBStringField;
    IBQuery3COMNASC_DESCR: TIBStringField;
    IBQuery3CAPNASC_DESCR: TIBStringField;
    IBQuery3NAZNASC_DESCR: TIBStringField;
    IBQuery3COM_DESCR: TIBStringField;
    IBQuery3CAP_DESCR: TIBStringField;
    IBQuery3PR_DESCR: TIBStringField;
    IBQuery3CAB_DESCR: TIBStringField;
    IBQuery3ABI_DESCR: TIBStringField;
    IBQuery3NAZ_DESCR: TIBStringField;
    IBQuery3FASON: TIBStringField;
    IBQuery3NOTE: TIBStringField;
    IBQuery3CG: TIBStringField;
    IBQuery3CA: TIBStringField;
    IBQuery3COD2: TIBStringField;
    IBQuery3CR: TIBStringField;
    IBQuery3CODICE: TIBStringField;
    IBQuery3DESCR1: TIBStringField;
    IBQuery3CODICE_ZONA_ID1: TIBStringField;
    IBQuery3CODICE_SOTTO_ZONA_ID1: TIBStringField;
    IBQuery3PROVVIGIONE1: TFloatField;
    IBQuery3IMPORTO_FISSO: TFloatField;
    IBQuery3TIPO_CLI_FOR: TSmallintField;
    IBQuery3CLI_FOR_ID: TIntegerField;
    IBQuery3TIPO_SOMMA_PRV: TSmallintField;
    IBQuery3TIPO_PROVVIGIONE1: TSmallintField;
    IBQuery3TOTALE_FATTURATO: TFloatField;
    IBQuery3TOTALE_PROVVIGIONE: TFloatField;
    IBQuery3CG1: TIBStringField;
    IBQuery3CA1: TIBStringField;
    IBQuery3TIPO_AG: TIntegerField;
    IBQuery3CR1: TIBStringField;
    IBQuery3COSTOR: TFloatField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1IMP: TFloatField;
    IBQuery1SCAT: TFloatField;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    IBQuery7: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IBStringField3: TIBStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    SmallintField1: TSmallintField;
    IBStringField4: TIBStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    IBStringField5: TIBStringField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    IBStringField6: TIBStringField;
    DateTimeField1: TDateTimeField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField6: TIntegerField;
    DateTimeField3: TDateTimeField;
    IntegerField7: TIntegerField;
    DateTimeField4: TDateTimeField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    IntegerField12: TIntegerField;
    IBStringField7: TIBStringField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IBStringField10: TIBStringField;
    IntegerField15: TIntegerField;
    SmallintField6: TSmallintField;
    IntegerField16: TIntegerField;
    SmallintField7: TSmallintField;
    IBStringField11: TIBStringField;
    IntegerField17: TIntegerField;
    SmallintField8: TSmallintField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IBStringField17: TIBStringField;
    FloatField24: TFloatField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IBStringField26: TIBStringField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    FloatField28: TFloatField;
    IBStringField35: TIBStringField;
    DateTimeField9: TDateTimeField;
    IntegerField20: TIntegerField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    IBStringField36: TIBStringField;
    SmallintField9: TSmallintField;
    SmallintField10: TSmallintField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    SmallintField11: TSmallintField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    SmallintField12: TSmallintField;
    IBStringField46: TIBStringField;
    SmallintField13: TSmallintField;
    IBStringField47: TIBStringField;
    SmallintField14: TSmallintField;
    SmallintField15: TSmallintField;
    SmallintField16: TSmallintField;
    SmallintField17: TSmallintField;
    SmallintField18: TSmallintField;
    DateTimeField10: TDateTimeField;
    SmallintField19: TSmallintField;
    FloatField32: TFloatField;
    SmallintField20: TSmallintField;
    FloatField33: TFloatField;
    SmallintField21: TSmallintField;
    IntegerField21: TIntegerField;
    IBStringField48: TIBStringField;
    IntegerField22: TIntegerField;
    SmallintField22: TSmallintField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    IBStringField49: TIBStringField;
    SmallintField23: TSmallintField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    IBStringField50: TIBStringField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    IBStringField51: TIBStringField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    IBStringField52: TIBStringField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    IBStringField53: TIBStringField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    FloatField60: TFloatField;
    IBStringField54: TIBStringField;
    FloatField61: TFloatField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    FloatField64: TFloatField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    IBStringField57: TIBStringField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    SmallintField24: TSmallintField;
    IntegerField23: TIntegerField;
    IBStringField61: TIBStringField;
    IBStringField62: TIBStringField;
    IBStringField63: TIBStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    DateField4: TDateField;
    DateField5: TDateField;
    DateField6: TDateField;
    IntegerField24: TIntegerField;
    IBStringField64: TIBStringField;
    IntegerField25: TIntegerField;
    SmallintField25: TSmallintField;
    IBStringField65: TIBStringField;
    IBStringField66: TIBStringField;
    IBStringField67: TIBStringField;
    IBStringField68: TIBStringField;
    IBStringField69: TIBStringField;
    IBStringField70: TIBStringField;
    IntegerField26: TIntegerField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    SmallintField26: TSmallintField;
    IntegerField27: TIntegerField;
    IBStringField73: TIBStringField;
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    IBStringField79: TIBStringField;
    FloatField72: TFloatField;
    IBStringField80: TIBStringField;
    IBStringField81: TIBStringField;
    FloatField73: TFloatField;
    FloatField74: TFloatField;
    IBStringField82: TIBStringField;
    IBStringField83: TIBStringField;
    IBStringField84: TIBStringField;
    IBStringField85: TIBStringField;
    IBStringField86: TIBStringField;
    DateTimeField11: TDateTimeField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    IBStringField87: TIBStringField;
    FloatField75: TFloatField;
    SmallintField27: TSmallintField;
    IntegerField30: TIntegerField;
    SmallintField28: TSmallintField;
    SmallintField29: TSmallintField;
    SmallintField30: TSmallintField;
    IBStringField88: TIBStringField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    IntegerField34: TIntegerField;
    SmallintField31: TSmallintField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    IBStringField89: TIBStringField;
    FloatField76: TFloatField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    SmallintField32: TSmallintField;
    SmallintField33: TSmallintField;
    IBStringField90: TIBStringField;
    IBStringField91: TIBStringField;
    IBStringField92: TIBStringField;
    IntegerField40: TIntegerField;
    IBStringField93: TIBStringField;
    IBStringField94: TIBStringField;
    IBStringField95: TIBStringField;
    IBStringField96: TIBStringField;
    IBStringField97: TIBStringField;
    IBStringField98: TIBStringField;
    IBStringField99: TIBStringField;
    IBStringField100: TIBStringField;
    IBStringField101: TIBStringField;
    IBStringField102: TIBStringField;
    IBStringField103: TIBStringField;
    IBStringField104: TIBStringField;
    IBStringField105: TIBStringField;
    IBStringField106: TIBStringField;
    IBStringField107: TIBStringField;
    IBStringField108: TIBStringField;
    IBStringField109: TIBStringField;
    IBStringField110: TIBStringField;
    IBStringField111: TIBStringField;
    IBStringField112: TIBStringField;
    IBStringField113: TIBStringField;
    IBStringField114: TIBStringField;
    FloatField77: TFloatField;
    FloatField78: TFloatField;
    SmallintField34: TSmallintField;
    IntegerField41: TIntegerField;
    SmallintField35: TSmallintField;
    SmallintField36: TSmallintField;
    FloatField79: TFloatField;
    FloatField80: TFloatField;
    IBStringField115: TIBStringField;
    IBStringField116: TIBStringField;
    IntegerField42: TIntegerField;
    IBStringField117: TIBStringField;
    FloatField81: TFloatField;
    IBQuery7A: TIBStringField;
    IBQuery7B: TIBStringField;
    IBQuery7C: TIBStringField;
    IBQuery7CA_ID: TIBStringField;
    IBQuery7CODICE_ARTICOLO1: TIBStringField;
    IBQuery7DESCR2: TIBStringField;
    IBQuery7DESCR21: TIBStringField;
    IBQuery7CODICE_IVA_ID1: TIBStringField;
    IBQuery7UNITA_DI_MISURA1_ID: TIBStringField;
    IBQuery7UNITA_DI_MISURA2_ID: TIBStringField;
    IBQuery7UNITA_DI_MISURA3_ID: TIBStringField;
    IBQuery7SCONTO12: TFloatField;
    IBQuery7SCONTO22: TFloatField;
    IBQuery7SCONTO31: TFloatField;
    IBQuery7PROVVIGIONE2: TFloatField;
    IBQuery7PESO_NETTO_KG: TFloatField;
    IBQuery7PESO_LORDO_KG: TFloatField;
    IBQuery7SCORTA_MIN: TFloatField;
    IBQuery7SCORTA_MAX: TFloatField;
    IBQuery7LOTTO_RIORDINO: TFloatField;
    IBQuery7GG_APPROVVIGIONAMENTO: TIntegerField;
    IBQuery7QTA_X_CONFEZIONE: TIntegerField;
    IBQuery7ANNO: TIntegerField;
    IBQuery7DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBQuery7PREZZO_BASE: TFloatField;
    IBQuery7COSTO_STANDART: TFloatField;
    IBQuery7TIPO_ARTICOLO_ID: TSmallintField;
    IBQuery7FATT_CONV1: TFloatField;
    IBQuery7FATT_CONV2: TFloatField;
    IBQuery7COSTO_ID: TIntegerField;
    IBQuery7RICAVO_ID: TIntegerField;
    IBQuery7GIORNI_MAX_INVENDUTO: TIntegerField;
    IBQuery7ASPETTO_ID: TIBStringField;
    IBQuery7RIORDINO_MESE_DA: TSmallintField;
    IBQuery7RIORDINO_MESE_A: TSmallintField;
    IBQuery7RIORDINO_GIORNO_DA: TSmallintField;
    IBQuery7RIORDINO_GIORNO_A: TSmallintField;
    IBQuery7STAGIONE_ID: TIBStringField;
    IBQuery7GRUPPO_ALTERNATIVO: TIBStringField;
    IBQuery7PRODUTTORE_ID: TIBStringField;
    IBQuery7CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBQuery7CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBQuery7CODICE_BASE: TIBStringField;
    IBQuery7DERIVATO: TSmallintField;
    IBQuery7VARIANTE1_ID: TIBStringField;
    IBQuery7VARIANTE2_ID: TIBStringField;
    IBQuery7VARIANTE3_ID: TIBStringField;
    IBQuery7NUM_VARIANTI: TIntegerField;
    IBQuery7TIPO_COSTO_ID: TSmallintField;
    IBQuery7TIPO_RICAVO_ID: TSmallintField;
    IBQuery7OMAGGIO1: TSmallintField;
    IBQuery7TIPO_CLI_FOR_ID: TSmallintField;
    IBQuery7CLI_FOR_ID1: TIntegerField;
    IBQuery7CODE_BAR: TIBStringField;
    IBQuery7DESCR_CODE_BAR: TIBStringField;
    IBQuery7NON_STAMPA_INVENTARIO: TSmallintField;
    IBQuery7NON_STAMPA_REGISTRO: TSmallintField;
    IBQuery7NOMENCLATURA: TIntegerField;
    IBQuery7FATT_CONV1_NOMENCLATURA: TFloatField;
    IBQuery7FATT_CONV2_NOMENCLATURA: TFloatField;
    IBQuery7PROV_ORDINE: TIntegerField;
    IBQuery7COSTO_ULTIMO: TFloatField;
    IBQuery7DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery7NUM_REPARTO: TIntegerField;
    IBQuery7TIPO_CODE_BAR_ID: TSmallintField;
    IBQuery7CONTO_ACQUISTO: TIntegerField;
    IBQuery7CONTO_VENDITA: TIntegerField;
    IBQuery7UN_MIS2_VAL: TIntegerField;
    IBQuery7UN_MIS3_VAL: TIntegerField;
    IBQuery7CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery7CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery7CAT_ART_MARCA_ID: TIntegerField;
    IBQuery7FOTO_PERCORSO: TIBStringField;
    IBQuery7CAT_ART_TIPO_ID: TIntegerField;
    IBQuery7FLAG_ACCESSORIE: TIBStringField;
    IBQuery7DATAMOD: TDateTimeField;
    IBQuery7SCONTO41: TFloatField;
    IBQuery7PREZZO_IVATO: TFloatField;
    IBQuery7P2IVATO: TFloatField;
    IBQuery7P3IVATO: TFloatField;
    IBQuery7P4IVATO: TFloatField;
    IBQuery7P5IVATO: TFloatField;
    IBQuery7SC21: TFloatField;
    IBQuery7SC22: TFloatField;
    IBQuery7SC23: TFloatField;
    IBQuery7SC31: TFloatField;
    IBQuery7SC32: TFloatField;
    IBQuery7SC33: TFloatField;
    IBQuery7SC41: TFloatField;
    IBQuery7SC42: TFloatField;
    IBQuery7SC43: TFloatField;
    IBQuery7SC51: TFloatField;
    IBQuery7SC52: TFloatField;
    IBQuery7SC53: TFloatField;
    IBQuery7R2: TFloatField;
    IBQuery7R3: TFloatField;
    IBQuery7R4: TFloatField;
    IBQuery7R5: TFloatField;
    IBQuery7IMP2: TFloatField;
    IBQuery7IMP3: TFloatField;
    IBQuery7IMP4: TFloatField;
    IBQuery7IMP5: TFloatField;
    IBQuery7RICARPREC: TFloatField;
    IBQuery7P6IVATO: TFloatField;
    IBQuery7IMP6: TFloatField;
    IBQuery7STRUTT: TFloatField;
    IBQuery7CA2: TFloatField;
    IBQuery7CG2: TFloatField;
    IBQuery7AG: TFloatField;
    IBQuery7CA21: TFloatField;
    IBQuery7CG21: TFloatField;
    IBQuery7AG2: TFloatField;
    IBQuery7CA3: TFloatField;
    IBQuery7CG3: TFloatField;
    IBQuery7AG3: TFloatField;
    IBQuery7CA4: TFloatField;
    IBQuery7CG4: TFloatField;
    IBQuery7AG4: TFloatField;
    IBQuery7CA5: TFloatField;
    IBQuery7CG5: TFloatField;
    IBQuery7AG5: TFloatField;
    IBQuery7CA6: TFloatField;
    IBQuery7CG6: TFloatField;
    IBQuery7AG6: TFloatField;
    IBQuery7ID_OFFERTA: TIntegerField;
    IBQuery7CR2: TFloatField;
    IBQuery7CR21: TFloatField;
    IBQuery7CR3: TFloatField;
    IBQuery7CR4: TFloatField;
    IBQuery7CR5: TFloatField;
    IBQuery7CR6: TFloatField;
    IBQuery7CODICE1: TIBStringField;
    IBQuery7DESCR3: TIBStringField;
    IBQuery7LIST: TIntegerField;
    IBQuery7RIC: TFloatField;
    IBQuery7SC: TFloatField;
    BitBtn9: TBitBtn;
    IBQuery8: TIBQuery;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    IntegerField45: TIntegerField;
    IBStringField118: TIBStringField;
    IBStringField119: TIBStringField;
    FloatField82: TFloatField;
    FloatField83: TFloatField;
    IBStringField120: TIBStringField;
    FloatField84: TFloatField;
    FloatField85: TFloatField;
    FloatField86: TFloatField;
    FloatField87: TFloatField;
    FloatField88: TFloatField;
    FloatField89: TFloatField;
    FloatField90: TFloatField;
    FloatField91: TFloatField;
    FloatField92: TFloatField;
    FloatField93: TFloatField;
    SmallintField37: TSmallintField;
    IBStringField121: TIBStringField;
    FloatField94: TFloatField;
    FloatField95: TFloatField;
    IBStringField122: TIBStringField;
    FloatField96: TFloatField;
    FloatField97: TFloatField;
    IBStringField123: TIBStringField;
    DateTimeField12: TDateTimeField;
    SmallintField38: TSmallintField;
    SmallintField39: TSmallintField;
    SmallintField40: TSmallintField;
    SmallintField41: TSmallintField;
    IntegerField46: TIntegerField;
    IntegerField47: TIntegerField;
    DateTimeField13: TDateTimeField;
    IntegerField48: TIntegerField;
    DateTimeField14: TDateTimeField;
    IntegerField49: TIntegerField;
    DateTimeField15: TDateTimeField;
    IntegerField50: TIntegerField;
    IntegerField51: TIntegerField;
    IntegerField52: TIntegerField;
    IntegerField53: TIntegerField;
    FloatField98: TFloatField;
    FloatField99: TFloatField;
    FloatField100: TFloatField;
    FloatField101: TFloatField;
    IntegerField54: TIntegerField;
    IBStringField124: TIBStringField;
    FloatField102: TFloatField;
    FloatField103: TFloatField;
    FloatField104: TFloatField;
    IBStringField125: TIBStringField;
    IBStringField126: TIBStringField;
    IntegerField55: TIntegerField;
    IntegerField56: TIntegerField;
    IBStringField127: TIBStringField;
    IntegerField57: TIntegerField;
    SmallintField42: TSmallintField;
    IntegerField58: TIntegerField;
    SmallintField43: TSmallintField;
    IBStringField128: TIBStringField;
    IntegerField59: TIntegerField;
    SmallintField44: TSmallintField;
    IBStringField129: TIBStringField;
    IBStringField130: TIBStringField;
    IBStringField131: TIBStringField;
    IBStringField132: TIBStringField;
    IBStringField133: TIBStringField;
    DateTimeField16: TDateTimeField;
    DateTimeField17: TDateTimeField;
    DateTimeField18: TDateTimeField;
    DateTimeField19: TDateTimeField;
    IntegerField60: TIntegerField;
    IntegerField61: TIntegerField;
    IBStringField134: TIBStringField;
    FloatField105: TFloatField;
    IBStringField135: TIBStringField;
    IBStringField136: TIBStringField;
    IBStringField137: TIBStringField;
    IBStringField138: TIBStringField;
    IBStringField139: TIBStringField;
    IBStringField140: TIBStringField;
    IBStringField141: TIBStringField;
    IBStringField142: TIBStringField;
    IBStringField143: TIBStringField;
    IBStringField144: TIBStringField;
    IBStringField145: TIBStringField;
    IBStringField146: TIBStringField;
    IBStringField147: TIBStringField;
    IBStringField148: TIBStringField;
    IBStringField149: TIBStringField;
    FloatField106: TFloatField;
    FloatField107: TFloatField;
    FloatField108: TFloatField;
    IBStringField150: TIBStringField;
    IBStringField151: TIBStringField;
    FloatField109: TFloatField;
    IBStringField152: TIBStringField;
    DateTimeField20: TDateTimeField;
    IntegerField62: TIntegerField;
    FloatField110: TFloatField;
    FloatField111: TFloatField;
    FloatField112: TFloatField;
    IBStringField153: TIBStringField;
    SmallintField45: TSmallintField;
    SmallintField46: TSmallintField;
    IBStringField154: TIBStringField;
    IBStringField155: TIBStringField;
    IBStringField156: TIBStringField;
    IBStringField157: TIBStringField;
    IBStringField158: TIBStringField;
    IBStringField159: TIBStringField;
    IBStringField160: TIBStringField;
    SmallintField47: TSmallintField;
    IBStringField161: TIBStringField;
    IBStringField162: TIBStringField;
    SmallintField48: TSmallintField;
    IBStringField163: TIBStringField;
    SmallintField49: TSmallintField;
    IBStringField164: TIBStringField;
    SmallintField50: TSmallintField;
    SmallintField51: TSmallintField;
    SmallintField52: TSmallintField;
    SmallintField53: TSmallintField;
    SmallintField54: TSmallintField;
    DateTimeField21: TDateTimeField;
    SmallintField55: TSmallintField;
    FloatField113: TFloatField;
    SmallintField56: TSmallintField;
    FloatField114: TFloatField;
    SmallintField57: TSmallintField;
    IntegerField63: TIntegerField;
    IBStringField165: TIBStringField;
    IntegerField64: TIntegerField;
    SmallintField58: TSmallintField;
    FloatField115: TFloatField;
    FloatField116: TFloatField;
    FloatField117: TFloatField;
    FloatField118: TFloatField;
    FloatField119: TFloatField;
    FloatField120: TFloatField;
    IBStringField166: TIBStringField;
    SmallintField59: TSmallintField;
    FloatField121: TFloatField;
    FloatField122: TFloatField;
    FloatField123: TFloatField;
    FloatField124: TFloatField;
    FloatField125: TFloatField;
    FloatField126: TFloatField;
    FloatField127: TFloatField;
    FloatField128: TFloatField;
    FloatField129: TFloatField;
    IBStringField167: TIBStringField;
    FloatField130: TFloatField;
    FloatField131: TFloatField;
    FloatField132: TFloatField;
    IBStringField168: TIBStringField;
    FloatField133: TFloatField;
    FloatField134: TFloatField;
    FloatField135: TFloatField;
    IBStringField169: TIBStringField;
    FloatField136: TFloatField;
    FloatField137: TFloatField;
    FloatField138: TFloatField;
    IBStringField170: TIBStringField;
    FloatField139: TFloatField;
    FloatField140: TFloatField;
    FloatField141: TFloatField;
    IBStringField171: TIBStringField;
    FloatField142: TFloatField;
    FloatField143: TFloatField;
    FloatField144: TFloatField;
    FloatField145: TFloatField;
    IBStringField172: TIBStringField;
    IBStringField173: TIBStringField;
    IBStringField174: TIBStringField;
    FloatField146: TFloatField;
    FloatField147: TFloatField;
    FloatField148: TFloatField;
    FloatField149: TFloatField;
    FloatField150: TFloatField;
    FloatField151: TFloatField;
    FloatField152: TFloatField;
    IBStringField175: TIBStringField;
    IBStringField176: TIBStringField;
    IBStringField177: TIBStringField;
    SmallintField60: TSmallintField;
    IntegerField65: TIntegerField;
    IBStringField178: TIBStringField;
    IBStringField179: TIBStringField;
    IBStringField180: TIBStringField;
    DateField7: TDateField;
    DateField8: TDateField;
    DateField9: TDateField;
    DateField10: TDateField;
    DateField11: TDateField;
    DateField12: TDateField;
    IntegerField66: TIntegerField;
    IBStringField181: TIBStringField;
    IntegerField67: TIntegerField;
    SmallintField61: TSmallintField;
    IBStringField182: TIBStringField;
    IBStringField183: TIBStringField;
    IBStringField184: TIBStringField;
    IBStringField185: TIBStringField;
    IBStringField186: TIBStringField;
    IBStringField187: TIBStringField;
    IntegerField68: TIntegerField;
    IBStringField188: TIBStringField;
    IBStringField189: TIBStringField;
    SmallintField62: TSmallintField;
    IntegerField69: TIntegerField;
    IBStringField190: TIBStringField;
    IBStringField191: TIBStringField;
    IBStringField192: TIBStringField;
    IBStringField193: TIBStringField;
    IBStringField194: TIBStringField;
    IBStringField195: TIBStringField;
    IBStringField196: TIBStringField;
    FloatField153: TFloatField;
    IBStringField197: TIBStringField;
    IBStringField198: TIBStringField;
    FloatField154: TFloatField;
    FloatField155: TFloatField;
    IBStringField199: TIBStringField;
    IBStringField200: TIBStringField;
    IBStringField201: TIBStringField;
    IBStringField202: TIBStringField;
    IBStringField203: TIBStringField;
    DateTimeField22: TDateTimeField;
    IntegerField70: TIntegerField;
    IntegerField71: TIntegerField;
    IBStringField204: TIBStringField;
    FloatField156: TFloatField;
    SmallintField63: TSmallintField;
    IntegerField72: TIntegerField;
    SmallintField64: TSmallintField;
    SmallintField65: TSmallintField;
    SmallintField66: TSmallintField;
    IBStringField205: TIBStringField;
    IntegerField73: TIntegerField;
    IntegerField74: TIntegerField;
    IntegerField75: TIntegerField;
    IntegerField76: TIntegerField;
    SmallintField67: TSmallintField;
    IntegerField77: TIntegerField;
    IntegerField78: TIntegerField;
    IBStringField206: TIBStringField;
    FloatField157: TFloatField;
    IntegerField79: TIntegerField;
    IntegerField80: TIntegerField;
    IntegerField81: TIntegerField;
    SmallintField68: TSmallintField;
    SmallintField69: TSmallintField;
    IBStringField207: TIBStringField;
    IBStringField208: TIBStringField;
    IBStringField209: TIBStringField;
    IntegerField82: TIntegerField;
    IBStringField210: TIBStringField;
    IBStringField211: TIBStringField;
    IBStringField212: TIBStringField;
    IBStringField213: TIBStringField;
    IBStringField214: TIBStringField;
    IBStringField215: TIBStringField;
    IBStringField216: TIBStringField;
    IBStringField217: TIBStringField;
    IBStringField218: TIBStringField;
    IBStringField219: TIBStringField;
    IBStringField220: TIBStringField;
    IBStringField221: TIBStringField;
    IBStringField222: TIBStringField;
    IBStringField223: TIBStringField;
    IBStringField224: TIBStringField;
    IBStringField225: TIBStringField;
    IBStringField226: TIBStringField;
    IBStringField227: TIBStringField;
    IBStringField228: TIBStringField;
    IBStringField229: TIBStringField;
    IBStringField230: TIBStringField;
    IBStringField231: TIBStringField;
    FloatField158: TFloatField;
    FloatField159: TFloatField;
    SmallintField70: TSmallintField;
    IntegerField83: TIntegerField;
    SmallintField71: TSmallintField;
    SmallintField72: TSmallintField;
    FloatField160: TFloatField;
    FloatField161: TFloatField;
    IBStringField232: TIBStringField;
    IBStringField233: TIBStringField;
    IntegerField84: TIntegerField;
    IBStringField234: TIBStringField;
    FloatField162: TFloatField;
    IBStringField235: TIBStringField;
    IBStringField236: TIBStringField;
    IBStringField237: TIBStringField;
    IBStringField238: TIBStringField;
    IBStringField239: TIBStringField;
    IBStringField240: TIBStringField;
    IBStringField241: TIBStringField;
    IBStringField242: TIBStringField;
    IBStringField243: TIBStringField;
    IBStringField244: TIBStringField;
    IBStringField245: TIBStringField;
    FloatField163: TFloatField;
    FloatField164: TFloatField;
    FloatField165: TFloatField;
    FloatField166: TFloatField;
    FloatField167: TFloatField;
    FloatField168: TFloatField;
    FloatField169: TFloatField;
    FloatField170: TFloatField;
    FloatField171: TFloatField;
    IntegerField85: TIntegerField;
    IntegerField86: TIntegerField;
    IntegerField87: TIntegerField;
    IBStringField246: TIBStringField;
    FloatField172: TFloatField;
    FloatField173: TFloatField;
    SmallintField73: TSmallintField;
    FloatField174: TFloatField;
    FloatField175: TFloatField;
    IntegerField88: TIntegerField;
    IntegerField89: TIntegerField;
    IntegerField90: TIntegerField;
    IBStringField247: TIBStringField;
    SmallintField74: TSmallintField;
    SmallintField75: TSmallintField;
    SmallintField76: TSmallintField;
    SmallintField77: TSmallintField;
    IBStringField248: TIBStringField;
    IBStringField249: TIBStringField;
    IBStringField250: TIBStringField;
    IBStringField251: TIBStringField;
    IntegerField91: TIntegerField;
    IBStringField252: TIBStringField;
    SmallintField78: TSmallintField;
    IBStringField253: TIBStringField;
    IBStringField254: TIBStringField;
    IBStringField255: TIBStringField;
    IntegerField92: TIntegerField;
    SmallintField79: TSmallintField;
    SmallintField80: TSmallintField;
    SmallintField81: TSmallintField;
    SmallintField82: TSmallintField;
    IntegerField93: TIntegerField;
    IBStringField256: TIBStringField;
    IBStringField257: TIBStringField;
    SmallintField83: TSmallintField;
    SmallintField84: TSmallintField;
    IntegerField94: TIntegerField;
    FloatField176: TFloatField;
    FloatField177: TFloatField;
    IntegerField95: TIntegerField;
    FloatField178: TFloatField;
    DateTimeField23: TDateTimeField;
    IntegerField96: TIntegerField;
    SmallintField85: TSmallintField;
    IntegerField97: TIntegerField;
    IntegerField98: TIntegerField;
    IntegerField99: TIntegerField;
    IntegerField100: TIntegerField;
    IntegerField101: TIntegerField;
    IntegerField102: TIntegerField;
    IntegerField103: TIntegerField;
    IBStringField258: TIBStringField;
    IntegerField104: TIntegerField;
    IBStringField259: TIBStringField;
    DateTimeField24: TDateTimeField;
    FloatField179: TFloatField;
    FloatField180: TFloatField;
    FloatField181: TFloatField;
    FloatField182: TFloatField;
    FloatField183: TFloatField;
    FloatField184: TFloatField;
    FloatField185: TFloatField;
    FloatField186: TFloatField;
    FloatField187: TFloatField;
    FloatField188: TFloatField;
    FloatField189: TFloatField;
    FloatField190: TFloatField;
    FloatField191: TFloatField;
    FloatField192: TFloatField;
    FloatField193: TFloatField;
    FloatField194: TFloatField;
    FloatField195: TFloatField;
    FloatField196: TFloatField;
    FloatField197: TFloatField;
    FloatField198: TFloatField;
    FloatField199: TFloatField;
    FloatField200: TFloatField;
    FloatField201: TFloatField;
    FloatField202: TFloatField;
    FloatField203: TFloatField;
    FloatField204: TFloatField;
    FloatField205: TFloatField;
    FloatField206: TFloatField;
    FloatField207: TFloatField;
    FloatField208: TFloatField;
    FloatField209: TFloatField;
    FloatField210: TFloatField;
    FloatField211: TFloatField;
    FloatField212: TFloatField;
    FloatField213: TFloatField;
    FloatField214: TFloatField;
    FloatField215: TFloatField;
    FloatField216: TFloatField;
    FloatField217: TFloatField;
    FloatField218: TFloatField;
    FloatField219: TFloatField;
    FloatField220: TFloatField;
    FloatField221: TFloatField;
    FloatField222: TFloatField;
    FloatField223: TFloatField;
    FloatField224: TFloatField;
    FloatField225: TFloatField;
    FloatField226: TFloatField;
    IntegerField105: TIntegerField;
    FloatField227: TFloatField;
    FloatField228: TFloatField;
    FloatField229: TFloatField;
    FloatField230: TFloatField;
    FloatField231: TFloatField;
    FloatField232: TFloatField;
    IBStringField260: TIBStringField;
    IBStringField261: TIBStringField;
    IntegerField106: TIntegerField;
    FloatField233: TFloatField;
    FloatField234: TFloatField;
    BitBtn10: TBitBtn;
    ibTotPM: TIBQuery;
    ibTotMag5: TIBQuery;
    ibTotPMCODICE_ARTICOLO: TIBStringField;
    ibTotPMDESCR: TIBStringField;
    ibTotMag5CODICE_ARTICOLO: TIBStringField;
    ibTotMag5QTA1: TFloatField;
    ibTotPMQTA2: TFloatField;
    ibTotMin6: TIBQuery;
    ibTotMin6CODICE_ARTICOLO: TIBStringField;
    ibTotPMQTA1: TFloatField;
    ibTotMin6QTA1: TFloatField;

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
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcDaArtExit(Sender: TObject);
    procedure rxdblcDaArtCodiceExit(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtCodiceExit(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rxdblcAdArtExit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo2CloseUp(Sender: TObject);
    procedure RxDBLookupCombo5CloseUp(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure IBQuery4FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure IBQuery1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure IBQuery3CalcFields(DataSet: TDataSet);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ibTotPMCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
                strDaArt, strAdArt: String;
  public
    { Public declarations }
  boolTipo,boolFamiglia,boolGruppo,boolMarca: Boolean;
  end;

var
  fSitBol: TfSitBol;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfSitBol.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then
RxDBLookupCombo1.Enabled := True
else
RxDBLookupCombo1.Enabled := False;
end;

procedure TfSitBol.RadioGroup4Click(Sender: TObject);
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

procedure TfSitBol.cbMarcaClick(Sender: TObject);
begin
 boolMarca:=cbMarca.Checked;
end;

procedure TfSitBol.cbGruppoClick(Sender: TObject);
begin
 boolGruppo:=cbGruppo.Checked;
end;

procedure TfSitBol.cbFamigliaClick(Sender: TObject);
begin
 boolFamiglia:=cbFamiglia.Checked;
end;

procedure TfSitBol.cbTipoClick(Sender: TObject);
begin
 boolTipo:=cbTipo.Checked;
end;

procedure TfSitBol.BitBtn2Click(Sender: TObject);
var
Scelta : String;
begin
scelta:=InputBox('Scegliere l''ordinamento della Stampa :','1)x Codice - 2)x q.tà  - 3)x Valore - 4) x guadagno','1');

 With (IBQuery1) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,');
   SQL.Add('SUM(TAB_DET_DOC.quantita) as QTA,SUM(TAB_DET_DOC.importo_sconto) as IMP,SUM(TAB_DET_DOC.qta_um) as SCAT');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('left JOIN TAB_articoli ON');
   SQL.Add('(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)');
   sql.add('left JOIN TAB_AGENTI ON');
   sql.add('TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210');
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
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
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

if RadioGroup2.ItemIndex = 1 then
begin
//IBQuery3.FieldByName('cli').AsString := RxDBLookupCombo5.Text;
IBQuery1.Filtered := True;
end
else
IBQuery1.Filtered := False;
Open;
 End;

 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTot_R.frf');
 dmodAz.rePRN.ShowReport;

end;

procedure TfSitBol.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfSitBol.RadioGroup1Click(Sender: TObject);
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

procedure TfSitBol.RadioGroup2Click(Sender: TObject);
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

procedure TfSitBol.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfSitBol.rxdblcDaArtExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfSitBol.rxdblcDaArtCodiceExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfSitBol.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfSitBol.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfSitBol.rxdblcAdArtCodiceExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfSitBol.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfSitBol.rxdblcAdArtExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfSitBol.RxDBLookupCombo2Exit(Sender: TObject);
begin
//  RxDBLookupCombo5.KeyValue:=RxDBLookupCombo2.KeyValue;
end;

procedure TfSitBol.RxDBLookupCombo2CloseUp(Sender: TObject);
begin
//  RxDBLookupCombo5.KeyValue:=RxDBLookupCombo2.KeyValue;
end;

procedure TfSitBol.RxDBLookupCombo5CloseUp(Sender: TObject);
begin
//  RxDBLookupCombo2.KeyValue:=RxDBLookupCombo5.KeyValue;
end;

procedure TfSitBol.RxDBLookupCombo5Exit(Sender: TObject);
begin
//  RxDBLookupCombo2.KeyValue:=RxDBLookupCombo5.KeyValue;
end;

procedure TfSitBol.BitBtn5Click(Sender: TObject);
begin
{
 With (IBQuery5) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT SUM(TAB_DET_DOC.quantita) as QTA');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210');
   SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

   //  Open;

if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo');

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;

   // Causale Magazzino
   // Deposito
   // Tipo Cli/Forn and Cli/Forn

  Open;
 End;
}
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTot2_R.frf');
 dmodAz.rePRN.ShowReport;


end;

procedure TfSitBol.IBQuery4FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept := DataSet['agente_id'] = RxDBLookupCombo4.Value;
end;

procedure TfSitBol.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
if RadioGroup2.ItemIndex = 1 then
begin
if ParName = 'Agente' then
ParValue := RxDBLookupCombo3.Text;

end;

end;

procedure TfSitBol.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo4.Value := RxDBLookupCombo3.Value; 
end;

procedure TfSitBol.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo3.Value := RxDBLookupCombo4.Value;
end;

procedure TfSitBol.IBQuery1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept := DataSet['agente_id'] = RxDBLookupCombo4.Value;
end;

procedure TfSitBol.FormShow(Sender: TObject);
begin
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;
 dsArticoli.DataSet.Open;

dsoCli.DataSet.Open;
dsDipendente.DataSet.Open;
IBQuery3.Close;
//IBQuery3.Open;
end;

procedure TfSitBol.BitBtn1Click(Sender: TObject);
begin
 With (IBQuery3) Do
 Begin
Close;
SQL.Clear;
sql.add('select * from tab_det_doc');
sql.add('JOIN TAB_DOCUMENTI ON');
sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
////////////////////

sql.add('inner JOIN TAB_cli_for ON');
sql.add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');

sql.add('left JOIN TAB_agenti ON');
sql.add('TAB_cli_for.agente_id=TAB_agenti.codice');
////////////////////
sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =210');
SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');
//SQL.Add('and TAB_DOCUMENTI.DATA_DOC >=''01/01/1900'' AND TAB_DOCUMENTI.DATA_DOC <=''01/01/2005''');

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

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 ///////////////////////////////////////////////////////////////////
 {
if RadioGroup2.ItemIndex = 1 then
begin
IBQuery3.Filtered := True;
end
else
IBQuery3.Filtered := False;
}
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;

If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;
/////////////////////////////////////////////////////////////
if RadioGroup6.ItemIndex = 0 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.NUM_DOC');
if RadioGroup6.ItemIndex = 1 then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo');
if RadioGroup6.ItemIndex = 2 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC');

Open;
End;

end;

procedure TfSitBol.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfSitBol.IBQuery3CalcFields(DataSet: TDataSet);
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

procedure TfSitBol.RxDBLookupCombo2Change(Sender: TObject);
begin
  RxDBLookupCombo5.KeyValue:=RxDBLookupCombo2.KeyValue;
end;

procedure TfSitBol.RxDBLookupCombo5Change(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue:=RxDBLookupCombo5.KeyValue;
end;

procedure TfSitBol.BitBtn6Click(Sender: TObject);
begin
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTot3_R.frf');
 dmodAz.rePRN.ShowReport;

end;

procedure TfSitBol.BitBtn4Click(Sender: TObject);
begin
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTot4_R.frf');
 dmodAz.rePRN.ShowReport;

end;

procedure TfSitBol.BitBtn7Click(Sender: TObject);
begin
 With (IBQuery3) Do
 Begin
Close;
SQL.Clear;
sql.add('select * from tab_det_doc');
sql.add('JOIN TAB_DOCUMENTI ON');
sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
////////////////////

sql.add('inner JOIN TAB_cli_for ON');
sql.add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');

sql.add('left JOIN TAB_agenti ON');
sql.add('TAB_cli_for.agente_id=TAB_agenti.codice');
////////////////////
sql.add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =210) or (TAB_DOCUMENTI.TIPO_DOC =212))');
SQL.Add('and (TAB_DOCUMENTI.DATA_DOC >= :parDataDa) AND (TAB_DOCUMENTI.DATA_DOC <=:parDataA)');
//SQL.Add('and TAB_DOCUMENTI.DATA_DOC >=''01/01/1900'' AND TAB_DOCUMENTI.DATA_DOC <=''01/01/2005''');

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

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 ///////////////////////////////////////////////////////////////////
 {
if RadioGroup2.ItemIndex = 1 then
begin
IBQuery3.Filtered := True;
end
else
IBQuery3.Filtered := False;
}
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;

If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;
/////////////////////////////////////////////////////////////
if RadioGroup6.ItemIndex = 0 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.NUM_DOC,TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');
if RadioGroup6.ItemIndex = 1 then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo,TAB_DOCUMENTI.DATA_DOC');
if RadioGroup6.ItemIndex = 2 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');

Open;
End;
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTotT_R.frf');
 dmodAz.rePRN.ShowReport;
end;

procedure TfSitBol.BitBtn8Click(Sender: TObject);
begin
 With (IBQuery7) Do
 Begin
Close;
SQL.Clear;
sql.add('select * from tab_det_doc');
sql.add('JOIN TAB_DOCUMENTI ON');
sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
////////////////////

sql.add('inner JOIN TAB_cli_for ON');
sql.add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');

sql.add('left JOIN TAB_agenti ON');
sql.add('TAB_cli_for.agente_id=TAB_agenti.codice');
////////////////////
SQL.Add('left JOIN TAB_articoli ON');
SQL.Add('(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)');

SQL.Add('left JOIN TAB_SUBCATEGORIA ON');
SQL.Add('((TAB_Documenti.listino=TAB_SUBCATEGORIA.LIST) and (TAB_DOCUMENTI.KINGUA_ID=TAB_SUBCATEGORIA.CODICE))');

sql.add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =210) or (TAB_DOCUMENTI.TIPO_DOC =212))');
SQL.Add('and (TAB_DOCUMENTI.DATA_DOC >= :parDataDa) AND (TAB_DOCUMENTI.DATA_DOC <=:parDataA)');
//SQL.Add('and TAB_DOCUMENTI.DATA_DOC >=''01/01/1900'' AND TAB_DOCUMENTI.DATA_DOC <=''01/01/2005''');

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

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 ///////////////////////////////////////////////////////////////////
 {
if RadioGroup2.ItemIndex = 1 then
begin
IBQuery3.Filtered := True;
end
else
IBQuery3.Filtered := False;
}
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;

If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;
/////////////////////////////////////////////////////////////
if RadioGroup6.ItemIndex = 0 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.NUM_DOC,TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');
if RadioGroup6.ItemIndex = 1 then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo,TAB_DOCUMENTI.DATA_DOC');
if RadioGroup6.ItemIndex = 2 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');

Open;
End;
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTotT_R2.frf');
 dmodAz.rePRN.ShowReport;

end;

procedure TfSitBol.BitBtn9Click(Sender: TObject);
begin
 With (IBQuery7) Do
 Begin
Close;
SQL.Clear;
sql.add('select * from tab_det_doc');
sql.add('JOIN TAB_DOCUMENTI ON');
sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
////////////////////

sql.add('inner JOIN TAB_cli_for ON');
sql.add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');

sql.add('left JOIN TAB_agenti ON');
sql.add('TAB_cli_for.agente_id=TAB_agenti.codice');
////////////////////
SQL.Add('left JOIN TAB_articoli ON');
SQL.Add('(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)');

SQL.Add('left JOIN TAB_SUBCATEGORIA ON');
SQL.Add('((TAB_Documenti.listino=TAB_SUBCATEGORIA.LIST) and (TAB_DOCUMENTI.KINGUA_ID=TAB_SUBCATEGORIA.CODICE))');

sql.add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =210) or (TAB_DOCUMENTI.TIPO_DOC =212))');
SQL.Add('and (TAB_DOCUMENTI.DATA_DOC >= :parDataDa) AND (TAB_DOCUMENTI.DATA_DOC <=:parDataA)');
//SQL.Add('and TAB_DOCUMENTI.DATA_DOC >=''01/01/1900'' AND TAB_DOCUMENTI.DATA_DOC <=''01/01/2005''');

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

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 ///////////////////////////////////////////////////////////////////
 {
if RadioGroup2.ItemIndex = 1 then
begin
IBQuery3.Filtered := True;
end
else
IBQuery3.Filtered := False;
}
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;

If RadioGroup2.ItemIndex = 1 then
 Begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
 end;
/////////////////////////////////////////////////////////////
if RadioGroup6.ItemIndex = 0 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.NUM_DOC,TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');
if RadioGroup6.ItemIndex = 1 then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo,TAB_DOCUMENTI.DATA_DOC');
if RadioGroup6.ItemIndex = 2 then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');

Open;
End;
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTotT_R3.frf');
 dmodAz.rePRN.ShowReport;

end;

procedure TfSitBol.BitBtn10Click(Sender: TObject);
begin
 With (ibTotPM) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,');
   SQL.Add('SUM(TAB_DET_DOC.quantita) as QTA1');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('left JOIN TAB_articoli ON');
   SQL.Add('(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)');
   sql.add('left JOIN TAB_AGENTI ON');
   sql.add('TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210');
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
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;

 SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo');

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
{
if RadioGroup2.ItemIndex = 1 then
begin
//IBQuery3.FieldByName('cli').AsString := RxDBLookupCombo5.Text;
IBQuery1.Filtered := True;
end
else
IBQuery1.Filtered := False;
}
Open;
 End;

 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StBolTot_PM.frf');
 dmodAz.rePRN.ShowReport;


end;

procedure TfSitBol.ibTotPMCalcFields(DataSet: TDataSet);
begin
 With (ibTotMag5) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,');
   SQL.Add('SUM(TAB_DET_DOC.quantita) as QTA1');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('left JOIN TAB_articoli ON');
   SQL.Add('(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)');
   sql.add('left JOIN TAB_AGENTI ON');
   sql.add('TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210');
   SQL.Add('and TAB_DOCUMENTI.listino>5 and TAB_DET_DOC.codice_articolo=:parArt');
   SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

   //  Open;

   // Causale Magazzino
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;

 SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo');

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 ParamByName('parArt').AsString:=ibTotPMCODICE_ARTICOLO.AsString;
Open;
 End;
ibTotPMQTA2.AsFloat := ibTotMag5QTA1.AsFloat;

 With (ibTotMin6) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr,');
   SQL.Add('SUM(TAB_DET_DOC.quantita) as QTA1');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('left JOIN TAB_articoli ON');
   SQL.Add('(TAB_Det_doc.codice_articolo=TAB_articoli.codice_Articolo)');
   sql.add('left JOIN TAB_AGENTI ON');
   sql.add('TAB_AGENTI.CODICE=TAB_DOCUMENTI.AGENTE_ID');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210');
   SQL.Add('and TAB_DOCUMENTI.listino<6 and TAB_DET_DOC.codice_articolo=:parArt');
   SQL.Add('and TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

   //  Open;

   // Causale Magazzino
if RadioGroup1.ItemIndex = 1 then
begin
SQL.Add('AND CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;

 SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo');

 ParamByName('parDataDa').AsDate:=DateEdit1.Date;
 ParamByName('parDataA').AsDate:=DateEdit2.Date;
 ParamByName('parArt').AsString:=ibTotPMCODICE_ARTICOLO.AsString;
Open;
 End;
ibTotPMQTA1.AsFloat := ibTotMin6QTA1.AsFloat;

end;

end.
