unit uPrnBrogl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, Mask, Db, DBCtrls, RxLookup,
  IBCustomDataSet, IBQuery, Grids, DBGrids, Menus, FR_Desgn, IBSQL, Variants,
  StrUtils, IBDatabaseINI, FR_Class,Math;

type
  TfPrnBroglMag = class(TForm)
    paMain: TPanel;
    gbArticoli: TGroupBox;
    rabArtTutti: TRadioButton;
    gbData: TGroupBox;
    laDataDa: TLabel;
    laDataA: TLabel;
    rabArtDaA: TRadioButton;
    rabArtCat: TRadioButton;
    bbEsci: TBitBtn;
    gbDeposito: TGroupBox;
    gbTipoCliFor: TGroupBox;
    rabTipoCliFornTutti: TRadioButton;
    rabTipoFornTutti: TRadioButton;
    rabTipoFornSc: TRadioButton;
    rabTipoCliTutti: TRadioButton;
    rabTipoCliSc: TRadioButton;
    rabDepTutti: TRadioButton;
    rabDepScegli: TRadioButton;
    meDataDa: TMaskEdit;
    meDataA: TMaskEdit;
    bbStampa: TBitBtn;
    LookCliCod: TDBLookupComboBox;
    LookCliDescr: TDBLookupComboBox;
    LookFornDescr: TDBLookupComboBox;
    LookFornCod: TDBLookupComboBox;
    dsoCli: TDataSource;
    dsoForn: TDataSource;
    gbCausale: TGroupBox;
    rabCauTutti: TRadioButton;
    rabCauSc: TRadioButton;
    LookCauCod: TDBLookupComboBox;
    LookCauDescr: TDBLookupComboBox;
    dsoCauMag: TDataSource;
    LookDepCod: TDBLookupComboBox;
    LookDepDescr: TDBLookupComboBox;
    dsoDep: TDataSource;
    gbTipoStampa: TGroupBox;
    rabTSAn: TRadioButton;
    rabTSSin: TRadioButton;
    dsoCLIFORN: TDataSource;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    dsArticoli: TDataSource;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    dsoTIPO: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoGRUPPO: TDataSource;
    dsoMARCA: TDataSource;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    IBQuery1: TIBQuery;
    Button1: TButton;
    DataSource1: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2CODICE: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2DETAGLIO: TSmallintField;
    IBQuery2MERCE_NS: TSmallintField;
    IBQuery2RAGGRUPPAMENTO_DEPOSITI_ID: TIBStringField;
    IBQuery2INDIRIZZO: TIBStringField;
    IBQuery2CITTA: TIBStringField;
    IBQuery2CAP: TIBStringField;
    IBQuery2PROV: TIBStringField;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    IBQuery1DEP: TIBStringField;
    IBQuery1CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery1SOMMA1: TFloatField;
    IBQuery1SOMMA2: TFloatField;
    IBQuery1Nome_Deposito: TStringField;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBQuery3: TIBQuery;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    IBQuery3CODICE_ARTICOLO: TIBStringField;
    IBQuery3DESCR: TIBStringField;
    IBQuery3SCAT: TFloatField;
    IBQuery3QTA: TFloatField;
    IBQuery4: TIBQuery;
    IBQuery4CODICE_ARTICOLO: TIBStringField;
    IBQuery4DESCR: TIBStringField;
    IBQuery4DESCR2: TIBStringField;
    IBQuery4CODICE_IVA_ID: TIBStringField;
    IBQuery4UNITA_DI_MISURA1_ID: TIBStringField;
    IBQuery4UNITA_DI_MISURA2_ID: TIBStringField;
    IBQuery4UNITA_DI_MISURA3_ID: TIBStringField;
    IBQuery4SCONTO1: TFloatField;
    IBQuery4SCONTO2: TFloatField;
    IBQuery4SCONTO3: TFloatField;
    IBQuery4PROVVIGIONE: TFloatField;
    IBQuery4PESO_NETTO_KG: TFloatField;
    IBQuery4PESO_LORDO_KG: TFloatField;
    IBQuery4SCORTA_MIN: TFloatField;
    IBQuery4SCORTA_MAX: TFloatField;
    IBQuery4LOTTO_RIORDINO: TFloatField;
    IBQuery4GG_APPROVVIGIONAMENTO: TIntegerField;
    IBQuery4QTA_X_CONFEZIONE: TIntegerField;
    IBQuery4ANNO: TIntegerField;
    IBQuery4DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBQuery4PREZZO_BASE: TFloatField;
    IBQuery4COSTO_STANDART: TFloatField;
    IBQuery4TIPO_ARTICOLO_ID: TSmallintField;
    IBQuery4FATT_CONV1: TFloatField;
    IBQuery4FATT_CONV2: TFloatField;
    IBQuery4COSTO_ID: TIntegerField;
    IBQuery4RICAVO_ID: TIntegerField;
    IBQuery4GIORNI_MAX_INVENDUTO: TIntegerField;
    IBQuery4ASPETTO_ID: TIBStringField;
    IBQuery4RIORDINO_MESE_DA: TSmallintField;
    IBQuery4RIORDINO_MESE_A: TSmallintField;
    IBQuery4RIORDINO_GIORNO_DA: TSmallintField;
    IBQuery4RIORDINO_GIORNO_A: TSmallintField;
    IBQuery4STAGIONE_ID: TIBStringField;
    IBQuery4GRUPPO_ALTERNATIVO: TIBStringField;
    IBQuery4PRODUTTORE_ID: TIBStringField;
    IBQuery4CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBQuery4CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBQuery4CODICE_BASE: TIBStringField;
    IBQuery4DERIVATO: TSmallintField;
    IBQuery4VARIANTE1_ID: TIBStringField;
    IBQuery4VARIANTE2_ID: TIBStringField;
    IBQuery4VARIANTE3_ID: TIBStringField;
    IBQuery4NUM_VARIANTI: TIntegerField;
    IBQuery4TIPO_COSTO_ID: TSmallintField;
    IBQuery4TIPO_RICAVO_ID: TSmallintField;
    IBQuery4OMAGGIO: TSmallintField;
    IBQuery4TIPO_CLI_FOR_ID: TSmallintField;
    IBQuery4CLI_FOR_ID: TIntegerField;
    IBQuery4CODE_BAR: TIBStringField;
    IBQuery4DESCR_CODE_BAR: TIBStringField;
    IBQuery4NON_STAMPA_INVENTARIO: TSmallintField;
    IBQuery4NON_STAMPA_REGISTRO: TSmallintField;
    IBQuery4NOMENCLATURA: TIntegerField;
    IBQuery4FATT_CONV1_NOMENCLATURA: TFloatField;
    IBQuery4FATT_CONV2_NOMENCLATURA: TFloatField;
    IBQuery4PROV_ORDINE: TIntegerField;
    IBQuery4COSTO_ULTIMO: TFloatField;
    IBQuery4DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery4NUM_REPARTO: TIntegerField;
    IBQuery4TIPO_CODE_BAR_ID: TSmallintField;
    IBQuery4CONTO_ACQUISTO: TIntegerField;
    IBQuery4CONTO_VENDITA: TIntegerField;
    IBQuery4UN_MIS2_VAL: TIntegerField;
    IBQuery4UN_MIS3_VAL: TIntegerField;
    IBQuery4CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery4CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery4CAT_ART_MARCA_ID: TIntegerField;
    IBQuery4FOTO_PERCORSO: TIBStringField;
    IBQuery4CAT_ART_TIPO_ID: TIntegerField;
    IBQuery4FLAG_ACCESSORIE: TIBStringField;
    IBQuery4DATAMOD: TDateTimeField;
    IBQuery4SCONTO4: TFloatField;
    IBQuery4PREZZO_IVATO: TFloatField;
    IBQuery4P2IVATO: TFloatField;
    IBQuery4P3IVATO: TFloatField;
    IBQuery4P4IVATO: TFloatField;
    IBQuery4P5IVATO: TFloatField;
    IBQuery4SC21: TFloatField;
    IBQuery4SC22: TFloatField;
    IBQuery4SC23: TFloatField;
    IBQuery4SC31: TFloatField;
    IBQuery4SC32: TFloatField;
    IBQuery4SC33: TFloatField;
    IBQuery4SC41: TFloatField;
    IBQuery4SC42: TFloatField;
    IBQuery4SC43: TFloatField;
    IBQuery4SC51: TFloatField;
    IBQuery4SC52: TFloatField;
    IBQuery4SC53: TFloatField;
    IBQuery4R2: TFloatField;
    IBQuery4R3: TFloatField;
    IBQuery4R4: TFloatField;
    IBQuery4R5: TFloatField;
    IBQuery4IMP2: TFloatField;
    IBQuery4IMP3: TFloatField;
    IBQuery4IMP4: TFloatField;
    IBQuery4IMP5: TFloatField;
    IBQuery4RICARPREC: TFloatField;
    RadioGroup1: TRadioGroup;
    Button3: TButton;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    ibqOrdVen: TIBQuery;
    ibqOrdVenCLIFOR_ID: TIntegerField;
    ibqOrdVenDENOMINAZIONE: TIBStringField;
    ibqOrdVenCODICE_ARTICOLO: TIBStringField;
    ibqOrdVenDESCR: TIBStringField;
    ibqOrdVenF_1: TFloatField;
    ibqOrdVenConsegnato: TFloatField;
    ibqConsOrd: TIBQuery;
    ibqConsOrdCLIFOR_ID: TIntegerField;
    ibqConsOrdCODICE_ARTICOLO: TIBStringField;
    ibqConsOrdF_1: TFloatField;
    ibqOrdAcq: TIBQuery;
    ibqConsOrd2: TIBQuery;
    ibqOrdAcqCLIFOR_ID: TIntegerField;
    ibqOrdAcqDENOMINAZIONE: TIBStringField;
    ibqOrdAcqCODICE_ARTICOLO: TIBStringField;
    ibqOrdAcqDESCR: TIBStringField;
    ibqOrdAcqF_1: TFloatField;
    ibqConsOrd2CLIFOR_ID: TIntegerField;
    ibqConsOrd2CODICE_ARTICOLO: TIBStringField;
    ibqConsOrd2F_1: TFloatField;
    ibqOrdAcqConsegnato: TFloatField;
    IBQuery5: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField8: TIBStringField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    SmallintField1: TSmallintField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField9: TIBStringField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IntegerField7: TIntegerField;
    IBStringField14: TIBStringField;
    SmallintField6: TSmallintField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IntegerField8: TIntegerField;
    SmallintField7: TSmallintField;
    SmallintField8: TSmallintField;
    SmallintField9: TSmallintField;
    SmallintField10: TSmallintField;
    IntegerField9: TIntegerField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    SmallintField11: TSmallintField;
    SmallintField12: TSmallintField;
    IntegerField10: TIntegerField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    IntegerField11: TIntegerField;
    FloatField16: TFloatField;
    DateTimeField1: TDateTimeField;
    IntegerField12: TIntegerField;
    SmallintField13: TSmallintField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IBStringField20: TIBStringField;
    IntegerField20: TIntegerField;
    IBStringField21: TIBStringField;
    DateTimeField2: TDateTimeField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    dsArticoli2: TDataSource;
    IBSQL1: TIBSQL;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    IBDataSet1: TIBDataSet;
    IBDataSet1CLIFOR_ID: TIntegerField;
    IBDataSet1DENOMINAZIONE: TIBStringField;
    IBDataSet1TIPO_CLIFOR: TSmallintField;
    IBDataSet1CAUSALE_MAGAZZINO: TIBStringField;
    IBDataSet1IMPON: TFloatField;
    IBDataSet1IVA: TFloatField;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    Button6: TButton;
    Button7: TButton;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Button5: TButton;
    Button4: TButton;
    Button8: TButton;
    ibqOrdVenW: TIBQuery;
    ibqConsOrdW: TIBQuery;
    ibqOrdVenWCLIFOR_ID: TIntegerField;
    ibqOrdVenWDENOMINAZIONE: TIBStringField;
    ibqOrdVenWCODICE_ARTICOLO: TIBStringField;
    ibqOrdVenWDESCR: TIBStringField;
    ibqOrdVenWConsegnato: TFloatField;
    ibqOrdVenWF_1: TFloatField;
    ibqConsOrdWCLIFOR_ID: TIntegerField;
    ibqConsOrdWCODICE_ARTICOLO: TIBStringField;
    ibqConsOrdWF_1: TFloatField;
    IBDataSet2: TIBDataSet;
    ibq1: TIBQuery;
    ibq1ID_DOC_DET: TIntegerField;
    ibq1TIPO_RIGA: TIntegerField;
    ibq1CODICE_ARTICOLO: TIBStringField;
    ibq1DESCR: TIBStringField;
    ibq1COSTO: TFloatField;
    ibq1COSTOINVALUTA: TFloatField;
    ibq1UNITA_MISURA: TIBStringField;
    ibq1FATTCONV: TFloatField;
    ibq1QTA_UM: TFloatField;
    ibq1QUANTITA: TFloatField;
    ibq1SCONTO1: TFloatField;
    ibq1SCONTO2: TFloatField;
    ibq1SCONTO3: TFloatField;
    ibq1SCONTO4: TFloatField;
    ibq1IMPORTO_SCONTO: TFloatField;
    ibq1IMPORTO: TFloatField;
    ibq1IMPORTOINVALUTA: TFloatField;
    ibq1OMAGGIO: TSmallintField;
    ibq1DEP: TIBStringField;
    ibq1SCONTO_EQ: TFloatField;
    ibq1PERC_PROVV: TFloatField;
    ibq1TIPO_SERVIZIO: TIBStringField;
    ibq1IVATO: TFloatField;
    ibq1IMPORTO_CON_IVA: TFloatField;
    ibq1CODICE_IVA_ID: TIBStringField;
    ibq1DATA_REG: TDateTimeField;
    ibq1RIF_A: TSmallintField;
    ibq1RIF_A_PRE: TSmallintField;
    ibq1RIF_A_ORD: TSmallintField;
    ibq1RIF_A_DDT: TSmallintField;
    ibq1RIF_ID_DOC_DET: TIntegerField;
    ibq1RIF_DDT_ID_DOC: TIntegerField;
    ibq1RIF_DDT_DATA_DOC: TDateTimeField;
    ibq1RIF_ORD_ID_DOC: TIntegerField;
    ibq1RIF_ORD_DATA_DOC: TDateTimeField;
    ibq1RIF_PRE_ID_DOC: TIntegerField;
    ibq1RIF_PRE_DATA_DOC: TDateTimeField;
    ibq1PIANOCONTO_ID: TIntegerField;
    ibq1RIF_PRE_NUM_DOC: TIntegerField;
    ibq1RIF_ORD_NUM_DOC: TIntegerField;
    ibq1RIF_DDT_NUM_DOC: TIntegerField;
    ibq1OP_QTA_DISPONIBILE: TFloatField;
    ibq1OP_VAL_DISPONIBILE: TFloatField;
    ibq1OP_QTA_GIACENZA: TFloatField;
    ibq1OP_VAL_GIACENZA: TFloatField;
    ibq1DOC_ID: TIntegerField;
    ibq1TOTCOLLI: TIBStringField;
    ibq1TOTSCAT: TFloatField;
    ibq1PREZZOLIST: TFloatField;
    ibq1SCHEDA: TFloatField;
    ibq1PASSATA: TIBStringField;
    ibq1COL: TIBStringField;
    ibq1A: TIBStringField;
    ibq1B: TIBStringField;
    ibq1C: TIBStringField;
    ibq1NUM_RIGA_ID: TIntegerField;
    ibq1ID_DOCUMENTO: TIntegerField;
    ibq1TESTATA_PN_ID: TIntegerField;
    ibq1CAUSALE_DOC: TIBStringField;
    ibq1TIPO_DOC: TIntegerField;
    ibq1DA_FATTURARE: TSmallintField;
    ibq1CLIFOR_ID: TIntegerField;
    ibq1TIPO_CLIFOR: TSmallintField;
    ibq1DEPOSITO: TIBStringField;
    ibq1CONTRO_CLIFOR_ID: TIntegerField;
    ibq1CONTRO_TIPO_CLIFOR: TSmallintField;
    ibq1CONTRO_DEPOSITO: TIBStringField;
    ibq1CAUSALE_MAGAZZINO: TIBStringField;
    ibq1CONTRO_CAUS_MAG: TIBStringField;
    ibq1ATTIVITA: TIBStringField;
    ibq1SUBATTIVITA: TIBStringField;
    ibq1DATA_REGISTRAZIONE: TDateTimeField;
    ibq1DATA_DOC: TDateTimeField;
    ibq1DATA_CONFERMA: TDateTimeField;
    ibq1DATA_EVASIONE: TDateTimeField;
    ibq1STATO_DOCUMENTO: TIntegerField;
    ibq1STATO_CONTABILITA: TIntegerField;
    ibq1MONETA_ID: TIBStringField;
    ibq1CAMBIO: TFloatField;
    ibq1KINGUA_ID: TIBStringField;
    ibq1LISTINO: TIBStringField;
    ibq1NS_RIFERIMENTO: TIBStringField;
    ibq1VS_RIFERIMENTO: TIBStringField;
    ibq1CAUSALE_CONTABILE: TIBStringField;
    ibq1CODICE_BOLL: TIBStringField;
    ibq1PAGAMENTO_ID: TIBStringField;
    ibq1BANCA_CLIFOR: TIBStringField;
    ibq1BANCA_AZIENDA: TIBStringField;
    ibq1VETTORE1: TIBStringField;
    ibq1VETTORE2: TIBStringField;
    ibq1VETTORE3: TIBStringField;
    ibq1PORTO: TIBStringField;
    ibq1ASPETTO: TIBStringField;
    ibq1SPEDIZIONE: TIBStringField;
    ibq1PESO_NETTO: TFloatField;
    ibq1PESO_LORDO: TFloatField;
    ibq1CUBAGGIO: TFloatField;
    ibq1DESTINARIO: TIBStringField;
    ibq1IMBALLO: TIBStringField;
    ibq1SCONTO11: TFloatField;
    ibq1AGENTE_ID: TIBStringField;
    ibq1DATA_CONSEGNA: TDateTimeField;
    ibq1NUM_DOC: TIntegerField;
    ibq1NRCOLLI: TFloatField;
    ibq1SCONTO21: TFloatField;
    ibq1IMPORTO_SCONTO1: TFloatField;
    ibq1NOTA: TIBStringField;
    ibq1SOSPESO: TSmallintField;
    ibq1IVA_SOSPESA: TSmallintField;
    ibq1COD_IVA_ESENTE: TIBStringField;
    ibq1COD_IVA_SPESE_BOLLI: TIBStringField;
    ibq1COD_IVA_SPESE_INCASSO: TIBStringField;
    ibq1COD_IVA_SPESE_IMVALLO: TIBStringField;
    ibq1COD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    ibq1COD_IVA_SPESE_ACCESSIONE: TIBStringField;
    ibq1COD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    ibq1ACCORPA_RIGHE: TSmallintField;
    ibq1ATTIVITA2: TIBStringField;
    ibq1SUBATTIVITA2: TIBStringField;
    ibq1SOGGETTO_CEE: TSmallintField;
    ibq1REPORT: TIBStringField;
    ibq1RILEVA_ACCONTO: TSmallintField;
    ibq1ORA: TIBStringField;
    ibq1FATT_ACCOMP: TSmallintField;
    ibq1TIPO_FATT: TSmallintField;
    ibq1ST_NOTE_CLIFOR: TSmallintField;
    ibq1IVATO1: TSmallintField;
    ibq1STAMPATO: TSmallintField;
    ibq1DATA_COMPETENZA_IVA: TDateTimeField;
    ibq1MEZZO_TRASPORTO: TSmallintField;
    ibq1TOT_PROVVIGIONE: TFloatField;
    ibq1TIPO_PROVVIGIONE: TSmallintField;
    ibq1TOT_IMP_PROVVIGIONE: TFloatField;
    ibq1CAST_MANUALE: TSmallintField;
    ibq1NUM_DOC2: TIntegerField;
    ibq1SERIE_DOC2: TIBStringField;
    ibq1MESE_CONT: TIntegerField;
    ibq1ALTRE_DERT_SI_NO: TSmallintField;
    ibq1SPESE_IMBALLO: TFloatField;
    ibq1SPESE_BOLLI: TFloatField;
    ibq1SPESE_ACCESSORIE: TFloatField;
    ibq1SPESE_INCASSO: TFloatField;
    ibq1SPESE_SPEDIZIONE: TFloatField;
    ibq1SPESE_CONTRASS: TFloatField;
    ibq1CAU_TRASP_ID: TIBStringField;
    ibq1PER_ALTRA_DEST: TSmallintField;
    ibq1IMPORTO_CON_IVA1: TFloatField;
    ibq1TOTALE_MERCE: TFloatField;
    ibq1TOTALE_SERVIZI: TFloatField;
    ibq1TOTALE: TFloatField;
    ibq1TOTALE_IVA: TFloatField;
    ibq1TOTALE_IVATO: TFloatField;
    ibq1TOTALE_SCONTI: TFloatField;
    ibq1TOTALE_EURO: TFloatField;
    ibq1TOTALE_EURO_IVATO: TFloatField;
    ibq1CODIVA1: TIBStringField;
    ibq1ALIVA1: TFloatField;
    ibq1IMPON1: TFloatField;
    ibq1IMPOSTA1: TFloatField;
    ibq1CODIVA2: TIBStringField;
    ibq1ALIVA2: TFloatField;
    ibq1IMPON2: TFloatField;
    ibq1IMPOSTA2: TFloatField;
    ibq1CODIVA3: TIBStringField;
    ibq1ALIVA3: TFloatField;
    ibq1IMPON3: TFloatField;
    ibq1IMPOSTA3: TFloatField;
    ibq1CODIVA4: TIBStringField;
    ibq1ALIVA4: TFloatField;
    ibq1IMPON4: TFloatField;
    ibq1IMPOSTA4: TFloatField;
    ibq1CODIVA5: TIBStringField;
    ibq1ALIVA5: TFloatField;
    ibq1IMPON5: TFloatField;
    ibq1IMPOSTA5: TFloatField;
    ibq1TOT_SPESE: TFloatField;
    ibq1ALTRA_DEST: TIBStringField;
    ibq1SERIE_DOC: TIBStringField;
    ibq1CLI_FOR_IND: TIBStringField;
    ibq1ACCONTO: TFloatField;
    ibq1RATA1_IMPORTO: TFloatField;
    ibq1RATA2_IMPORTO: TFloatField;
    ibq1RATA3_IMPORTO: TFloatField;
    ibq1RATA4_IMPORTO: TFloatField;
    ibq1RATA5_IMPORTO: TFloatField;
    ibq1RATA6_IMPORTO: TFloatField;
    ibq1TEL1: TIBStringField;
    ibq1TEL2: TIBStringField;
    ibq1TEL3: TIBStringField;
    ibq1IVA_ESENTE: TSmallintField;
    ibq1IVA_ESENTE_ID: TIntegerField;
    ibq1VETTORE_IND: TIBStringField;
    ibq1VETTORE_IND2: TIBStringField;
    ibq1CLI_FOR_IND2: TIBStringField;
    ibq1RATA1_DATA: TDateField;
    ibq1RATA2_DATA: TDateField;
    ibq1RATA3_DATA: TDateField;
    ibq1RATA4_DATA: TDateField;
    ibq1RATA5_DATA: TDateField;
    ibq1RATA6_DATA: TDateField;
    ibq1PIANOCONTO_ID1: TIntegerField;
    ibq1ALTRA_DEST2: TIBStringField;
    ibq1CA_ID: TIBStringField;
    IBDataSet2CODICE_ARTICOLO: TIBStringField;
    IBDataSet2DEPOSITO_ID: TIBStringField;
    IBDataSet2CLI_FOR_ID: TIntegerField;
    IBDataSet2TIPO_CLI_FOR_ID: TSmallintField;
    IBDataSet2DESCR: TIBStringField;
    IBDataSet2QTA_ACQUISTI: TFloatField;
    IBDataSet2VAL_ACQUISTI: TFloatField;
    IBDataSet2QTA_VENDITA: TFloatField;
    IBDataSet2VAL_VENDITA: TFloatField;
    IBDataSet2QTA_ALTRE_ENTRATE: TFloatField;
    IBDataSet2VAL_ALTRE_ENTRATE: TFloatField;
    IBDataSet2QTA_ALTRE_USCITE: TFloatField;
    IBDataSet2VAL_ALTRE_USCITA: TFloatField;
    IBDataSet2QTA_RESO_CLIENTE: TFloatField;
    IBDataSet2VAL_RESO_CLIENTE: TFloatField;
    IBDataSet2QTA_RESO_FORNITORE: TFloatField;
    IBDataSet2VAL_RESO_FORNITORE: TFloatField;
    IBDataSet2QTA_ORDINATO: TFloatField;
    IBDataSet2VAL_ORDINATO: TFloatField;
    IBDataSet2QTA_IMPEGNATO: TFloatField;
    IBDataSet2VAL_QTA_IMPEGNATO: TFloatField;
    IBDataSet2QTA_EVASA_CLIENTE: TFloatField;
    IBDataSet2VAL_EVASO_CLIENTE: TFloatField;
    IBDataSet2QTA_EVASA_FORNITORE: TFloatField;
    IBDataSet2VAL_EVASO_FORNITORE: TFloatField;
    IBDataSet2QTA_GIACENZA_INIZIALE: TFloatField;
    IBDataSet2COSTO_GIACENZA_INIZIALE: TFloatField;
    IBDataSet2VAL_GIACENZA_INIZIALE: TFloatField;
    IBDataSet2GIACENZA_ATTUALE: TFloatField;
    IBDataSet2DISPONIBILITA: TFloatField;
    IBDataSet2COSTO_ULTIMO: TFloatField;
    IBDataSet2MED_PREZZO_VEND: TFloatField;
    IBDataSet2ULT_COSTO_ACQ: TFloatField;
    IBDataSet2MEDIO_COSTO_ACQ: TFloatField;
    IBDataSet2ULT_PREZZO_VEND: TFloatField;
    IBDataSet2DATA_ULTIMO_ACQUISTO: TDateTimeField;
    IBDataSet2DATA_ULTIMA_VENDITA: TDateTimeField;
    IBDataSet2PRETAGLIO: TFloatField;
    IBQuery6: TIBQuery;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    IBStringField22: TIBStringField;
    IBQuery2DESCR2: TIBStringField;
    IBQuery2CODICE_IVA_ID: TIBStringField;
    IBQuery2UNITA_DI_MISURA1_ID: TIBStringField;
    IBQuery2UNITA_DI_MISURA2_ID: TIBStringField;
    IBQuery2UNITA_DI_MISURA3_ID: TIBStringField;
    IBQuery2SCONTO1: TFloatField;
    IBQuery2SCONTO2: TFloatField;
    IBQuery2SCONTO3: TFloatField;
    IBQuery2PROVVIGIONE: TFloatField;
    IBQuery2PESO_NETTO_KG: TFloatField;
    IBQuery2PESO_LORDO_KG: TFloatField;
    IBQuery2SCORTA_MIN: TFloatField;
    IBQuery2SCORTA_MAX: TFloatField;
    IBQuery2LOTTO_RIORDINO: TFloatField;
    IBQuery2GG_APPROVVIGIONAMENTO: TIntegerField;
    IBQuery2QTA_X_CONFEZIONE: TIntegerField;
    IBQuery2ANNO: TIntegerField;
    IBQuery2DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBQuery2PREZZO_BASE: TFloatField;
    IBQuery2COSTO_STANDART: TFloatField;
    IBQuery2TIPO_ARTICOLO_ID: TSmallintField;
    IBQuery2FATT_CONV1: TFloatField;
    IBQuery2FATT_CONV2: TFloatField;
    IBQuery2COSTO_ID: TIntegerField;
    IBQuery2RICAVO_ID: TIntegerField;
    IBQuery2GIORNI_MAX_INVENDUTO: TIntegerField;
    IBQuery2ASPETTO_ID: TIBStringField;
    IBQuery2RIORDINO_MESE_DA: TSmallintField;
    IBQuery2RIORDINO_MESE_A: TSmallintField;
    IBQuery2RIORDINO_GIORNO_DA: TSmallintField;
    IBQuery2RIORDINO_GIORNO_A: TSmallintField;
    IBQuery2STAGIONE_ID: TIBStringField;
    IBQuery2GRUPPO_ALTERNATIVO: TIBStringField;
    IBQuery2PRODUTTORE_ID: TIBStringField;
    IBQuery2CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBQuery2CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBQuery2CODICE_BASE: TIBStringField;
    IBQuery2DERIVATO: TSmallintField;
    IBQuery2VARIANTE1_ID: TIBStringField;
    IBQuery2VARIANTE2_ID: TIBStringField;
    IBQuery2VARIANTE3_ID: TIBStringField;
    IBQuery2NUM_VARIANTI: TIntegerField;
    IBQuery2TIPO_COSTO_ID: TSmallintField;
    IBQuery2TIPO_RICAVO_ID: TSmallintField;
    IBQuery2OMAGGIO: TSmallintField;
    IBQuery2TIPO_CLI_FOR_ID: TSmallintField;
    IBQuery2CLI_FOR_ID: TIntegerField;
    IBQuery2CODE_BAR: TIBStringField;
    IBQuery2DESCR_CODE_BAR: TIBStringField;
    IBQuery2NON_STAMPA_INVENTARIO: TSmallintField;
    IBQuery2NON_STAMPA_REGISTRO: TSmallintField;
    IBQuery2NOMENCLATURA: TIntegerField;
    IBQuery2FATT_CONV1_NOMENCLATURA: TFloatField;
    IBQuery2FATT_CONV2_NOMENCLATURA: TFloatField;
    IBQuery2PROV_ORDINE: TIntegerField;
    IBQuery2COSTO_ULTIMO: TFloatField;
    IBQuery2DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery2NUM_REPARTO: TIntegerField;
    IBQuery2TIPO_CODE_BAR_ID: TSmallintField;
    IBQuery2CONTO_ACQUISTO: TIntegerField;
    IBQuery2CONTO_VENDITA: TIntegerField;
    IBQuery2UN_MIS2_VAL: TIntegerField;
    IBQuery2UN_MIS3_VAL: TIntegerField;
    IBQuery2CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery2CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery2CAT_ART_MARCA_ID: TIntegerField;
    IBQuery2FOTO_PERCORSO: TIBStringField;
    IBQuery2CAT_ART_TIPO_ID: TIntegerField;
    IBQuery2FLAG_ACCESSORIE: TIBStringField;
    IBQuery2DATAMOD: TDateTimeField;
    IBQuery2SCONTO4: TFloatField;
    IBQuery2PREZZO_IVATO: TFloatField;
    IBQuery2P2IVATO: TFloatField;
    IBQuery2P3IVATO: TFloatField;
    IBQuery2P4IVATO: TFloatField;
    IBQuery2P5IVATO: TFloatField;
    IBQuery2SC21: TFloatField;
    IBQuery2SC22: TFloatField;
    IBQuery2SC23: TFloatField;
    IBQuery2SC31: TFloatField;
    IBQuery2SC32: TFloatField;
    IBQuery2SC33: TFloatField;
    IBQuery2SC41: TFloatField;
    IBQuery2SC42: TFloatField;
    IBQuery2SC43: TFloatField;
    IBQuery2SC51: TFloatField;
    IBQuery2SC52: TFloatField;
    IBQuery2SC53: TFloatField;
    IBQuery2R2: TFloatField;
    IBQuery2R3: TFloatField;
    IBQuery2R4: TFloatField;
    IBQuery2R5: TFloatField;
    IBQuery2IMP2: TFloatField;
    IBQuery2IMP3: TFloatField;
    IBQuery2IMP4: TFloatField;
    IBQuery2IMP5: TFloatField;
    IBQuery2RICARPREC: TFloatField;
    IBQuery2P6IVATO: TFloatField;
    IBQuery2IMP6: TFloatField;
    IBQuery2STRUTT: TFloatField;
    IBQuery2CA: TFloatField;
    IBQuery2CG: TFloatField;
    IBQuery2AG: TFloatField;
    IBQuery2CA2: TFloatField;
    IBQuery2CG2: TFloatField;
    IBQuery2AG2: TFloatField;
    IBQuery2CA3: TFloatField;
    IBQuery2CG3: TFloatField;
    IBQuery2AG3: TFloatField;
    IBQuery2CA4: TFloatField;
    IBQuery2CG4: TFloatField;
    IBQuery2AG4: TFloatField;
    IBQuery2CA5: TFloatField;
    IBQuery2CG5: TFloatField;
    IBQuery2AG5: TFloatField;
    IBQuery2CA6: TFloatField;
    IBQuery2CG6: TFloatField;
    IBQuery2AG6: TFloatField;
    IBQuery2ID_OFFERTA: TIntegerField;
    IBQuery2CR: TFloatField;
    IBQuery2CR2: TFloatField;
    IBQuery2CR3: TFloatField;
    IBQuery2CR4: TFloatField;
    IBQuery2CR5: TFloatField;
    IBQuery2CR6: TFloatField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ibqSitArt: TIBQuery;
    BitBtn8: TBitBtn;
    ibqSitDDTExt: TIBQuery;
    ibqSitDDTExt2: TIBQuery;
    ibqSitDDTExt2CLIFOR_ID: TIntegerField;
    ibqSitDDTExt2CODICE_ARTICOLO: TIBStringField;
    ibqSitDDTExt2F_1: TFloatField;
    ibqSitDDTExtCLIFOR_ID: TIntegerField;
    ibqSitDDTExtDENOMINAZIONE: TIBStringField;
    ibqSitDDTExtCODICE_ARTICOLO: TIBStringField;
    ibqSitDDTExtDESCR: TIBStringField;
    ibqSitDDTExtF_1: TFloatField;
    ibqSitDDTExtConsegnato: TFloatField;
    GroupBox2: TGroupBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    ibqSitDDT: TIBQuery;
    ibqSitDDT2: TIBQuery;
    ibqSitDDTCLIFOR_ID: TIntegerField;
    ibqSitDDTDENOMINAZIONE: TIBStringField;
    ibqSitDDTCODICE_ARTICOLO: TIBStringField;
    ibqSitDDTDESCR: TIBStringField;
    ibqSitDDTF_1: TFloatField;
    ibqSitDDTConsegnato: TFloatField;
    ibqSitDDT2CLIFOR_ID: TIntegerField;
    ibqSitDDT2CODICE_ARTICOLO: TIBStringField;
    ibqSitDDT2F_1: TFloatField;
    ibqSitDDTCl: TIBQuery;
    ibqSitDDTCl2: TIBQuery;
    ibqSitDDTCl2CLIFOR_ID: TIntegerField;
    ibqSitDDTCl2CODICE_ARTICOLO: TIBStringField;
    ibqSitDDTCl2F_1: TFloatField;
    ibqSitDDTClCLIFOR_ID: TIntegerField;
    ibqSitDDTClDENOMINAZIONE: TIBStringField;
    ibqSitDDTClCODICE_ARTICOLO: TIBStringField;
    ibqSitDDTClDESCR: TIBStringField;
    ibqSitDDTClF_1: TFloatField;
    ibqSitDDTClConsegnato: TFloatField;
    SaveDialog1: TSaveDialog;
    ibqSitDDTCl_1: TIBQuery;
    ibqSitDDTCl2_1: TIBQuery;
    ibqSitDDTCl_1CODICE_ARTICOLO: TIBStringField;
    ibqSitDDTCl_1DESCR: TIBStringField;
    ibqSitDDTCl_1F_1: TFloatField;
    ibqSitDDTCl_1CONSEGNATO: TFloatField;
    ibqSitDDTCl2_1CODICE_ARTICOLO: TIBStringField;
    ibqSitDDTCl2_1F_1: TFloatField;
    ibqSitDDTCl_2: TIBQuery;
    ibqSitDDTCl2_2: TIBQuery;
    ibqSitDDTCl_2CODICE_ARTICOLO: TIBStringField;
    ibqSitDDTCl_2DESCR: TIBStringField;
    ibqSitDDTCl_2SCHEDA: TFloatField;
    ibqSitDDTCl_2F_1: TFloatField;
    ibqSitDDTCl_2CONSEGNATO: TFloatField;
    ibqSitDDTCl2_2CODICE_ARTICOLO: TIBStringField;
    ibqSitDDTCl2_2F_1: TFloatField;
    ibqSitDDTCl_1DEP: TIBStringField;
    ibqSitDDTCl_2DEP: TIBStringField;
    frReport1: TfrReport;
    frDesigner1: TfrDesigner;
    StampeSALDO1: TMenuItem;
    BitBtn9: TBitBtn;
    ibqDaFatt: TIBQuery;
    BitBtn10: TBitBtn;
    ibqSitDDTCl_2CLIFOR_ID: TIntegerField;
    ibqScar_dis: TIBQuery;
    ibqScar_disPK_CODICE: TIntegerField;
    ibqScar_disCODICE_ARTICOLO: TIBStringField;
    ibqScar_disDESCR_ARTICOLO: TIBStringField;
    ibqScar_disQTA: TFloatField;
    ibqScar_disID_DOCUMENTO: TIntegerField;
    ibqScar_disDATA: TDateTimeField;
    ibqScar_disCODICE_ART_VEN: TIBStringField;
    ibqScar_disNUM_DOCUMENTO: TIntegerField;
    ibqScar_disCAUSALE_DOCUMENTO: TIBStringField;
    frReport2: TfrReport;
    StampeSaldo21: TMenuItem;
    ibqScar_disMEDIO_COSTO_ACQ: TFloatField;
    gbAgente: TGroupBox;
    rabAgTutti: TRadioButton;
    rabAgScegli: TRadioButton;
    LookAgCod: TDBLookupComboBox;
    LookAgDescr: TDBLookupComboBox;
    dsoAgente: TDataSource;
    r_qBrogliaccio2: TIBQuery;
    r_qBrogliaccio2DOC_ID: TIntegerField;
    r_qBrogliaccio2CODICE_ARTICOLO: TIBStringField;
    r_qBrogliaccio2DESCR: TIBStringField;
    r_qBrogliaccio2UNITA_MISURA: TIBStringField;
    r_qBrogliaccio2QUANTITA: TFloatField;
    r_qBrogliaccio2SCONTO1: TFloatField;
    r_qBrogliaccio2SCONTO2: TFloatField;
    r_qBrogliaccio2SCONTO_EQ: TFloatField;
    r_qBrogliaccio2COSTO: TFloatField;
    r_qBrogliaccio2DEP: TIBStringField;
    r_qBrogliaccio2ID_DOCUMENTO: TIntegerField;
    r_qBrogliaccio2DATA_DOC: TDateTimeField;
    r_qBrogliaccio2NUM_DOC: TIntegerField;
    r_qBrogliaccio2SERIE_DOC: TIBStringField;
    r_qBrogliaccio2TIPO_CLIFOR: TSmallintField;
    r_qBrogliaccio2CLIFOR_ID: TIntegerField;
    r_qBrogliaccio2CAUSALE_MAGAZZINO: TIBStringField;
    r_qBrogliaccio2CODICE_BOLL: TIBStringField;
    r_qBrogliaccio2IMPORTO_SCONTO: TFloatField;
    r_qBrogliaccio2IMPORTO_CON_IVA: TFloatField;
    r_qBrogliaccio2QTA_UM: TFloatField;
    r_qBrogliaccio2TOTSCAT: TFloatField;
    r_qBrogliaccio2LISTINO: TIBStringField;
    r_qBrogliaccio2COL: TIBStringField;
    r_qBrogliaccio2ID_DOC_DET: TIntegerField;
    r_qBrogliaccio2NUM_RIGA_ID: TIntegerField;
    r_qBrogliaccio2TIPO_RIGA: TIntegerField;
    r_qBrogliaccio2COSTOINVALUTA: TFloatField;
    r_qBrogliaccio2FATTCONV: TFloatField;
    r_qBrogliaccio2SCONTO3: TFloatField;
    r_qBrogliaccio2SCONTO4: TFloatField;
    r_qBrogliaccio2IMPORTO: TFloatField;
    r_qBrogliaccio2IMPORTOINVALUTA: TFloatField;
    r_qBrogliaccio2OMAGGIO: TSmallintField;
    r_qBrogliaccio2PERC_PROVV: TFloatField;
    r_qBrogliaccio2TIPO_SERVIZIO: TIBStringField;
    r_qBrogliaccio2IVATO: TFloatField;
    r_qBrogliaccio2CODICE_IVA_ID: TIBStringField;
    r_qBrogliaccio2DATA_REG: TDateTimeField;
    r_qBrogliaccio2RIF_A: TSmallintField;
    r_qBrogliaccio2RIF_A_PRE: TSmallintField;
    r_qBrogliaccio2RIF_A_ORD: TSmallintField;
    r_qBrogliaccio2RIF_A_DDT: TSmallintField;
    r_qBrogliaccio2RIF_ID_DOC_DET: TIntegerField;
    r_qBrogliaccio2RIF_DDT_ID_DOC: TIntegerField;
    r_qBrogliaccio2RIF_DDT_DATA_DOC: TDateTimeField;
    r_qBrogliaccio2RIF_ORD_ID_DOC: TIntegerField;
    r_qBrogliaccio2RIF_ORD_DATA_DOC: TDateTimeField;
    r_qBrogliaccio2RIF_PRE_ID_DOC: TIntegerField;
    r_qBrogliaccio2RIF_PRE_DATA_DOC: TDateTimeField;
    r_qBrogliaccio2PIANOCONTO_ID: TIntegerField;
    r_qBrogliaccio2RIF_PRE_NUM_DOC: TIntegerField;
    r_qBrogliaccio2RIF_ORD_NUM_DOC: TIntegerField;
    r_qBrogliaccio2RIF_DDT_NUM_DOC: TIntegerField;
    r_qBrogliaccio2TOTCOLLI: TIBStringField;
    r_qBrogliaccio2PREZZOLIST: TFloatField;
    r_qBrogliaccio2SCHEDA: TFloatField;
    r_qBrogliaccio2PASSATA: TIBStringField;
    r_qBrogliaccio2TESTATA_PN_ID: TIntegerField;
    r_qBrogliaccio2CAUSALE_DOC: TIBStringField;
    r_qBrogliaccio2TIPO_DOC: TIntegerField;
    r_qBrogliaccio2DA_FATTURARE: TSmallintField;
    r_qBrogliaccio2CONTRO_CLIFOR_ID: TIntegerField;
    r_qBrogliaccio2CONTRO_TIPO_CLIFOR: TSmallintField;
    r_qBrogliaccio2CONTRO_DEPOSITO: TIBStringField;
    r_qBrogliaccio2CONTRO_CAUS_MAG: TIBStringField;
    r_qBrogliaccio2ATTIVITA: TIBStringField;
    r_qBrogliaccio2SUBATTIVITA: TIBStringField;
    r_qBrogliaccio2DATA_REGISTRAZIONE: TDateTimeField;
    r_qBrogliaccio2DATA_CONFERMA: TDateTimeField;
    r_qBrogliaccio2DATA_EVASIONE: TDateTimeField;
    r_qBrogliaccio2STATO_DOCUMENTO: TIntegerField;
    r_qBrogliaccio2STATO_CONTABILITA: TIntegerField;
    r_qBrogliaccio2MONETA_ID: TIBStringField;
    r_qBrogliaccio2CAMBIO: TFloatField;
    r_qBrogliaccio2KINGUA_ID: TIBStringField;
    r_qBrogliaccio2NS_RIFERIMENTO: TIBStringField;
    r_qBrogliaccio2VS_RIFERIMENTO: TIBStringField;
    r_qBrogliaccio2CAUSALE_CONTABILE: TIBStringField;
    r_qBrogliaccio2PAGAMENTO_ID: TIBStringField;
    r_qBrogliaccio2BANCA_CLIFOR: TIBStringField;
    r_qBrogliaccio2BANCA_AZIENDA: TIBStringField;
    r_qBrogliaccio2VETTORE1: TIBStringField;
    r_qBrogliaccio2VETTORE2: TIBStringField;
    r_qBrogliaccio2VETTORE3: TIBStringField;
    r_qBrogliaccio2PORTO: TIBStringField;
    r_qBrogliaccio2ASPETTO: TIBStringField;
    r_qBrogliaccio2SPEDIZIONE: TIBStringField;
    r_qBrogliaccio2PESO_NETTO: TFloatField;
    r_qBrogliaccio2PESO_LORDO: TFloatField;
    r_qBrogliaccio2CUBAGGIO: TFloatField;
    r_qBrogliaccio2DESTINARIO: TIBStringField;
    r_qBrogliaccio2IMBALLO: TIBStringField;
    r_qBrogliaccio2SCONTO11: TFloatField;
    r_qBrogliaccio2AGENTE_ID: TIBStringField;
    r_qBrogliaccio2DATA_CONSEGNA: TDateTimeField;
    r_qBrogliaccio2NRCOLLI: TFloatField;
    r_qBrogliaccio2SCONTO21: TFloatField;
    r_qBrogliaccio2IMPORTO_SCONTO1: TFloatField;
    r_qBrogliaccio2NOTA: TIBStringField;
    r_qBrogliaccio2SOSPESO: TSmallintField;
    r_qBrogliaccio2IVA_SOSPESA: TSmallintField;
    r_qBrogliaccio2COD_IVA_ESENTE: TIBStringField;
    r_qBrogliaccio2COD_IVA_SPESE_BOLLI: TIBStringField;
    r_qBrogliaccio2COD_IVA_SPESE_INCASSO: TIBStringField;
    r_qBrogliaccio2COD_IVA_SPESE_IMVALLO: TIBStringField;
    r_qBrogliaccio2COD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    r_qBrogliaccio2COD_IVA_SPESE_ACCESSIONE: TIBStringField;
    r_qBrogliaccio2COD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    r_qBrogliaccio2ACCORPA_RIGHE: TSmallintField;
    r_qBrogliaccio2ATTIVITA2: TIBStringField;
    r_qBrogliaccio2SUBATTIVITA2: TIBStringField;
    r_qBrogliaccio2SOGGETTO_CEE: TSmallintField;
    r_qBrogliaccio2REPORT: TIBStringField;
    r_qBrogliaccio2RILEVA_ACCONTO: TSmallintField;
    r_qBrogliaccio2ORA: TIBStringField;
    r_qBrogliaccio2FATT_ACCOMP: TSmallintField;
    r_qBrogliaccio2TIPO_FATT: TSmallintField;
    r_qBrogliaccio2ST_NOTE_CLIFOR: TSmallintField;
    r_qBrogliaccio2IVATO1: TSmallintField;
    r_qBrogliaccio2STAMPATO: TSmallintField;
    r_qBrogliaccio2DATA_COMPETENZA_IVA: TDateTimeField;
    r_qBrogliaccio2MEZZO_TRASPORTO: TSmallintField;
    r_qBrogliaccio2TOT_PROVVIGIONE: TFloatField;
    r_qBrogliaccio2TIPO_PROVVIGIONE: TSmallintField;
    r_qBrogliaccio2TOT_IMP_PROVVIGIONE: TFloatField;
    r_qBrogliaccio2CAST_MANUALE: TSmallintField;
    r_qBrogliaccio2NUM_DOC2: TIntegerField;
    r_qBrogliaccio2SERIE_DOC2: TIBStringField;
    r_qBrogliaccio2MESE_CONT: TIntegerField;
    r_qBrogliaccio2ALTRE_DERT_SI_NO: TSmallintField;
    r_qBrogliaccio2SPESE_IMBALLO: TFloatField;
    r_qBrogliaccio2SPESE_BOLLI: TFloatField;
    r_qBrogliaccio2SPESE_ACCESSORIE: TFloatField;
    r_qBrogliaccio2SPESE_INCASSO: TFloatField;
    r_qBrogliaccio2SPESE_SPEDIZIONE: TFloatField;
    r_qBrogliaccio2SPESE_CONTRASS: TFloatField;
    r_qBrogliaccio2CAU_TRASP_ID: TIBStringField;
    r_qBrogliaccio2PER_ALTRA_DEST: TSmallintField;
    r_qBrogliaccio2IMPORTO_CON_IVA1: TFloatField;
    r_qBrogliaccio2TOTALE_MERCE: TFloatField;
    r_qBrogliaccio2TOTALE_SERVIZI: TFloatField;
    r_qBrogliaccio2TOTALE: TFloatField;
    r_qBrogliaccio2TOTALE_IVA: TFloatField;
    r_qBrogliaccio2TOTALE_IVATO: TFloatField;
    r_qBrogliaccio2TOTALE_SCONTI: TFloatField;
    r_qBrogliaccio2TOTALE_EURO: TFloatField;
    r_qBrogliaccio2TOTALE_EURO_IVATO: TFloatField;
    r_qBrogliaccio2CODIVA1: TIBStringField;
    r_qBrogliaccio2ALIVA1: TFloatField;
    r_qBrogliaccio2IMPON1: TFloatField;
    r_qBrogliaccio2IMPOSTA1: TFloatField;
    r_qBrogliaccio2CODIVA2: TIBStringField;
    r_qBrogliaccio2ALIVA2: TFloatField;
    r_qBrogliaccio2IMPON2: TFloatField;
    r_qBrogliaccio2IMPOSTA2: TFloatField;
    r_qBrogliaccio2CODIVA3: TIBStringField;
    r_qBrogliaccio2ALIVA3: TFloatField;
    r_qBrogliaccio2IMPON3: TFloatField;
    r_qBrogliaccio2IMPOSTA3: TFloatField;
    r_qBrogliaccio2CODIVA4: TIBStringField;
    r_qBrogliaccio2ALIVA4: TFloatField;
    r_qBrogliaccio2IMPON4: TFloatField;
    r_qBrogliaccio2IMPOSTA4: TFloatField;
    r_qBrogliaccio2CODIVA5: TIBStringField;
    r_qBrogliaccio2ALIVA5: TFloatField;
    r_qBrogliaccio2IMPON5: TFloatField;
    r_qBrogliaccio2IMPOSTA5: TFloatField;
    r_qBrogliaccio2TOT_SPESE: TFloatField;
    r_qBrogliaccio2ALTRA_DEST: TIBStringField;
    r_qBrogliaccio2CLI_FOR_IND: TIBStringField;
    r_qBrogliaccio2ACCONTO: TFloatField;
    r_qBrogliaccio2TEL1: TIBStringField;
    r_qBrogliaccio2TEL2: TIBStringField;
    r_qBrogliaccio2TEL3: TIBStringField;
    r_qBrogliaccio2IVA_ESENTE: TSmallintField;
    r_qBrogliaccio2IVA_ESENTE_ID: TIntegerField;
    r_qBrogliaccio2VETTORE_IND: TIBStringField;
    r_qBrogliaccio2VETTORE_IND2: TIBStringField;
    r_qBrogliaccio2CLI_FOR_IND2: TIBStringField;
    r_qBrogliaccio2PIANOCONTO_ID1: TIntegerField;
    r_qBrogliaccio2ALTRA_DEST2: TIBStringField;
    r_qBrogliaccio2A: TIBStringField;
    r_qBrogliaccio2B: TIBStringField;
    r_qBrogliaccio2C: TIBStringField;
    r_qBrogliaccio2CA_ID: TIBStringField;
    r_qBrogliaccio2GIACENZA_ATTUALE: TFloatField;
    r_qBrogliaccio2COSTOD: TFloatField;
    r_qBrogliaccio2OP_QTA_DISPONIBILE: TFloatField;
    r_qBrogliaccio2OP_VAL_DISPONIBILE: TFloatField;
    r_qBrogliaccio2OP_QTA_GIACENZA: TFloatField;
    r_qBrogliaccio2OP_VAL_GIACENZA: TFloatField;
    r_qBrogliaccio2RATA1_IMPORTO: TFloatField;
    r_qBrogliaccio2RATA2_IMPORTO: TFloatField;
    r_qBrogliaccio2RATA3_IMPORTO: TFloatField;
    r_qBrogliaccio2RATA4_IMPORTO: TFloatField;
    r_qBrogliaccio2RATA5_IMPORTO: TFloatField;
    r_qBrogliaccio2RATA6_IMPORTO: TFloatField;
    r_qBrogliaccio2RATA1_DATA: TDateField;
    r_qBrogliaccio2RATA2_DATA: TDateField;
    r_qBrogliaccio2RATA3_DATA: TDateField;
    r_qBrogliaccio2RATA4_DATA: TDateField;
    r_qBrogliaccio2RATA5_DATA: TDateField;
    r_qBrogliaccio2RATA6_DATA: TDateField;
    r_qBrogliaccio2CLIFORNDESCR: TIBStringField;
    r_qBrogliaccio2TIPOMOV: TSmallintField;
    r_qBrogliaccio2CAUSALE_DESCR: TIBStringField;
    r_qBrogliaccio2DEPOSITO: TIBStringField;
    r_qBrogliaccio2DESCR1: TIBStringField;
    r_qBrogliaccio2ULT_COSTO_ACQ: TFloatField;
    r_dsoBrogliaccio2: TDataSource;
    procedure bbEsciClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gbDataExit(Sender: TObject);
    procedure bbStampaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rabCauTuttiClick(Sender: TObject);
    procedure rabDepTuttiClick(Sender: TObject);
    procedure gbCausaleExit(Sender: TObject);
    procedure rabTipoCliFornTuttiClick(Sender: TObject);
    procedure LookCauCodCloseUp(Sender: TObject);
    procedure LookCauDescrCloseUp(Sender: TObject);
    procedure LookCliCodCloseUp(Sender: TObject);
    procedure LookCliDescrCloseUp(Sender: TObject);
    procedure LookFornCodCloseUp(Sender: TObject);
    procedure LookFornDescrCloseUp(Sender: TObject);
    procedure LookDepDescrCloseUp(Sender: TObject);
    procedure LookDepCodCloseUp(Sender: TObject);
    procedure rabTSSinClick(Sender: TObject);
    procedure gbDepositoExit(Sender: TObject);
    procedure gbTipoCliForExit(Sender: TObject);
    procedure rabArtDaAClick(Sender: TObject);
    procedure rabArtTuttiClick(Sender: TObject);
    procedure rxdblcDaArtExit(Sender: TObject);
    procedure rxdblcAdArtExit(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rxdblcMarcaExit(Sender: TObject);
    procedure rxdblcGruppoExit(Sender: TObject);
    procedure rxdblcFamigliaExit(Sender: TObject);
    procedure rxdblcTipoExit(Sender: TObject);
    procedure rabArtCatClick(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure cbFamigliaClick(Sender: TObject);
    procedure cbGruppoClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ibqOrdVenCalcFields(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure ibqOrdAcqCalcFields(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ibqOrdVenWCalcFields(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ibqSitDDTExtCalcFields(DataSet: TDataSet);
    procedure Button10Click(Sender: TObject);
    procedure ibqSitDDTCalcFields(DataSet: TDataSet);
    procedure Button9Click(Sender: TObject);
    procedure ibqSitDDTClCalcFields(DataSet: TDataSet);
    procedure Button11Click(Sender: TObject);
    procedure ibqSitDDTCl_1CalcFields(DataSet: TDataSet);
    procedure ibqSitDDTCl_2CalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure frReport1DataSetWork(BandName: String; DataSet: TDataSet;
      var RecordCount: Integer; Operation: TfrDataSetOperation);
    procedure StampeSALDO1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure frReport2DataSetWork(BandName: String; DataSet: TDataSet;
      var RecordCount: Integer; Operation: TfrDataSetOperation);
    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure StampeSaldo21Click(Sender: TObject);
    procedure LookAgCodCloseUp(Sender: TObject);
    procedure LookAgCodExit(Sender: TObject);
    procedure LookAgDescrCloseUp(Sender: TObject);
    procedure LookAgDescrExit(Sender: TObject);
    procedure rabAgScegliClick(Sender: TObject);
   Private
    boolArtTutti,boolArtCategoria: Boolean;
    boolTipo,boolFamiglia,boolGruppo,boolMarca: Boolean;
    strDaArt, strAdArt: String;
    strMarca, strFamiglia , strGruppo, strTipo: String;

    boolCauTutti: Boolean;
    strCauMagCod: String;
    sal:Double;
    strDataDa,strDataA,arti: String;

    boolDepTutti: Boolean;
    strDepCod,Ord : String;

    boolCliForTutti: Boolean;
    intCliForCod: Integer;
    intTipo: Integer;
    strReportFileName: String;
    strAgCod: String;
    Procedure Get_Param;
    Procedure Get_Param2;
    Procedure Get_Param3;
    Procedure Get_Param4;
    Procedure Scarico_Dist;
   Public
  End;

Var
  fPrnBroglMag: TfPrnBroglMag;

implementation

uses uAzDM, uPrnForm, uSitMag, uGestListCrop;

{$R *.DFM}

procedure TfPrnBroglMag.bbEsciClick(Sender: TObject);
begin
 Close;
End;

Procedure TfPrnBroglMag.FormCreate(Sender: TObject);
Begin
 // set all to default
 boolCauTutti := True;
 strCauMagCod:='';

 strDataDa := '01/01/1980';
 strDataA  := DateToStr(Date);
 meDataA.Text:=DateToStr(Date);

 boolDepTutti := True;
 strDepCod := '';

 boolArtTutti := True;

 boolCliForTutti:=True;
 intCliForCod:=-1;
 intTipo:=0;


 // close and open all dataset
 dsoCli.dataset.Close;
 dsoAgente.DataSet.Close;
 dsArticoli.DataSet.Close;
 dsoForn.Dataset.Close;
 dsoCauMag.DataSet.cLOSE;
 dsoDep.DataSet.Close;
 dsoCLIFORN.dataset.Close;
 dsoCli.dataset.Open;
 dsoAgente.DataSet.Open;
 dsoForn.Dataset.Open;
 dsoCauMag.DataSet.Open;
 dsoDep.DataSet.Open;
 dsoCLIFORN.dataset.Open;
 dsArticoli.DataSet.Open;
 dsArticoli2.DataSet.Open;
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;

 strReportFileName:='frDocMovAn.frf';

End;

procedure TfPrnBroglMag.gbDataExit(Sender: TObject);
begin
  Try
    strDataDa:=meDataDa.Text;
    strDataA:=meDataA.Text;
  Except
    strDataDa:='01/01/1977';
    strDataA:=DateToStr(Date);
  End;
end;


procedure TfPrnBroglMag.bbStampaClick(Sender: TObject);
var
Scelta : String;
begin
Ord := 'COD';
 // Stampa!
scelta:=InputBox('Scegliere la Stampa :','1)Analitica - 2)Sintetica - 3)Scalare 1- 4)Scalare 2','1');

if scelta='1' then
begin
 Get_Param;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+strReportFileName);
     ShowReport;
End;
end;
if scelta='2' then
begin
 Get_Param;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocMovAn2.frf');
     ShowReport;
End;
end;
if scelta='3' then
begin
 Get_Param3;
 Get_Param4;
   With (frReport1) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocMovAn3.frf');
     ShowReport;
End;
end;
if scelta='4' then
begin
 Get_Param3;
   With (frReport1) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocMovAn4.frf');
     ShowReport;
End;
end;

end;

procedure TfPrnBroglMag.Get_Param;
begin
 // Collect All params and build query
if ((Edit1.Text <>'') and (RadioButton1.Checked)) then Button7.Click;


 With (dmodAz.r_qBrogliaccio) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.*, TAB_DOCUMENTI.*,tab_causali_magazzino.mov_non_valido as TIPOMOV,tab_causali_magazzino.descr_causale as causale_descr,TAB_CONTABILE_ARTICOLO.giacenza_attuale,TAB_CONTABILE_ARTICOLO.ULT_COSTO_ACQ,tab_cli_for.denominazione as CliFornDescr');
   SQL.Add(',distinte.COSTO as COSTOD,tab_depositi.descr as deposito3 ');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add(' JOIN TAB_causali_magazzino ON');
   SQL.Add('(TAB_DOCUMENTI.causale_magazzino=TAB_causali_magazzino.codice_causale)');
   SQL.Add(' JOIN TAB_cli_for ON');
   SQL.Add('(TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for)');
   SQL.Add(' join tab_depositi on');
   SQL.Add('(TAB_Det_doc.dep=tab_depositi.codice)');
  SQL.Add('LEFT JOIN TAB_CONTABILE_ARTICOLO ON ((TAB_CONTABILE_ARTICOLO.codice_articolo = TAB_DET_DOC.codice_Articolo) and');
  SQL.Add('(TAB_CONTABILE_ARTICOLO.DEPOSITO_ID = TAB_DET_DOC.dep))');
  SQL.Add('left join distinte on Tab_det_doc.codice_articolo=distinte.codice_articolo');
  SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');
   If (Not(boolArtTutti))and(Not(boolArtCategoria))
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=rxdblcDaArtCodice.Text;
            ParamByName('parCodArtAd').AsString:=rxdblcAdArtCodice.Text;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.KeyValue);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.KeyValue);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.KeyValue);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.KeyValue);
            SQL.Add('))');
           End;
   // Causale Magazzino
