unit uContabR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxMemDS, Menus, Db, IBCustomDataSet, IBQuery, StdCtrls, Grids,
  DBGrids, RxLookup, Buttons, ExtCtrls, Mask, ToolEdit, CurrEdit, RXDBCtrl,
  DBCtrls, DBSumLst, IBUpdateSQL, FR_Class,StrUtils,Variants, FR_ETxt,
  FR_ERtf, FR_Rich, FR_Desgn;

type
  TfContabR = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup6: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RadioGroup3: TRadioGroup;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBGrid2: TDBGrid;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DataSource1: TDataSource;
    dsoCli: TDataSource;
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
    IBQuery3Col1: TStringField;
    IBQuery3Col2: TStringField;
    IBQuery3Cliente: TStringField;
    IBQuery3AGENTE: TStringField;
    IBQuery3Consegnato: TFloatField;
    IBQuery3Magazzino: TFloatField;
    DataSource2: TDataSource;
    IBQuery4: TIBQuery;
    IBQuery4CLIFOR_ID: TIntegerField;
    IBQuery4CODICE_ARTICOLO: TIBStringField;
    IBQuery4QTA: TFloatField;
    IBQuery4DESCR: TStringField;
    IBQuery4CLIDESCR: TStringField;
    IBQuery1: TIBQuery;
    DataSource4: TDataSource;
    IBQuery5: TIBQuery;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CodiceArticolo: TStringField;
    IBQuery6: TIBQuery;
    Panel1: TPanel;
    DBDateEdit1: TDBDateEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RadioGroup4: TRadioGroup;
    IBQuery1CAUSALE_DOC: TIBStringField;
    IBQuery1CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery1CLIFOR_ID: TIntegerField;
    IBQuery1ID_DOCUMENTO: TIntegerField;
    IBQuery1LISTINO: TIBStringField;
    IBQuery1NUM_DOC: TIntegerField;
    IBQuery1TOTALE_IVATO: TFloatField;
    IBQuery1DATA_DOC: TDateTimeField;
    IBQuery1AGENTE_ID: TIBStringField;
    IBQuery1DENOMINAZIONE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    DBSumList1: TDBSumList;
    IBQuery1TOTALE: TFloatField;
    DBGrid1: TDBGrid;
    IBQuery7: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery7PK_CODICE: TIntegerField;
    IBQuery7NUM_PROT: TIntegerField;
    IBQuery7DATA_MOV: TDateField;
    IBQuery7DATA_DOC: TDateField;
    IBQuery7NUM_DOC: TIntegerField;
    IBQuery7DESCR_MOV: TIBStringField;
    IBQuery7DARE: TFloatField;
    IBQuery7AVERE: TFloatField;
    IBQuery7CLIFOR_ID: TIntegerField;
    IBQuery7TIPO_CLIFOR: TSmallintField;
    IBQuery7NOTE: TIBStringField;
    IBQuery7NUM_ASS: TIntegerField;
    IBQuery7DEPOSITO_CODICE: TIBStringField;
    IBQuery7DEPOSITO_DESCR: TIBStringField;
    DataSource5: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    DBSumList2: TDBSumList;
    Edit1: TRxCalcEdit;
    Edit2: TRxCalcEdit;
    RxCalcEdit1: TRxCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    frReport2: TfrReport;
    PopupMenu2: TPopupMenu;
    Stampa1: TMenuItem;
    IBQuery7AGENTE_ID: TIBStringField;
    IBQuery7DENOMINAZIONE: TIBStringField;
    RxMemoryData2: TRxMemoryData;
    RxMemoryData2DATA: TDateTimeField;
    RxMemoryData2CLIENTE: TStringField;
    RxMemoryData2DESCR: TStringField;
    RxMemoryData2ENTRATE: TCurrencyField;
    RxMemoryData2USCITE: TCurrencyField;
    RxMemoryData2AGENTE: TStringField;
    RxMemoryData2NOTE: TStringField;
    IBQuery8: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    IBQuery8PK_CODICE: TIntegerField;
    IBQuery8NUM_PROT: TIntegerField;
    IBQuery8DATA_MOV: TDateField;
    IBQuery8DATA_DOC: TDateField;
    IBQuery8NUM_DOC: TIntegerField;
    IBQuery8DESCR_MOV: TIBStringField;
    IBQuery8DARE: TFloatField;
    IBQuery8AVERE: TFloatField;
    IBQuery8CLIFOR_ID: TIntegerField;
    IBQuery8CLIENTE: TIBStringField;
    IBQuery8AGENTE: TIBStringField;
    IBQuery8TIPO_CLIFOR: TSmallintField;
    IBQuery8NOTE: TIBStringField;
    IBQuery8NUM_ASS: TIntegerField;
    IBQuery8DEPOSITO_CODICE: TIBStringField;
    IBQuery8DEPOSITO_DESCR: TIBStringField;
    DataSource6: TDataSource;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    IBQuery8LISTINO: TIntegerField;
    TipoBolla1: TMenuItem;
    IBQuery9: TIBQuery;
    IBQuery9ID_DOC_DET: TIntegerField;
    IBQuery9NUM_RIGA_ID: TIntegerField;
    IBQuery9TIPO_RIGA: TIntegerField;
    IBQuery9CODICE_ARTICOLO: TIBStringField;
    IBQuery9DESCR: TIBStringField;
    IBQuery9COSTO: TFloatField;
    IBQuery9COSTOINVALUTA: TFloatField;
    IBQuery9UNITA_MISURA: TIBStringField;
    IBQuery9FATTCONV: TFloatField;
    IBQuery9QTA_UM: TFloatField;
    IBQuery9QUANTITA: TFloatField;
    IBQuery9SCONTO1: TFloatField;
    IBQuery9SCONTO2: TFloatField;
    IBQuery9SCONTO3: TFloatField;
    IBQuery9SCONTO4: TFloatField;
    IBQuery9IMPORTO_SCONTO: TFloatField;
    IBQuery9IMPORTO: TFloatField;
    IBQuery9IMPORTOINVALUTA: TFloatField;
    IBQuery9OMAGGIO: TSmallintField;
    IBQuery9DEP: TIBStringField;
    IBQuery9SCONTO_EQ: TFloatField;
    IBQuery9PERC_PROVV: TFloatField;
    IBQuery9TIPO_SERVIZIO: TIBStringField;
    IBQuery9IVATO: TFloatField;
    IBQuery9IMPORTO_CON_IVA: TFloatField;
    IBQuery9CODICE_IVA_ID: TIBStringField;
    IBQuery9DATA_REG: TDateTimeField;
    IBQuery9RIF_A: TSmallintField;
    IBQuery9RIF_A_PRE: TSmallintField;
    IBQuery9RIF_A_ORD: TSmallintField;
    IBQuery9RIF_A_DDT: TSmallintField;
    IBQuery9RIF_ID_DOC_DET: TIntegerField;
    IBQuery9RIF_DDT_ID_DOC: TIntegerField;
    IBQuery9RIF_DDT_DATA_DOC: TDateTimeField;
    IBQuery9RIF_ORD_ID_DOC: TIntegerField;
    IBQuery9RIF_ORD_DATA_DOC: TDateTimeField;
    IBQuery9RIF_PRE_ID_DOC: TIntegerField;
    IBQuery9RIF_PRE_DATA_DOC: TDateTimeField;
    IBQuery9PIANOCONTO_ID: TIntegerField;
    IBQuery9RIF_PRE_NUM_DOC: TIntegerField;
    IBQuery9RIF_ORD_NUM_DOC: TIntegerField;
    IBQuery9RIF_DDT_NUM_DOC: TIntegerField;
    IBQuery9OP_QTA_DISPONIBILE: TFloatField;
    IBQuery9OP_VAL_DISPONIBILE: TFloatField;
    IBQuery9OP_QTA_GIACENZA: TFloatField;
    IBQuery9OP_VAL_GIACENZA: TFloatField;
    IBQuery9DOC_ID: TIntegerField;
    IBQuery9TOTCOLLI: TIBStringField;
    IBQuery9TOTSCAT: TFloatField;
    IBQuery9PREZZOLIST: TFloatField;
    IBQuery9SCHEDA: TFloatField;
    IBQuery9PASSATA: TIBStringField;
    IBQuery9COL: TIBStringField;
    IBQuery9ID_DOCUMENTO: TIntegerField;
    IBQuery9TESTATA_PN_ID: TIntegerField;
    IBQuery9CAUSALE_DOC: TIBStringField;
    IBQuery9TIPO_DOC: TIntegerField;
    IBQuery9DA_FATTURARE: TSmallintField;
    IBQuery9CLIFOR_ID: TIntegerField;
    IBQuery9TIPO_CLIFOR: TSmallintField;
    IBQuery9DEPOSITO: TIBStringField;
    IBQuery9CONTRO_CLIFOR_ID: TIntegerField;
    IBQuery9CONTRO_TIPO_CLIFOR: TSmallintField;
    IBQuery9CONTRO_DEPOSITO: TIBStringField;
    IBQuery9CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery9CONTRO_CAUS_MAG: TIBStringField;
    IBQuery9ATTIVITA: TIBStringField;
    IBQuery9SUBATTIVITA: TIBStringField;
    IBQuery9DATA_REGISTRAZIONE: TDateTimeField;
    IBQuery9DATA_DOC: TDateTimeField;
    IBQuery9DATA_CONFERMA: TDateTimeField;
    IBQuery9DATA_EVASIONE: TDateTimeField;
    IBQuery9STATO_DOCUMENTO: TIntegerField;
    IBQuery9STATO_CONTABILITA: TIntegerField;
    IBQuery9MONETA_ID: TIBStringField;
    IBQuery9CAMBIO: TFloatField;
    IBQuery9KINGUA_ID: TIBStringField;
    IBQuery9LISTINO: TIBStringField;
    IBQuery9NS_RIFERIMENTO: TIBStringField;
    IBQuery9VS_RIFERIMENTO: TIBStringField;
    IBQuery9CAUSALE_CONTABILE: TIBStringField;
    IBQuery9CODICE_BOLL: TIBStringField;
    IBQuery9PAGAMENTO_ID: TIBStringField;
    IBQuery9BANCA_CLIFOR: TIBStringField;
    IBQuery9BANCA_AZIENDA: TIBStringField;
    IBQuery9VETTORE1: TIBStringField;
    IBQuery9VETTORE2: TIBStringField;
    IBQuery9VETTORE3: TIBStringField;
    IBQuery9PORTO: TIBStringField;
    IBQuery9ASPETTO: TIBStringField;
    IBQuery9SPEDIZIONE: TIBStringField;
    IBQuery9PESO_NETTO: TFloatField;
    IBQuery9PESO_LORDO: TFloatField;
    IBQuery9CUBAGGIO: TFloatField;
    IBQuery9DESTINARIO: TIBStringField;
    IBQuery9IMBALLO: TIBStringField;
    IBQuery9SCONTO11: TFloatField;
    IBQuery9AGENTE_ID: TIBStringField;
    IBQuery9DATA_CONSEGNA: TDateTimeField;
    IBQuery9NUM_DOC: TIntegerField;
    IBQuery9NRCOLLI: TFloatField;
    IBQuery9SCONTO21: TFloatField;
    IBQuery9IMPORTO_SCONTO1: TFloatField;
    IBQuery9NOTA: TIBStringField;
    IBQuery9SOSPESO: TSmallintField;
    IBQuery9IVA_SOSPESA: TSmallintField;
    IBQuery9COD_IVA_ESENTE: TIBStringField;
    IBQuery9COD_IVA_SPESE_BOLLI: TIBStringField;
    IBQuery9COD_IVA_SPESE_INCASSO: TIBStringField;
    IBQuery9COD_IVA_SPESE_IMVALLO: TIBStringField;
    IBQuery9COD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    IBQuery9COD_IVA_SPESE_ACCESSIONE: TIBStringField;
    IBQuery9COD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    IBQuery9ACCORPA_RIGHE: TSmallintField;
    IBQuery9ATTIVITA2: TIBStringField;
    IBQuery9SUBATTIVITA2: TIBStringField;
    IBQuery9SOGGETTO_CEE: TSmallintField;
    IBQuery9REPORT: TIBStringField;
    IBQuery9RILEVA_ACCONTO: TSmallintField;
    IBQuery9ORA: TIBStringField;
    IBQuery9FATT_ACCOMP: TSmallintField;
    IBQuery9TIPO_FATT: TSmallintField;
    IBQuery9ST_NOTE_CLIFOR: TSmallintField;
    IBQuery9IVATO1: TSmallintField;
    IBQuery9STAMPATO: TSmallintField;
    IBQuery9DATA_COMPETENZA_IVA: TDateTimeField;
    IBQuery9MEZZO_TRASPORTO: TSmallintField;
    IBQuery9TOT_PROVVIGIONE: TFloatField;
    IBQuery9TIPO_PROVVIGIONE: TSmallintField;
    IBQuery9TOT_IMP_PROVVIGIONE: TFloatField;
    IBQuery9CAST_MANUALE: TSmallintField;
    IBQuery9NUM_DOC2: TIntegerField;
    IBQuery9SERIE_DOC2: TIBStringField;
    IBQuery9MESE_CONT: TIntegerField;
    IBQuery9ALTRE_DERT_SI_NO: TSmallintField;
    IBQuery9SPESE_IMBALLO: TFloatField;
    IBQuery9SPESE_BOLLI: TFloatField;
    IBQuery9SPESE_ACCESSORIE: TFloatField;
    IBQuery9SPESE_INCASSO: TFloatField;
    IBQuery9SPESE_SPEDIZIONE: TFloatField;
    IBQuery9SPESE_CONTRASS: TFloatField;
    IBQuery9CAU_TRASP_ID: TIBStringField;
    IBQuery9PER_ALTRA_DEST: TSmallintField;
    IBQuery9IMPORTO_CON_IVA1: TFloatField;
    IBQuery9TOTALE_MERCE: TFloatField;
    IBQuery9TOTALE_SERVIZI: TFloatField;
    IBQuery9TOTALE: TFloatField;
    IBQuery9TOTALE_IVA: TFloatField;
    IBQuery9TOTALE_IVATO: TFloatField;
    IBQuery9TOTALE_SCONTI: TFloatField;
    IBQuery9TOTALE_EURO: TFloatField;
    IBQuery9TOTALE_EURO_IVATO: TFloatField;
    IBQuery9CODIVA1: TIBStringField;
    IBQuery9ALIVA1: TFloatField;
    IBQuery9IMPON1: TFloatField;
    IBQuery9IMPOSTA1: TFloatField;
    IBQuery9CODIVA2: TIBStringField;
    IBQuery9ALIVA2: TFloatField;
    IBQuery9IMPON2: TFloatField;
    IBQuery9IMPOSTA2: TFloatField;
    IBQuery9CODIVA3: TIBStringField;
    IBQuery9ALIVA3: TFloatField;
    IBQuery9IMPON3: TFloatField;
    IBQuery9IMPOSTA3: TFloatField;
    IBQuery9CODIVA4: TIBStringField;
    IBQuery9ALIVA4: TFloatField;
    IBQuery9IMPON4: TFloatField;
    IBQuery9IMPOSTA4: TFloatField;
    IBQuery9CODIVA5: TIBStringField;
    IBQuery9ALIVA5: TFloatField;
    IBQuery9IMPON5: TFloatField;
    IBQuery9IMPOSTA5: TFloatField;
    IBQuery9TOT_SPESE: TFloatField;
    IBQuery9ALTRA_DEST: TIBStringField;
    IBQuery9SERIE_DOC: TIBStringField;
    IBQuery9CLI_FOR_IND: TIBStringField;
    IBQuery9ACCONTO: TFloatField;
    IBQuery9RATA1_IMPORTO: TFloatField;
    IBQuery9RATA2_IMPORTO: TFloatField;
    IBQuery9RATA3_IMPORTO: TFloatField;
    IBQuery9RATA4_IMPORTO: TFloatField;
    IBQuery9RATA5_IMPORTO: TFloatField;
    IBQuery9RATA6_IMPORTO: TFloatField;
    IBQuery9TEL1: TIBStringField;
    IBQuery9TEL2: TIBStringField;
    IBQuery9TEL3: TIBStringField;
    IBQuery9IVA_ESENTE: TSmallintField;
    IBQuery9IVA_ESENTE_ID: TIntegerField;
    IBQuery9VETTORE_IND: TIBStringField;
    IBQuery9VETTORE_IND2: TIBStringField;
    IBQuery9CLI_FOR_IND2: TIBStringField;
    IBQuery9RATA1_DATA: TDateField;
    IBQuery9RATA2_DATA: TDateField;
    IBQuery9RATA3_DATA: TDateField;
    IBQuery9RATA4_DATA: TDateField;
    IBQuery9RATA5_DATA: TDateField;
    IBQuery9RATA6_DATA: TDateField;
    IBQuery9PIANOCONTO_ID1: TIntegerField;
    IBQuery9ALTRA_DEST2: TIBStringField;
    IBQuery1TIPO_DOC: TIntegerField;
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
    IBQuery1NOTA: TIBStringField;
    dsFor: TDataSource;
    IBQuery1TOTALE_EURO: TFloatField;
    IBQuery8RIMESSA: TFloatField;
    RxMemoryData2RIMESSA: TFloatField;
    IBQuery1TIPO_CLIFOR: TSmallintField;
    RadioGroup5: TRadioGroup;
    IBQuery1TOT: TFloatField;
    IBQuery10: TIBQuery;
    IBQuery10CLIFOR_ID: TIntegerField;
    IBQuery10CLIENTE: TIBStringField;
    IBQuery10F_1: TFloatField;
    IBQuery10F_2: TFloatField;
    IBQuery10F_3: TFloatField;
    Label8: TLabel;
    RxDBCalcEdit3: TRxDBCalcEdit;
    IBQuery7ABBUONO: TFloatField;
    IBQuery8ABBUONO: TFloatField;
    IBQuery10F_4: TFloatField;
    IBQuery10TIPO_CLIFOR: TSmallintField;
    BitBtn7: TBitBtn;
    IBQuery8SALDO: TFloatField;
    SaveDialog1: TSaveDialog;
    BitBtn8: TBitBtn;
    OpenDialog1: TOpenDialog;
    IBDataSet1: TIBDataSet;
    IBDataSet1PK_CODICE: TIntegerField;
    IBDataSet1NUM_PROT: TIntegerField;
    IBDataSet1DATA_MOV: TDateField;
    IBDataSet1DATA_DOC: TDateField;
    IBDataSet1NUM_DOC: TIntegerField;
    IBDataSet1DESCR_MOV: TIBStringField;
    IBDataSet1DARE: TFloatField;
    IBDataSet1AVERE: TFloatField;
    IBDataSet1CLIFOR_ID: TIntegerField;
    IBDataSet1TIPO_CLIFOR: TSmallintField;
    IBDataSet1NOTE: TIBStringField;
    IBDataSet1NUM_ASS: TIntegerField;
    IBDataSet1DEPOSITO_CODICE: TIBStringField;
    IBDataSet1DEPOSITO_DESCR: TIBStringField;
    IBDataSet1ABBUONO: TFloatField;
    IBQuery7FASON: TIBStringField;
    IBQuery8FASON: TIBStringField;
    IBQuery1FASON: TIBStringField;
    RadioGroup7: TRadioGroup;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    IBQuery11: TIBQuery;
    IBQuery2CODICE: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2CODICE_ZONA_ID: TIBStringField;
    IBQuery2CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery2PROVVIGIONE: TFloatField;
    IBQuery2IMPORTO_FISSO: TFloatField;
    IBQuery2TIPO_CLI_FOR: TSmallintField;
    IBQuery2CLI_FOR_ID: TIntegerField;
    IBQuery2TIPO_SOMMA_PRV: TSmallintField;
    IBQuery2TIPO_PROVVIGIONE: TSmallintField;
    IBQuery2TOTALE_FATTURATO: TFloatField;
    IBQuery2TOTALE_PROVVIGIONE: TFloatField;
    IBQuery2CG: TIBStringField;
    IBQuery2CA: TIBStringField;
    IBQuery2TIPO_AG: TIntegerField;
    DataSource7: TDataSource;
    IBQuery10LISTINO: TIntegerField;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBDateEdit2: TDBDateEdit;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label9: TLabel;
    Edit4: TEdit;
    CheckBox2: TCheckBox;
    frRichExportObject1: TfrRichExportObject;
    frTextExportObject1: TfrTextExportObject;
    frRichObject1: TfrRichObject;
    frCompositeReport1: TfrCompositeReport;
    frDesigner1: TfrDesigner;
    IBQuery7FASON1: TIBStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBSumList1SumListChanged(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBQuery7AfterInsert(DataSet: TDataSet);
    procedure RxDBLookupCombo6Change(Sender: TObject);
    procedure RxDBLookupCombo7Change(Sender: TObject);
    procedure DBSumList2SumListChanged(Sender: TObject);
    procedure IBQuery7AfterPost(DataSet: TDataSet);
    procedure IBQuery7BeforeInsert(DataSet: TDataSet);
    procedure IBQuery7BeforeEdit(DataSet: TDataSet);
    procedure IBQuery7BeforeDelete(DataSet: TDataSet);
    procedure IBQuery7AfterDelete(DataSet: TDataSet);
    procedure IBQuery7AfterEdit(DataSet: TDataSet);
    procedure Stampa1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TipoBolla1Click(Sender: TObject);
    procedure RxDBLookupCombo7Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure IBQuery7BeforePost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RadioGroup7Click(Sender: TObject);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure RxDBLookupCombo9Change(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RxDBLookupCombo10Change(Sender: TObject);
    procedure RxDBLookupCombo11Change(Sender: TObject);
//    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContabR: TfContabR;

implementation

uses uAzDM, uForn, uClienti;

{$R *.DFM}

procedure TfContabR.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfContabR.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
begin
RxDBLookupCombo2.Enabled := False;
RxDBLookupCombo5.Enabled := False;
end;

if RadioGroup1.ItemIndex = 1 then
begin
RxDBLookupCombo2.Enabled := False;
RxDBLookupCombo5.Enabled := False;
RxDBLookupCombo5.LookupSource := dsoCli;
RxDBLookupCombo2.LookupSource := dsoCli;
RxDBLookupCombo2.Enabled := True;
RxDBLookupCombo5.Enabled := True;
end;

if RadioGroup1.ItemIndex = 2 then
begin
RxDBLookupCombo2.Enabled := False;
RxDBLookupCombo5.Enabled := False;
RxDBLookupCombo5.LookupSource := dsFor;
RxDBLookupCombo2.LookupSource := dsFor;
RxDBLookupCombo2.Enabled := True;
RxDBLookupCombo5.Enabled := True;
end

end;

procedure TfContabR.RadioGroup2Click(Sender: TObject);
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

procedure TfContabR.RxDBLookupCombo2Change(Sender: TObject);
begin
  RxDBLookupCombo5.KeyValue:=RxDBLookupCombo2.KeyValue;
end;

procedure TfContabR.RxDBLookupCombo5Change(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue:=RxDBLookupCombo5.KeyValue;
end;

procedure TfContabR.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo3.Value := RxDBLookupCombo4.Value;
end;

procedure TfContabR.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo4.Value := RxDBLookupCombo3.Value;
end;

procedure TfContabR.FormShow(Sender: TObject);
begin
IBQuery1.Active := True;
IBQuery7.Active := True;
dmodAz.ibqTab_Cli.Open;
dmodAz.ibqTab_For.Open;
dmodAz.ibTab_Agenti.open;
end;

procedure TfContabR.BitBtn1Click(Sender: TObject);
var
d1,d2 : string;
begin
d1:=(FormatDateTime('mm/dd/yyyy',DateEdit1.Date));
d2:=(FormatDateTime('mm/dd/yyyy',DateEdit2.Date));
with IBQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('SELECT causale_doc,causale_magazzino,KINGUA_ID,clifor_id,id_documento,nota,listino,');
SQL.Add('num_doc,TOTALE_IVATO,TOTALE as TOT,DATA_DOC,listino,agente_id,TIPO_DOC,TOTALE_EURO,TIPO_CLIFOR,tab_cli_for.denominazione,');
SQL.Add('tab_cli_for.fason,tab_agenti.descr from TAB_DOCUMENTI');
SQL.Add('left JOIN TAB_cli_for ON');
SQL.Add('TAB_Documenti.clifor_id=TAB_cli_for.id_cli_for');
SQL.Add('left JOIN TAB_agenti ON');
SQL.Add('TAB_Documenti.agente_id=TAB_agenti.codice');
SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =210) OR ');
SQL.Add('(TAB_DOCUMENTI.TIPO_DOC =212) or (TAB_DOCUMENTI.TIPO_DOC =23) or');
SQL.Add('(TAB_DOCUMENTI.TIPO_DOC =336) or (TAB_DOCUMENTI.TIPO_DOC =24) or');
SQL.Add('(TAB_DOCUMENTI.TIPO_DOC =211) or (TAB_DOCUMENTI.TIPO_DOC =28))');
SQL.Add(' and TAB_DOCUMENTI.DATA_DOC>='''+D1+'''');
SQL.Add(' and TAB_DOCUMENTI.DATA_DOC<='''+D2+'''');

if (RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 2) then
begin
SQL.Add('AND TAB_DOCUMENTI.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;

if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
end;

if (RadioGroup5.ItemIndex = 1) then
begin
SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR =:parTIPOCLI');
ParamByName('parTIPOCLI').AsInteger:= 1;
end;
if (RadioGroup5.ItemIndex = 2) then
begin
SQL.Add('AND TAB_DOCUMENTI.TIPO_CLIFOR =:parTIPOCLI');
SQL.Add('AND TAB_CLI_FOR.FASON <>:parTIPOFAS');
ParamByName('parTIPOCLI').AsInteger:= 2;
ParamByName('parTIPOFAS').AsString:= 'S';
end;
if (RadioGroup5.ItemIndex = 3) then
begin
SQL.Add('AND TAB_CLI_FOR.FASON =:parTIPOFAS');
ParamByName('parTIPOFAS').AsString:= 'S';
end;
if RadioGroup7.ItemIndex = 1 then
begin
SQL.Add('AND TAB_cli_for.ca=:parca');
ParamByName('parca').AsString:= RxDBLookupCombo8.KeyValue;
end;

if CheckBox1.Checked then
begin
SQL.Add('AND TAB_DOCUMENTI.KINGUA_ID =:parGr');
ParamByName('parGr').AsString:= Edit3.Text;
end;


if RadioGroup6.ItemIndex = 0 then
begin
SQL.Add('order by DATA_DOC,NUM_DOC');
end;
if RadioGroup6.ItemIndex = 1 then
begin
SQL.Add('order by NUM_DOC,DATA_DOC');
end;
if RadioGroup6.ItemIndex = 2 then
begin
SQL.Add('order by tab_cli_for.denominazione,NUM_DOC,DATA_DOC');
end;
if RadioGroup6.ItemIndex = 3 then
begin
SQL.Add('order by tab_agenti.descr,NUM_DOC,DATA_DOC');
end;
if RadioGroup6.ItemIndex = 4 then
begin
SQL.Add('order by DATA_DOC,NUM_DOC');
end;
Open;
end;

with IBQuery7 do
begin
Close;
SQL.Clear;
SQL.Add('select contabilitar.*,tab_cli_for.denominazione,tab_cli_for.Fason');
SQL.Add('from contabilitar');
SQL.Add('inner JOIN TAB_cli_for ON');
SQL.Add('TAB_cli_for.id_cli_for=contabilitar.clifor_id');
//SQL.Add('inner JOIN TAB_agenti ON');
//SQL.Add('TAB_agenti.codice=tab_cli_for.AGENTE_ID');
SQL.Add('where contabilitar.data_mov >='''+D1+'''');
SQL.Add(' and contabilitar.data_mov<='''+D2+'''');

//ParamByName('parDataDa').AsDate:=DateEdit1.Date;
//ParamByName('parDataA').AsDate:=DateEdit2.Date;

if (RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 2) then
begin
SQL.Add('AND contabilitar.CLIFOR_ID =:parfas');
ParamByName('parfas').AsInteger:= RxDBLookupCombo2.KeyValue;
end;
if RadioGroup2.ItemIndex = 1 then
begin
SQL.Add('AND contabilitar.AGENTE_ID =:parag');
ParamByName('parag').AsString:= RxDBLookupCombo4.KeyValue;
end;

if (RadioGroup5.ItemIndex = 1) then
begin
SQL.Add('AND contabilitar.TIPO_CLIFOR =:parTIPOCLI');
ParamByName('parTIPOCLI').AsInteger:= 1;
end;
if (RadioGroup5.ItemIndex = 2) then
begin
SQL.Add('AND contabilitar.TIPO_CLIFOR =:parTIPOCLI');
ParamByName('parTIPOCLI').AsInteger:= 2;
end;
if (RadioGroup5.ItemIndex = 3) then
begin
SQL.Add('AND TAB_CLI_FOR.FASON =:parTIPOFAS');
ParamByName('parTIPOFAS').AsString:= 'S';
end;

if RadioGroup7.ItemIndex = 1 then
begin
SQL.Add('AND TAB_cli_for.ca=:parca');
ParamByName('parca').AsString:= RxDBLookupCombo8.KeyValue;
end;

if CheckBox2.Checked = TRUE then
begin
SQL.Add('AND contabilitar.DESCR_MOV LIKE '''+edit4.Text+'%''');

end;

if RadioGroup6.ItemIndex = 0 then
begin
SQL.Add('order by data_MOV');
end;
if RadioGroup6.ItemIndex = 2 then
begin
SQL.Add('order by tab_cli_for.denominazione,data_MOV');
end;
if RadioGroup6.ItemIndex = 4 then
begin
SQL.Add('order by data_DOC');
end;
Open;

end;
RxCalcEdit1.Value:=Edit2.Value-Edit1.Value;

end;

procedure TfContabR.DBSumList1SumListChanged(Sender: TObject);
begin
  Edit1.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[0].SumValue);
end;

procedure TfContabR.IBQuery1CalcFields(DataSet: TDataSet);
begin
{
try
if IBQuery1LISTINO.AsInteger <6 then
IBQuery1TOTALE.AsFloat := IBQuery1TOT.AsFloat*2
else
IBQuery1TOTALE.AsFloat := IBQuery1TOT.AsFloat;
except}
IBQuery1TOTALE.AsFloat := IBQuery1TOT.AsFloat;
//end;
end;

procedure TfContabR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
IBQuery1.Close;
IBQuery8.Close;
IBQuery7.Close;
dmodAz.ibqTab_Cli.Close;
dmodAz.ibTab_Agenti.Close;
dmodAz.ibqTab_Cli.Open;
dmodAz.ibTab_Agenti.Open;

end;

procedure TfContabR.IBQuery7AfterInsert(DataSet: TDataSet);
begin
{
dmodAz.ibspPK_Contab.ExecProc;
IBQuery7.FieldByName('PK_CODICE').AsInteger:=
             dmodAz.ibspPK_Contab.ParamByName('PK_CONTAB').AsInteger;
}
 IBQuery7.FieldByName('DATA_MOV').AsDateTime:=Now;
 IBQuery7.FieldByName('Dare').AsFloat:=0;
 IBQuery7.FieldByName('Avere').AsFloat:=0;



end;

procedure TfContabR.RxDBLookupCombo6Change(Sender: TObject);
begin
  RxDBLookupCombo7.KeyValue:=RxDBLookupCombo6.KeyValue;
  RxDBLookupCombo10.KeyValue := RxDBLookupCombo7.LookupSource.DataSet.FieldByName('Agente_id').AsString;
end;

procedure TfContabR.RxDBLookupCombo7Change(Sender: TObject);
begin
  RxDBLookupCombo6.KeyValue:=RxDBLookupCombo7.KeyValue;
  RxDBLookupCombo10.KeyValue := RxDBLookupCombo7.LookupSource.DataSet.FieldByName('Agente_id').AsString;

end;

procedure TfContabR.DBSumList2SumListChanged(Sender: TObject);
begin
  Edit2.Text := FormatFloat('#,##0.00',DBSumList2.SumCollection.Items[0].SumValue);
end;

procedure TfContabR.IBQuery7AfterPost(DataSet: TDataSet);
begin
dmodAz.ibtrDef.CommitRetaining;
end;

procedure TfContabR.IBQuery7BeforeInsert(DataSet: TDataSet);
begin
If Not(dmodAz.ibtrDef.InTransaction)
  Then dmodAz.ibtrDef.StartTransaction;
end;

procedure TfContabR.IBQuery7BeforeEdit(DataSet: TDataSet);
begin
If Not(dmodAz.ibtrDef.InTransaction)
  Then dmodAz.ibtrDef.StartTransaction;
end;

procedure TfContabR.IBQuery7BeforeDelete(DataSet: TDataSet);
begin
 If Not(dmodAz.ibtrDef.InTransaction)
   Then dmodAz.ibtrDef.StartTransaction;
end;

procedure TfContabR.IBQuery7AfterDelete(DataSet: TDataSet);
begin
dmodAz.ibtrDef.CommitRetaining;
end;

procedure TfContabR.IBQuery7AfterEdit(DataSet: TDataSet);
begin
dmodAz.ibtrDef.CommitRetaining;
end;

procedure TfContabR.Stampa1Click(Sender: TObject);
begin
frReport2.DesignReport;
end;

procedure TfContabR.BitBtn2Click(Sender: TObject);
var
a:Double;
SAL : Currency;
begin
SAL:=0;
IBQuery8.Close;
with IBQuery8 do begin
SQL.Clear;
SQL.Add('delete from Contabilitar2');
Open;
Close;

SQL.Clear;
SQL.Add('select * from Contabilitar2');
SQL.Add('order by data_doc');
Open
end;
a:= 1;
IBQuery1.First;
while not IBQuery1.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery1.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('DATA_MOV').AsDateTime :=IBQuery1.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery1.FieldByName('NUM_DOC').AsFloat;


if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 210 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('DARE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 212 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='RESO';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if ((IBQuery1.FieldByName('TIPO_DOC').AsInteger = 211) or  (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 23)
 or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 24) or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 336)) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
