unit uVisDoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask, Db, Buttons, RxLookup,
  Menus, IBCustomDataSet, IBQuery, FR_Class;

type
  TfVisDoc = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    dbgDocView: TDBGrid;
    gbData: TGroupBox;
    laDataDa: TLabel;
    laDataA: TLabel;
    meDataDa: TMaskEdit;
    meDataA: TMaskEdit;
    gbPagamento: TGroupBox;
    rabPagTutti: TRadioButton;
    rabPagScegli: TRadioButton;
    LookPagCod: TDBLookupComboBox;
    LookPagDescr: TDBLookupComboBox;
    gbAgente: TGroupBox;
    rabAgTutti: TRadioButton;
    rabAgScegli: TRadioButton;
    LookAgCod: TDBLookupComboBox;
    LookAgDescr: TDBLookupComboBox;
    gbTipoCliFor: TGroupBox;
    rabTipoCliFornTutti: TRadioButton;
    rabTipoFornTutti: TRadioButton;
    rabTipoFornSc: TRadioButton;
    rabTipoCliTutti: TRadioButton;
    rabTipoCliSc: TRadioButton;
    dsoDocFiltered: TDataSource;
    dsoPagamento: TDataSource;
    dsoAgente: TDataSource;
    dsoCli: TDataSource;
    dsoForn: TDataSource;
    bbEsci: TBitBtn;
    bbStampa: TBitBtn;
    dsoCliForn: TDataSource;
    gbCausale: TGroupBox;
    rabCauTutti: TRadioButton;
    rabCauSc: TRadioButton;
    LookCauCod: TDBLookupComboBox;
    LookCauDescr: TDBLookupComboBox;
    dsoCauMag: TDataSource;
    BitBtn1: TBitBtn;
    LookCliCod: TRxDBLookupCombo;
    LookCliDescr: TRxDBLookupCombo;
    LookFornDescr: TRxDBLookupCombo;
    LookFornCod: TRxDBLookupCombo;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    IBQuery1: TIBQuery;
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
    IBQuery1SCONTO1: TFloatField;
    IBQuery1AGENTE_ID: TIBStringField;
    IBQuery1DATA_CONSEGNA: TDateTimeField;
    IBQuery1NUM_DOC: TIntegerField;
    IBQuery1NRCOLLI: TFloatField;
    IBQuery1SCONTO2: TFloatField;
    IBQuery1IMPORTO_SCONTO: TFloatField;
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
    IBQuery1SUBATTIVITA2: TIBStringField;
    IBQuery1SOGGETTO_CEE: TSmallintField;
    IBQuery1REPORT: TIBStringField;
    IBQuery1RILEVA_ACCONTO: TSmallintField;
    IBQuery1ORA: TIBStringField;
    IBQuery1FATT_ACCOMP: TSmallintField;
    IBQuery1TIPO_FATT: TSmallintField;
    IBQuery1ST_NOTE_CLIFOR: TSmallintField;
    IBQuery1IVATO: TSmallintField;
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
    IBQuery1IMPORTO_CON_IVA: TFloatField;
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
    IBQuery1PIANOCONTO_ID: TIntegerField;
    IBQuery1ALTRA_DEST2: TIBStringField;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1CODICE_ZONA_ID: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1IMPORTO_FISSO: TFloatField;
    IBQuery1TIPO_CLI_FOR: TSmallintField;
    IBQuery1CLI_FOR_ID: TIntegerField;
    IBQuery1TIPO_SOMMA_PRV: TSmallintField;
    IBQuery1TIPO_PROVVIGIONE1: TSmallintField;
    IBQuery1TOTALE_FATTURATO: TFloatField;
    IBQuery1TOTALE_PROVVIGIONE: TFloatField;
    IBQuery1CG: TIBStringField;
    IBQuery1CA: TIBStringField;
    IBQuery1TIPO_AG: TIntegerField;
    IBQuery1CR: TIBStringField;
    IBQuery1ID_CLI_FOR: TIntegerField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DENOMINAZIONE: TIBStringField;
    IBQuery1COGNOME: TIBStringField;
    IBQuery1NOME: TIBStringField;
    IBQuery1NOME_ALTRO: TIBStringField;
    IBQuery1FULL_NAME: TIBStringField;
    IBQuery1INDIRIZZO: TIBStringField;
    IBQuery1COMUNE_ID: TIntegerField;
    IBQuery1PARTITA_IVA: TIBStringField;
    IBQuery1CODICE_FISCALE: TIBStringField;
    IBQuery1PERSONA_FISICA: TSmallintField;
    IBQuery1PIANO_CONTI_ID: TIntegerField;
    IBQuery1CONTO_CORRENTE: TIBStringField;
    IBQuery1MONETA_ID1: TIBStringField;
    IBQuery1PAGAMENTO_ID1: TIBStringField;
    IBQuery1CATEGORIA_CLIENTE_ID: TIBStringField;
    IBQuery1AGENTE_ID1: TIBStringField;
    IBQuery1LINGUA_ID: TIBStringField;
    IBQuery1CODICE_LISTINO: TIBStringField;
    IBQuery1SCONTO_TESTATA1: TFloatField;
    IBQuery1SCONTO_TESTATA2: TFloatField;
    IBQuery1TEL11: TIBStringField;
    IBQuery1TEL21: TIBStringField;
    IBQuery1FAX: TIBStringField;
    IBQuery1EMAIL: TIBStringField;
    IBQuery1INTERNET: TIBStringField;
    IBQuery1DATA_DI_NASCITA: TDateTimeField;
    IBQuery1SESSO: TIntegerField;
    IBQuery1TITOLO_ID: TIntegerField;
    IBQuery1PORTO_ID: TIBStringField;
    IBQuery1FIDO: TFloatField;
    IBQuery1ABILITA_PARTITA: TSmallintField;
    IBQuery1FATTURA_RIEPILOGATIVA: TIntegerField;
    IBQuery1ACCORPA_ARTICOLI: TSmallintField;
    IBQuery1IVA_SOSPESA1: TSmallintField;
    IBQuery1POS_RIF_BOLLE: TSmallintField;
    IBQuery1CODICE_IVA_ESENTE: TIBStringField;
    IBQuery1RIP_RIF_BOLLE: TIntegerField;
    IBQuery1ESCLUDI_MESE1: TIntegerField;
    IBQuery1RIP_RIF_ORDINI: TIntegerField;
    IBQuery1ESCLUDI_MESE2: TIntegerField;
    IBQuery1TIPO_CONTO_ID: TSmallintField;
    IBQuery1NAZIONE_ID: TIntegerField;
    IBQuery1NAZIONE_DI_NASCITA_ID: TIntegerField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1RISCHIO: TFloatField;
    IBQuery1GG_SCADENZA1: TIntegerField;
    IBQuery1GG_SCADENZA2: TIntegerField;
    IBQuery1CONTROPARTITA_ID: TIntegerField;
    IBQuery1TIPO_CONTROPARTITA: TSmallintField;
    IBQuery1CERTIFICATO: TSmallintField;
    IBQuery1DENOMINAZIONE2: TIBStringField;
    IBQuery1INDIRIZZO2: TIBStringField;
    IBQuery1LOCALITA: TIBStringField;
    IBQuery1COMUNE_DI_NASCITA_ID: TIntegerField;
    IBQuery1CAB_ID: TIBStringField;
    IBQuery1ABI_ID: TIBStringField;
    IBQuery1TITOLO_DESCR: TIBStringField;
    IBQuery1COMNASC_DESCR: TIBStringField;
    IBQuery1CAPNASC_DESCR: TIBStringField;
    IBQuery1NAZNASC_DESCR: TIBStringField;
    IBQuery1COM_DESCR: TIBStringField;
    IBQuery1CAP_DESCR: TIBStringField;
    IBQuery1PR_DESCR: TIBStringField;
    IBQuery1CAB_DESCR: TIBStringField;
    IBQuery1ABI_DESCR: TIBStringField;
    IBQuery1NAZ_DESCR: TIBStringField;
    IBQuery1FASON: TIBStringField;
    IBQuery1NOTE: TIBStringField;
    IBQuery1COD2: TIBStringField;
    IBQuery1CODICE_ZONA_ID1: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID1: TIBStringField;
    IBQuery1PROVVIGIONE1: TFloatField;
    IBQuery1CG1: TIBStringField;
    IBQuery1CA1: TIBStringField;
    IBQuery1CR1: TIBStringField;
    BitBtn2: TBitBtn;
    IBQuery1CA_ID: TIBStringField;
    IBQuery1CODICE1: TIBStringField;
    IBQuery1DESCR1: TIBStringField;
    IBQuery1CODICE_ZONA_ID2: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID2: TIBStringField;
    IBQuery1PROVVIGIONE2: TFloatField;
    IBQuery1IMPORTO_FISSO1: TFloatField;
    IBQuery1TIPO_CLI_FOR1: TSmallintField;
    IBQuery1CLI_FOR_ID1: TIntegerField;
    IBQuery1TIPO_SOMMA_PRV1: TSmallintField;
    IBQuery1TIPO_PROVVIGIONE2: TSmallintField;
    IBQuery1TOTALE_FATTURATO1: TFloatField;
    IBQuery1TOTALE_PROVVIGIONE1: TFloatField;
    IBQuery1CG2: TIBStringField;
    IBQuery1CA2: TIBStringField;
    IBQuery1TIPO_AG1: TIntegerField;
    IBQuery1CR2: TIBStringField;
    IBQuery1ATTIVITA: TIBStringField;
    IBQuery1ATTIVITA2: TIBStringField;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    dsoZona: TDataSource;
    dsoSottozone: TDataSource;
    BitBtn3: TBitBtn;
    IBQuery2: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField3: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField4: TIntegerField;
    SmallintField2: TSmallintField;
    IBStringField2: TIBStringField;
    IntegerField5: TIntegerField;
    SmallintField3: TSmallintField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IBStringField7: TIBStringField;
    FloatField1: TFloatField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    FloatField5: TFloatField;
    IBStringField25: TIBStringField;
    DateTimeField5: TDateTimeField;
    IntegerField8: TIntegerField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IBStringField26: TIBStringField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    SmallintField6: TSmallintField;
    IBStringField34: TIBStringField;
    SmallintField7: TSmallintField;
    IBStringField35: TIBStringField;
    SmallintField8: TSmallintField;
    IBStringField36: TIBStringField;
    SmallintField9: TSmallintField;
    SmallintField10: TSmallintField;
    SmallintField11: TSmallintField;
    SmallintField12: TSmallintField;
    SmallintField13: TSmallintField;
    DateTimeField6: TDateTimeField;
    SmallintField14: TSmallintField;
    FloatField9: TFloatField;
    SmallintField15: TSmallintField;
    FloatField10: TFloatField;
    SmallintField16: TSmallintField;
    IntegerField9: TIntegerField;
    IBStringField37: TIBStringField;
    IntegerField10: TIntegerField;
    SmallintField17: TSmallintField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    IBStringField38: TIBStringField;
    SmallintField18: TSmallintField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    IBStringField39: TIBStringField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    IBStringField40: TIBStringField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    IBStringField41: TIBStringField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    IBStringField42: TIBStringField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    IBStringField43: TIBStringField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    IBStringField47: TIBStringField;
    IBStringField48: TIBStringField;
    IBStringField49: TIBStringField;
    SmallintField19: TSmallintField;
    IntegerField11: TIntegerField;
    IBStringField50: TIBStringField;
    IBStringField51: TIBStringField;
    IBStringField52: TIBStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    DateField4: TDateField;
    DateField5: TDateField;
    DateField6: TDateField;
    IntegerField12: TIntegerField;
    IBStringField53: TIBStringField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    IBStringField57: TIBStringField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    SmallintField20: TSmallintField;
    IntegerField13: TIntegerField;
    SmallintField21: TSmallintField;
    SmallintField22: TSmallintField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IntegerField14: TIntegerField;
    IBStringField60: TIBStringField;
    IntegerField15: TIntegerField;
    SmallintField23: TSmallintField;
    IBStringField61: TIBStringField;
    IBStringField62: TIBStringField;
    IBStringField63: TIBStringField;
    IBStringField64: TIBStringField;
    IBStringField65: TIBStringField;
    IBStringField66: TIBStringField;
    IntegerField16: TIntegerField;
    IBStringField67: TIBStringField;
    IBStringField68: TIBStringField;
    SmallintField24: TSmallintField;
    IntegerField17: TIntegerField;
    IBStringField69: TIBStringField;
    IBStringField70: TIBStringField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    IBStringField73: TIBStringField;
    IBStringField74: TIBStringField;
    IBStringField75: TIBStringField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    IBStringField76: TIBStringField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    IBStringField79: TIBStringField;
    IBStringField80: TIBStringField;
    DateTimeField7: TDateTimeField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IBStringField81: TIBStringField;
    FloatField55: TFloatField;
    SmallintField25: TSmallintField;
    IntegerField20: TIntegerField;
    SmallintField26: TSmallintField;
    SmallintField27: TSmallintField;
    SmallintField28: TSmallintField;
    IBStringField82: TIBStringField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    SmallintField29: TSmallintField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IBStringField83: TIBStringField;
    FloatField56: TFloatField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    SmallintField30: TSmallintField;
    SmallintField31: TSmallintField;
    IBStringField84: TIBStringField;
    IBStringField85: TIBStringField;
    IBStringField86: TIBStringField;
    IntegerField30: TIntegerField;
    IBStringField87: TIBStringField;
    IBStringField88: TIBStringField;
    IBStringField89: TIBStringField;
    IBStringField90: TIBStringField;
    IBStringField91: TIBStringField;
    IBStringField92: TIBStringField;
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
    FloatField57: TFloatField;
    IBStringField104: TIBStringField;
    IBStringField105: TIBStringField;
    IBStringField106: TIBStringField;
    IBStringField107: TIBStringField;
    IBStringField108: TIBStringField;
    IBStringField109: TIBStringField;
    IBStringField110: TIBStringField;
    IBStringField111: TIBStringField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    SmallintField32: TSmallintField;
    IntegerField31: TIntegerField;
    SmallintField33: TSmallintField;
    SmallintField34: TSmallintField;
    FloatField60: TFloatField;
    FloatField61: TFloatField;
    IBStringField112: TIBStringField;
    IBStringField113: TIBStringField;
    IntegerField32: TIntegerField;
    IBStringField114: TIBStringField;
    IBStringField115: TIBStringField;
    IBStringField116: TIBStringField;
    IBQuery2CODICE2: TIBStringField;
    IBQuery2RAGIONE_SOCIALE: TIBStringField;
    IBQuery2PARTITA_IVA1: TIBStringField;
    IBQuery2CODICE_FISCALE1: TIBStringField;
    IBQuery2INDIRIZZO1: TIBStringField;
    IBQuery2CAP: TIBStringField;
    IBQuery2CITTA: TIBStringField;
    IBQuery2PROVINCIA_ID: TIntegerField;
    IBQuery2STATO: TIBStringField;
    IBQuery2TEL12: TIBStringField;
    IBQuery2TEL22: TIBStringField;
    IBQuery2FAX1: TIBStringField;
    IBQuery2STATO_ISO: TIBStringField;
    IBQuery2MONETA_ID2: TIBStringField;
    IBQuery2ABBONATO: TSmallintField;
    IBQuery2NOTA1: TIBStringField;
    IBQuery2PROV: TIBStringField;
    procedure rabTipoCliFornTuttiClick(Sender: TObject);
    procedure gbPagamentoExit(Sender: TObject);
    procedure gbAgenteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbStampaClick(Sender: TObject);
    procedure LookCauCodCloseUp(Sender: TObject);
    procedure LookCauDescrCloseUp(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure meDataDaExit(Sender: TObject);
    procedure meDataAExit(Sender: TObject);
    procedure rabCauTuttiClick(Sender: TObject);
    procedure LookAgCodCloseUp(Sender: TObject);
    procedure LookAgCodExit(Sender: TObject);
    procedure LookAgDescrCloseUp(Sender: TObject);
    procedure LookAgDescrExit(Sender: TObject);
    procedure LookCliCodChange(Sender: TObject);
    procedure LookCliDescrChange(Sender: TObject);
    procedure LookFornCodChange(Sender: TObject);
    procedure LookFornDescrChange(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure LookFornCodExit(Sender: TObject);
    procedure LookFornDescrExit(Sender: TObject);
    procedure LookCliDescrExit(Sender: TObject);
    procedure LookCliCodExit(Sender: TObject);
    procedure LookCliCodCloseUp(Sender: TObject);
    procedure LookCliDescrCloseUp(Sender: TObject);
    procedure LookFornCodCloseUp(Sender: TObject);
    procedure LookFornDescrCloseUp(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
   Private
    Procedure Get_Params;
    Procedure Get_Params2;
   Public
    boolPagTutti: Boolean;
    strPagCod: String;

    boolAgTutti: Boolean;
    strAgCod: String;

    strDataDa,strDataA: String;
    strCauMag: String;

    boolCliForTutti: Boolean;
    intCliForCod: Integer;
    intTipo: Integer;
  End;

var
  fVisDoc: TfVisDoc;

implementation

uses uAzDM, uPrnForm;

{$R *.DFM}

Procedure TfVisDoc.rabTipoCliFornTuttiClick(Sender: TObject);
Begin
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

procedure TfVisDoc.gbPagamentoExit(Sender: TObject);
begin
 //
 Try
  If Not(boolPagTutti)
   Then If Not(LookPagCod.KeyValue='')
         Then strPagCod:=LookPagCod.KeyValue;
 Except
   strPagCod:='';
 End;
end;

procedure TfVisDoc.gbAgenteExit(Sender: TObject);
begin
 //
 Try
  If Not(boolAgTutti)
     Then If Not(LookAgCod.KeyValue='')
             Then strAgCod:=LookAgCod.KeyValue;
 Except
   strAgCod:='';
 End;
end;

procedure TfVisDoc.FormCreate(Sender: TObject);
begin
 boolPagTutti:=True;
  strPagCod:='';

 boolAgTutti:=True;
  strAgCod:='';

 strDataDa:='01/01/1977';
 strDataA:=DateToStr(Date);
 meDataA.Text:=strDataA;

 boolCliForTutti:=True;
  intCliForCod:=-1;
  intTipo:=0;

 dsoCli.DataSet.Close;
 dsoCliForn.DataSet.Close;
 dsoForn.DataSet.Close;
 dsoAgente.DataSet.Close;
 dsoPagamento.DataSet.Close;
 dsoCauMag.DataSet.Close;
 dsoDocFiltered.DataSet.Close;
 dsoZona.DataSet.Close;
 dsoSottozone.DataSet.Close;
 dmodAz.r_qCliForn.CLose;

 dmodAz.r_qCliForn.Open;
 dsoDocFiltered.DataSet.Open;
 dsoCli.DataSet.Open;
 dsoCliForn.DataSet.Open;
 dsoForn.DataSet.Open;
 dsoAgente.DataSet.Open;
 dsoPagamento.DataSet.Open;
 dsoCauMag.DataSet.Open;
// dsoZona.DataSet.Open;
 dsoSottozone.DataSet.Open;
end;

procedure TfVisDoc.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfVisDoc.FormDestroy(Sender: TObject);
begin
 dmodAz.r_qCliForn.CLose;
 dsoDocFiltered.DataSet.Close;
 dsoCli.DataSet.Close;
 dsoCliForn.DataSet.Close;
 dsoForn.DataSet.Close;
 dsoAgente.DataSet.Close;
 dsoPagamento.DataSet.Close;
 dsoZona.DataSet.Close;
 dsoSottozone.DataSet.Close;
end;

procedure TfVisDoc.Get_Params;
begin

 With (IBQuery1) Do
 Begin
  Close;
   SQL.Clear;

   SQL.Add('SELECT *');
   SQL.ADD('FROM TAB_DOCUMENTI');
   SQL.ADD('join tab_cli_for on');
   SQL.ADD('tab_documenti.CLIFOR_ID=tab_cli_for.id_cli_for');
   SQL.ADD('left join tab_agenti on');
   SQL.ADD('tab_documenti.agente_id=tab_agenti.codice');
   SQL.ADD('left join tab_agenti on');
   SQL.ADD('tab_documenti.CA_ID=tab_agenti.codice');
   SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <= :parDataA');

if rabCauSc.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');
   ParamByName('parCauMag').AsString:=strCauMag;
end;

if rabAgScegli.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID LIKE :parAgente');
   ParamByName('parAgente').AsString:=LookAgCod.Text;
end;

if RadioButton7.Checked then
begin
   SQL.Add('AND TAB_Cli_for.CODICE_SOTTO_ZONA_ID LIKE :parSottozona');
   ParamByName('parSottozona').AsInteger:=DBLookupComboBox3.KeyValue;
end;

   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: SQL.Add('AND TIPO_CLIFOR = :parTipoCliFor');
            3..4: SQL.Add('AND CLIFOR_ID = :parCliFor_ID');
         End;

if RadioButton1.Checked then
   SQL.Add('ORDER BY DATA_DOC,NUM_DOC');

if RadioButton2.Checked then
   SQL.Add('ORDER BY denominazione,DATA_DOC,NUM_DOC');

if RadioButton3.Checked then
   SQL.Add('ORDER BY vettore1,denominazione,DATA_DOC,NUM_DOC');

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);


   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
         End;

  Open;
 End;


end;

procedure TfVisDoc.bbStampaClick(Sender: TObject);
var
Scelta : String;
begin
 Get_Params;
//scelta:=InputBox('Scegliere la Stampa :','1)Data - 2)Cliente/Fornitore','1');
//if scelta='1' then
   if RadioButton1.Checked then
   dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocs.frf');
   if RadioButton2.Checked then
   dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocs3.frf');
   if RadioButton3.Checked then
   dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocs4.frf');

    dmodAz.rePRN.ShowReport;
end;

procedure TfVisDoc.LookCauCodCloseUp(Sender: TObject);
begin
 Try
  strCauMag:=LookCauCod.KeyValue;
  LookCauDescr.KeyValue:=LookCauCod.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.LookCauDescrCloseUp(Sender: TObject);
begin
 Try
  strCauMag:=LookCauDescr.KeyValue;
  LookCauCod.KeyValue:=LookCauDescr.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.BitBtn1Click(Sender: TObject);
begin
 Get_Params;
end;

procedure TfVisDoc.meDataDaExit(Sender: TObject);
begin
 Try
   strDataDa:=meDataDa.Text;
 Except
 End;
end;

procedure TfVisDoc.meDataAExit(Sender: TObject);
begin
 Try
   strDataA:=meDataA.Text;
 Except
 End;
end;

procedure TfVisDoc.rabCauTuttiClick(Sender: TObject);
begin
 strCauMag:='%';
end;

procedure TfVisDoc.LookAgCodCloseUp(Sender: TObject);
begin
 Try
  strAgCod:=LookAgCod.Text;
  LookAgDescr.KeyValue:=LookAgCod.KeyValue;
 Except
 End;

end;

procedure TfVisDoc.LookAgCodExit(Sender: TObject);
begin
 Try
  strAgCod:=LookAgCod.Text;
  LookAgDescr.KeyValue:=LookAgCod.KeyValue;
 Except
 End;

end;

procedure TfVisDoc.LookAgDescrCloseUp(Sender: TObject);
begin
 Try
  LookAgCod.KeyValue:=LookAgDescr.KeyValue;
  strAgCod:=LookAgCod.Text;
 Except
 End;

end;

procedure TfVisDoc.LookAgDescrExit(Sender: TObject);
begin
 Try
  LookAgCod.KeyValue:=LookAgDescr.KeyValue;
  strAgCod:=LookAgCod.Text;
 Except
 End;

end;

procedure TfVisDoc.LookCliCodChange(Sender: TObject);
begin
   LookCliDescr.KeyValue:=LookCliCod.KeyValue;
end;

procedure TfVisDoc.LookCliDescrChange(Sender: TObject);
begin
   LookCliCod.KeyValue:=LookCliDescr.KeyValue;
end;

procedure TfVisDoc.LookFornCodChange(Sender: TObject);
begin
   LookFornDescr.KeyValue:=LookFornCod.KeyValue;
end;

procedure TfVisDoc.LookFornDescrChange(Sender: TObject);
begin
   LookFornCod.KeyValue:=LookFornDescr.KeyValue;
end;

procedure TfVisDoc.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfVisDoc.BitBtn2Click(Sender: TObject);
begin
 Get_Params2;
    dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frDocs3.frf');
    dmodAz.rePRN.ShowReport;

end;

procedure TfVisDoc.LookFornCodExit(Sender: TObject);
begin
 Try
  intCliForCod:=LookFornCod.KeyValue;
 Except
 End;

end;

procedure TfVisDoc.LookFornDescrExit(Sender: TObject);
begin
 Try
  intCliForCod:=LookFornDescr.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.LookCliDescrExit(Sender: TObject);
begin
 Try
  intCliForCod:=LookCliDescr.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.LookCliCodExit(Sender: TObject);
begin
 Try
  intCliForCod:=LookCliCod.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.LookCliCodCloseUp(Sender: TObject);
begin
 Try
   LookCliDescr.KeyValue:=LookCliCod.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.LookCliDescrCloseUp(Sender: TObject);
begin
 Try
   LookCliCod.KeyValue:=LookCliDescr.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.LookFornCodCloseUp(Sender: TObject);
begin
 Try
   LookFornCod.KeyValue:=LookFornDescr.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.LookFornDescrCloseUp(Sender: TObject);
begin
 Try
   LookFornDescr.KeyValue:=LookFornCod.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.RadioButton2Click(Sender: TObject);
begin
RadioButton2.Checked := True;
RadioButton1.Checked := false;
RadioButton3.Checked := false;
end;

procedure TfVisDoc.RadioButton1Click(Sender: TObject);
begin
RadioButton1.Checked := True;
RadioButton2.Checked := false;
RadioButton3.Checked := false;
end;

procedure TfVisDoc.RadioButton3Click(Sender: TObject);
begin
RadioButton2.Checked := false;
RadioButton1.Checked := false;
RadioButton3.Checked := True;

end;

procedure TfVisDoc.DBLookupComboBox3CloseUp(Sender: TObject);
begin
 Try
//  strCauMag:=LookCauCod.KeyValue;
  DBLookupComboBox4.KeyValue:=DBLookupComboBox3.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.DBLookupComboBox4CloseUp(Sender: TObject);
begin
 Try
//  strCauMag:=LookCauCod.KeyValue;
  DBLookupComboBox3.KeyValue:=DBLookupComboBox4.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.DBLookupComboBox3Exit(Sender: TObject);
begin
 Try
//  strCauMag:=LookCauCod.KeyValue;
  DBLookupComboBox4.KeyValue:=DBLookupComboBox3.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.DBLookupComboBox4Exit(Sender: TObject);
begin
 Try
//  strCauMag:=LookCauCod.KeyValue;
  DBLookupComboBox3.KeyValue:=DBLookupComboBox4.KeyValue;
 Except
 End;
end;

procedure TfVisDoc.Get_Params2;
begin

 With (IBQuery2) Do
 Begin
  Close;
   SQL.Clear;

   SQL.Add('SELECT *');
   SQL.ADD('FROM TAB_DOCUMENTI');
   SQL.ADD('join tab_cli_for on');
   SQL.ADD('tab_documenti.CLIFOR_ID=tab_cli_for.id_cli_for');
   SQL.ADD('left join tab_agenti on');
   SQL.ADD('tab_documenti.agente_id=tab_agenti.codice');
   SQL.ADD('left join tab_agenti on');
   SQL.ADD('tab_documenti.CA_ID=tab_agenti.codice');
   SQL.ADD('left join tab_Vettori on');
   SQL.ADD('tab_documenti.vettore1=tab_vettori.codice');

   SQL.Add('WHERE TAB_DOCUMENTI.DATA_DOC >= :parDataDa AND TAB_DOCUMENTI.DATA_DOC <= :parDataA');

if rabCauSc.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.CAUSALE_MAGAZZINO LIKE :parCauMag');
   ParamByName('parCauMag').AsString:=strCauMag;
end;

if rabAgScegli.Checked then
begin
   SQL.Add('AND TAB_DOCUMENTI.AGENTE_ID LIKE :parAgente');
   ParamByName('parAgente').AsString:=LookAgCod.Text;
end;

if RadioButton7.Checked then
begin
   SQL.Add('AND TAB_Cli_for.CODICE_SOTTO_ZONA_ID LIKE :parSottozona');
   ParamByName('parSottozona').AsInteger:=DBLookupComboBox3.KeyValue;
end;

   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: SQL.Add('AND TIPO_CLIFOR = :parTipoCliFor');
            3..4: SQL.Add('AND CLIFOR_ID = :parCliFor_ID');
         End;

if RadioButton1.Checked then
   SQL.Add('ORDER BY DATA_DOC,NUM_DOC');

if RadioButton2.Checked then
   SQL.Add('ORDER BY denominazione,DATA_DOC,NUM_DOC');

if RadioButton3.Checked then
   SQL.Add('ORDER BY vettore1,denominazione,DATA_DOC,NUM_DOC');

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);


   // Tipo Cli/Forn and Cli/Forn
   If Not(boolCliForTutti)
    Then Case (intTipo) Of
            1..2: ParamByName('parTipoCliFor').AsInteger:=intTipo;
            3..4: ParamByName('parCliFor_ID').AsInteger:=intCliForCod;
         End;

  Open;
 End;


end;

END.