//   If Not (boolCauTutti)
//      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');
   If (rabCauSc.Checked)
      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');

if rabAgScegli.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID LIKE :parAgente');
   ParamByName('parAgente').AsString:=LookAgCod.Text;
end;

   // Depisito
   if RadioButton1.Checked then
        SQL.Add(Edit1.Text);
   If Not (boolDepTutti)
      Then SQL.Add('AND TAB_DET_DOC.DEP LIKE :parDep');
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR = :parTipoCliFor');
            3..4: SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID');
         End;
   If Ord = 'COD' then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo asc,TAB_DOCUMENTI.DATA_DOC asc,TAB_DOCUMENTI.tipo_clifor desc,TAB_DOCUMENTI.num_doc asc,TAB_DET_DOC.NUM_RIGA_ID asc');
   If Ord = 'DES' then
 SQL.Add('ORDER BY TAB_DET_DOC.descr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'CF' then
 SQL.Add('ORDER BY CliFornDescr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'DATA_DOC' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');
   If Ord = 'DOCUMENTO' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DOCUMENTI.CLIFOR_ID,TAB_DOCUMENTI.CAUSALE_MAGAZZINO,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'DESCRIZ' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DOCUMENTI.CLIFOR_ID,TAB_DOCUMENTI.CAUSALE_MAGAZZINO,TAB_DET_DOC.descr');

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);
   // Causale Magazzino
   If (rabCauSc.Checked)
   Then ParamByName('parCauMag').AsString:=LookCauCod.KeyValue;