//except
//IBQuery8.FieldByName('LISTINO').AsInteger :=10;
//end;
try
begin
if (IBQuery1.FieldByName('Listino').AsInteger<6)  then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 28) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='Nota cred.';
IBQuery8.FieldByName('DARE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;


IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery1.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery1.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery1.FieldByName('DESCR').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery1.FieldByName('NOTA').AsString;
IBQuery8.FieldByName('RIMESSA').AsFloat :=IBQuery1.FieldByName('TOTALE_EURO').AsFloat;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery1.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.FieldByName('NUM_PROT').AsInteger :=IBQuery1.FieldByName('ID_DOCUMENTO').AsInteger;
//IBQuery8.FieldByName('SALDO').AsFloat :=IBQuery8.FieldByName('DARE').AsFloat-
//        IBQuery8.FieldByName('AVERE').AsFloat+SAL;
//SAL:=IBQuery8.FieldByName('SALDO').AsFloat;
IBQuery8.Post;
a:=a+1;
IBQuery1.Next;
end;
a:= a+1;
IBQuery7.First;
while not IBQuery7.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery7.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('DATA_MOV').AsDateTime :=IBQuery7.FieldByName('DATA_MOV').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery7.FieldByName('NUM_DOC').AsFloat;
IBQuery8.FieldByName('DESCR_MOV').AsString :=IBQuery7.FieldByName('DESCR_MOV').AsString;
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery7.FieldByName('DARE').AsFloat;
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery7.FieldByName('AVERE').AsFloat;
IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery7.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery7.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery7.FieldByName('AGENTE_id').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery7.FieldByName('NOTE').AsString;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery7.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.FieldByName('ABBUONO').AsFloat :=IBQuery7.FieldByName('ABBUONO').AsFloat;
IBQuery8.FieldByName('NUM_PROT').AsInteger :=IBQuery7.FieldByName('PK_CODICE').AsInteger;
IBQuery8.Post;
a:=a+1;
IBQuery7.Next;
end;

with IBQuery8 do begin
//ApplyUpdates;
Close;
SQL.Clear;
SQL.Add('select * from Contabilitar2');
if RadioGroup6.ItemIndex = 0 then
SQL.Add('order by data_doc,NUM_DOC');
if RadioGroup6.ItemIndex = 4 then
SQL.Add('order by data_MOV,NUM_DOC');
Open
end;

IBQuery8.First;
while not IBQuery8.Eof do
begin
IBQuery8.edit;
if IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger = 1 then
IBQuery8.FieldByName('SALDO').AsFloat :=(IBQuery8.FieldByName('AVERE').AsFloat-IBQuery8.FieldByName('RIMESSA').AsFloat)-
        IBQuery8.FieldByName('DARE').AsFloat+SAL-IBQuery8.FieldByName('ABBUONO').AsFloat;
if IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger = 2 then
IBQuery8.FieldByName('SALDO').AsFloat :=IBQuery8.FieldByName('AVERE').AsFloat-
        (IBQuery8.FieldByName('DARE').AsFloat-IBQuery8.FieldByName('RIMESSA').AsFloat)+SAL+IBQuery8.FieldByName('ABBUONO').AsFloat;

SAL:=IBQuery8.FieldByName('SALDO').AsFloat;
IBQuery8.Post;
IBQuery8.Next;

end;

frReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabRS1.frf');
frReport2.ShowReport;
dmodAz.ibtrDef.CommitRetaining;


end;

procedure TfContabR.BitBtn5Click(Sender: TObject);
var
a:Double;
SAL : Currency;
begin
SAL:=0;
IBQuery8.Close;
with IBQuery8 do begin
SQL.Clear;
SQL.Add('delete from Contabilitar2');
Open;
Close;
SQL.Clear;

SQL.Add('select * from Contabilitar2');
SQL.Add('order by data_doc');
Open
end;
a:= 1;
IBQuery1.First;
while not IBQuery1.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery1.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('DATA_MOV').AsDateTime :=IBQuery1.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery1.FieldByName('NUM_DOC').AsFloat;
if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 210 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('DARE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 212 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='RESO';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if ((IBQuery1.FieldByName('TIPO_DOC').AsInteger = 211) or  (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 23)
 or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 24) or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 336)) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
