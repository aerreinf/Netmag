unit uSitGenVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RxLookup, ExtCtrls, Db, IBCustomDataSet, IBQuery, Mask,
  ToolEdit, CurrEdit, Grids, DBGrids, RxMemDS, Menus, FR_Class;

type
  TfSitGenVen = class(TForm)
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel1: TPanel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    Button2: TButton;
    Edit2: TRxCalcEdit;
    Edit1: TRxCalcEdit;
    Edit3: TRxCalcEdit;
    Edit4: TRxCalcEdit;
    Edit18: TRxCalcEdit;
    Edit10: TRxCalcEdit;
    Edit9: TRxCalcEdit;
    Edit6: TRxCalcEdit;
    Edit5: TRxCalcEdit;
    Edit11: TRxCalcEdit;
    Edit12: TRxCalcEdit;
    Edit13: TRxCalcEdit;
    Edit14: TRxCalcEdit;
    Edit15: TRxCalcEdit;
    Edit16: TRxCalcEdit;
    Edit17: TRxCalcEdit;
    Edit20: TRxCalcEdit;
    DBGrid1: TDBGrid;
    Label23: TLabel;
    RxCalcEdit1: TRxCalcEdit;
    Label24: TLabel;
    RxCalcEdit2: TRxCalcEdit;
    Label25: TLabel;
    RxCalcEdit3: TRxCalcEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    Button9: TButton;
    IBQuery2PK_CODICE: TIntegerField;
    IBQuery2CODICE: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2NUMERO: TIntegerField;
    IBQuery2NUMERO_A: TIBStringField;
    IBQuery2TOTALE: TIntegerField;
    IBQuery2DIPENDENTE: TIBStringField;
    IBQuery2FASONISTA: TIBStringField;
    IBQuery2CLIENTE: TIBStringField;
    IBQuery2TAGLIA0: TIBStringField;
    IBQuery2TAGLIA1: TIBStringField;
    IBQuery2TAGLIA2: TIBStringField;
    IBQuery2TAGLIA3: TIBStringField;
    IBQuery2TAGLIA4: TIBStringField;
    IBQuery2TAGLIA5: TIBStringField;
    IBQuery2TAGLIA6: TIBStringField;
    IBQuery2TAGLIA7: TIBStringField;
    IBQuery2TAGLIA8: TIBStringField;
    IBQuery2TAGLIA9: TIBStringField;
    IBQuery2COLORE0: TIBStringField;
    IBQuery2COLORE1: TIBStringField;
    IBQuery2COLORE2: TIBStringField;
    IBQuery2COLORE3: TIBStringField;
    IBQuery2COLORE4: TIBStringField;
    IBQuery2COLORE5: TIBStringField;
    IBQuery2COLORE6: TIBStringField;
    IBQuery2COLORE7: TIBStringField;
    IBQuery2COLORE8: TIBStringField;
    IBQuery2COLORE9: TIBStringField;
    IBQuery2QTA00: TIntegerField;
    IBQuery2QTA01: TIntegerField;
    IBQuery2QTA02: TIntegerField;
    IBQuery2QTA03: TIntegerField;
    IBQuery2QTA04: TIntegerField;
    IBQuery2QTA05: TIntegerField;
    IBQuery2QTA06: TIntegerField;
    IBQuery2QTA07: TIntegerField;
    IBQuery2QTA08: TIntegerField;
    IBQuery2QTA09: TIntegerField;
    IBQuery2QTA10: TIntegerField;
    IBQuery2QTA11: TIntegerField;
    IBQuery2QTA12: TIntegerField;
    IBQuery2QTA13: TIntegerField;
    IBQuery2QTA14: TIntegerField;
    IBQuery2QTA15: TIntegerField;
    IBQuery2QTA16: TIntegerField;
    IBQuery2QTA17: TIntegerField;
    IBQuery2QTA18: TIntegerField;
    IBQuery2QTA19: TIntegerField;
    IBQuery2QTA20: TIntegerField;
    IBQuery2QTA21: TIntegerField;
    IBQuery2QTA22: TIntegerField;
    IBQuery2QTA23: TIntegerField;
    IBQuery2QTA24: TIntegerField;
    IBQuery2QTA25: TIntegerField;
    IBQuery2QTA26: TIntegerField;
    IBQuery2QTA27: TIntegerField;
    IBQuery2QTA28: TIntegerField;
    IBQuery2QTA29: TIntegerField;
    IBQuery2QTA30: TIntegerField;
    IBQuery2QTA31: TIntegerField;
    IBQuery2QTA32: TIntegerField;
    IBQuery2QTA33: TIntegerField;
    IBQuery2QTA34: TIntegerField;
    IBQuery2QTA35: TIntegerField;
    IBQuery2QTA36: TIntegerField;
    IBQuery2QTA37: TIntegerField;
    IBQuery2QTA38: TIntegerField;
    IBQuery2QTA39: TIntegerField;
    IBQuery2QTA40: TIntegerField;
    IBQuery2QTA41: TIntegerField;
    IBQuery2QTA42: TIntegerField;
    IBQuery2QTA43: TIntegerField;
    IBQuery2QTA44: TIntegerField;
    IBQuery2QTA45: TIntegerField;
    IBQuery2QTA46: TIntegerField;
    IBQuery2QTA47: TIntegerField;
    IBQuery2QTA48: TIntegerField;
    IBQuery2QTA49: TIntegerField;
    IBQuery2QTA50: TIntegerField;
    IBQuery2QTA51: TIntegerField;
    IBQuery2QTA52: TIntegerField;
    IBQuery2QTA53: TIntegerField;
    IBQuery2QTA54: TIntegerField;
    IBQuery2QTA55: TIntegerField;
    IBQuery2QTA56: TIntegerField;
    IBQuery2QTA57: TIntegerField;
    IBQuery2QTA58: TIntegerField;
    IBQuery2QTA59: TIntegerField;
    IBQuery2QTA60: TIntegerField;
    IBQuery2QTA61: TIntegerField;
    IBQuery2QTA62: TIntegerField;
    IBQuery2QTA63: TIntegerField;
    IBQuery2QTA64: TIntegerField;
    IBQuery2QTA65: TIntegerField;
    IBQuery2QTA66: TIntegerField;
    IBQuery2QTA67: TIntegerField;
    IBQuery2QTA68: TIntegerField;
    IBQuery2QTA69: TIntegerField;
    IBQuery2QTA70: TIntegerField;
    IBQuery2QTA71: TIntegerField;
    IBQuery2QTA72: TIntegerField;
    IBQuery2QTA73: TIntegerField;
    IBQuery2QTA74: TIntegerField;
    IBQuery2QTA75: TIntegerField;
    IBQuery2QTA76: TIntegerField;
    IBQuery2QTA77: TIntegerField;
    IBQuery2QTA78: TIntegerField;
    IBQuery2QTA79: TIntegerField;
    IBQuery2QTA80: TIntegerField;
    IBQuery2QTA81: TIntegerField;
    IBQuery2QTA82: TIntegerField;
    IBQuery2QTA83: TIntegerField;
    IBQuery2QTA84: TIntegerField;
    IBQuery2QTA85: TIntegerField;
    IBQuery2QTA86: TIntegerField;
    IBQuery2QTA87: TIntegerField;
    IBQuery2QTA88: TIntegerField;
    IBQuery2QTA89: TIntegerField;
    IBQuery2QTA90: TIntegerField;
    IBQuery2QTA91: TIntegerField;
    IBQuery2QTA92: TIntegerField;
    IBQuery2QTA93: TIntegerField;
    IBQuery2QTA94: TIntegerField;
    IBQuery2QTA95: TIntegerField;
    IBQuery2QTA96: TIntegerField;
    IBQuery2QTA97: TIntegerField;
    IBQuery2QTA98: TIntegerField;
    IBQuery2QTA99: TIntegerField;
    IBQuery2TOTALE_COLORE0: TIntegerField;
    IBQuery2TOTALE_COLORE1: TIntegerField;
    IBQuery2TOTALE_COLORE2: TIntegerField;
    IBQuery2TOTALE_COLORE3: TIntegerField;
    IBQuery2TOTALE_COLORE4: TIntegerField;
    IBQuery2TOTALE_COLORE5: TIntegerField;
    IBQuery2TOTALE_COLORE6: TIntegerField;
    IBQuery2TOTALE_COLORE7: TIntegerField;
    IBQuery2TOTALE_COLORE8: TIntegerField;
    IBQuery2TOTALE_COLORE9: TIntegerField;
    IBQuery2TOTALE_TAGLIA0: TIntegerField;
    IBQuery2TOTALE_TAGLIA1: TIntegerField;
    IBQuery2TOTALE_TAGLIA2: TIntegerField;
    IBQuery2TOTALE_TAGLIA3: TIntegerField;
    IBQuery2TOTALE_TAGLIA4: TIntegerField;
    IBQuery2TOTALE_TAGLIA5: TIntegerField;
    IBQuery2TOTALE_TAGLIA6: TIntegerField;
    IBQuery2TOTALE_TAGLIA7: TIntegerField;
    IBQuery2TOTALE_TAGLIA8: TIntegerField;
    IBQuery2TOTALE_TAGLIA9: TIntegerField;
    IBQuery2QTA_TOTALE: TIntegerField;
    IBQuery2SCAT: TFloatField;
    IBQuery2PASSATA: TIBStringField;
    IBQuery2F1: TIBStringField;
    IBQuery2F2: TIBStringField;
    IBQuery2F3: TIBStringField;
    IBQuery2F4: TIBStringField;
    IBQuery2F5: TIBStringField;
    IBQuery2F6: TIBStringField;
    IBQuery2F7: TIBStringField;
    IBQuery2F8: TIBStringField;
    IBQuery2F0: TIBStringField;
    DBGrid2: TDBGrid;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
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
    IBQuery3Col0: TStringField;
    IBQuery3Col1: TStringField;
    IBQuery3Col2: TStringField;
    RxCalcEdit4: TRxCalcEdit;
    IBQuery4: TIBQuery;
    DataSource4: TDataSource;
    DBGrid3: TDBGrid;
    IBQuery4CONSEGNATO: TFloatField;
    IBQuery5: TIBQuery;
    IBQuery4CLIFOR_ID: TIntegerField;
    IBQuery4ORDIN: TFloatField;
    IBQuery4DENOMINAZIONE: TStringField;
    Button10: TButton;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CODICE: TStringField;
    RxMemoryData1DESCRIZIONE: TStringField;
    RxMemoryData1QTA: TFloatField;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    dsoMARCA: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoTIPO: TDataSource;
    dsoGRUPPO: TDataSource;
    IBQuery6: TIBQuery;
    RxCalcEdit5: TRxCalcEdit;
    Label30: TLabel;
    IBQuery4A: TIBStringField;
    IBQuery4B: TIBStringField;
    IBQuery4C: TIBStringField;
    IBQuery3A: TIBStringField;
    IBQuery3B: TIBStringField;
    IBQuery3C: TIBStringField;
    IBQuery3ALTRA_DEST2: TIBStringField;
    IBQuery3CA_ID: TIBStringField;
    IBQuery3PK_CODICE: TIntegerField;
    IBQuery3CODICE: TIBStringField;
    IBQuery3DESCR1: TIBStringField;
    IBQuery3DATA: TDateTimeField;
    IBQuery3NUMERO: TIntegerField;
    IBQuery3NUMERO_A: TIBStringField;
    IBQuery3TOTALE1: TIntegerField;
    IBQuery3DIPENDENTE: TIBStringField;
    IBQuery3FASONISTA: TIBStringField;
    IBQuery3CLIENTE: TIBStringField;
    IBQuery3TAGLIA0: TIBStringField;
    IBQuery3TAGLIA1: TIBStringField;
    IBQuery3TAGLIA2: TIBStringField;
    IBQuery3TAGLIA3: TIBStringField;
    IBQuery3TAGLIA4: TIBStringField;
    IBQuery3TAGLIA5: TIBStringField;
    IBQuery3TAGLIA6: TIBStringField;
    IBQuery3TAGLIA7: TIBStringField;
    IBQuery3TAGLIA8: TIBStringField;
    IBQuery3TAGLIA9: TIBStringField;
    IBQuery3COLORE0: TIBStringField;
    IBQuery3COLORE1: TIBStringField;
    IBQuery3COLORE2: TIBStringField;
    IBQuery3COLORE3: TIBStringField;
    IBQuery3COLORE4: TIBStringField;
    IBQuery3COLORE5: TIBStringField;
    IBQuery3COLORE6: TIBStringField;
    IBQuery3COLORE7: TIBStringField;
    IBQuery3COLORE8: TIBStringField;
    IBQuery3COLORE9: TIBStringField;
    IBQuery3QTA00: TIntegerField;
    IBQuery3QTA01: TIntegerField;
    IBQuery3QTA02: TIntegerField;
    IBQuery3QTA03: TIntegerField;
    IBQuery3QTA04: TIntegerField;
    IBQuery3QTA05: TIntegerField;
    IBQuery3QTA06: TIntegerField;
    IBQuery3QTA07: TIntegerField;
    IBQuery3QTA08: TIntegerField;
    IBQuery3QTA09: TIntegerField;
    IBQuery3QTA10: TIntegerField;
    IBQuery3QTA11: TIntegerField;
    IBQuery3QTA12: TIntegerField;
    IBQuery3QTA13: TIntegerField;
    IBQuery3QTA14: TIntegerField;
    IBQuery3QTA15: TIntegerField;
    IBQuery3QTA16: TIntegerField;
    IBQuery3QTA17: TIntegerField;
    IBQuery3QTA18: TIntegerField;
    IBQuery3QTA19: TIntegerField;
    IBQuery3QTA20: TIntegerField;
    IBQuery3QTA21: TIntegerField;
    IBQuery3QTA22: TIntegerField;
    IBQuery3QTA23: TIntegerField;
    IBQuery3QTA24: TIntegerField;
    IBQuery3QTA25: TIntegerField;
    IBQuery3QTA26: TIntegerField;
    IBQuery3QTA27: TIntegerField;
    IBQuery3QTA28: TIntegerField;
    IBQuery3QTA29: TIntegerField;
    IBQuery3QTA30: TIntegerField;
    IBQuery3QTA31: TIntegerField;
    IBQuery3QTA32: TIntegerField;
    IBQuery3QTA33: TIntegerField;
    IBQuery3QTA34: TIntegerField;
    IBQuery3QTA35: TIntegerField;
    IBQuery3QTA36: TIntegerField;
    IBQuery3QTA37: TIntegerField;
    IBQuery3QTA38: TIntegerField;
    IBQuery3QTA39: TIntegerField;
    IBQuery3QTA40: TIntegerField;
    IBQuery3QTA41: TIntegerField;
    IBQuery3QTA42: TIntegerField;
    IBQuery3QTA43: TIntegerField;
    IBQuery3QTA44: TIntegerField;
    IBQuery3QTA45: TIntegerField;
    IBQuery3QTA46: TIntegerField;
    IBQuery3QTA47: TIntegerField;
    IBQuery3QTA48: TIntegerField;
    IBQuery3QTA49: TIntegerField;
    IBQuery3QTA50: TIntegerField;
    IBQuery3QTA51: TIntegerField;
    IBQuery3QTA52: TIntegerField;
    IBQuery3QTA53: TIntegerField;
    IBQuery3QTA54: TIntegerField;
    IBQuery3QTA55: TIntegerField;
    IBQuery3QTA56: TIntegerField;
    IBQuery3QTA57: TIntegerField;
    IBQuery3QTA58: TIntegerField;
    IBQuery3QTA59: TIntegerField;
    IBQuery3QTA60: TIntegerField;
    IBQuery3QTA61: TIntegerField;
    IBQuery3QTA62: TIntegerField;
    IBQuery3QTA63: TIntegerField;
    IBQuery3QTA64: TIntegerField;
    IBQuery3QTA65: TIntegerField;
    IBQuery3QTA66: TIntegerField;
    IBQuery3QTA67: TIntegerField;
    IBQuery3QTA68: TIntegerField;
    IBQuery3QTA69: TIntegerField;
    IBQuery3QTA70: TIntegerField;
    IBQuery3QTA71: TIntegerField;
    IBQuery3QTA72: TIntegerField;
    IBQuery3QTA73: TIntegerField;
    IBQuery3QTA74: TIntegerField;
    IBQuery3QTA75: TIntegerField;
    IBQuery3QTA76: TIntegerField;
    IBQuery3QTA77: TIntegerField;
    IBQuery3QTA78: TIntegerField;
    IBQuery3QTA79: TIntegerField;
    IBQuery3QTA80: TIntegerField;
    IBQuery3QTA81: TIntegerField;
    IBQuery3QTA82: TIntegerField;
    IBQuery3QTA83: TIntegerField;
    IBQuery3QTA84: TIntegerField;
    IBQuery3QTA85: TIntegerField;
    IBQuery3QTA86: TIntegerField;
    IBQuery3QTA87: TIntegerField;
    IBQuery3QTA88: TIntegerField;
    IBQuery3QTA89: TIntegerField;
    IBQuery3QTA90: TIntegerField;
    IBQuery3QTA91: TIntegerField;
    IBQuery3QTA92: TIntegerField;
    IBQuery3QTA93: TIntegerField;
    IBQuery3QTA94: TIntegerField;
    IBQuery3QTA95: TIntegerField;
    IBQuery3QTA96: TIntegerField;
    IBQuery3QTA97: TIntegerField;
    IBQuery3QTA98: TIntegerField;
    IBQuery3QTA99: TIntegerField;
    IBQuery3TOTALE_COLORE0: TIntegerField;
    IBQuery3TOTALE_COLORE1: TIntegerField;
    IBQuery3TOTALE_COLORE2: TIntegerField;
    IBQuery3TOTALE_COLORE3: TIntegerField;
    IBQuery3TOTALE_COLORE4: TIntegerField;
    IBQuery3TOTALE_COLORE5: TIntegerField;
    IBQuery3TOTALE_COLORE6: TIntegerField;
    IBQuery3TOTALE_COLORE7: TIntegerField;
    IBQuery3TOTALE_COLORE8: TIntegerField;
    IBQuery3TOTALE_COLORE9: TIntegerField;
    IBQuery3TOTALE_TAGLIA0: TIntegerField;
    IBQuery3TOTALE_TAGLIA1: TIntegerField;
    IBQuery3TOTALE_TAGLIA2: TIntegerField;
    IBQuery3TOTALE_TAGLIA3: TIntegerField;
    IBQuery3TOTALE_TAGLIA4: TIntegerField;
    IBQuery3TOTALE_TAGLIA5: TIntegerField;
    IBQuery3TOTALE_TAGLIA6: TIntegerField;
    IBQuery3TOTALE_TAGLIA7: TIntegerField;
    IBQuery3TOTALE_TAGLIA8: TIntegerField;
    IBQuery3TOTALE_TAGLIA9: TIntegerField;
    IBQuery3QTA_TOTALE: TIntegerField;
    IBQuery3SCAT: TFloatField;
    IBQuery3PASSATA1: TIBStringField;
    IBQuery3F1: TIBStringField;
    IBQuery3F2: TIBStringField;
    IBQuery3F3: TIBStringField;
    IBQuery3F4: TIBStringField;
    IBQuery3F5: TIBStringField;
    IBQuery3F6: TIBStringField;
    IBQuery3F7: TIBStringField;
    IBQuery3F8: TIBStringField;
    IBQuery3F0: TIBStringField;
    IBQuery3NUMPRE: TIntegerField;
    IBQuery3DATAGLIARE: TFloatField;
    Label20: TLabel;
    RxCalcEdit6: TRxCalcEdit;
    PopupMenu2: TPopupMenu;
    StampaSchedeDepMag1: TMenuItem;
    StampaSchedeDep1: TMenuItem;
    StampaSchedeMag1: TMenuItem;
    IBQuery7: TIBQuery;
    IBQuery6CODICE_ARTICOLO: TIBStringField;
    IBQuery6DESCR: TIBStringField;
    IBQuery6DESCR2: TIBStringField;
    IBQuery6CODICE_IVA_ID: TIBStringField;
    IBQuery6UNITA_DI_MISURA1_ID: TIBStringField;
    IBQuery6UNITA_DI_MISURA2_ID: TIBStringField;
    IBQuery6UNITA_DI_MISURA3_ID: TIBStringField;
    IBQuery6SCONTO1: TFloatField;
    IBQuery6SCONTO2: TFloatField;
    IBQuery6SCONTO3: TFloatField;
    IBQuery6PROVVIGIONE: TFloatField;
    IBQuery6PESO_NETTO_KG: TFloatField;
    IBQuery6PESO_LORDO_KG: TFloatField;
    IBQuery6SCORTA_MIN: TFloatField;
    IBQuery6SCORTA_MAX: TFloatField;
    IBQuery6LOTTO_RIORDINO: TFloatField;
    IBQuery6GG_APPROVVIGIONAMENTO: TIntegerField;
    IBQuery6QTA_X_CONFEZIONE: TIntegerField;
    IBQuery6ANNO: TIntegerField;
    IBQuery6DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBQuery6PREZZO_BASE: TFloatField;
    IBQuery6COSTO_STANDART: TFloatField;
    IBQuery6TIPO_ARTICOLO_ID: TSmallintField;
    IBQuery6FATT_CONV1: TFloatField;
    IBQuery6FATT_CONV2: TFloatField;
    IBQuery6COSTO_ID: TIntegerField;
    IBQuery6RICAVO_ID: TIntegerField;
    IBQuery6GIORNI_MAX_INVENDUTO: TIntegerField;
    IBQuery6ASPETTO_ID: TIBStringField;
    IBQuery6RIORDINO_MESE_DA: TSmallintField;
    IBQuery6RIORDINO_MESE_A: TSmallintField;
    IBQuery6RIORDINO_GIORNO_DA: TSmallintField;
    IBQuery6RIORDINO_GIORNO_A: TSmallintField;
    IBQuery6STAGIONE_ID: TIBStringField;
    IBQuery6GRUPPO_ALTERNATIVO: TIBStringField;
    IBQuery6PRODUTTORE_ID: TIBStringField;
    IBQuery6CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBQuery6CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBQuery6CODICE_BASE: TIBStringField;
    IBQuery6DERIVATO: TSmallintField;
    IBQuery6VARIANTE1_ID: TIBStringField;
    IBQuery6VARIANTE2_ID: TIBStringField;
    IBQuery6VARIANTE3_ID: TIBStringField;
    IBQuery6NUM_VARIANTI: TIntegerField;
    IBQuery6TIPO_COSTO_ID: TSmallintField;
    IBQuery6TIPO_RICAVO_ID: TSmallintField;
    IBQuery6OMAGGIO: TSmallintField;
    IBQuery6TIPO_CLI_FOR_ID: TSmallintField;
    IBQuery6CLI_FOR_ID: TIntegerField;
    IBQuery6CODE_BAR: TIBStringField;
    IBQuery6DESCR_CODE_BAR: TIBStringField;
    IBQuery6NON_STAMPA_INVENTARIO: TSmallintField;
    IBQuery6NON_STAMPA_REGISTRO: TSmallintField;
    IBQuery6NOMENCLATURA: TIntegerField;
    IBQuery6FATT_CONV1_NOMENCLATURA: TFloatField;
    IBQuery6FATT_CONV2_NOMENCLATURA: TFloatField;
    IBQuery6PROV_ORDINE: TIntegerField;
    IBQuery6COSTO_ULTIMO: TFloatField;
    IBQuery6DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery6NUM_REPARTO: TIntegerField;
    IBQuery6TIPO_CODE_BAR_ID: TSmallintField;
    IBQuery6CONTO_ACQUISTO: TIntegerField;
    IBQuery6CONTO_VENDITA: TIntegerField;
    IBQuery6UN_MIS2_VAL: TIntegerField;
    IBQuery6UN_MIS3_VAL: TIntegerField;
    IBQuery6CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery6CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery6CAT_ART_MARCA_ID: TIntegerField;
    IBQuery6FOTO_PERCORSO: TIBStringField;
    IBQuery6CAT_ART_TIPO_ID: TIntegerField;
    IBQuery6FLAG_ACCESSORIE: TIBStringField;
    IBQuery6DATAMOD: TDateTimeField;
    IBQuery6SCONTO4: TFloatField;
    IBQuery6PREZZO_IVATO: TFloatField;
    IBQuery6P2IVATO: TFloatField;
    IBQuery6P3IVATO: TFloatField;
    IBQuery6P4IVATO: TFloatField;
    IBQuery6P5IVATO: TFloatField;
    IBQuery6SC21: TFloatField;
    IBQuery6SC22: TFloatField;
    IBQuery6SC23: TFloatField;
    IBQuery6SC31: TFloatField;
    IBQuery6SC32: TFloatField;
    IBQuery6SC33: TFloatField;
    IBQuery6SC41: TFloatField;
    IBQuery6SC42: TFloatField;
    IBQuery6SC43: TFloatField;
    IBQuery6SC51: TFloatField;
    IBQuery6SC52: TFloatField;
    IBQuery6SC53: TFloatField;
    IBQuery6R2: TFloatField;
    IBQuery6R3: TFloatField;
    IBQuery6R4: TFloatField;
    IBQuery6R5: TFloatField;
    IBQuery6IMP2: TFloatField;
    IBQuery6IMP3: TFloatField;
    IBQuery6IMP4: TFloatField;
    IBQuery6IMP5: TFloatField;
    IBQuery6RICARPREC: TFloatField;
    IBQuery6P6IVATO: TFloatField;
    IBQuery6IMP6: TFloatField;
    IBQuery6STRUTT: TFloatField;
    IBQuery6CA: TFloatField;
    IBQuery6CG: TFloatField;
    IBQuery6AG: TFloatField;
    IBQuery6CA2: TFloatField;
    IBQuery6CG2: TFloatField;
    IBQuery6AG2: TFloatField;
    IBQuery6CA3: TFloatField;
    IBQuery6CG3: TFloatField;
    IBQuery6AG3: TFloatField;
    IBQuery6CA4: TFloatField;
    IBQuery6CG4: TFloatField;
    IBQuery6AG4: TFloatField;
    IBQuery6CA5: TFloatField;
    IBQuery6CG5: TFloatField;
    IBQuery6AG5: TFloatField;
    IBQuery6CA6: TFloatField;
    IBQuery6CG6: TFloatField;
    IBQuery6AG6: TFloatField;
    IBQuery6ID_OFFERTA: TIntegerField;
    IBQuery6CR: TFloatField;
    IBQuery6CR2: TFloatField;
    IBQuery6CR3: TFloatField;
    IBQuery6CR4: TFloatField;
    IBQuery6CR5: TFloatField;
    IBQuery6CR6: TFloatField;
    IBQuery6MAGAZZINO: TFloatField;
    Label31: TLabel;
    RxCalcEdit7: TRxCalcEdit;
    Button11: TButton;
    Label32: TLabel;
    RxCalcEdit8: TRxCalcEdit;
    Button12: TButton;
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure IBQuery4CalcFields(DataSet: TDataSet);
    procedure Button10Click(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StampaSchedeDepMag1Click(Sender: TObject);
    procedure StampaSchedeDep1Click(Sender: TObject);
    procedure StampaSchedeMag1Click(Sender: TObject);
    procedure IBQuery6CalcFields(DataSet: TDataSet);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSitGenVen: TfSitGenVen;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfSitGenVen.FormShow(Sender: TObject);
begin
dmodAz.ibTab_Articoli.Close;
dmodAz.ibTab_Articoli.Open;
DataSource1.Enabled := True;
end;

procedure TfSitGenVen.RxDBLookupCombo1Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue:=RxDBLookupCombo1.KeyValue;
Button1.Click;
end;

procedure TfSitGenVen.Button1Click(Sender: TObject);
var
a,dacons,taglio,cl,dep,ext,depdacl,depdaest:double;
begin
with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from PRETFIT');
SQL.Add('WHERE CODICE=:parArt and PASSATA=:parPAss');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
ParamByName('parPass').AsString:='N';
Open;
edit2.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from PRETFIT');
SQL.Add('WHERE CODICE=:parArt');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit1.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from PRETAGLIO');
SQL.Add('WHERE CODICE=:parArt and PASSATA=:parPAss');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
ParamByName('parPass').AsString:='N';
Open;
edit3.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from PRETAGLIO');
SQL.Add('WHERE CODICE=:parArt');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit4.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from TAGLIO');
SQL.Add('WHERE CODICE=:parArt and PASSATA=:parPAss');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
ParamByName('parPass').AsString:='N';
Open;
edit5.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from TAGLIO');
SQL.Add('WHERE CODICE=:parArt');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
taglio:= fieldbyname('F_1').AsFloat;
edit6.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from TAGLIOFAS');
SQL.Add('WHERE CODICE=:parArt and PASSATA=:parPAss');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
ParamByName('parPass').AsString:='N';
Open;
edit9.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
sql.Add('Select SUM(TOTALE) as F_1 from TAGLIOFAS');
SQL.Add('WHERE CODICE=:parArt');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit10.Text := FloatToStr(fieldbyname('F_1').AsFloat);
ext:=fieldbyname('F_1').AsFloat;
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =201 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit18.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
RxCalcEdit3.Value := (fieldbyname('F_1').AsFloat);
end;

////////////////////////////////////////////////////////Conto Lavoro
{
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =500 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt and PASSATA=''N''');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit11.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;
}
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =500 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
cl:= fieldbyname('F_1').AsFloat;
edit12.Text := FloatToStr(fieldbyname('F_1').AsFloat);
end;
//edit5.Text := FloatToStr(taglio-cl);
////////////////////////////// DEPOSITO
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =501 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt and sconto4=0');
//and PASSATA=''N''
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
depdacl:=fieldbyname('F_1').AsFloat;
end;
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =501 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt and sconto4=1');
//and PASSATA=''N''
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
depdaest:=fieldbyname('F_1').AsFloat;
end;
edit11.Text :=FloatToStr(cl-depdacl);
if edit11.Value<0 then edit11.Value := 0;

//edit9.Text :=FloatToStr(ext-depdaest);

edit13.Text := FloatToStr(depdaest+depdacl);

////////////////////////////// Magazzino
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =502 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit14.Value:=(fieldbyname('F_1').AsFloat);
end;
edit13.Value := (depdaest+depdacl)-edit14.Value;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =222 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit14.Value:=Edit14.Value+(fieldbyname('F_1').AsFloat);
end;


with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =212 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
RxCalcEdit5.Value :=(fieldbyname('F_1').AsFloat);
edit14.Value:=edit14.Value- RxCalcEdit3.Value+(fieldbyname('F_1').AsFloat);
//edit13.Value := (depdaest+depdacl)-edit14.Value;
end;
RxCalcEdit6.Value := RxCalcEdit3.Value -RxCalcEdit5.Value ;

///// Ricami uscita
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =590 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
RxCalcEdit7.Value := (fieldbyname('F_1').AsFloat);
end;

///// Ricami rientro
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =591 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
RxCalcEdit8.Value := (fieldbyname('F_1').AsFloat);
end;
RxCalcEdit7.Value := RxCalcEdit7.Value - RxCalcEdit8.Value;
{
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =501 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
depdaest:=fieldbyname('F_1').AsFloat;
end;
}
//edit13.Value := (IBQuery1.fieldbyname('F_1').AsFloat- edit14.Value);

//RxCalcEdit1.Value := Edit18.Value;

edit17.Value:= Edit3.Value+Edit5.Value+Edit9.Value+Edit11.Value+Edit13.Value+Edit14.Value;
Edit20.Value:= edit17.Value+RxCalcEdit3.Value;
edit16.Value:= edit14.Value-Edit15.Value;

//////////////////////////////////////// prova DA CONS
with IBQuery4 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT DISTINCT');
   SQL.Add('TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.A,TAB_DET_DOC.B,TAB_DET_DOC.C,sum(TAB_DET_DOC.QUANTITA) AS ORDIN FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =201 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
   SQL.Add('GROUP BY TAB_DOCUMENTI.CLIFOR_ID,TAB_DET_DOC.A,TAB_DET_DOC.B,TAB_DET_DOC.C');
   SQL.Add('order by TAB_DET_DOC.B');
   //and PASSATA=''N''
ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
Open;

a:=0;
dacons := 0;
First;
while not Eof do
begin
a:= fieldbyname('ORDIN').AsFloat - fieldbyname('CONSEGNATO').AsFloat;
if a < 0 then a:= 0;
dacons := dacons + a;
next;
end;
RxCalcEdit1.Value := dacons;
end;
//RxCalcEdit2.Value :=  RxCalcEdit3.Value - RxCalcEdit1.Value;
RxCalcEdit4.Value := Edit17.Value- RxCalcEdit1.Value;
RxCalcEdit2.Value := RxCalcEdit3.Value -(Edit18.Value - RxCalcEdit1.Value);
///////////////////////////////////////////////////////
end;

procedure TfSitGenVen.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TfSitGenVen.Button3Click(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.sql.clear;
IBQuery2.sql.add('Select * from pretaglio');
IBQuery2.sql.add('where CODICE=:parArt and Passata=''N''');
IBQuery2.sql.add('Order by codice');
IBQuery2.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery2.Open;


end;

procedure TfSitGenVen.Button4Click(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.sql.clear;
IBQuery2.sql.add('Select * from taglio');
IBQuery2.sql.add('where CODICE=:parArt and Passata=''N''');
IBQuery2.sql.add('Order by codice');
IBQuery2.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery2.Open;
end;

procedure TfSitGenVen.Button7Click(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.sql.clear;
IBQuery2.sql.add('Select * from tagliofas');
IBQuery2.sql.add('where CODICE=:parArt and Passata=''N''');
IBQuery2.sql.add('Order by codice');
IBQuery2.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery2.Open;
end;

procedure TfSitGenVen.Button9Click(Sender: TObject);
begin
IBQuery2.Close;
IBQuery2.sql.clear;
IBQuery2.sql.add('Select * from pretfit');
IBQuery2.sql.add('where CODICE=:parArt and Passata=''N''');
IBQuery2.sql.add('Order by codice');
IBQuery2.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery2.Open;

end;

procedure TfSitGenVen.Label5Click(Sender: TObject);
begin
Button3.Click;
end;

procedure TfSitGenVen.Label7Click(Sender: TObject);
begin
Button4.Click;
end;

procedure TfSitGenVen.Label4Click(Sender: TObject);
begin
Button9.Click;
end;

procedure TfSitGenVen.Label11Click(Sender: TObject);
begin
Button7.Click;
end;

procedure TfSitGenVen.Button5Click(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.sql.clear;
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =500');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');


IBQuery3.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery3.open;
end;

procedure TfSitGenVen.Label15Click(Sender: TObject);
begin
button5.Click;
end;

procedure TfSitGenVen.Label13Click(Sender: TObject);
begin
Button6.Click;
end;

procedure TfSitGenVen.Button6Click(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.sql.clear;
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =501');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');

IBQuery3.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery3.open;

end;

procedure TfSitGenVen.Button8Click(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.sql.clear;
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =502');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');

IBQuery3.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery3.open;
end;

procedure TfSitGenVen.Label9Click(Sender: TObject);
begin
Button8.Click;
end;

procedure TfSitGenVen.IBQuery4CalcFields(DataSet: TDataSet);
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

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
ParamByName('parcli').AsInteger:=IBQuery4CLIFOR_ID.AsInteger;
//ParamByName('parPass').AsString:='N';
Open;
IBQuery4CONSEGNATO.AsFloat := IBQuery5.fieldbyname('CONS').AsFloat;
end;

end;

procedure TfSitGenVen.Button10Click(Sender: TObject);
var
a,dacons,taglio,cl,dep,ext,depdacl,depdaest:double;
pingo,pongo : string;

begin

//exit;
RxMemoryData1.Open;
RxMemoryData1.EmptyTable;
RxMemoryData1.Open;

with IBQuery6 do begin
Close;
SQL.Clear;
SQL.Add('select * from tab_articoli');
SQL.Add('Where codice_articolo is not null and flag_accessorie<>''S''');
If (cbMarca.Checked)
 Then SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
If (cbTipo.Checked)
 Then SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
If (cbGruppo.Checked)
 Then SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
If (cbFamiglia.Checked)
 Then SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
SQL.Add('order by codice_articolo');
Open;
end;

{
IBQuery6.First;
while not IBQuery6.Eof do
begin
pingo := IBQuery6.fieldbyname('CODICE_ARTICOLO').AsString;
pongo := IBQuery6.fieldbyname('DESCR').AsString;

RxMemoryData1.Append;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=pingo;
//ParamByName('parPass').AsString:='N';
Open;
dacons := (fieldbyname('F_1').AsFloat);
end;


with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =502 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=pingo;
//ParamByName('parPass').AsString:='N';
Open;
a:=(fieldbyname('F_1').AsFloat);
end;
a :=a- dacons;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =222 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
//and PASSATA=''N''
ParamByName('parArt').AsString:=pingo;
//ParamByName('parPass').AsString:='N';
Open;
a:=a+(fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =212 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');
ParamByName('parArt').AsString:=pingo;
Open;
a:=a+(fieldbyname('F_1').AsFloat);
end;

RxMemoryData1.FieldByName('CODICE').AsString := pingo;
RxMemoryData1.FieldByName('DESCRIZIONE').AsString := pongo;
RxMemoryData1.FieldByName('QTA').Asfloat := a;
RxMemoryData1.Post;
IBQuery6.next;
end;
}
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSitMagVen.frf');
dmodAz.rePRN.ShowReport;

end;


procedure TfSitGenVen.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfSitGenVen.FormCreate(Sender: TObject);
begin
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;
end;

procedure TfSitGenVen.StampaSchedeDepMag1Click(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.sql.clear;
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =502');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');
IBQuery3.sql.add('union all');
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =501');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');


IBQuery3.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery3.open;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSchDepMag.frf');
dmodAz.rePRN.ShowReport;

end;

procedure TfSitGenVen.StampaSchedeDep1Click(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.sql.clear;
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =501');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');

IBQuery3.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery3.open;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSchDepMag.frf');
dmodAz.rePRN.ShowReport;
end;

procedure TfSitGenVen.StampaSchedeMag1Click(Sender: TObject);
begin
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =502');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');
IBQuery3.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery3.open;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSchDepMag.frf');
dmodAz.rePRN.ShowReport;
end;

procedure TfSitGenVen.IBQuery6CalcFields(DataSet: TDataSet);
var
a,k: double;
f : string;
g: integer;
begin
with IBQuery7 do
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
ParamByName('parArt').AsString:=IBQuery6CODICE_ARTICOLO.AsString;;
Open;
a:= IBQuery7.fieldbyname('MAG1').AsFloat;
end;

with IBQuery7 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as CONS FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =210 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=IBQuery6CODICE_ARTICOLO.AsString;
Open;
IBQuery6MAGAZZINO.AsFloat := a-IBQuery7.fieldbyname('CONS').AsFloat;
end;

end;

procedure TfSitGenVen.Button11Click(Sender: TObject);
begin
IBQuery3.Close;
IBQuery3.sql.clear;
IBQuery3.sql.add('select * from tab_det_doc');
IBQuery3.sql.add('JOIN TAB_DOCUMENTI ON');
IBQuery3.sql.add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
IBQuery3.sql.add('left join taglio on');
IBQuery3.sql.add('TAB_Det_doc.scheda=TAglio.numero');
IBQuery3.sql.add('WHERE TAB_DOCUMENTI.TIPO_DOC =590');
IBQuery3.sql.add('and CODICE_ARTICOLO=:parArt');


IBQuery3.ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
IBQuery3.open;
end;

end.