//      Then ParamByName('parCauMag').AsString:=strCauMagCod;
   // Depisito
   If Not (boolDepTutti)
      Then ParamByName('parDep').AsString:=LookDepCod.KeyValue;
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
         End;

  Open;
 End;

end;

procedure TfPrnBroglMag.Get_Param3;
begin
 // Collect All params and build query
if ((Edit1.Text <>'') and (RadioButton1.Checked)) then Button7.Click;


 With (dmodAz.r_qBrogliaccio) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.*, TAB_DOCUMENTI.*,tab_causali_magazzino.mov_non_valido as TIPOMOV,tab_causali_magazzino.descr_causale as causale_descr,TAB_CONTABILE_ARTICOLO.giacenza_attuale,TAB_CONTABILE_ARTICOLO.ULT_COSTO_ACQ ');
   SQL.ADD(',tab_cli_for.denominazione as CliFornDescr,distinte.COSTO as COSTOD,tab_depositi.descr as deposito3');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add(' JOIN TAB_causali_magazzino ON');
   SQL.Add('(TAB_DOCUMENTI.causale_magazzino=TAB_causali_magazzino.codice_causale)');
   SQL.Add(' JOIN TAB_cli_for ON');
   SQL.Add('(TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for)');

   SQL.Add(' join tab_depositi on');
   SQL.Add('(TAB_Det_doc.dep=tab_depositi.codice)');

  SQL.Add('left join distinte on Tab_det_doc.codice_articolo=distinte.codice_articolo');
  SQL.Add('LEFT JOIN TAB_CONTABILE_ARTICOLO ON ((TAB_CONTABILE_ARTICOLO.codice_articolo = TAB_DET_DOC.codice_Articolo) and');
  SQL.Add('(TAB_CONTABILE_ARTICOLO.DEPOSITO_ID = TAB_DET_DOC.dep))');
  SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');
  SQL.Add('AND (codice_articolo in');
  SQL.Add('(select codice_articolo from tab_articoli');
  SQL.Add('Where (codice_articolo is not null and flag_accessorie=''N'')))');
   If (Not(boolArtTutti))and(Not(boolArtCategoria))
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=rxdblcDaArtCodice.Text;
            ParamByName('parCodArtAd').AsString:=rxdblcAdArtCodice.Text;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin

            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.KeyValue);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.KeyValue);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.KeyValue);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.KeyValue);
            SQL.Add('))');
           End;
   // Causale Magazzino