//except
//IBQuery8.FieldByName('LISTINO').AsInteger :=10;
//end;

try
begin
if (IBQuery1.FieldByName('Listino').AsInteger<6)  then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 28) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='Nota cred.';
IBQuery8.FieldByName('DARE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery1.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery1.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery1.FieldByName('DESCR').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery1.FieldByName('NOTA').AsString;
IBQuery8.FieldByName('RIMESSA').AsFloat :=IBQuery1.FieldByName('TOTALE_EURO').AsFloat;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery1.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.Post;
a:=a+1;
IBQuery1.Next;
end;
a:= a+1;
IBQuery7.First;
while not IBQuery7.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery7.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('DATA_MOV').AsDateTime :=IBQuery7.FieldByName('DATA_MOV').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery7.FieldByName('NUM_DOC').AsFloat;
IBQuery8.FieldByName('DESCR_MOV').AsString :=IBQuery7.FieldByName('DESCR_MOV').AsString;
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery7.FieldByName('DARE').AsFloat;
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery7.FieldByName('AVERE').AsFloat;
IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery7.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery7.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery7.FieldByName('AGENTE_id').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery7.FieldByName('NOTE').AsString;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery7.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.FieldByName('ABBUONO').AsFloat :=IBQuery7.FieldByName('ABBUONO').AsFloat;
IBQuery8.Post;
a:=a+1;
IBQuery7.Next;
end;

with IBQuery8 do begin
//ApplyUpdates;
Close;
SQL.Clear;
SQL.Add('select * from Contabilitar2');
if RadioGroup6.ItemIndex = 0 then
SQL.Add('order by data_doc,NUM_DOC');
if RadioGroup6.ItemIndex = 4 then
SQL.Add('order by data_MOV,NUM_DOC');
Open
end;

IBQuery8.First;
while not IBQuery8.Eof do
begin
IBQuery8.edit;
if IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger = 1 then
IBQuery8.FieldByName('SALDO').AsFloat :=(IBQuery8.FieldByName('AVERE').AsFloat-IBQuery8.FieldByName('RIMESSA').AsFloat)-
        IBQuery8.FieldByName('DARE').AsFloat+SAL-IBQuery8.FieldByName('ABBUONO').AsFloat;
if IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger = 2 then
IBQuery8.FieldByName('SALDO').AsFloat :=IBQuery8.FieldByName('AVERE').AsFloat-
        (IBQuery8.FieldByName('DARE').AsFloat-IBQuery8.FieldByName('RIMESSA').AsFloat)+SAL+IBQuery8.FieldByName('ABBUONO').AsFloat;

SAL:=IBQuery8.FieldByName('SALDO').AsFloat;
IBQuery8.Post;
IBQuery8.Next;

end;

frReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabRS2.frf');
frReport2.ShowReport;
dmodAz.ibtrDef.CommitRetaining;

end;


procedure TfContabR.BitBtn6Click(Sender: TObject);
var
a:Double;
SAL : Currency;
begin
SAL:=0;
IBQuery8.Close;
with IBQuery8 do begin
SQL.Clear;
SQL.Add('delete from Contabilitar2');
Open;
Close;
SQL.Clear;

SQL.Add('select * from Contabilitar2');
SQL.Add('order by data_doc');
Open
end;
a:= 1;
IBQuery1.First;
while not IBQuery1.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery1.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('DATA_MOV').AsDateTime :=IBQuery1.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery1.FieldByName('NUM_DOC').AsFloat;
if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 210 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('DARE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 212 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='RESO';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if ((IBQuery1.FieldByName('TIPO_DOC').AsInteger = 211) or  (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 23)
 or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 24) or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 336)) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