//   If Not (boolCauTutti)
//      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');
   If (rabCauSc.Checked)
      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');

if rabAgScegli.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID LIKE :parAgente');
   ParamByName('parAgente').AsString:=LookAgCod.Text;
end;

   // Depisito
   if RadioButton1.Checked then
        SQL.Add(Edit1.Text);
   If Not (boolDepTutti)
      Then SQL.Add('AND TAB_DET_DOC.DEP LIKE :parDep');
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR = :parTipoCliFor');
            3..4: SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID');
         End;
   If Ord = 'COD' then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo asc,TAB_DOCUMENTI.DATA_DOC asc,TAB_DOCUMENTI.tipo_clifor desc,TAB_DOCUMENTI.num_doc asc,TAB_DET_DOC.NUM_RIGA_ID asc');
   If Ord = 'DES' then
 SQL.Add('ORDER BY TAB_DET_DOC.descr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'CF' then
 SQL.Add('ORDER BY CliFornDescr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'DATA_DOC' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');
   If Ord = 'DOCUMENTO' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DOCUMENTI.CLIFOR_ID,TAB_DOCUMENTI.CAUSALE_MAGAZZINO,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'DESCRIZ' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DOCUMENTI.CLIFOR_ID,TAB_DOCUMENTI.CAUSALE_MAGAZZINO,TAB_DET_DOC.descr');

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);
   // Causale Magazzino
   If (rabCauSc.Checked)
   Then ParamByName('parCauMag').AsString:=LookCauCod.KeyValue;
//      Then ParamByName('parCauMag').AsString:=strCauMagCod;
   // Depisito
   If Not (boolDepTutti)
      Then ParamByName('parDep').AsString:=LookDepCod.KeyValue;
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
         End;

  Open;
 End;

end;

procedure TfPrnBroglMag.Get_Param4;
begin
 // Collect All params and build query
if ((Edit1.Text <>'') and (RadioButton1.Checked)) then Button7.Click;


 With (dmodAz.r_qBrogliaccio) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.*, TAB_DOCUMENTI.*,tab_causali_magazzino.mov_non_valido as TIPOMOV,tab_causali_magazzino.descr_causale as causale_descr,TAB_CONTABILE_ARTICOLO.giacenza_attuale,TAB_CONTABILE_ARTICOLO.ULT_COSTO_ACQ ');
   SQL.ADD(',tab_cli_for.denominazione as CliFornDescr,distinte.COSTO as COSTOD,tab_depositi.descr as deposito3');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add(' JOIN TAB_causali_magazzino ON');
   SQL.Add('(TAB_DOCUMENTI.causale_magazzino=TAB_causali_magazzino.codice_causale)');
   SQL.Add(' JOIN TAB_cli_for ON');
   SQL.Add('(TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for)');

   SQL.Add(' join tab_depositi on');
   SQL.Add('(TAB_Det_doc.dep=tab_depositi.codice)');

  SQL.Add('left join distinte on Tab_det_doc.codice_articolo=distinte.codice_articolo');
  SQL.Add('LEFT JOIN TAB_CONTABILE_ARTICOLO ON ((TAB_CONTABILE_ARTICOLO.codice_articolo = TAB_DET_DOC.codice_Articolo) and');
  SQL.Add('(TAB_CONTABILE_ARTICOLO.DEPOSITO_ID = TAB_DET_DOC.dep))');
  SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= parDataDa AND TAB_DOCUMENTI.DATA_DOC <:parDataA');
  SQL.Add('AND (codice_articolo in');
  SQL.Add('(select codice_articolo from tab_articoli');
  SQL.Add('Where (codice_articolo is not null and flag_accessorie=''N'')))');
   If (Not(boolArtTutti))and(Not(boolArtCategoria))
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=rxdblcDaArtCodice.Text;
            ParamByName('parCodArtAd').AsString:=rxdblcAdArtCodice.Text;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin

            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.KeyValue);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.KeyValue);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.KeyValue);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.KeyValue);
            SQL.Add('))');
           End;
   // Causale Magazzino
//   If Not (boolCauTutti)
//      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');
   If (rabCauSc.Checked)
      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');

if rabAgScegli.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID LIKE :parAgente');
   ParamByName('parAgente').AsString:=LookAgCod.Text;
end;

   // Depisito
   if RadioButton1.Checked then
        SQL.Add(Edit1.Text);
   If Not (boolDepTutti)
      Then SQL.Add('AND TAB_DET_DOC.DEP LIKE :parDep');
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR = :parTipoCliFor');
            3..4: SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID');
         End;
   If Ord = 'COD' then
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo asc,TAB_DOCUMENTI.DATA_DOC asc,TAB_DOCUMENTI.tipo_clifor desc,TAB_DOCUMENTI.num_doc asc,TAB_DET_DOC.NUM_RIGA_ID asc');
   If Ord = 'DES' then
 SQL.Add('ORDER BY TAB_DET_DOC.descr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'CF' then
 SQL.Add('ORDER BY CliFornDescr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'DATA_DOC' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DET_DOC.codice_articolo');
   If Ord = 'DOCUMENTO' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DOCUMENTI.CLIFOR_ID,TAB_DOCUMENTI.CAUSALE_MAGAZZINO,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'DESCRIZ' then
 SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DOCUMENTI.CLIFOR_ID,TAB_DOCUMENTI.CAUSALE_MAGAZZINO,TAB_DET_DOC.descr');

   ParamByName('parDataDa').AsDate:=strToDate('01/01/1980');
   ParamByName('parDataA').AsDate:=strToDate(strDataA);
   // Causale Magazzino
   If (rabCauSc.Checked)
   Then ParamByName('parCauMag').AsString:=LookCauCod.KeyValue;
//      Then ParamByName('parCauMag').AsString:=strCauMagCod;
   // Depisito
   If Not (boolDepTutti)
      Then ParamByName('parDep').AsString:=LookDepCod.KeyValue;
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
         End;

  Open;
 End;

end;

procedure TfPrnBroglMag.FormDestroy(Sender: TObject);
begin
dsoCli.dataset.Close;
dsoForn.Dataset.Close;
dsoCauMag.DataSet.cLOSE;
dsoDep.DataSet.Close;
dsoCLIFORN.dataset.Close;
dmodAz.ibTab_Cau_Mag.Open;

dmodAz.ibTab_Articoli.Close;
dmodAz.ibTab_Articoli.SelectSQL.Clear;
dmodAz.ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
dmodAz.ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE like ''N''');
dmodAz.ibTab_Articoli.SelectSQL.Add('order by codice_articolo');
end;

procedure TfPrnBroglMag.rabCauTuttiClick(Sender: TObject);
begin
 strCauMagCod:='%';
 boolCauTutti:=rabCauTutti.Checked;
 LookCauCod.Enabled:=Not(rabCauTutti.Checked);
 LookCauDescr.Enabled:=Not(rabCauTutti.Checked);
end;

procedure TfPrnBroglMag.rabDepTuttiClick(Sender: TObject);
begin
 boolDepTutti:=rabDepTutti.Checked;
 LookDepCod.Enabled:=Not(rabDepTutti.Checked);
 LookDepDescr.Enabled:=Not(rabDepTutti.Checked);
end;

procedure TfPrnBroglMag.gbCausaleExit(Sender: TObject);
begin
 //
 Try
  strCauMagCod:='%';
  If Not(boolCauTutti)
   Then If Not(LookCauCod.KeyValue='')
         Then strCauMagCod:=LookCauCod.KeyValue

 Except
   strCauMagCod:='%';
 End;
end;

procedure TfPrnBroglMag.rabTipoCliFornTuttiClick(Sender: TObject);
begin
 boolCliForTutti:=rabTipoCliFornTutti.Checked;
 LookCliCod.Enabled:=rabTipoCliSc.Checked;
 LookCliDescr.Enabled:=rabTipoCliSc.Checked;
 LookFornCod.Enabled:=rabTipoFornSc.Checked;
 LookFornDescr.Enabled:=rabTipoFornSc.Checked;

 If (rabTipoCliFornTutti.Checked)
   Then intTipo:=0;
 If (rabTipoCliTutti.Checked)
   Then intTipo:=1;
 If (rabTipoFornTutti.Checked)
   Then intTipo:=2;
 If (rabTipoCliSc.Checked)
   Then intTipo:=3;
 If (rabTipoFornSc.Checked)
   Then intTipo:=4;
End;

procedure TfPrnBroglMag.LookCauCodCloseUp(Sender: TObject);
begin
 Try
   LookCauDescr.KeyValue:=LookCauCod.KeyValue;
   strCauMagCod:=LookCauCod.KeyValue;
 Except
   strCauMagCod:='%';
 End;
end;

procedure TfPrnBroglMag.LookCauDescrCloseUp(Sender: TObject);
begin
 Try
   LookCauCod.KeyValue:=LookCauDescr.KeyValue;
   strCauMagCod:=LookCauCod.KeyValue;
 Except
   strCauMagCod:='%';
 End;
end;

procedure TfPrnBroglMag.LookCliCodCloseUp(Sender: TObject);
begin
 Try
  LookCliDescr.KeyValue:=LookCliCod.KeyValue;
  intCliForCod:=LookCliCod.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.LookCliDescrCloseUp(Sender: TObject);
begin
 Try
   LookCliCod.KeyValue:=LookCliDescr.KeyValue;
   intCliForCod:=LookCliDescr.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.LookFornCodCloseUp(Sender: TObject);
begin
 Try
    LookFornDescr.KeyValue:=LookFornCod.KeyValue;
    intCliForCod:=LookFornCod.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.LookFornDescrCloseUp(Sender: TObject);
begin
 Try
  LookFornCod.KeyValue:=LookFornDescr.KeyValue;
  intCliForCod:=LookFornDescr.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.LookDepDescrCloseUp(Sender: TObject);
begin
 Try
   LookDepCod.KeyValue:=LookDepDescr.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.LookDepCodCloseUp(Sender: TObject);
begin
 Try
   LookDepDescr.KeyValue:=LookDepCod.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.rabTSSinClick(Sender: TObject);
begin
 If (rabTSAn.Checked)
  Then strReportFileName:='frDocMovAn.frf'
  Else strReportFileName:='frDocMovSin.frf';
end;

procedure TfPrnBroglMag.gbDepositoExit(Sender: TObject);
begin
 //
 Try
  If Not(boolDepTutti)
   Then If Not(LookDepCod.KeyValue='')
         Then strDepCod:=LookDEpCod.KeyValue;
 Except
   strDepCod:='%';
 End;
end;

procedure TfPrnBroglMag.gbTipoCliForExit(Sender: TObject);
begin
 //
 Try
  If Not(boolCauTutti)
   Then Case (intTipo) Of
          3:    If Not(LookCliCod.KeyValue='')
                  Then intCliForCod:=LookCliCod.KeyValue;
          4:    If Not(LookFornCod.KeyValue='')
                  Then intCliForCod:=LookFornCod.KeyValue;
        End;
 Except
   strCauMagCod:='';
 End;
end;

procedure TfPrnBroglMag.rabArtDaAClick(Sender: TObject);
begin
 boolArtCategoria:=False;
 boolArtTutti:=False;
 rxdblcDaArtCodice.Enabled:=rabArtDaA.Checked;
 rxdblcAdArtCodice.Enabled:=rabArtDaA.Checked;
 rxdblcDaArt.Enabled:=rabArtDaA.Checked;
 rxdblcAdArt.Enabled:=rabArtDaA.Checked;
end;

procedure TfPrnBroglMag.rabArtTuttiClick(Sender: TObject);
begin
 boolArtCategoria:=False;
 boolArtTutti:=True;

 rxdblcDaArt.Enabled:=rabArtDaA.Checked;
 rxdblcAdArt.Enabled:=rabArtDaA.Checked;
 rxdblcDaArtCodice.Enabled:=rabArtDaA.Checked;
 rxdblcAdArtCodice.Enabled:=rabArtDaA.Checked;
 strDaArt:='%';
 strAdArt:='%';
 rxdblcMarca.Enabled:=rabArtCat.Checked;
 rxdblcFamiglia.Enabled:=rabArtCat.Checked;
 rxdblcGruppo.Enabled:=rabArtCat.Checked;
 rxdblcTipo.Enabled:=rabArtCat.Checked;
 strMarca:='-1';
 strFamiglia:='-1';
 strGruppo:='-1';
 strTipo:='-1';
end;

procedure TfPrnBroglMag.rxdblcDaArtExit(Sender: TObject);
begin
strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfPrnBroglMag.rxdblcAdArtExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfPrnBroglMag.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfPrnBroglMag.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfPrnBroglMag.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfPrnBroglMag.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfPrnBroglMag.rxdblcMarcaExit(Sender: TObject);
begin
 strMarca:=rxdblcMarca.KeyValue;
end;

procedure TfPrnBroglMag.rxdblcGruppoExit(Sender: TObject);
begin
 strGruppo:=rxdblcGruppo.KeyValue;
end;

procedure TfPrnBroglMag.rxdblcFamigliaExit(Sender: TObject);
begin
 strFamiglia:=rxdblcFamiglia.KeyValue;
end;

procedure TfPrnBroglMag.rxdblcTipoExit(Sender: TObject);
begin
 strTipo:=rxdblcTipo.KeyValue;
end;

procedure TfPrnBroglMag.rabArtCatClick(Sender: TObject);
begin
 boolArtCategoria:=True;
 boolArtTutti := False;
 rxdblcMarca.Enabled:=rabArtCat.Checked;
 rxdblcFamiglia.Enabled:=rabArtCat.Checked;
 rxdblcGruppo.Enabled:=rabArtCat.Checked;
 rxdblcTipo.Enabled:=rabArtCat.Checked;
 strMarca:='-1';
 strFamiglia:='-1';
 strGruppo:='-1';
 strTipo:='-1';
end;

procedure TfPrnBroglMag.cbMarcaClick(Sender: TObject);
begin
 boolMarca:=cbMarca.Checked;
end;

procedure TfPrnBroglMag.cbFamigliaClick(Sender: TObject);
begin
 boolFamiglia:=cbFamiglia.Checked;
end;

procedure TfPrnBroglMag.cbGruppoClick(Sender: TObject);
begin
 boolGruppo:=cbGruppo.Checked;
end;

procedure TfPrnBroglMag.cbTipoClick(Sender: TObject);
begin
 boolTipo:=cbTipo.Checked;
end;

procedure TfPrnBroglMag.Button1Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
 with IBQuery1 do
 begin
   SQL.Add('SELECT distinct ');
   SQL.Add('TAB_DET_DOC.DEP,TAB_DOCUMENTI.causale_magazzino,');
   SQL.Add('sum(TAB_DET_DOC.IMPORTO_SCONTO) as somma1, sum(TAB_DET_DOC.IMPORTO_CON_IVA) as somma2');
   SQL.ADD('FROM TAB_DET_DOC JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

            // Codice articolo
  ParamByName('parDataDa').AsDateTime :=strToDate(strDataDa);
  ParamByName('parDataA').AsDateTime:=strToDate(strDataA);


   // Depisito
   If Not (boolDepTutti)
      Then SQL.Add('AND TAB_DET_DOC.DEP LIKE :parDep');
   // Tipo Cli/Forn and Cli/Forn
SQL.Add('group by TAB_DET_DOC.DEP,TAB_DOCUMENTI.causale_magazzino');
SQL.Add('ORDER BY TAB_DET_DOC.DEP,TAB_DOCUMENTI.causale_magazzino');

   // Depisito
   If Not (boolDepTutti)
      Then ParamByName('parDep').AsString:=strDepCod;
   // Tipo Cli/Forn and Cli/Forn
end;
   IBQuery1.Open;
    dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'RiepDep2.frf');
    dmodAz.rePRN.ShowReport;

end;

procedure TfPrnBroglMag.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfPrnBroglMag.Button2Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k, m1,m2,m3 : Integer;
A, b, c, x,S1,S2,S3, P2,P3,P4,P5,Scelta, Scelta2 : String;
UserFTP,PassFTP,HostFTP,DirFTP, PortFTP:string;
g, h, l, m : real;
begin

scelta:=InputBox('Scegliere la Stampa :','1) Stampa - 2) Crea File Giacenze','1');
/// fSitMag:=TfSitMag.Create(Self);
/// fSitMag.ShowModal;
/// fSitMag.Free;
 With (IBSQL1) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('update tab_contabile_articolo set');
   SQL.Add('med_prezzo_vend = 0 where med_prezzo_vend is null');
   ExecQuery;
   close;
  end;
 With (IBSQL1) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('update tab_contabile_articolo set');
   SQL.Add('medio_costo_Acq = 0 where medio_costo_Acq is null');
   ExecQuery;
   Close;
  end;

 With (dmodAz.ibqContabile_Articolo) Do
 Begin
  Close;
   SQL.Clear;
SQL.Add('Select a.CODICE_ARTICOLO, a.DEPOSITO_ID, a.CLI_FOR_ID,');
SQL.Add('a.TIPO_CLI_FOR_ID, a.DESCR, a.QTA_ACQUISTI, a.VAL_ACQUISTI,');
SQL.Add('a.DATA_ULTIMO_ACQUISTO, a.QTA_VENDITA, a.VAL_VENDITA, a.DATA_ULTIMA_VENDITA,');
SQL.Add('a.QTA_ALTRE_ENTRATE, a.VAL_ALTRE_ENTRATE, a.QTA_ALTRE_USCITE,');
SQL.Add('a.VAL_ALTRE_USCITA, a.QTA_RESO_CLIENTE, a.VAL_RESO_CLIENTE, a.QTA_RESO_FORNITORE,');
SQL.Add('a.VAL_RESO_FORNITORE, a.QTA_ORDINATO, a.VAL_ORDINATO, a.QTA_IMPEGNATO,');
SQL.Add('a.VAL_QTA_IMPEGNATO, a.QTA_EVASA_CLIENTE, a.VAL_EVASO_CLIENTE, a.QTA_EVASA_FORNITORE,');
SQL.Add('a.VAL_EVASO_FORNITORE, a.QTA_GIACENZA_INIZIALE, a.COSTO_GIACENZA_INIZIALE,');
SQL.Add('a.VAL_GIACENZA_INIZIALE, a.GIACENZA_ATTUALE, a.DISPONIBILITA,');
SQL.Add('a.COSTO_ULTIMO, a.MED_PREZZO_VEND, a.ULT_COSTO_ACQ, a.MEDIO_COSTO_ACQ, a.ULT_PREZZO_VEND,a.MEDIA_SPESE,');
SQL.Add('B.descr as ArtDescr,b.SCORTA_MIN,E.costo,(((a.MED_PREZZO_VEND)-(a.MEDIO_COSTO_ACQ))*(a.QTA_VENDITA)) as GUAD,C.descr as Deposito');
SQL.Add('FROM tab_contabile_articolo A join tab_articoli B');
SQL.Add('on A.codice_articolo=B.codice_articolo');
SQL.Add('join tab_depositi C on A.DEPOSITO_ID=C.codice');
SQL.Add('left join distinte E on A.codice_articolo=E.codice_articolo');
SQL.Add('where b.Flag_Accessorie =''N''');