//except
//IBQuery8.FieldByName('LISTINO').AsInteger :=10;
//end;

try
begin
if (IBQuery1.FieldByName('Listino').AsInteger<6)  then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 28) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='Nota cred.';
IBQuery8.FieldByName('DARE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery1.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery1.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery1.FieldByName('DESCR').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery1.FieldByName('NOTA').AsString;
IBQuery8.FieldByName('RIMESSA').AsFloat :=IBQuery1.FieldByName('TOTALE_EURO').AsFloat;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery1.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.Post;
a:=a+1;
IBQuery1.Next;
end;
a:= a+1;
IBQuery7.First;
while not IBQuery7.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery7.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('DATA_MOV').AsDateTime :=IBQuery7.FieldByName('DATA_MOV').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery7.FieldByName('NUM_DOC').AsFloat;
IBQuery8.FieldByName('DESCR_MOV').AsString :=IBQuery7.FieldByName('DESCR_MOV').AsString;
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery7.FieldByName('DARE').AsFloat;
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery7.FieldByName('AVERE').AsFloat;
IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery7.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery7.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery7.FieldByName('AGENTE_id').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery7.FieldByName('NOTE').AsString;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery7.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.FieldByName('ABBUONO').AsFloat :=IBQuery7.FieldByName('ABBUONO').AsFloat;
IBQuery8.Post;
a:=a+1;
IBQuery7.Next;
end;

with IBQuery8 do begin
//ApplyUpdates;
Close;
SQL.Clear;
SQL.Add('select * from Contabilitar2');
if RadioGroup6.ItemIndex = 0 then
SQL.Add('order by data_doc,NUM_DOC');
if RadioGroup6.ItemIndex = 4 then
SQL.Add('order by data_MOV,NUM_DOC');

Open
end;

IBQuery8.First;
while not IBQuery8.Eof do
begin
IBQuery8.edit;
if IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger = 1 then
IBQuery8.FieldByName('SALDO').AsFloat :=(IBQuery8.FieldByName('AVERE').AsFloat-IBQuery8.FieldByName('RIMESSA').AsFloat)-
        IBQuery8.FieldByName('DARE').AsFloat+SAL-IBQuery8.FieldByName('ABBUONO').AsFloat;
if IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger = 2 then
IBQuery8.FieldByName('SALDO').AsFloat :=IBQuery8.FieldByName('AVERE').AsFloat-
        (IBQuery8.FieldByName('DARE').AsFloat-IBQuery8.FieldByName('RIMESSA').AsFloat)+SAL+IBQuery8.FieldByName('ABBUONO').AsFloat;

SAL:=IBQuery8.FieldByName('SALDO').AsFloat;
IBQuery8.Post;
IBQuery8.Next;

end;

frReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabRS3.frf');
frReport2.ShowReport;
dmodAz.ibtrDef.CommitRetaining;

end;


procedure TfContabR.TipoBolla1Click(Sender: TObject);
begin
IBQuery9.Close;
IBQuery9.Open;
IBQuery9.First;
while not IBQuery9.Eof do
begin
end;
end;

procedure TfContabR.RxDBLookupCombo7Click(Sender: TObject);
begin
  RxDBLookupCombo6.KeyValue:=RxDBLookupCombo7.KeyValue;
end;

procedure TfContabR.RadioGroup4Click(Sender: TObject);
begin
if RadioGroup4.ItemIndex = 0 then
begin
RxDBLookupCombo6.LookupSource := dsoCli;
RxDBLookupCombo7.LookupSource := dsoCli;
end
else
begin
RxDBLookupCombo6.LookupSource := dsFor;
RxDBLookupCombo7.LookupSource := dsFor;
end;

end;

procedure TfContabR.RadioGroup5Click(Sender: TObject);
begin
if (RadioGroup5.ItemIndex =1) or (RadioGroup5.ItemIndex =2)
then
RadioGroup1.ItemIndex := 0;
end;

procedure TfContabR.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
RxDBLookupCombo6.Enabled := True;
RxDBLookupCombo7.Enabled := True;
RxDBLookupCombo10.Enabled := True;
RxDBLookupCombo11.Enabled := True;
  If (Button=nbEdit)
   Then Begin
if  DBGrid1.DataSource.DataSet.FieldByName('TIPO_CLIFOR').AsInteger = 1
then
RadioGroup4.ItemIndex := 0
else
RadioGroup4.ItemIndex := 1;
end;
end;

procedure TfContabR.IBQuery7BeforePost(DataSet: TDataSet);
begin
IBQuery7TIPO_CLIFOR.AsInteger := RxDBLookupCombo6.LookupSource.DataSet.fieldbyname('TIPO').AsInteger;
end;

procedure TfContabR.BitBtn4Click(Sender: TObject);
var
a:Double;
Scelta, b, c, x,d,e,f,s1,g,h : String;
FT: TextFile;
m1:integer;
begin
IBQuery8.Close;
with IBQuery8 do begin
SQL.Clear;
SQL.Add('delete from Contabilitar2');
Open;
Close;

SQL.Clear;
SQL.Add('select * from Contabilitar2');
SQL.Add('order by data_doc');
Open
end;
a:= 1;
IBQuery1.First;
while not IBQuery1.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery1.FieldByName('DATA_DOC').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery1.FieldByName('NUM_DOC').AsFloat;
if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 210 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('DARE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if IBQuery1.FieldByName('TIPO_DOC').AsInteger = 212 then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='RESO';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;

try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if ((IBQuery1.FieldByName('TIPO_DOC').AsInteger = 211) or  (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 23)
 or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 24) or (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 336)) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='BOLLA';
IBQuery8.FieldByName('AVERE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
//except
//IBQuery8.FieldByName('LISTINO').AsInteger :=10;
//end;

try
begin
if (IBQuery1.FieldByName('Listino').AsInteger<6)  then
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

if (IBQuery1.FieldByName('TIPO_DOC').AsInteger = 28) then
begin
IBQuery8.FieldByName('DESCR_MOV').AsString :='Nota cred.';
IBQuery8.FieldByName('DARE').AsFloat :=0;
//try
IBQuery8.FieldByName('LISTINO').AsVariant :=IBQuery1.FieldByName('LISTINO').AsVariant;
try
begin
if IBQuery1.FieldByName('Listino').AsInteger<6 then
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat*2
else
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
except
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery1.FieldByName('TOTALE').AsFloat;
end;
end;

IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery1.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery1.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery1.FieldByName('DESCR').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery1.FieldByName('NOTA').AsString;
IBQuery8.FieldByName('RIMESSA').AsFloat :=IBQuery1.FieldByName('TOTALE_EURO').AsFloat;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery1.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.Post;
a:=a+1;
IBQuery1.Next;
end;
a:= a+1;
IBQuery7.First;
while not IBQuery7.Eof do
begin
IBQuery8.Insert;
IBQuery8.FieldByName('PK_CODICE').AsFloat :=a;
IBQuery8.FieldByName('DATA_DOC').AsDateTime :=IBQuery7.FieldByName('DATA_MOV').AsDateTime;
IBQuery8.FieldByName('NUM_DOC').AsFloat :=IBQuery7.FieldByName('NUM_DOC').AsFloat;
IBQuery8.FieldByName('DESCR_MOV').AsString :=IBQuery7.FieldByName('DESCR_MOV').AsString;
IBQuery8.FieldByName('DARE').AsFloat :=IBQuery7.FieldByName('DARE').AsFloat;
IBQuery8.FieldByName('AVERE').AsFloat :=IBQuery7.FieldByName('AVERE').AsFloat;
IBQuery8.FieldByName('CLIFOR_ID').AsFloat :=IBQuery7.FieldByName('CLIFOR_ID').AsFloat;
IBQuery8.FieldByName('CLIENTE').AsString :=IBQuery7.FieldByName('DENOMINAZIONE').AsString;
IBQuery8.FieldByName('AGENTE').AsString :=IBQuery7.FieldByName('AGENTE_id').AsString;
IBQuery8.FieldByName('NOTE').AsString :=IBQuery7.FieldByName('NOTE').AsString;
IBQuery8.FieldByName('TIPO_CLIFOR').AsInteger :=IBQuery7.FieldByName('TIPO_CLIFOR').AsInteger;
IBQuery8.FieldByName('ABBUONO').AsFloat :=IBQuery7.FieldByName('ABBUONO').AsFloat;
IBQuery8.Post;
a:=a+1;
IBQuery7.Next;
end;

with IBQuery8 do begin
//ApplyUpdates;
Close;
SQL.Clear;
SQL.Add('select * from Contabilitar2');
SQL.Add('order by data_doc,NUM_DOC');
Open
end;

IBQuery10.Close;
IBQuery10.Open;
scelta:=InputBox('Scegli il tipo di stampa','1)Stampa - 2)Esporta Totali','1');
if scelta = '1' then
begin
frReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'frTotContR.frf');
frReport2.ShowReport;
end;
if scelta = '2' then
begin
if Savedialog1.execute then
if FileExists(SaveDialog1.FileName) then
If (MessageDlg('File ESISTENTE.. Riscriverlo?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;
x:=Savedialog1.FileName;


  AssignFile(FT, x);
  Rewrite(FT);
  IBQuery10.First;
  while not (IBQuery10.Eof) do
  begin

  b := IBQuery10.Fieldbyname('CLIFOR_ID').asstring;
  S1:='            ';
  m1:=Length(b);
  if m1>=12 then
  b:=leftstr(b,12)
  else
  begin
  m1:=12-m1;
  b:=b+leftstr(S1,m1);
  end;

  c := IBQuery10.Fieldbyname('CLIENTE').asstring;
  S1:='                                                                                                    ';
  m1:=Length(c);
  if m1>=100 then
  c:=leftstr(c,100)
  else
  begin
  m1:=100-m1;
  c:=c+leftstr(S1,m1);
  end;

  d := IBQuery10.Fieldbyname('TIPO_CLIFOR').asstring;
  S1:='         ';
  m1:=Length(d);
  if m1>=10 then
  d:=leftstr(d,10)
  else
  begin
  m1:=10-m1;
  d:=d+leftstr(S1,m1);
  end;

 if not VarIsNull(IBQuery10.Fieldbyname('F_1').AsFloat) then
  e := FormatFloat('0.00',IBQuery10.Fieldbyname('F_1').AsFloat)
else
e := '0';
  S1:='                    ';
  m1:=Length(e);
  if m1>=12 then
  e:=leftstr(e,12)
  else
  begin
  m1:=12-m1;
  e:=e+leftstr(S1,m1);
  end;

 if not VarIsNull(IBQuery10.Fieldbyname('F_2').AsFloat) then
  f := FormatFloat('0.00',IBQuery10.Fieldbyname('F_2').AsFloat)
else
f := '0';
  S1:='                    ';
  m1:=Length(f);
  if m1>=12 then
  e:=leftstr(f,12)
  else
  begin
  m1:=12-m1;
  f:=f+leftstr(S1,m1);
  end;

 if not VarIsNull(IBQuery10.Fieldbyname('F_3').AsFloat) then
  g := FormatFloat('0.00',IBQuery10.Fieldbyname('F_3').AsFloat)
else
g := '0';
  S1:='                    ';
  m1:=Length(g);
  if m1>=12 then
  g:=leftstr(g,12)
  else
  begin
  m1:=12-m1;
  g:=g+leftstr(S1,m1);
  end;

 if not VarIsNull(IBQuery10.Fieldbyname('F_4').AsFloat) then
  h := FormatFloat('0.00',IBQuery10.Fieldbyname('F_4').AsFloat)
else
h := '0';
  S1:='                    ';
  m1:=Length(h);
  if m1>=12 then
  h:=leftstr(h,12)
  else
  begin
  m1:=12-m1;
  h:=h+leftstr(S1,m1);
  end;

  Writeln(FT, b + c+d+e+f+g+h);
  IBQuery10.Next;
  end;
  CloseFile(FT);

end;
end;

procedure TfContabR.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  If (Button=nbEdit)
   Then Begin
if  DBGrid1.DataSource.DataSet.FieldByName('TIPO_CLIFOR').AsInteger = 1
then
RadioGroup4.ItemIndex := 0
else
RadioGroup4.ItemIndex := 1;
end;
end;

procedure TfContabR.BitBtn8Click(Sender: TObject);
var
FileData: TStringList;
i:integer;
begin
 FileData := TStringList.Create;
 try
 OpenDialog1.Title := 'Apertura file di documenti';
 OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
 if OpenDialog1.Execute then begin
 FileData.Clear;
 FileData.LoadFromFile(OpenDialog1.FileName);
 for i := 0 to FileData.Count - 1 do begin
IBDataSet1.Open;
 IBDataSet1.Insert;
IBDataSet1.FieldByName('CLIFOR_ID').AsString:=
     Trim(Copy(FileData.Strings[i], 1, 12));
IBDataSet1.FieldByName('DESCR_MOV').AsString:= 'SALDI';
IBDataSet1.FieldByName('DATA_MOV').AsDateTime:= Now;

IBDataSet1.FieldByName('TIPO_CLIFOR').AsString:=Trim(Copy(FileData.Strings[i], 113, 7));
IBDataSet1.FieldByName('DARE').AsFloat:=
     StrTofloat(Trim(Copy(FileData.Strings[i], 123, 11)));
IBDataSet1.FieldByName('AVERE').AsFloat:=
     StrTofloat(Trim(Copy(FileData.Strings[i], 135, 11)));
IBDataSet1.FieldByName('ABBUONO').AsFloat:=
     StrTofloat(Trim(Copy(FileData.Strings[i], 159, 11)));

IBDataSet1.Post;
     end;
IBQuery7.close;
IBQuery7.Open;
end;

   finally
      FileData.Free;

end;

end;

procedure TfContabR.BitBtn7Click(Sender: TObject);
var
Scelta:string;
begin
scelta:=InputBox('Scegli il tipo di stampa','1)Cli./For. - 2)Spese','1');
if scelta = '1' then
begin


end;
end;

procedure TfContabR.RadioGroup7Click(Sender: TObject);
begin
if RadioGroup7.ItemIndex = 1 then
begin
RxDBLookupCombo8.Enabled := True;
RxDBLookupCombo9.Enabled := True;
IBQuery11.Open;
end
else
begin
RxDBLookupCombo8.Enabled := False;
RxDBLookupCombo9.Enabled := False;
IBQuery11.close;
end;

end;

procedure TfContabR.RxDBLookupCombo8Change(Sender: TObject);
begin
RxDBLookupCombo9.Value := RxDBLookupCombo9.Value;
end;

procedure TfContabR.RxDBLookupCombo9Change(Sender: TObject);
begin
RxDBLookupCombo8.Value := RxDBLookupCombo9.Value;
end;

procedure TfContabR.BitBtn10Click(Sender: TObject);
begin
fForn:=TfForn.Create(Self);

fForn.ShowModal;
fForn.Free;
end;

procedure TfContabR.BitBtn9Click(Sender: TObject);
begin
fClienti:=TfClienti.Create(Self);

fClienti.ShowModal;
fClienti.Free;
end;

procedure TfContabR.RxDBLookupCombo10Change(Sender: TObject);
begin
RxDBLookupCombo11.Value := RxDBLookupCombo10.Value;
end;

procedure TfContabR.RxDBLookupCombo11Change(Sender: TObject);
begin
RxDBLookupCombo10.Value := RxDBLookupCombo11.Value;
end;

end.