If (Not(boolArtTutti))and(Not(boolArtCategoria))
 Then Begin
            SQL.Add('AND (A.codice_articolo >=:parCodArtDa');
            SQL.Add('AND A.codice_articolo <=:parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin
            SQL.Add('AND (A.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+strMarca);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+strTipo);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+strGruppo);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+strFamiglia);
            SQL.Add('))');
           End;
If Not (boolDepTutti)
Then
begin
SQL.Add('AND a.DEPOSITO_ID LIKE :parDep');
ParamByName('parDep').AsString:=strDepCod;
end;

if RadioGroup3.ItemIndex = 1 then
SQL.Add('AND a.GIACENZA_ATTUALE>0');
if RadioGroup3.ItemIndex = 2 then
SQL.Add('AND a.GIACENZA_ATTUALE<=0');
if RadioGroup3.ItemIndex = 3 then
SQL.Add('AND a.GIACENZA_ATTUALE<=b.SCORTA_MIN');
if RadioGroup3.ItemIndex = 4 then
SQL.Add('AND a.GIACENZA_ATTUALE<0');

if RadioGroup2.ItemIndex = 0 then
SQL.Add('Order By C.Codice,a.Codice_articolo');
if RadioGroup2.ItemIndex = 1 then
SQL.Add('Order By C.Codice,b.descr');
if RadioGroup2.ItemIndex = 2 then
SQL.Add('Order By C.Codice,a.QTA_VENDITA descending');
if RadioGroup2.ItemIndex = 3 then
SQL.Add('Order By C.Codice,a.VAL_VENDITA descending');
if RadioGroup2.ItemIndex = 4 then
SQL.Add('Order By C.Codice,a.GIACENZA_ATTUALE descending');
if RadioGroup2.ItemIndex = 5 then
SQL.Add('Order By C.Codice,40 descending');

Open;
end;

if scelta='1' then
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazMag.frf');
     ShowReport;
 End;
end;

if scelta='2' then
begin
scelta2:=InputBox('Esportare :','1) Costo Medio - 2) Ult.Costo','1');

if Savedialog1.execute then
if FileExists(SaveDialog1.FileName) then
If (MessageDlg('File ESISTENTE.. Riscriverlo?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;
x:=Savedialog1.FileName;


  AssignFile(F, x);
  Rewrite(F);
  dmodAz.ibqContabile_Articolo.First;
  while not (dmodAz.ibqContabile_Articolo.Eof) do
  begin

 if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := dmodAz.ibqContabile_Articolo.Fieldbyname('CODICE_ARTICOLO').asstring;
  S1:='                    ';
  m1:=Length(b);
  if m1>=13 then
  b:=leftstr(b,13)
  else
  begin
  m1:=13-m1;
  b:=b+leftstr(S1,m1);
  end;
if scelta2 = '2' then
begin
if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('ULT_COSTO_ACQ').AsFloat) then
  c := FormatFloat('0.00',dmodAz.ibqContabile_Articolo.Fieldbyname('ULT_COSTO_ACQ').AsFloat)
else
c := '0'
end
else
begin
if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('MEDIO_COSTO_ACQ').AsFloat) then
  c := FormatFloat('0.00',dmodAz.ibqContabile_Articolo.Fieldbyname('MEDIO_COSTO_ACQ').AsFloat)
else
c := '0'
end;
  S1:='                    ';
  m1:=Length(c);
  if m1>=7 then
  c:=leftstr(c,7)
  else
  begin
  m1:=7-m1;
  c:=c+leftstr(S1,m1);
  end;

 if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('GIACENZA_ATTUALE').AsFloat) then
  p4 :=  FormatFloat('0.00',dmodAz.ibqContabile_Articolo.Fieldbyname('GIACENZA_ATTUALE').AsFloat);
  S1:='                    ';
  m1:=Length(p4);
  if m1>=13 then
  p4:=leftstr(p4,13)
  else
  begin
  m1:=13-m1;
  p4:=p4+leftstr(S1,m1);
  end;

  
  Writeln(F, b + p4+c);
  dmodAz.ibqContabile_Articolo.Next;
  end;
  CloseFile(F);


end;
end;

procedure TfPrnBroglMag.BitBtn1Click(Sender: TObject);
var
Scelta : String;
begin
Ord:='DES';
 Get_Param;
scelta:=InputBox('Scegliere la Stampa :','1)Analitica - 2)Sintetica','1');
if scelta='1' then
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+strReportFileName);
     ShowReport;
End;
end;
if scelta='2' then
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocMovAn2.frf');
     ShowReport;
End;
end;

end;


procedure TfPrnBroglMag.Get_Param2;
begin
 // Collect All params and build query



 With (dmodAz.r_qBrogliaccio) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('TAB_DET_DOC.doc_id, TAB_DET_DOC.codice_articolo,tab_cli_for.denominazione as CliFornDescr,');
   SQL.Add('TAB_DET_DOC.descr, TAB_DET_DOC.UNITA_MISURA, TAB_DET_DOC.TOTSCAT,');
   SQL.Add('TAB_DET_DOC.quantita, TAB_DET_DOC.sconto1,tab_depositi.descr as deposito3');
   SQL.Add('TAB_DET_DOC.sconto2, TAB_DET_DOC.sconto_eq, TAB_DET_DOC.QTA_UM');
   SQL.Add('TAB_DET_DOC.costo,TAB_DET_DOC.IMPORTO_SCONTO, TAB_DET_DOC.IMPORTO_CON_IVA, TAB_DET_DOC.DEP,');
   SQL.Add('TAB_DOCUMENTI.ID_DOCUMENTO,TAB_DOCUMENTI.data_doc, TAB_DOCUMENTI.num_doc,');
   SQL.Add('TAB_DOCUMENTI.serie_doc,TAB_DOCUMENTI.tipo_clifor, TAB_DOCUMENTI.clifor_id,');
   SQL.Add('TAB_DOCUMENTI.causale_magazzino,TAB_DOCUMENTI.codice_boll');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add(' JOIN TAB_cli_for ON');
   SQL.Add('(TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for)');
   SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');
   If (Not(boolArtTutti))and(Not(boolArtCategoria))
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo = :parCodArtDa');
            SQL.Add('OR TAB_DET_DOC.codice_articolo = :parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+strMarca);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+strTipo);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+strGruppo);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+strFamiglia);
            SQL.Add('))');
           End;
   // Causale Magazzino
   If Not (boolCauTutti)
      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');

 if rabAgScegli.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID LIKE :parAgente');
   ParamByName('parAgente').AsString:=LookAgCod.Text;
end;

   // Depisito
   If Not (boolDepTutti)
      Then SQL.Add('AND TAB_DET_DOC.DEP LIKE :parDep');
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR = :parTipoCliFor');
            3..4: SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID');
         End;
   If (rabTSAn.Checked)
     Then SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC')
     Else SQL.Add('ORDER BY TAB_DET_DOC.DEP,TAB_DOCUMENTI.DATA_DOC');

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);
   // Causale Magazzino
   If Not (boolCauTutti)
      Then ParamByName('parCauMag').AsString:=strCauMagCod;
   // Depisito
   If Not (boolDepTutti)
      Then ParamByName('parDep').AsString:=strDepCod;
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
         End;

  Open;
 End;

end;

procedure TfPrnBroglMag.BitBtn2Click(Sender: TObject);
begin
Ord:='CF';
 With (IBQuery3) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT DISTINCT');
   SQL.Add('TAB_DET_DOC.codice_articolo,');
   SQL.Add('TAB_DET_DOC.descr, SUM(TAB_DET_DOC.QTA_UM) as SCAT,');
   SQL.Add('SUM(TAB_DET_DOC.quantita) as QTA, SUM(TAB_DET_DOC.sconto1),');
   SQL.Add('SUM(TAB_DET_DOC.sconto2),');
   SQL.Add('SUM(TAB_DET_DOC.costo),SUM(TAB_DET_DOC.IMPORTO_SCONTO), SUM(TAB_DET_DOC.IMPORTO_CON_IVA)');
   SQL.ADD('FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <=:parDataA');

   //  Open;

   If (Not(boolArtTutti))and(Not(boolArtCategoria))
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo >=:parCodArtDa');
            SQL.Add('AND TAB_DET_DOC.codice_articolo <=:parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin
            SQL.Add('AND (TAB_DET_DOC.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+strMarca);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+strTipo);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+strGruppo);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+strFamiglia);
            SQL.Add('))');
           End;
   // Causale Magazzino
   If Not (boolCauTutti)
      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');
   // Depisito
   If Not (boolDepTutti)
      Then SQL.Add('AND TAB_DET_DOC.DEP LIKE :parDep');
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR = :parTipoCliFor');
            3..4: SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID');
         End;
 SQL.Add('GROUP BY TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
 SQL.Add('ORDER BY TAB_DET_DOC.codice_articolo,TAB_DOCUMENTI.num_doc');

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);
   // Causale Magazzino
   If Not (boolCauTutti)
      Then ParamByName('parCauMag').AsString:=strCauMagCod;
   // Depisito
   If Not (boolDepTutti)
      Then ParamByName('parDep').AsString:=strDepCod;
   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
         End;

  Open;
 End;
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'fDocRiep.frf');
 dmodAz.rePRN.ShowReport;

end;

procedure TfPrnBroglMag.RadioGroup1Click(Sender: TObject);
begin
IBQuery4.Close;
IBQuery4.SQL.Clear;
IBQuery5.Close;
IBQuery5.SQL.Clear;

if RadioGroup1.ItemIndex = 0 then
begin
IBQuery4.sql.Add('select * from TAB_ARTICOLI');
IBQuery4.sql.Add('Order By CODICE_ARTICOLO');
IBQuery5.sql.Add('select * from TAB_ARTICOLI');
IBQuery5.sql.Add('Order By CODICE_ARTICOLO');
end;

if RadioGroup1.ItemIndex = 1 then
begin
IBQuery4.sql.Add('select * from TAB_ARTICOLI');
IBQuery4.sql.Add('Where FLAG_ACCESSORIE=''N''');
IBQuery4.sql.Add('Order By CODICE_ARTICOLO');
IBQuery5.sql.Add('select * from TAB_ARTICOLI');
IBQuery5.sql.Add('Where FLAG_ACCESSORIE=''N''');
IBQuery5.sql.Add('Order By DESCR');
end;

if RadioGroup1.ItemIndex = 2 then
begin
IBQuery4.sql.Add('select * from TAB_ARTICOLI');
IBQuery4.sql.Add('Where FLAG_ACCESSORIE=''S''');
IBQuery4.sql.Add('Order By CODICE_ARTICOLO');
IBQuery5.sql.Add('select * from TAB_ARTICOLI');
IBQuery5.sql.Add('Where FLAG_ACCESSORIE=''S''');
IBQuery5.sql.Add('Order By DESCR');
end;

IBQuery4.Open;
IBQuery5.Open;
end;

procedure TfPrnBroglMag.Button3Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k, m1,m2,m3 : Integer;
A, b, c, x,S1,S2,S3, P2,P3,P4,P5,Scelta, Scelta2 : String;
UserFTP,PassFTP,HostFTP,DirFTP, PortFTP:string;
g, h, l, m : real;
begin
scelta:=InputBox('Visualizza','1) Inventario - 2) Ricostruisci Inventario - 3) Crea File Giacenze','1');
if scelta='2' then
begin
 With (IBSQL1) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('update tab_contabile_articolo set');
   SQL.Add('QTA_ALTRE_USCITE = 0,');
   SQL.Add('VAL_ALTRE_USCITA = 0');
   ExecQuery;

   Close;
   SQL.Clear;
   SQL.Add('update tab_contabile_articolo set');
   SQL.Add('GIACENZA_ATTUALE = QTA_ACQUISTI+QTA_ALTRE_ENTRATE-QTA_VENDITA-QTA_ALTRE_USCITE-QTA_RESO_FORNITORE+QTA_RESO_CLIENTE+qta_GIACENZA_INIZIALE');
   ExecQuery;
  end;

 ibq1.Close;
 ibq1.Open;
 ibq1.First;
while not ibq1.Eof do
begin
Scarico_Dist;
ibq1.Next;
end;
  

end;

 With (IBSQL1) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('update tab_contabile_articolo set');
   SQL.Add('med_prezzo_vend = 0 where med_prezzo_vend is null');
   ExecQuery;
  end;
 With (IBSQL1) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('update tab_contabile_articolo set');
   SQL.Add('medio_costo_Acq = 0 where medio_costo_Acq is null');
   ExecQuery;
  end;

 With (dmodAz.ibqContabile_Articolo) Do
 Begin
  Close;
   SQL.Clear;
SQL.Add('Select a.CODICE_ARTICOLO, a.DEPOSITO_ID, a.CLI_FOR_ID,');
SQL.Add('a.TIPO_CLI_FOR_ID, a.DESCR, a.QTA_ACQUISTI, a.VAL_ACQUISTI,');
SQL.Add('a.DATA_ULTIMO_ACQUISTO, a.QTA_VENDITA, a.VAL_VENDITA, a.DATA_ULTIMA_VENDITA,');
SQL.Add('a.QTA_ALTRE_ENTRATE, a.VAL_ALTRE_ENTRATE, a.QTA_ALTRE_USCITE,');
SQL.Add('a.VAL_ALTRE_USCITA, a.QTA_RESO_CLIENTE, a.VAL_RESO_CLIENTE, a.QTA_RESO_FORNITORE,');
SQL.Add('a.VAL_RESO_FORNITORE, a.QTA_ORDINATO, a.VAL_ORDINATO, a.QTA_IMPEGNATO,');
SQL.Add('a.VAL_QTA_IMPEGNATO, a.QTA_EVASA_CLIENTE, a.VAL_EVASO_CLIENTE, a.QTA_EVASA_FORNITORE,');
SQL.Add('a.VAL_EVASO_FORNITORE, a.QTA_GIACENZA_INIZIALE, a.COSTO_GIACENZA_INIZIALE,');
SQL.Add('a.VAL_GIACENZA_INIZIALE, a.GIACENZA_ATTUALE, a.DISPONIBILITA,');
SQL.Add('a.COSTO_ULTIMO, a.MED_PREZZO_VEND, a.ULT_COSTO_ACQ, a.MEDIO_COSTO_ACQ, a.ULT_PREZZO_VEND,a.MEDIA_SPESE,');
SQL.Add('B.descr as ArtDescr,b.SCORTA_MIN,(((a.MED_PREZZO_VEND)-(a.MEDIO_COSTO_ACQ))*(a.QTA_VENDITA)) as GUAD,C.descr as Deposito');
SQL.Add('FROM tab_contabile_articolo A join tab_articoli B');
SQL.Add('on A.codice_articolo=B.codice_articolo');
SQL.Add('join tab_depositi C on A.DEPOSITO_ID=C.codice');
SQL.Add('where b.Flag_Accessorie =''S''');

If (Not(boolArtTutti))and(Not(boolArtCategoria))
 Then Begin
            SQL.Add('AND (A.codice_articolo >=:parCodArtDa');
            SQL.Add('AND A.codice_articolo <=:parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=strDaArt;
            ParamByName('parCodArtAd').AsString:=strAdArt;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin
            SQL.Add('AND (A.codice_articolo in');
            SQL.Add('(select codice_articolo from tab_articoli');
            SQL.Add('Where codice_articolo is not null');
            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+strMarca);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+strTipo);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+strGruppo);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+strFamiglia);
            SQL.Add('))');
           End;
If Not (boolDepTutti)
Then
begin
SQL.Add('AND a.DEPOSITO_ID LIKE :parDep');
ParamByName('parDep').AsString:=strDepCod;
end;

if RadioGroup3.ItemIndex = 1 then
SQL.Add('AND a.GIACENZA_ATTUALE>0');
if RadioGroup3.ItemIndex = 2 then
SQL.Add('AND a.GIACENZA_ATTUALE<=0');
if RadioGroup3.ItemIndex = 3 then
SQL.Add('AND a.GIACENZA_ATTUALE<=b.SCORTA_MIN');

if RadioGroup2.ItemIndex = 0 then
SQL.Add('Order By C.Codice,a.Codice_articolo');
if RadioGroup2.ItemIndex = 1 then
SQL.Add('Order By C.Codice,b.descr');
if RadioGroup2.ItemIndex = 2 then
SQL.Add('Order By C.Codice,a.QTA_VENDITA descending');
if RadioGroup2.ItemIndex = 3 then
SQL.Add('Order By C.Codice,a.VAL_VENDITA descending');
if RadioGroup2.ItemIndex = 4 then
SQL.Add('Order By C.Codice,a.GIACENZA_ATTUALE descending');
if RadioGroup2.ItemIndex = 5 then
SQL.Add('Order By C.Codice,40 descending');

end;
if scelta='1' then
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazMag2.frf');
     ShowReport;
 End;
end;
 if scelta='3' then
begin
scelta2:=InputBox('Esportare :','1) Costo Medio - 2) Ult.Costo','1');

if Savedialog1.execute then
if FileExists(SaveDialog1.FileName) then
If (MessageDlg('File ESISTENTE.. Riscriverlo?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;
x:=Savedialog1.FileName;


  AssignFile(F, x);
  Rewrite(F);
  dmodAz.ibqContabile_Articolo.First;
  while not (dmodAz.ibqContabile_Articolo.Eof) do
  begin

 if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := dmodAz.ibqContabile_Articolo.Fieldbyname('CODICE_ARTICOLO').asstring;
  S1:='                    ';
  m1:=Length(b);
  if m1>=13 then
  b:=leftstr(b,13)
  else
  begin
  m1:=13-m1;
  b:=b+leftstr(S1,m1);
  end;
if scelta2 = '2' then
begin
if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('ULT_COSTO_ACQ').AsFloat) then
  c := FormatFloat('0.00',dmodAz.ibqContabile_Articolo.Fieldbyname('ULT_COSTO_ACQ').AsFloat)
else
c := '0'
end
else
begin
if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('MEDIO_COSTO_ACQ').AsFloat) then
  c := FormatFloat('0.00',dmodAz.ibqContabile_Articolo.Fieldbyname('MEDIO_COSTO_ACQ').AsFloat)
else
c := '0'
end;
  S1:='                    ';
  m1:=Length(c);
  if m1>=7 then
  c:=leftstr(c,7)
  else
  begin
  m1:=7-m1;
  c:=c+leftstr(S1,m1);
  end;

 if not VarIsNull(dmodAz.ibqContabile_Articolo.Fieldbyname('GIACENZA_ATTUALE').AsFloat) then
  p4 :=  FormatFloat('0.00',dmodAz.ibqContabile_Articolo.Fieldbyname('GIACENZA_ATTUALE').AsFloat);
  S1:='                    ';
  m1:=Length(p4);
  if m1>=7 then
  p4:=leftstr(p4,7)
  else
  begin
  m1:=7-m1;
  p4:=p4+leftstr(S1,m1);
  end;


  Writeln(F, b + p4+c);
  dmodAz.ibqContabile_Articolo.Next;
  end;
  CloseFile(F);


end;

end;

procedure TfPrnBroglMag.Button4Click(Sender: TObject);
begin
ibqOrdVen.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazOrdVen.frf');
     ShowReport;
 End;

end;

procedure TfPrnBroglMag.ibqOrdVenCalcFields(DataSet: TDataSet);
begin
with ibqConsOrd do
begin
close;
ParamByName('codice_articolo').Value := ibqOrdVenCODICE_ARTICOLO.Value;
ParamByName('clifor_id').Value := ibqOrdVenCLIFOR_ID.Value;
Open;
end;
ibqOrdVenConsegnato.Value := ibqConsOrdF_1.Value;
end;

procedure TfPrnBroglMag.Button5Click(Sender: TObject);
begin
ibqOrdAcq.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazOrdAcq.frf');
     ShowReport;
 End;

end;

procedure TfPrnBroglMag.ibqOrdAcqCalcFields(DataSet: TDataSet);
begin
with ibqConsOrd2 do
begin
Close;
ParamByName('codice_articolo').Value := ibqOrdAcqCODICE_ARTICOLO.Value;
ParamByName('clifor_id').Value := ibqOrdAcqCLIFOR_ID.Value;
Open;
end;
ibqOrdAcqConsegnato.Value := ibqConsOrd2F_1.Value;

end;

procedure TfPrnBroglMag.BitBtn4Click(Sender: TObject);
var
Scelta : String;
begin
Ord := 'DATA_DOC';
 Get_Param;

 scelta:=InputBox('Scegliere la Stampa :','1)Analitica - 2)Sintetica','1');
if scelta='1' then
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+strReportFileName);
     ShowReport;
End;
end;
if scelta='2' then
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocMovAn2.frf');
     ShowReport;
End;
end;
end;

procedure TfPrnBroglMag.BitBtn3Click(Sender: TObject);
var
Scelta : String;
d1,d2 : string;
begin
scelta:=InputBox('Scegliere l''ordinamento della Stampa :','1)x Cod.Cli/For - 2)x Descr.Cli/For - 3)x Valore','1');

d1:=(FormatDateTime('mm/dd/yyyy',StrToDate(meDataDa.Text)));
d2:=(FormatDateTime('mm/dd/yyyy',StrToDate(meDataA.Text)));
//d1:=strtodate(meDataDa.Text);
//d2:=(strtodate(meDataA.Text);

With (IBDataSet1) Do
Begin
Close;
SelectSQL.Clear;
SelectSQL.Add('select clifor_id,tab_cli_for.denominazione,tipo_clifor,causale_magazzino,sum(totale) AS IMPON,sum(totale_iva) as IVA');
SelectSQL.Add('from tab_documenti');
SelectSQL.Add('left join tab_cli_for on tab_documenti.clifor_id =tab_cli_for.id_cli_for');
SelectSQL.Add('WHERE tab_documenti.data_doc >='''+d1+'''');
SelectSQL.Add('AND tab_documenti.data_doc<='''+d2+'''');

if rabCauSc.Checked then
SelectSQL.Add(' and causale_magazzino='''+LookCauCod.Text+'''');
if rabTipoCliTutti.Checked then
SelectSQL.Add('and tipo_clifor=1');
if rabTipoFornTutti.Checked then
SelectSQL.Add('and tipo_clifor=2');
if rabTipoCliSc.Checked then
SelectSQL.Add('and clifor_id='''+LookCliCod.Text+'''');
if rabTipoCliSc.Checked then
SelectSQL.Add('and rabTipoFornSc='''+LookFornCod.Text+'''');


SelectSQL.Add('group by clifor_id,tab_cli_for.denominazione,tipo_clifor,causale_magazzino');
if scelta = '1' then
SelectSQL.Add('order by clifor_id,causale_magazzino');
if scelta = '2' then
SelectSQL.Add('order by 2,causale_magazzino');
if scelta = '3' then
SelectSQL.Add('order by 5 DESC,causale_magazzino');
Open;
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frRiepDoc.frf');
     ShowReport;
 End;
end;

procedure TfPrnBroglMag.Button6Click(Sender: TObject);
begin
if edit1.Text='' then edit1.Text :=' and ((TAB_DOCUMENTI.CAUSALE_MAGAZZINO='''+LookCauCod.Text+''''+')'
else
edit1.Text := Edit1.Text+' OR (TAB_DOCUMENTI.CAUSALE_MAGAZZINO='''+LookCauCod.Text+''''+')';
end;

procedure TfPrnBroglMag.Button7Click(Sender: TObject);
begin
edit1.Text := Edit1.Text+')';
end;

procedure TfPrnBroglMag.BitBtn5Click(Sender: TObject);
var
Scelta : String;
begin
scelta:=InputBox('Scegliere l Ordinamento :','1)Righe Documento - 2)Descrizione','1');
if scelta='1' then
Ord := 'DOCUMENTO';
if scelta='2' then
Ord := 'DESCRIZ';

 Get_Param;

 // Stampa!
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDOCANALITICA.frf');
     ShowReport;
 End;
end;

procedure TfPrnBroglMag.Button8Click(Sender: TObject);
begin
ibqOrdVenW.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazOrdVenW.frf');
     ShowReport;
end;
end;

procedure TfPrnBroglMag.ibqOrdVenWCalcFields(DataSet: TDataSet);
begin
with ibqConsOrdW do
begin
close;
ParamByName('codice_articolo').Value := ibqOrdVenWCODICE_ARTICOLO.Value;
ParamByName('clifor_id').Value := ibqOrdVenWCLIFOR_ID.Value;
Open;
end;
ibqOrdVenWConsegnato.Value := ibqConsOrdWF_1.Value;
end;


Procedure TfPrnBroglMag.Scarico_Dist;
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
iNormal :=  1;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
   If (ibq1.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=ibq1.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibq1.Fieldbyname('DEP').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery6.close;
IBQuery6.ParamByName('a').AsString:= strCodArt;
IBQuery6.Open;
SCAT := IBQuery6.Fieldbyname('UN_MIS2_VAL').AsInteger;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;
           dmodAz.ibqCont_Art.Close;
           dmodAz.ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           dmodAz.ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           dmodAz.ibqCont_Art.Open;

         Try

          If (dmodAz.ibqCont_Art.IsEmpty)
               Then Begin
                       dmodAz.ibqCont_Art.Insert;
                       dmodAz.ibqCont_ArtCODICE_ARTICOLO.AsString:=a;
                       dmodAz.ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;
                    End
               Else dmodAz.ibqCont_Art.Edit;

          if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           dmodAz.ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := dmodAz.ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (ibq1.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          dmodAz.ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := dmodAz.ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    ibq1.FieldByName('QUANTITA').AsFloat *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end;

         dmodAz.ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := dmodAz.ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +dmodAz.ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  dmodAz.ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
        dmodAz.ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat -dmodAz.ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
        dmodAz.ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + dmodAz.ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

           dmodAz.ibqCont_Art.Post;

         Except
         End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
  dmodAz.ibqCont_Art.Close;
end;

procedure TfPrnBroglMag.BitBtn6Click(Sender: TObject);
begin
ibqsitart.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSitArtxCLIFOR.frf');
     ShowReport;
 End;

end;

procedure TfPrnBroglMag.BitBtn8Click(Sender: TObject);
var
Scelta: String;
begin
scelta:=InputBox('Scegliere :','1)x documento - 2)x Articolo - 3)x Fornitore','1');
if scelta = '1' then
begin

end;

end;

procedure TfPrnBroglMag.ibqSitDDTExtCalcFields(DataSet: TDataSet);
begin
with ibqSitDDTExt2 do
begin
close;
ParamByName('codice_articolo').Value := ibqSitDDTExtCODICE_ARTICOLO.Value;
ParamByName('clifor_id').Value := ibqSitDDTExtCLIFOR_ID.Value;
Open;
end;
ibqSitDDTExtConsegnato.Value := ibqSitDDTExt2F_1.Value;

end;

procedure TfPrnBroglMag.Button10Click(Sender: TObject);
begin
ibqSitDDTExt.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazDDTEXT.frf');
     ShowReport;
 End;

end;

procedure TfPrnBroglMag.ibqSitDDTCalcFields(DataSet: TDataSet);
begin
with ibqSitDDT2 do
begin
close;
ParamByName('codice_articolo').Value := ibqSitDDTCODICE_ARTICOLO.Value;
ParamByName('clifor_id').Value := ibqSitDDTCLIFOR_ID.Value;
Open;
end;
ibqSitDDTConsegnato.Value := ibqSitDDT2F_1.Value;
end;

procedure TfPrnBroglMag.Button9Click(Sender: TObject);
begin
ibqSitDDT.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazDDT.frf');
     ShowReport;
 End;
end;

procedure TfPrnBroglMag.ibqSitDDTClCalcFields(DataSet: TDataSet);
begin
with ibqSitDDTCl2 do
begin
close;
ParamByName('codice_articolo').Value := ibqSitDDTClCODICE_ARTICOLO.Value;
ParamByName('clifor_id').Value := ibqSitDDTClCLIFOR_ID.Value;
Open;
end;
ibqSitDDTClConsegnato.Value := ibqSitDDTCl2F_1.Value;
end;

procedure TfPrnBroglMag.Button11Click(Sender: TObject);
var
scelta: string;
begin
scelta:=InputBox('Scegliere la Stampa :','1)Analitica - 2)Cumulativa - 3)x Scheda','1');
if scelta='1' then
begin
ibqSitDDTCl.Close;
ibqSitDDTCl.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazDDTCl.frf');
     ShowReport;
 End;
 end;
if scelta='2' then
begin
ibqSitDDTCl_1.Close;
ibqSitDDTCl_1.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazDDTCl2.frf');
     ShowReport;
 End;
end;
if scelta='3' then
begin
ibqSitDDTCl_2.Close;
ibqSitDDTCl_2.SQL.Clear;
ibqSitDDTCl_2.SQL.Add('select tab_documenti.clifor_id,tab_Det_doc.dep,tab_det_doc.codice_articolo,');
ibqSitDDTCl_2.SQL.Add('tab_Det_doc.descr,tab_det_doc.scheda,sum(tab_det_doc.quantita) as F_1');
ibqSitDDTCl_2.SQL.Add('from tab_documenti join tab_det_doc on tab_documenti.id_documento = tab_det_doc.doc_id');
ibqSitDDTCl_2.SQL.Add('join tab_articoli on  tab_det_doc.codice_articolo =tab_articoli.codice_articolo');
ibqSitDDTCl_2.SQL.Add('where ((tab_documenti.tipo_doc=135)  or (tab_documenti.tipo_doc=136))');
ibqSitDDTCl_2.SQL.Add('and (tab_articoli.FLAG_ACCESSORIE=''N'')');
ibqSitDDTCl_2.SQL.Add('and (tab_documenti.data_doc>=:D1) and (tab_documenti.data_doc<=:D2)');
if rabTipoFornSc.Checked then
ibqSitDDTCl_2.SQL.Add('and (tab_documenti.clifor_id=:parCliFor_ID)');
if rabArtDaA.Checked then
ibqSitDDTCl_2.SQL.Add('and (tab_det_doc.codice_articolo>=:codice_Articolo1) and (tab_det_doc.codice_articolo<=:codice_Articolo2)');

ibqSitDDTCl_2.SQL.Add('group by tab_documenti.clifor_id,tab_Det_doc.dep,tab_det_doc.codice_articolo,tab_Det_doc.descr,tab_det_doc.scheda');
ibqSitDDTCl_2.SQL.Add('order by tab_Det_doc.dep,tab_det_doc.codice_articolo,tab_det_doc.scheda');


if rabArtDaA.Checked then
begin
ibqSitDDTCl_2.ParamByName('codice_articolo1').Value := rxdblcDaArtCodice.Text;
ibqSitDDTCl_2.ParamByName('codice_articolo2').Value := rxdblcAdArtCodice.Text;
end;

if rabTipoFornSc.Checked then
ibqSitDDTCl_2.ParamByName('parCliFor_ID').Value := LookFornCod.Text;

ibqSitDDTCl_2.ParamByName('D1').AsDate:=strToDate(strDataDa);
ibqSitDDTCl_2.ParamByName('D2').AsDate:=strToDate(strDataA);

ibqSitDDTCl_2.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazDDTCl3.frf');
     ShowReport;
 End;
end;

end;

procedure TfPrnBroglMag.ibqSitDDTCl_1CalcFields(DataSet: TDataSet);
begin

with ibqSitDDTCl2_1 do
begin
close;
ParamByName('codice_articolo').Value := ibqSitDDTCl_1CODICE_ARTICOLO.Value;
ParamByName('pardep').Value := ibqSitDDTCl_1DEP.Value;
Open;
end;
ibqSitDDTCl_1CONSEGNATO.Value := ibqSitDDTCl2_1F_1.Value;

end;

procedure TfPrnBroglMag.ibqSitDDTCl_2CalcFields(DataSet: TDataSet);
begin

with ibqSitDDTCl2_2 do
begin
close;
ParamByName('codice_articolo').Value := ibqSitDDTCl_2CODICE_ARTICOLO.Value;
ParamByName('PARSCHEDA').Value := ibqSitDDTCl_2SCHEDA.Value;
ParamByName('PARDEP').Value := ibqSitDDTCl_2DEP.Value;
ParamByName('parCliFor_ID').Value := ibqSitDDTCl_2CLIFOR_ID.Value;
Open;
end;
ibqSitDDTCl_2CONSEGNATO.Value := ibqSitDDTCl2_2F_1.Value;

end;

procedure TfPrnBroglMag.FormShow(Sender: TObject);
begin
dmodAz.calc_giac :=0;
end;

procedure TfPrnBroglMag.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
if ParName = 'SALDO' then
ParValue :=sal;
end;

procedure TfPrnBroglMag.frReport1DataSetWork(BandName: String;
  DataSet: TDataSet; var RecordCount: Integer;
  Operation: TfrDataSetOperation);
var
ff,ff2,ff3,ff4,ff5 : TValueSign;
// : integer;
begin
bandname := 'band3';
ff3 := 0;
Case Operation Of
OpInit : begin sal:=0;ff5:=0;end;
OpFirst : begin sal:=dmodAz.r_qBrogliaccioQUANTITA.AsFloat*dmodAz.r_qBrogliaccioTIPOMOV.AsFloat;arti :=dmodAz.r_qBrogliaccioCODICE_ARTICOLO.asstring;ff3 := dmodAz.r_qBrogliaccioTIPOMOV.AsInteger; end;
OpNext :begin
if dmodAz.r_qBrogliaccioCODICE_ARTICOLO.asstring = arti then
begin
ff := sign(dmodAz.r_qBrogliaccioQUANTITA.AsFloat*dmodAz.r_qBrogliaccioTIPOMOV.AsFloat);
ff2 := sign(sal);
if
(ff>0) and (ff2<0) then sal := 0;
{ff4 := sign(dmodAz.r_qBrogliaccioTIPOMOV.AsInteger);
if ((ff3=-1) and (ff4=1)) then
sal:=0;
if ((ff4>0) and (ff5<0)) then
sal:=0;}
sal := sal+(dmodAz.r_qBrogliaccioQUANTITA.AsFloat*dmodAz.r_qBrogliaccioTIPOMOV.AsFloat);
ff5 := sign(dmodAz.r_qBrogliaccioTIPOMOV.AsInteger);

end
else begin
sal:=0;
arti :=dmodAz.r_qBrogliaccioCODICE_ARTICOLO.asstring;
sal:=(dmodAz.r_qBrogliaccioQUANTITA.AsFloat*dmodAz.r_qBrogliaccioTIPOMOV.AsFloat);

//-(dmodAz.r_qBrogliaccioQUANTITA.AsFloat*dmodAz.r_qBrogliaccioTIPOMOV.AsFloat);
end;
end;
end;
end;

procedure TfPrnBroglMag.StampeSALDO1Click(Sender: TObject);
begin
frReport1.DesignReport;
end;

procedure TfPrnBroglMag.BitBtn9Click(Sender: TObject);
begin
ibqDaFatt.Active := True;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDaFatt.frf');
     ShowReport;
End;

end;

procedure TfPrnBroglMag.BitBtn10Click(Sender: TObject);
var
Scelta : String;
begin
Ord := 'COD';
scelta:=InputBox('Scegliere la Stampa :','1)Analitica - 2)Sintetica','1');
 With (ibqScar_dis) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT * from scar_distinte inner join tab_contabile_articolo');
   SQL.Add('on scar_distinte.codice_articolo= tab_contabile_articolo.codice_articolo');
//   SQL.Add('TAB_DET_DOC.*, TAB_DOCUMENTI.*,TAB_CONTABILE_ARTICOLO.giacenza_attuale ');
//   SQL.ADD('FROM TAB_DET_DOC');
//   SQL.Add('JOIN TAB_DOCUMENTI ON');
//   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
//  SQL.Add('LEFT JOIN TAB_CONTABILE_ARTICOLO ON ((TAB_CONTABILE_ARTICOLO.codice_articolo = TAB_DET_DOC.codice_Articolo) and');
//  SQL.Add('(TAB_CONTABILE_ARTICOLO.DEPOSITO_ID = TAB_DET_DOC.dep))');
  SQL.Add('WHERE (DATA>= :parDataDa AND DATA<=:parDataA)');
  SQL.Add('and tab_contabile_articolo.deposito_id=1 AND (codice_articolo in');
  SQL.Add('(select codice_articolo from tab_articoli');
  SQL.Add('Where (codice_articolo is not null and flag_accessorie=''S'')))');

   If (Not(boolArtTutti))and(Not(boolArtCategoria))
      Then Begin
            SQL.Add('AND (codice_articolo >=:parCodArtDa');
            SQL.Add('AND codice_articolo <=:parCodArtAd)');
            // Codice articolo
            ParamByName('parCodArtDa').AsString:=rxdblcDaArtCodice.Text;
            ParamByName('parCodArtAd').AsString:=rxdblcAdArtCodice.Text;
           End;
   If (Not(boolArtTutti))and(boolArtCategoria)
      Then Begin

            If (boolMarca)
             Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.KeyValue);
            If (boolTipo)
             Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.KeyValue);
            If (boolGruppo)
             Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.KeyValue);
            If (boolFamiglia)
             Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.KeyValue);
            SQL.Add('))');
           End;
   // Causale Magazzino
//   If Not (boolCauTutti)
//      Then SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');
   If (rabCauSc.Checked)
      Then SQL.Add('AND CAUSALE_DOCUMENTO LIKE :parCauMag');

   // Depisito
   if RadioButton1.Checked then
        SQL.Add(Edit1.Text);
//   If Not (boolDepTutti)
//      Then SQL.Add('AND TAB_DET_DOC.DEP LIKE :parDep');
   // Tipo Cli/Forn and Cli/Forn
//   If Not(boolCliForTutti)
//    Then Case (intTipo) Of
//            1..2: SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR = :parTipoCliFor');
//            3..4: SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID');
//         End;
   If Ord = 'COD' then
 SQL.Add('ORDER BY codice_articolo asc,DATA asc');
//   If Ord = 'DES' then
// SQL.Add('ORDER BY TAB_DET_DOC.descr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
//   If Ord = 'CF' then
// SQL.Add('ORDER BY CliFornDescr,TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DET_DOC.NUM_RIGA_ID');
   If Ord = 'DATA_DOC' then
 SQL.Add('ORDER BY DATA,codice_articolo');
   If Ord = 'DOCUMENTO' then
 SQL.Add('ORDER BY DATA,num_documento,CAUSALE_documento');
//   If Ord = 'DESCRIZ' then
// SQL.Add('ORDER BY TAB_DOCUMENTI.DATA_DOC,TAB_DOCUMENTI.num_doc,TAB_DOCUMENTI.CLIFOR_ID,TAB_DOCUMENTI.CAUSALE_MAGAZZINO,TAB_DET_DOC.descr');

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);
   // Causale Magazzino
   If (rabCauSc.Checked)
   Then ParamByName('parCauMag').AsString:=LookCauCod.KeyValue;
//      Then ParamByName('parCauMag').AsString:=strCauMagCod;
   // Depisito
   If Not (boolDepTutti)
      Then ParamByName('parDep').AsString:=LookDepCod.KeyValue;

//   If Not(boolCliForTutti)
//    Then Case (intTipo) Of
//            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
//            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
//         End;

  Open;
 End;

   With (frReport2) Do
   Begin
if scelta='1' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocMovAcc.frf')
else
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocMovAcc2.frf');
     ShowReport;
End;

end;

procedure TfPrnBroglMag.frReport2DataSetWork(BandName: String;
  DataSet: TDataSet; var RecordCount: Integer;
  Operation: TfrDataSetOperation);
var
ff,ff2,ff3,ff4,ff5 : TValueSign;
// : integer;
begin
bandname := 'band3';
ff3 := 0;
Case Operation Of
OpInit : begin sal:=0;ff5:=0;end;
OpFirst : begin sal:=ibqScar_disQTA.AsFloat;arti :=ibqScar_disCODICE_ARTICOLO.AsString;{ff3 := dmodAz.r_qBrogliaccioTIPOMOV.AsInteger;} end;
OpNext :begin
if ibqScar_disCODICE_ARTICOLO.AsString = arti then
begin
ff := sign(ibqScar_disQTA.AsFloat);
ff2 := sign(sal);
//if
//(ff>0) and (ff2<0) then sal := 0;

{ff4 := sign(dmodAz.r_qBrogliaccioTIPOMOV.AsInteger);
if ((ff3=-1) and (ff4=1)) then
sal:=0;
if ((ff4>0) and (ff5<0)) then
sal:=0;}
sal := sal+(ibqScar_disQTA.AsFloat);
ff5 := sign(ibqScar_disQTA.AsFloat);

end
else begin
sal:=0;
arti :=ibqScar_disCODICE_ARTICOLO.AsString;
sal:=(ibqScar_disQTA.AsFloat);

//-(dmodAz.r_qBrogliaccioQUANTITA.AsFloat*dmodAz.r_qBrogliaccioTIPOMOV.AsFloat);
end;
end;
end;
end;

procedure TfPrnBroglMag.frReport2GetValue(const ParName: String;
  var ParValue: Variant);
begin
if ParName = 'SALDO' then
ParValue :=sal;
end;

procedure TfPrnBroglMag.StampeSaldo21Click(Sender: TObject);
begin
frReport2.DesignReport;
end;

procedure TfPrnBroglMag.LookAgCodCloseUp(Sender: TObject);
begin
 Try
  strAgCod:=LookAgCod.Text;
  LookAgDescr.KeyValue:=LookAgCod.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.LookAgCodExit(Sender: TObject);
begin
 Try
  strAgCod:=LookAgCod.Text;
  LookAgDescr.KeyValue:=LookAgCod.KeyValue;
 Except
 End;
end;

procedure TfPrnBroglMag.LookAgDescrCloseUp(Sender: TObject);
begin
 Try
  LookAgCod.KeyValue:=LookAgDescr.KeyValue;
  strAgCod:=LookAgCod.Text;
 Except
 End;
end;

procedure TfPrnBroglMag.LookAgDescrExit(Sender: TObject);
begin
 Try
  LookAgCod.KeyValue:=LookAgDescr.KeyValue;
  strAgCod:=LookAgCod.Text;
 Except
 End;
end;

procedure TfPrnBroglMag.rabAgScegliClick(Sender: TObject);
begin
LookAgCod.Enabled := true;
LookAgDescr.Enabled := true;
end;

END.

