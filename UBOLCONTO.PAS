 unit uBolConto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBTable, Db, IBCustomDataSet, IBQuery, StdCtrls, Buttons, ComCtrls,
  ToolWin, Grids, DBGrids, DBCtrls, RxLookup, Mask, ExtCtrls, Variants,
  Menus, RxDBComb;

type
  TfBolConto = class(TForm)
    Label9: TLabel;
    Panel1: TPanel;
    dbgRighe: TDBGrid;
    tbarControl: TToolBar;
    tbtnEsci: TToolButton;
    sep1: TToolButton;
    tbtnNuovo: TToolButton;
    tbtnModifica: TToolButton;
    sep2: TToolButton;
    tbtnSalva: TToolButton;
    tbtnAnulla: TToolButton;
    sep3: TToolButton;
    tbtnElimina: TToolButton;
    sep4: TToolButton;
    tbtnPrev: TToolButton;
    tbtnNext: TToolButton;
    sep5: TToolButton;
    tbtnNumDoc: TToolButton;
    ToolButton1: TToolButton;
    tbtnPrint: TToolButton;
    ToolButton3: TToolButton;
    Panel2: TPanel;
    Label39: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbeDaPagare: TDBEdit;
    dbeTotSconti: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dbeTotMerc: TDBEdit;
    dbeTotServ: TDBEdit;
    dbeTotOmagg: TDBEdit;
    dbeTotSpese: TDBEdit;
    dbeImponibile: TDBEdit;
    dbeImposta: TDBEdit;
    dbeTotale: TDBEdit;
    dbeResi: TDBEdit;
    dbeAbbuoni: TDBEdit;
    dbeDataAcconto: TDBEdit;
    dsoDocumento: TDataSource;
    dsoRigheDoc: TDataSource;
    dsoMoneta: TDataSource;
    dsoPagamenti: TDataSource;
    dsoPorto: TDataSource;
    dsoCausSped: TDataSource;
    dsoBanca: TDataSource;
    dsoAltreDest: TDataSource;
    dsoAgenti: TDataSource;
    dsoListino: TDataSource;
    dsoDepositi: TDataSource;
    dsoAltre_Sedi: TDataSource;
    dsoFor: TDataSource;
    dsPersAz: TDataSource;
    dsEsenteIVA: TDataSource;
    dsoVettori: TDataSource;
    dsoCauMag: TDataSource;
    dsAspetto: TDataSource;
    dsoCauTrasp: TDataSource;
    dsoCODICEIVA: TDataSource;
    dsoAttivita: TDataSource;
    dsPianoConto: TDataSource;
    dsoCli: TDataSource;
    dsoArticoli: TDataSource;
    dsoContArt: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1PREZZO_BASE: TFloatField;
    IBQuery1UN_MIS2_VAL: TIntegerField;
    IBQuery1Gruppo: TStringField;
    IBQuery1Marca: TStringField;
    IBQuery1Famiglia: TStringField;
    IBQuery1Tipo: TStringField;
    IBQuery1PREZZO_LISTINO: TFloatField;
    IBQuery1RIC: TFloatField;
    IBQuery1CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery1CAT_ART_TIPO_ID: TIntegerField;
    IBQuery1CAT_ART_MARCA_ID: TIntegerField;
    IBTable5: TIBTable;
    IBTable5DESCR: TIBStringField;
    IBTable5CODICE: TIntegerField;
    IBTable5RIC: TFloatField;
    IBTable1: TIBTable;
    IBTable1DESCR: TIBStringField;
    IBTable1CODICE: TIntegerField;
    IBTable4: TIBTable;
    IBTable7: TIBTable;
    ibqRicerca: TIBQuery;
    dsoRicerca: TDataSource;
    ToolButton2: TToolButton;
    IBQuery2: TIBQuery;
    IBQuery2F_1: TFloatField;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEQtaCons: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    BitBtn1: TBitBtn;
    DBScheda: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    dsProvv: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    dsoCauInt: TDataSource;
    IBQuery1DESCR2: TIBStringField;
    IBQuery1CODICE_IVA_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA1_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA2_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA3_ID: TIBStringField;
    IBQuery1SCONTO1: TFloatField;
    IBQuery1SCONTO2: TFloatField;
    IBQuery1SCONTO3: TFloatField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1PESO_NETTO_KG: TFloatField;
    IBQuery1PESO_LORDO_KG: TFloatField;
    IBQuery1SCORTA_MIN: TFloatField;
    IBQuery1SCORTA_MAX: TFloatField;
    IBQuery1LOTTO_RIORDINO: TFloatField;
    IBQuery1GG_APPROVVIGIONAMENTO: TIntegerField;
    IBQuery1QTA_X_CONFEZIONE: TIntegerField;
    IBQuery1ANNO: TIntegerField;
    IBQuery1DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBQuery1COSTO_STANDART: TFloatField;
    IBQuery1TIPO_ARTICOLO_ID: TSmallintField;
    IBQuery1FATT_CONV1: TFloatField;
    IBQuery1FATT_CONV2: TFloatField;
    IBQuery1COSTO_ID: TIntegerField;
    IBQuery1RICAVO_ID: TIntegerField;
    IBQuery1GIORNI_MAX_INVENDUTO: TIntegerField;
    IBQuery1ASPETTO_ID: TIBStringField;
    IBQuery1RIORDINO_MESE_DA: TSmallintField;
    IBQuery1RIORDINO_MESE_A: TSmallintField;
    IBQuery1RIORDINO_GIORNO_DA: TSmallintField;
    IBQuery1RIORDINO_GIORNO_A: TSmallintField;
    IBQuery1STAGIONE_ID: TIBStringField;
    IBQuery1GRUPPO_ALTERNATIVO: TIBStringField;
    IBQuery1PRODUTTORE_ID: TIBStringField;
    IBQuery1CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBQuery1CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBQuery1CODICE_BASE: TIBStringField;
    IBQuery1DERIVATO: TSmallintField;
    IBQuery1VARIANTE1_ID: TIBStringField;
    IBQuery1VARIANTE2_ID: TIBStringField;
    IBQuery1VARIANTE3_ID: TIBStringField;
    IBQuery1NUM_VARIANTI: TIntegerField;
    IBQuery1TIPO_COSTO_ID: TSmallintField;
    IBQuery1TIPO_RICAVO_ID: TSmallintField;
    IBQuery1OMAGGIO: TSmallintField;
    IBQuery1TIPO_CLI_FOR_ID: TSmallintField;
    IBQuery1CLI_FOR_ID: TIntegerField;
    IBQuery1CODE_BAR: TIBStringField;
    IBQuery1DESCR_CODE_BAR: TIBStringField;
    IBQuery1NON_STAMPA_INVENTARIO: TSmallintField;
    IBQuery1NON_STAMPA_REGISTRO: TSmallintField;
    IBQuery1NOMENCLATURA: TIntegerField;
    IBQuery1FATT_CONV1_NOMENCLATURA: TFloatField;
    IBQuery1FATT_CONV2_NOMENCLATURA: TFloatField;
    IBQuery1PROV_ORDINE: TIntegerField;
    IBQuery1COSTO_ULTIMO: TFloatField;
    IBQuery1DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery1NUM_REPARTO: TIntegerField;
    IBQuery1TIPO_CODE_BAR_ID: TSmallintField;
    IBQuery1CONTO_ACQUISTO: TIntegerField;
    IBQuery1CONTO_VENDITA: TIntegerField;
    IBQuery1UN_MIS3_VAL: TIntegerField;
    IBQuery1FOTO_PERCORSO: TIBStringField;
    IBQuery1FLAG_ACCESSORIE: TIBStringField;
    IBQuery1DATAMOD: TDateTimeField;
    IBQuery1SCONTO4: TFloatField;
    IBQuery1PREZZO_IVATO: TFloatField;
    IBQuery1P2IVATO: TFloatField;
    IBQuery1P3IVATO: TFloatField;
    IBQuery1P4IVATO: TFloatField;
    IBQuery1P5IVATO: TFloatField;
    IBQuery1SC21: TFloatField;
    IBQuery1SC22: TFloatField;
    IBQuery1SC23: TFloatField;
    IBQuery1SC31: TFloatField;
    IBQuery1SC32: TFloatField;
    IBQuery1SC33: TFloatField;
    IBQuery1SC41: TFloatField;
    IBQuery1SC42: TFloatField;
    IBQuery1SC43: TFloatField;
    IBQuery1SC51: TFloatField;
    IBQuery1SC52: TFloatField;
    IBQuery1SC53: TFloatField;
    IBQuery1R2: TFloatField;
    IBQuery1R3: TFloatField;
    IBQuery1R4: TFloatField;
    IBQuery1R5: TFloatField;
    IBQuery1IMP2: TFloatField;
    IBQuery1IMP3: TFloatField;
    IBQuery1IMP4: TFloatField;
    IBQuery1IMP5: TFloatField;
    IBQuery1RICARPREC: TFloatField;
    IBQuery1P6IVATO: TFloatField;
    IBQuery1IMP6: TFloatField;
    IBQuery1STRUTT: TFloatField;
    IBQuery1CA: TFloatField;
    IBQuery1CG: TFloatField;
    IBQuery1AG: TFloatField;
    IBQuery1CA2: TFloatField;
    IBQuery1CG2: TFloatField;
    IBQuery1AG2: TFloatField;
    IBQuery1CA3: TFloatField;
    IBQuery1CG3: TFloatField;
    IBQuery1AG3: TFloatField;
    IBQuery1CA4: TFloatField;
    IBQuery1CG4: TFloatField;
    IBQuery1AG4: TFloatField;
    IBQuery1CA5: TFloatField;
    IBQuery1CG5: TFloatField;
    IBQuery1AG5: TFloatField;
    IBQuery1CA6: TFloatField;
    IBQuery1CG6: TFloatField;
    IBQuery1AG6: TFloatField;
    IBQuery1ID_OFFERTA: TIntegerField;
    IBQuery1CR: TFloatField;
    IBQuery1CR2: TFloatField;
    IBQuery1CR3: TFloatField;
    IBQuery1CR4: TFloatField;
    IBQuery1CR5: TFloatField;
    IBQuery1CR6: TFloatField;
    IBQuery1SC: TIBStringField;
    IBQuery3: TIBDataSet;
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
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    laNumero: TLabel;
    laDataDoc: TLabel;
    laCliFor: TLabel;
    laNostroDeposito: TLabel;
    Label5: TLabel;
    laNote: TLabel;
    laCauMag: TLabel;
    laNumRigaLocate: TLabel;
    dbeNumero: TDBEdit;
    dbeDataDoc: TDBEdit;
    LookCliForCod: TRxDBLookupCombo;
    LookCliForDescr: TRxDBLookupCombo;
    dbeIndirizzo_cli_for: TDBEdit;
    dbeIndirizzo_cli_for2: TDBEdit;
    LookNostrDepCod: TRxDBLookupCombo;
    LookNostrDepDescr: TRxDBLookupCombo;
    dbeListino: TDBEdit;
    dbeContropartita: TDBEdit;
    LookAgCod: TDBLookupComboBox;
    LookAgDescr: TDBLookupComboBox;
    dbmNote: TDBMemo;
    LookCauMagCod: TDBLookupComboBox;
    LookCauSpedCod: TDBLookupComboBox;
    LookCauSpedDescr: TDBLookupComboBox;
    RadioGroup1: TRadioGroup;
    edNumRigaLocate: TEdit;
    laPorto: TLabel;
    lookPortoCod: TRxDBLookupCombo;
    LookPortoDescr: TRxDBLookupCombo;
    laNrColli: TLabel;
    dbeNrColl: TDBEdit;
    laPesoLordo: TLabel;
    dbePesoLordo: TDBEdit;
    Label14: TLabel;
    Label19: TLabel;
    LookVettoreCod: TDBLookupComboBox;
    LookVettoreDescr: TDBLookupComboBox;
    dbeVettore_Ind: TDBEdit;
    dbeVettore_Ind2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    ibDistinta: TIBDataSet;
    ibqRicerca2: TIBQuery;
    ibqRicerca2QUANTITA: TFloatField;
    RxDBComboBox1: TRxDBComboBox;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnNumDocClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgRigheDblClick(Sender: TObject);
    procedure edNumRigaLocateChange(Sender: TObject);
    procedure edNumRigaLocateDblClick(Sender: TObject);
    procedure edNumRigaLocateKeyPress(Sender: TObject; var Key: Char);
    procedure dsoCliDataChange(Sender: TObject; Field: TField);
    procedure dsoCauMagDataChange(Sender: TObject; Field: TField);
    procedure tbtnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbeNumeroExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbtnEsciClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbeCodiceClick(Sender: TObject);
    procedure dbeCodiceEnter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure dbeCodiceExit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
        Procedure Esco;
    procedure DBSchedaExit(Sender: TObject);
    procedure DBSchedaClick(Sender: TObject);
    procedure DBSchedaEnter(Sender: TObject);
    procedure DBSchedaKeyPress(Sender: TObject; var Key: Char);
    procedure DBSchedaDblClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure LookCliForCodChange(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure LookCliForDescrChange(Sender: TObject);
    procedure DBEQtaConsKeyPress(Sender: TObject; var Key: Char);
    procedure Stampe1Click(Sender: TObject);

  private
    Procedure ChangeDataSetsState(bOpen: Boolean);
    Procedure Pass_Doc(intPassTipoDoc: Integer);
    Procedure Get_Num_Doc;
    Procedure Set_Num_Doc;
    Procedure Del_Num_Doc;
    Procedure Locate_Riga;
    Procedure Get_Tab_Name(iTipoDoc: Integer; Var strTab_Name: String);
//    Procedure Disable_Panels(bDisAb: Boolean);
    // ---------
    Procedure Aggiornamento_Contabilita(bNormale: Boolean);
    Procedure Calcola_Totali;
    Procedure Get_Val_From_PersAz;
    Procedure Calcola_Spese(VAR dSpese: currency;VAR dSpeseIVA: currency);
    Procedure Get_Aliq_IVA(strCodIVA: String; Var dAliq: Double);
    Procedure Azzerare_IVA;
    Procedure Insert_Scadenza;
    Procedure Elimina_Scadenza;
    procedure Apri;
    Procedure Insert_Contab_Vend(i_ID_Doc: Integer);
    Procedure Insert_Contab_Acq(i_ID_Doc: Integer);
    Procedure Elimina_Contab(i_ID_Doc: Integer;CliForID: Integer);
    Procedure Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
    Procedure Aggiorna_Spese_IVA;
    Function  Inserimento_di_riga_contab(Var iPK_Codice: Integer;iConDett: Integer;
              dtData_Doc,dtData_Mov: TDateTime;iNum_Doc,iDoc_ID: Integer;
              sDescr_Mov: String; iTIPO_Mov, iPianoConto: Integer;
              sSottoContoDescr,sNomeContoDescr: String; iCliForID,
              iTipoCliFor,iNumProto: Integer; dDare,dAvere: Currency): Boolean;
    Function Verifica_NumDoc(iNumDoc_per_Verifica: Integer): Boolean;
    Procedure Aggiorna_IVA_Totale;
  public
    { Public declarations }
    L,V : integer;
    strCodDep, strCodIVA, strCodArt: String;
    intID_Doc, iNumero_Riga: Integer;
    intTipoDoc, intTipoCliFor: Integer;
    intNewNumDoc,intOldNumDoc: Integer;
    boolVendita: Boolean;
    boolNonHaListino: Boolean;
    boolmodifica,boolDoc_Vendita : boolean;
    boolInsert,setnum: Boolean;
    nuovissimo : bool;
    strCAU_MAG: String;
    strCodIvaSp_Boll,strCodIvaSp_Inc,strCodIvaSp_Imb,
    strCodIvaSp_ContrSegn,strCodIvaSp_Access,strCodIvaSp_Sped: String;
    Procedure Edit_Mode(bMode: Boolean);
    Procedure Edit_Modex(bMode: Boolean);
    Procedure Clean_All_TEdits;
  end;

var
  fBolConto: TfBolConto;
   bCanClose: Boolean=True;
implementation

uses uAzDM, frmuPassDoc, uRicercaVeloceAZ, uNumDocList, uPubDM, uPrnForm,
  uTerm, uselectTaglio, uselectCL, uVisConto, uSelectDep;

{$R *.DFM}

procedure TfBolConto.Pass_Doc(intPassTipoDoc: Integer);
begin
 If (LookCliForCod.KeyValue=null)
  Then Begin
         MessageDlg('Scegli '+laCliFor.Caption+'.',mtWarning,[mbOK],0);
         Exit;
       End;

 dmodAz.ibqryPassDoc.Close;
 dmodAz.ibqryPassDoc.ParamByName('parTipoDoc').AsInteger:=
          intPassTipoDoc;
 dmodAz.ibqryPassDoc.ParamByName('parCliForID').AsInteger:=
          LookCliForCod.KeyValue;
 dmodAz.ibqryPassDoc.ParamByName('parDataDa').AsString:='01/01/1977';
 dmodAz.ibqryPassDoc.ParamByName('parDataA').AsDateTime:=Now;
 dmodAz.ibqryPassDoc.Open;
 dmodAz.ibtblPassDocDet.Open;
 frmPassDoc:=TfrmPassDoc.Create(self);
 frmPassDoc.Caption:='Passare per '+Self.Caption;
 frmPassDoc.intCliForID:=LookCliForCod.KeyValue;
 frmPassDoc.iPassTipoDoc:=intPassTipoDoc;
 frmPassDoc.intDoc_ID:=dsoDocumento.DataSet['ID_DOCUMENTO'];
 frmPassDoc.ShowModal;
 frmPassDoc.Free;
End;

procedure TfBolConto.tbtnNuovoClick(Sender: TObject);
Var
 wAnno,wMese,wGiorno,wOra,wMin,wSec,wMSec: Word;
 zz: Integer;
begin
Panel1.Enabled := True;
TabSheet1.Enabled := True;
TabSheet2.Enabled := True;
Panel3.Enabled := True;
Edit_Mode(True);
Edit_Modex(False);
Clean_All_TEdits;

DecodeDate(Date,wAnno,wMese,wGiorno);
DecodeTime(Time,wOra,wMin,wSec,wMSec);


tbtnNumDoc.Enabled:=False;
tbtnPrint.Enabled:=False;
dbeNumero.Enabled := True;

If (dsoDocumento.DataSet.State in [dsInsert, dsEdit])
then exit
else
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsoDocumento.DataSet.Insert;
boolInsert:=True;
dsoDocumento.DataSet.fieldByName('ORA').AsString:=IntToStr(wOra)+'.'+IntToStr(wMin);
dsoDocumento.DataSet.fieldByName('DATA_DOC').AsDateTime:=Date;
dsoDocumento.DataSet.fieldByName('DATA_CONSEGNA').AsDateTime:=Date;
dsoDocumento.DataSet.fieldByName('MESE_Cont').AsInteger:=wMese;
dsoDocumento.DataSet.fieldByName('CAUSALE_MAGAZZINO').AsString:=strCAU_MAG;
dsoDocumento.DataSet.FieldByName('Tipo_Doc').AsInteger:=intTipoDoc;
dsoDocumento.DataSet.FieldByName('PER_ALTRA_DEST').AsInteger:=0;
dsoDocumento.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=intTipoCliFor;
dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_BOLLI').AsString:=strCodIvaSp_Boll;
dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_INCASSO').AsString:=strCodIvaSp_Inc;
dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_IMVALLO').AsString:=strCodIvaSp_Imb;
dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_CONTRASSEGNO').AsString:=strCodIvaSp_ContrSegn;
dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_ACCESSIONE').AsString:=strCodIvaSp_Access;
dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_SPEDIZIONE').AsString:=strCodIvaSp_Sped;
dsoDocumento.DataSet.fieldByName('SPESE_SPEDIZIONE').AsFloat:=0;
dsoDocumento.DataSet.fieldByName('SPESE_BOLLI').AsFloat:=0;
dsoDocumento.DataSet.fieldByName('SPESE_INCASSO').AsFloat:=0;
dsoDocumento.DataSet.fieldByName('SPESE_ACCESSORIE').AsFloat:=0;
dsoDocumento.DataSet.fieldByName('SPESE_IMBALLO').AsFloat:=0;
dsoDocumento.DataSet.fieldByName('SPESE_CONTRASS').AsFloat:=0;
dsoDocumento.dataset.Post;
dsoDocumento.dataset.Edit;
If (intTipoDoc=23) or (intTipoDoc=24) or (intTipoDoc=510) or (intTipoDoc=513) or (intTipoDoc=516)
or (intTipoDoc=520) or (intTipoDoc=550) or (intTipoDoc=552)
Then Exit;
Get_Num_Doc;
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;
end;

procedure TfBolConto.tbtnModificaClick(Sender: TObject);
begin
If (dsoDocumento.DataSet.IsEmpty)
Then Exit;
TabSheet1.Enabled := True;
TabSheet2.Enabled := True;
Panel3.Enabled := True;
Edit_Mode(True);
intNewNumDoc:=dsoDocumento.DataSet.fieldByName('NUM_DOC').AsInteger;
tbtnNumDoc.Enabled:=False;
tbtnPrint.Enabled:=False;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsoDocumento.DataSet.Edit;
boolInsert:=False;
//dbeNumero.Enabled := False;
end;

procedure TfBolConto.tbtnSalvaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc,pre: Integer;
 saveplace2 : TBookmark;
begin
If (dbeNumero.Text='')
Then Begin
MessageDlg('Immettere un numero di documento!!!',mtWarning,[mbRetry],0);
Exit;
End;

If (DBScheda.Text='')
Then
begin
dsoRigheDoc.DataSet.Cancel;
Edit_Modex(false);
end;
If (LookCauMagCod.KeyValue=Null)
Then Begin
MessageDlg('La Causale magazzino non è stata scelta!',mtWarning,[mbRetry],0);
Exit;
End;
If (MessageDlg('Conferma il salvataggio!',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;

int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;

// Aggiorna_IVA_Totale;
If (dsoRigheDoc.dataset.isEmpty)
Then Exit;
Try
SavePlace2 :=  dsoDocumento.DataSet.GetBookmark;

dsoRigheDoc.DataSet.First;
if intTipoDoc=500 then
begin
dmodAz.ibqryTaglio.Close;
dmodAz.ibqryTaglio.Open;
while not dsoRigheDoc.DataSet.Eof do
begin
pre :=dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsInteger;
if dmodAz.ibqryTaglio.Locate('PK_CODICE',pre,[]) then
begin
dmodAz.ibqryTaglio.Edit;
if dsoRigheDoc.DataSet.FieldByName('COL').AsString = '999' then
dmodAz.ibqryTaglio.FieldByName('PASSATA').AsString := 'R'
else
dmodAz.ibqryTaglio.FieldByName('PASSATA').AsString := 'S';

dmodAz.ibqryTaglio.Post;
end;
dsoRigheDoc.DataSet.Next;
end;
dmodAz.ibqryTaglio.Close;
end;
 ////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////////////
if intTipoDoc=501 then
begin
dmodAz.ibqryTaglio.Close;
dmodAz.ibqryTaglio.Open;
dmodAz.ibqryPretFas.Close;
dmodAz.ibqryPretFas.Open;
while not dsoRigheDoc.DataSet.Eof do
begin
pre :=dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsInteger;
if dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsInteger = 1 then
begin
if dmodAz.ibqryPretFas.Locate('PK_CODICE',pre,[]) then
begin
dmodAz.ibqryPretFas.Edit;
dmodAz.ibqryPretFas.FieldByName('PASSATA').AsString := 'S';
dmodAz.ibqryPretFas.Post;
end;
end
else
if dmodAz.ibqryTaglio.Locate('PK_CODICE',pre,[]) then
begin
dmodAz.ibqryTaglio.Edit;
dmodAz.ibqryTaglio.FieldByName('PASSATA').AsString := 'S';
dmodAz.ibqryTaglio.Post;
end;
dsoRigheDoc.DataSet.Next;
end;
dmodAz.ibqryTaglio.Close;
end;

dsoDocumento.DataSet.Edit;
If (dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger=1)
Then Azzerare_IVA;
Calcola_Totali;
If (boolInsert) THEN
begin
if setnum then
begin
Set_Num_Doc;
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;
end;
end;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;
dsoDocumento.DataSet.Post ;

 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace2);
dsoDocumento.DataSet.FreeBookmark(SavePlace2);
Edit_Mode(False);
Edit_Modex(False);
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
TabSheet1.Enabled := False;
TabSheet2.Enabled := False;
Panel3.Enabled := False;
If (MessageDlg('Stampare?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then tbtnPrint.Click;
end;

procedure TfBolConto.tbtnAnullaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
 SavePlace : TBookmark;
begin
If (MessageDlg('Annullare ?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;

Edit_Mode(False);
TabSheet1.Enabled := False;
TabSheet2.Enabled := False;
Panel3.Enabled := False;
SavePlace := dsoDocumento.DataSet.GetBookmark;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
If ( dsoRigheDoc.DataSet.State in [dsInsert,dsEdit])
Then dsoRigheDoc.DataSet.Cancel;
dmodaz.ibtTabDet_Doc.CancelUpdates;
If (dsoDocumento.DataSet.State in [dsEdit])And Not(boolInsert)
Then
dsoDocumento.DataSet.Cancel;
dmodAz.ibtrDef.Rollback;
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace);
dsoDocumento.DataSet.FreeBookmark(SavePlace);
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
end;


procedure TfBolConto.tbtnEliminaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc,pre: Integer;
begin
 boolInsert:=False;
If (dsoRigheDoc.dataset.isEmpty)
Then Exit;
If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
Try
dsoRigheDoc.DataSet.First;
if intTipoDoc=500 then
begin
dmodAz.ibqryTaglio.Close;
dmodAz.ibqryTaglio.Open;
while not dsoRigheDoc.DataSet.Eof do
begin
pre :=dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsInteger;
if dmodAz.ibqryTaglio.Locate('PK_CODICE',pre,[]) then
begin
dmodAz.ibqryTaglio.Edit;
dmodAz.ibqryTaglio.FieldByName('PASSATA').AsString := 'N';
dmodAz.ibqryTaglio.Post;
end;
dsoRigheDoc.DataSet.Next;
end;
dmodAz.ibqryTaglio.Close;
end;
if intTipoDoc=501 then
begin
dmodAz.ibqryPretFas.Close;
dmodAz.ibqryPretFas.Open;
while not dsoRigheDoc.DataSet.Eof do
begin
pre :=dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsInteger;
if dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsInteger = 1 then
begin
if dmodAz.ibqryPretFas.Locate('PK_CODICE',pre,[]) then
begin
dmodAz.ibqryPretFas.Edit;
dmodAz.ibqryPretFas.FieldByName('PASSATA').AsString := 'N';
dmodAz.ibqryPretFas.Post;
end;
end;
dsoRigheDoc.DataSet.Next;
end;
dmodAz.ibqryPretFas.Close;
end;
dsoRigheDoc.DataSet.First;
While Not(dsoRigheDoc.DataSet.IsEmpty) Do dsoRigheDoc.DataSet.Delete;
If (intTipoDoc = 204)  OR (intTipoDoc = 300)
Then
Begin
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
//elimina_Contab(int_ID_Docum,CliForID);
End;
//Elimina_Scadenza;
dsoDocumento.DataSet.Delete;
if setnum then Del_Num_Doc;
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
Edit_Mode(False);
 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
Apri;
end;

procedure TfBolConto.tbtnPrevClick(Sender: TObject);
begin
 dsoDocumento.DataSet.Prior;
end;

procedure TfBolConto.tbtnNextClick(Sender: TObject);
begin
 dsoDocumento.DataSet.Next;
end;

procedure TfBolConto.Get_Num_Doc;
Var
 strTabName: String;
begin
Get_Tab_Name(intTipoDoc,strTabName);
With (dmodAz.ibqRicerca) Do
Begin
Close;
SQL.Clear;
SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM '+strTabName);
Open;
intNewNumDoc:=1+FieldByName('NUMERO').AsInteger;
Close;
SQL.Clear;
End;
End;

procedure TfBolConto.Set_Num_Doc;
Var
  strTabName: String;
begin
 Get_Tab_Name(intTipoDoc,strTabName);
With (dmodAz.ibqRicerca) Do
Begin
Close;
SQL.Clear;
SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM '+strTabName);
Open;
if not IsEmpty then intNewNumDoc := 1+FieldByName('NUMERO').AsInteger;
Close;
SQL.Clear;
End;

With (dmodAz.ibqRicerca) Do
Begin
Close;
SQL.Clear;
SQL.Add('INSERT INTO '+strTabName+' (NUMERO) Values ('+IntTostr(intNewNumDoc)+')');
ExecSQL;
Close;
SQL.Clear;
End;

end;

procedure TfBolConto.Get_Tab_Name(iTipoDoc: Integer;
  var strTab_Name: String);
begin
  Case (iTipoDoc) of
   200: strTab_Name:='NUM_BOL_CAMP';
   201: strTab_Name:='NUM_DOC_VEN_ORD';
   300: strTab_Name:='NUM_DOC_VEN_BANCO';
   22: strTab_Name:='NUM_DOC_ACQ_ORD';
   205: strTab_Name:='NUM_BOL_PRE';
   500: strTab_Name:='NUM_BOL_CL1';
   501: strTab_Name:='NUM_BOL_DEP';
   502: strTab_Name:='NUM_BOL_MAG';

   511: strTab_Name:='NUM_BOL_CL1';
   512: strTab_Name:='NUM_BOL_DEP';
   514: strTab_Name:='NUM_BOL_MAG';
   515: strTab_Name:='NUM_BOL_CL1';
   554: strTab_Name:='NUM_DOC_ACQ_DDT';
   553: strTab_Name:='NUM_DOC_ACQ_FATT2';
   551: strTab_Name:='NUM_RES_FOR';

   590: strTab_Name:='NUM_DOC_VEN_BANCO';
   591: strTab_Name:='NUM_DOC_VEN_BANCO';

   Else strTab_Name:='';
  End;
end;

procedure TfBolConto.tbtnNumDocClick(Sender: TObject);
Var
 sTab_Name: String;
begin
 Get_Tab_Name(intTipoDoc,sTab_Name);
 fNumDoc_All:=TfNumDoc_All.Create(Self);
 fNumDoc_All.strTabName:=sTab_Name;
 fNumDoc_All.ShowModal;
 fNumDoc_All.Free;
 Apri;
end;

procedure TfBolConto.FormShow(Sender: TObject);
begin
Apri;
If (boolVendita)
   Then Begin
          laCliFor.Caption:='Cliente';
          LookCliForCod.LookupSource:=dsoCli;
          LookCliForDescr.LookupSource:=dsoCli;
        End
   Else Begin
          laCliFor.Caption:='Fornitore';
          LookCliForCod.LookupSource:=dsoFor;
          LookCliForDescr.LookupSource:=dsoFor;
        End;
if (intTipoDoc=501) OR (intTipoDoc=502) then
RadioGroup1.Visible := True;
end;

procedure TfBolConto.dbgRigheDblClick(Sender: TObject);
begin
 SpeedButton2.Click;
end;

procedure TfBolConto.Del_Num_Doc;
Var
  strTabName: String;
begin
  Get_Tab_Name(intTipoDoc,strTabName);

  With (dmodAz.ibqRicerca) Do
  Begin
    Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+strTabName+' WHErE NUMERO ='+IntTostr(intNewNumDoc));
    ExecSQL;
    Close;
    SQL.Clear;
  End;
end;


procedure TfBolConto.edNumRigaLocateChange(Sender: TObject);
begin
 Try
  If Not(edNumRigaLocate.Text='')
   Then StrToInt(edNumRigaLocate.Text);
 Except
   edNumRigaLocate.Text:='1';
 End;
end;

procedure TfBolConto.edNumRigaLocateDblClick(Sender: TObject);
begin
 If Not(edNumRigaLocate.Text='')
   Then Locate_Riga;
end;

procedure TfBolConto.Locate_Riga;
begin
 Try
    If Not(dsoRigheDoc.DataSet.Locate('NUM_RIGA_ID',StrToInt(edNumRigaLocate.Text),[]))
      Then Beep;
    Beep;
 Except
 End;
end;
procedure TfBolConto.edNumRigaLocateKeyPress(Sender: TObject; var Key: Char);
begin
 If ((Key=#13)And(Not(edNumRigaLocate.Text='')))
   Then Locate_Riga;
end;

procedure TfBolConto.dsoCliDataChange(Sender: TObject; Field: TField);
begin
 If (dsoDocumento.DataSet.State in [dsInsert,dsEdit])
   Then
    Begin
      dbeListino.Field.Value:='';
        If Not(LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value = null)
           Then Begin
                 dbeListino.Field.Value:=
                   LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value;
                 boolNonHaListino:=False;
                 dsoAltreDest.DataSet.Close;
                 dmodAz.ibqAltreSedi.parambyname('parIDCLIFOR').asinteger:=
                    LookCliForCod.LookupSource.DataSet.FieldByName('ID_CLI_FOR').asinteger;
                 dsoAltreDest.DataSet.Open;

                End
           Else boolNonHaListino:=True;
      //        strCodice_Iva_CliFor:=
    End;
   // zz Locate_Listino(LookCliForCod.KeyValue);
end;

procedure TfBolConto.dsoCauMagDataChange(Sender: TObject; Field: TField);
begin
 Try
  If Not(LookCauMagCod.KeyValue=null)
   Then strCAU_MAG:=LookCauMagCod.KeyValue;
 Except
   strCAU_MAG:='';
 End;
end;

procedure TfBolConto.Aggiornamento_Contabilita(bNormale: Boolean);
Var
 strCodArt,strCodDep,strCodCauMag: String;
 iNormal: Integer;
begin
 // Aggiornamento contabile articolo.
 If (LookCauMagCod.keyValue=null)
   Then Begin
          Beep; Beep; Beep; Beep; Beep;
          Application.messagebox('La Causale Magazzino non è stata selezionata!','Errore',mb_ok+MB_ICONERROR);
          Exit;
        End;
 If (bNormale)
   Then iNormal :=  1
   Else iNormal := -1;
 strCodCauMag:=LookCauMagCod.keyValue;
 dsoCauMag.DataSet.Locate('CODICE_CAUSALE',strCodCauMag,[]);

 dsoRigheDoc.DataSet.First;

 dmodAz.ibqryDetDoc.CLose;
// tutti dmodAz.ibqryDetDoc.ParamByName('parDoc_Id').asinteger:=-1;
 dmodAz.ibqryDetDoc.Open;

 With (dmodAz) Do
  While Not(ibtTabDet_Doc.EoF) Do
  Begin
   If (ibtTabDet_Doc.Fieldbyname('Rif_a').AsInteger=1)
    Then
     Begin
      //ibtblPassDocDet.Open;
      If (ibtTabDet_Doc.Fieldbyname('Rif_a_ddt').AsInteger=1)
       Then Begin
             // D.D.T.
             Try
               If (ibqryDetDoc.Locate('DOC_ID',//ibtblPassDocDet.
                 ibtTabDet_Doc.Fieldbyname('RIF_DDT_ID_DOC').AsInteger,[]))
                 Then Begin
               ibqryDetDoc.Edit;
               ibqryDetDoc.FIeldByName('OP_QTA_GIACENZA').AsFloat:=
                   ibqryDetDoc.FieldByNAme('OP_QTA_DISPONIBILE').AsFloat-1*iNormal*
                     ibtTabDet_DocQUANTITA.AsFloat;
               ibqryDetDoc.Post;
               End;
             Except
               Beep;
             End;
            End;

      If (ibtTabDet_Doc.Fieldbyname('Rif_a_ord').AsInteger=1)
       Then Begin
             // Ordine
             Try
               If (ibqryDetDoc.Locate('DOC_ID',
                 ibtTabDet_Doc.Fieldbyname('RIF_ord_ID_DOC').AsInteger,[]))
                  Then Begin
               ibqryDetDoc.Edit;
               ibqryDetDoc.FieldByName('OP_QTA_GIACENZA').AsFloat:=
                   ibqryDetDoc.FieldByName('OP_QTA_DISPONIBILE').AsFloat-1*iNormal*
                     ibtTabDet_DocQUANTITA.AsFloat;
               ibqryDetDoc.Post;
               End;
             Except
               Beep;
             End;
            End;

      If (ibtTabDet_Doc.Fieldbyname('Rif_a_pre').AsInteger=1)
       Then Begin
             // Preventivo
             Try
               If (ibqryDetDoc.Locate('DOC_ID',
                 ibtTabDet_Doc.Fieldbyname('RIF_pre_ID_DOC').AsInteger,[]))
                 Then Begin
               ibqryDetDoc.Edit;
               ibqryDetDoc.FieldByName('OP_QTA_GIACENZA').AsFloat:=
                   ibqryDetDoc.FieldByName('OP_QTA_DISPONIBILE').AsFloat-1*iNormal*
                     ibtTabDet_DocQUANTITA.AsFloat;
               ibqryDetDoc.Post;

               End;
             Except
               Beep;
             End;
            End;
      ibqryDetDoc.Close;
     End;

   If (ibtTabDet_Doc.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=strCodArt;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;
         Try
           If (ibqCont_Art.IsEmpty)
               Then Begin
                       ibqCont_Art.Insert;
                       ibqCont_ArtCODICE_ARTICOLO.AsString:=strCodArt;
                       ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;

                    End
               Else ibqCont_Art.Edit;
           // HARD CORE :))
           ibqCont_Art.FieldByName('QTA_ACQUISTI').Value := ibqCont_Art.FieldByName('QTA_ACQUISTI').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_ACQUISTI').Value;
           ibqCont_Art.FieldByName('VAL_ACQUISTI').Value := ibqCont_Art.FieldByName('VAL_ACQUISTI').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SCONTO').Value * ibTab_Cau_Mag.FieldByName('VAL_ACQUISTI').Value;


           ibqCont_Art.FieldByName('QTA_VENDITA').Value := ibqCont_Art.FieldByName('QTA_VENDITA').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_VENDITA').Value;
           ibqCont_Art.FieldByName('VAL_VENDITA').Value := ibqCont_Art.FieldByName('VAL_VENDITA').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SCONTO').Value * ibTab_Cau_Mag.FieldByName('VAL_VENDITA').Value;

           ibqCont_Art.FieldByName('GIACENZA_attuale').Value := ibqCont_Art.FieldByName('QTA_ACQUISTI').Value -  ibqCont_Art.FieldByName('QTA_VENDITA').Value +
                                           ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').Value;

// ?          If (ibTab_Cau_Mag.FieldByName('COSTO_ULTIMO').Value=1)
// ?             Then ibqCont_Art.FieldByName('COSTO_ULTIMO').Value := ibtTabDet_Doc.FieldByName('COSTO').Value;
          Try
           If (boolVendita)
              Then  ibqCont_Art.FieldByName('ULT_PREZZO_VEND').Value := (ibtTabDet_Doc.FieldByName('IMPORTO').Value/ibtTabDet_Doc.FieldByName('QUANTITA').Value)/1
              Else  ibqCont_Art.FieldByName('ULT_COSTO_ACQ').Value := (ibtTabDet_Doc.FieldByName('IMPORTO').Value/ibtTabDet_Doc.FieldByName('QUANTITA').Value)/1;
          Except
          End;


           ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').Value := ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_ALTRE_ENTRATE').Value;
           ibqCont_Art.FieldByName('VAL_ALTRE_ENTRATE').Value := ibqCont_Art.FieldByName('VAL_ALTRE_ENTRATE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SConto').Value * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_ENTRATE').Value;

           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').Value := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_ALTRE_USCITE').Value;
           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').Value := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').Value * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').Value;
           ibqCont_Art.FieldByName('QTA_ORDINATO').Value := ibqCont_Art.FieldByName('QTA_ORDINATO').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_ORDINATO').Value;
           ibqCont_Art.FieldByName('VAL_ORDINATO').Value := ibqCont_Art.FieldByName('VAL_ORDINATO').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SConto').Value * ibTab_Cau_Mag.FieldByName('VAL_ORDINATO').Value;
           ibqCont_Art.FieldByName('QTA_IMPEGNATO').Value := ibqCont_Art.FieldByName('QTA_IMPEGNATO').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_IMPEGNATO').Value;
                    // !!!!
           ibqCont_Art.FieldByName('VAL_QTA_IMPEGNATO').Value := ibqCont_Art.FieldByName('VAL_QTA_IMPEGNATO').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SConto').Value * ibTab_Cau_Mag.FieldByName('VAL_IMPEGNATO').Value;

           ibqCont_Art.FieldByName('QTA_EVASA_CLIENTE').Value := ibqCont_Art.FieldByName('QTA_EVASA_CLIENTE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_EVASA_CLIENTE').Value;
           ibqCont_Art.FieldByName('VAL_EVASo_CLIENTE').Value := ibqCont_Art.FieldByName('VAL_EVASo_CLIENTE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SConto').Value * ibTab_Cau_Mag.FieldByName('VAL_EVASo_CLIENTE').Value;
           ibqCont_Art.FieldByName('QTA_EVASA_FORNITORE').Value := ibqCont_Art.FieldByName('QTA_EVASA_FORNITORE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_EVASA_FORNITORE').Value;
           ibqCont_Art.FieldByName('VAL_EVASo_FORNITORE').Value := ibqCont_Art.FieldByName('VAL_EVASo_FORNITORE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SConto').Value * ibTab_Cau_Mag.FieldByName('VAL_EVASo_FORNITORE').Value;
           ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').Value := ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_RESO_CLIENTE').Value;
           ibqCont_Art.FieldByName('VAL_RESO_CLIENTE').Value := ibqCont_Art.FieldByName('VAL_RESO_CLIENTE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SConto').Value * ibTab_Cau_Mag.FieldByName('VAL_RESO_CLIENTE').Value;
           ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').Value := ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').Value * ibTab_Cau_Mag.FieldByName('QTA_RESO_FORNITORE').Value;
           ibqCont_Art.FieldByName('VAL_RESO_FORNITORE').Value := ibqCont_Art.FieldByName('VAL_RESO_FORNITORE').Value + iNormal *
                    ibtTabDet_Doc.FieldByName('IMPORTO_SConto').Value * ibTab_Cau_Mag.FieldByName('VAL_RESO_FORNITORE').Value;

          If Not(ibqCont_Art.FieldByName('QTA_VENDITA').Value=0)
             Then  ibqCont_Art.FieldByName('MED_PREZZO_VEND').Value := (ibqCont_Art.FieldByName('VAL_VENDITA').Value / ibqCont_Art.FieldByName('QTA_VENDITA').Value)/1;
          If Not(ibqCont_Art.FieldByName('QTA_ACQUISTi').Value=0)
             Then  ibqCont_Art.FieldByName('MEDIO_COSTO_ACQ').Value := (ibqCont_Art.FieldByName('VAL_ACQUISTi').Value / ibqCont_Art.FieldByName('QTA_ACQUISTi').Value)/1;


           If (ibTab_Cau_Mag.FieldByName('DATA_ULTIMA_VENDITA').Value=1)
              Then ibqCont_Art.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
           If (ibTab_Cau_Mag.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1)
              Then ibqCont_Art.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;

           If (ibTab_Cau_Mag.FieldByName('COSTO_ULTIMO').Value=1)
             Then ibqCont_Art.FieldByName('COSTO_ULTIMO').Value := ibtTabDet_Doc.FieldByName('COSTO').Value;


           ibqCont_Art.Post;
         Except
         End;
       End;
    ibtTabDet_Doc.Next;
  End;
 dmodAz.ibqCont_Art.Close;
end;

procedure TfBolConto.Calcola_Totali;
Var
 dSp,dSPIVA,dTotale,dTotMerc,dTotServ,dTotAltre,dTotIVATO,dTotIVA,dTotSconti,dtotimp : currency;
 dtotsct, dtotqta: Double;
 bTipo_Serv: Byte;
 SavePlace : TBookmark;
begin
 TRY
dTotMerc:=0;       dTotServ:=0;
dTotAltre:=0;     dTotIVATO:=0;
dtotimp:=0;       dtotsct := 0;   dtotqta := 0;
With (dsoRigheDoc.DataSet) Do
Begin
if not IsEmpty then
begin
  SavePlace := GetBookmark;
        DisableControls;
        First;
     While Not(Eof) Do
     Begin
       bTipo_Serv := 0;
       If (FieldByName('TIPO_SERVIZIO').AsString='ARTICOLO')
          Then bTipo_Serv:=1;
       If (FieldByName('TIPO_SERVIZIO').AsString='SERVIZIO')
          Then bTipo_Serv:=2;
       If (FieldByName('TIPO_SERVIZIO').AsString='FUORI MAGAZZINO')
          Then bTipo_Serv:=0;
       Case (bTipo_Serv) Of
          0: dTotAltre :=dTotAltre +FieldByName('IMPORTO_SConto').AsFloat;
          1: dTotMerc  :=dTotMerc  +FieldByName('IMPORTO_SConto').AsFloat;
          2: dTotServ  :=dTotServ  +FieldByName('IMPORTO_SConto').AsFloat;
       End;
       dTotIMP := dTotImp   + FieldByName('importo_Sconto').AsFloat;
       dTotSct := dTotSct + FieldByName('qta_um').AsFloat;
       dTotqta := dTotqta + FieldByName('quantita').AsFloat;
       Next;
     End;
     dTotale:=dTotAltre+dTotMerc+dTotServ;
     dTotIVA:=dTotIVATO-dTotale;
     dTotSconti:= dTotImp-dTotale;
     dbeTotMerc.field.AsFloat:=dTotMerc+dTotAltre;
     dbeTotServ.field.AsFloat:=dTotServ;
     dbeTotSconti.field.AsFloat:=dTotSconti;
     dbeImponibile.field.AsFloat:=dTotale+dSp;//+((dTotIvato+dSp+dSpIVA)*(dSc1+dSc2)-dScM);
     dbeImposta.field.AsFloat:=dTotIva+dSpIVA;
     dbeTotale.field.AsFloat:=dTotIvato+dSp+dSpIVA;
     dbeDaPagare.field.AsFloat:=dTotIMP;
     DBEdit1.Field.AsFloat:=dtotsct;
     DBEdit2.Field.AsFloat:=dtotqta;
     EnableControls;
     GotoBookmark(SavePlace);
     FreeBookmark(SavePlace);
  End;
  end;
 EXCEPT
 END;
end;


procedure TfBolConto.tbtnPrintClick(Sender: TObject);
begin
If Not(FileExists(ExtractFilePath(Application.ExeName)+'frBol'+strCAU_MAG+'.frf'))
Then  Begin
MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
Exit;
End;
dmodAz.ibqStampaDoc.Close;
dmodAz.ibqStampaDoc.Open;
With (dmodAz.rePRN) Do
Begin
LoadFromFile(ExtractFilePath(Application.ExeName)+'frBol'+strCAU_MAG+'.frf');
ShowReport;
End;
dmodAz.ibqStampaDoc.Close;
end;

procedure TfBolConto.Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
Var
 strCodIVA: String;
 iNormal: Integer;
 dAliVa: Double;
begin
 If (boolNormale)
   Then iNormal :=  1
   Else iNormal := -1;
 
 strCodIVA:=dmodAz.ibtTabDet_DocCODICE_IVA_ID.AsString;
 dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
 dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;

 dsoRigheDoc.DataSet.Locate('NUM_RIGA_ID',intNumRiga,[]);
 
 With (dmodAz) Do
 Begin
// per calcolare  Codice IVA anche per i Servizi
//   If Not(ibtTabDet_Doc.Fieldbyname('TIPO_SERVIZIO').AsString='SERVIZIO')
//    Then
       Begin
          // Insert!!!
          // check if exsists!
          If NOT(
                 (ibqTab_DocCODIVA1.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)OR
                 (ibqTab_DocCODIVA2.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)OR
                 (ibqTab_DocCODIVA3.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)OR
                 (ibqTab_DocCODIVA4.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)OR
                 (ibqTab_DocCODIVA5.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
                )
           Then  If (ibqTab_DocCODIVA1.AsString ='')
                  Then Begin
                         ibqTab_DocCODIVA1.AsString:=ibtTabDet_DocCODICE_IVA_ID.AsString;
                         ibqTab_DocALIVA1.AsFloat:=dAliVa;
                       end
                  Else If (ibqTab_DocCODIVA2.AsString ='')
                        Then Begin
                               ibqTab_DocCODIVA2.AsString:=ibtTabDet_DocCODICE_IVA_ID.AsString;
                               ibqTab_DocALIVA2.AsFloat:=dAliVa;
                             End
                        Else If (ibqTab_DocCODIVA3.AsString ='')
                              Then Begin
                                     ibqTab_DocCODIVA3.AsString:=ibtTabDet_DocCODICE_IVA_ID.AsString;
                                     ibqTab_DocALIVA3.AsFloat:=dAliVa;
                                   End
                              Else If (ibqTab_DocCODIVA4.AsString ='')
                                    Then Begin
                                           ibqTab_DocCODIVA4.AsString:=ibtTabDet_DocCODICE_IVA_ID.AsString;
                                           ibqTab_DocALIVA4.AsFloat:=dAliVa;
                                         End
                                    Else If (ibqTab_DocCODIVA5.AsString ='')
                                          Then Begin
                                                 ibqTab_DocCODIVA5.AsString:=ibtTabDet_DocCODICE_IVA_ID.AsString;
                                                 ibqTab_DocALIVA5.AsFloat:=dAliVa;
                                               End
                                          Else Exit;
          // Update!!!
          If (ibqTab_DocCODIVA1.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
           Then Begin
                  ibqTab_DocIMPON1.AsFloat := ibqTab_DocIMPON1.AsFloat +iNormal*
                                            ibtTabDet_DocIMPORTO_SCONTO.AsFloat;
                  ibqTab_DocIMPOSTA1.AsFloat := ibqTab_DocIMPOSTA1.AsFloat+iNormal*
                      (ibtTabDet_DocIMPORTO_CON_IVA.AsFloat - ibtTabDet_DocIMPORTO_SCONTO.AsFloat);
                End;
          If (ibqTab_DocCODIVA2.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
           Then Begin
                  ibqTab_DocIMPON2.AsFloat := ibqTab_DocIMPON2.AsFloat +iNormal*
                                            ibtTabDet_DocIMPORTO_SCONTO.AsFloat;
                  ibqTab_DocIMPOSTA2.AsFloat := ibqTab_DocIMPOSTA2.AsFloat+iNormal*
                      (ibtTabDet_DocIMPORTO_CON_IVA.AsFloat - ibtTabDet_DocIMPORTO_SCONTO.AsFloat);
                End;
          If (ibqTab_DocCODIVA3.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
           Then Begin
                  ibqTab_DocIMPON3.AsFloat := ibqTab_DocIMPON3.AsFloat +iNormal*
                                            ibtTabDet_DocIMPORTO_SCONTO.AsFloat;
                  ibqTab_DocIMPOSTA3.AsFloat := ibqTab_DocIMPOSTA3.AsFloat+iNormal*
                      (ibtTabDet_DocIMPORTO_CON_IVA.AsFloat - ibtTabDet_DocIMPORTO_SCONTO.AsFloat);
                End;
          If (ibqTab_DocCODIVA4.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
           Then Begin
                  ibqTab_DocIMPON4.AsFloat := ibqTab_DocIMPON4.AsFloat +iNormal*
                                            ibtTabDet_DocIMPORTO_SCONTO.AsFloat;
                  ibqTab_DocIMPOSTA4.AsFloat := ibqTab_DocIMPOSTA4.AsFloat+iNormal*
                      (ibtTabDet_DocIMPORTO_CON_IVA.AsFloat - ibtTabDet_DocIMPORTO_SCONTO.AsFloat);
                End;
          If (ibqTab_DocCODIVA5.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
           Then Begin
                  ibqTab_DocIMPON5.AsFloat := ibqTab_DocIMPON5.AsFloat +iNormal*
                                            ibtTabDet_DocIMPORTO_SCONTO.AsFloat;
                  ibqTab_DocIMPOSTA5.AsFloat := ibqTab_DocIMPOSTA5.AsFloat+iNormal*
                      (ibtTabDet_DocIMPORTO_CON_IVA.AsFloat - ibtTabDet_DocIMPORTO_SCONTO.AsFloat);
                End;
       // Check if zero!
       If (ibqTab_DocIMPON1.AsFloat = 0)
        Then Begin
              ibqTab_DocIMPOSTA1.AsFloat := 0;
              ibqTab_DocCODIVA1.AsString := '';
              ibqTab_DocALIVA1.AsFloat := 0;
             End;
       If (ibqTab_DocIMPON2.AsFloat = 0)
        Then Begin
              ibqTab_DocIMPOSTA2.AsFloat := 0;
              ibqTab_DocCODIVA2.AsString := '';
              ibqTab_DocALIVA2.AsFloat := 0;
             End;
       If (ibqTab_DocIMPON3.AsFloat = 0)
        Then Begin
              ibqTab_DocIMPOSTA3.AsFloat := 0;
              ibqTab_DocCODIVA3.AsString := '';
              ibqTab_DocALIVA3.AsFloat := 0;
             End;
       If (ibqTab_DocIMPON4.AsFloat = 0)
        Then Begin
              ibqTab_DocIMPOSTA4.AsFloat := 0;
              ibqTab_DocCODIVA4.AsString := '';
              ibqTab_DocALIVA4.AsFloat := 0;
             End;
       If (ibqTab_DocIMPON5.AsFloat = 0)
        Then Begin
              ibqTab_DocIMPOSTA5.AsFloat := 0;
              ibqTab_DocCODIVA5.AsString := '';
              ibqTab_DocALIVA5.AsFloat := 0;
             End;
       End;
 End;

End;


procedure TfBolConto.Get_Val_From_PersAz;
begin
 dmodAz.ibTabPersAz.Open;
  strCodIvaSp_Boll:=dmodAz.ibTabPersAzCOD_IVA_SPESE_BOLLO.AsString;
  strCodIvaSp_Inc:=dmodAz.ibTabPersAzCOD_IVA_SPESE_INCASSO.AsString;
  strCodIvaSp_Imb:=dmodAz.ibTabPersAzCOD_IVA_SPESE_IMBALLO.AsString;
  strCodIvaSp_ContrSegn:=dmodAz.ibTabPersAzCOD_IVA_SPESE_CONTRASEGNO.AsString;
  strCodIvaSp_Access:=dmodAz.ibTabPersAzCOD_IVA_SPESE_ACC.AsString;
  strCodIvaSp_Sped:=dmodAz.ibTabPersAzCOD_IVA_SPESE_SPED.AsString;
// dmodAz.ibTabPersAz.Close;
end;


procedure TfBolConto.Calcola_Spese(VAR dSpese:currency;VAR dSpeseIVA: currency);
Var
 dValore,dAliquota: Double;
begin
 Try
  dSpese:=0;
  dSpeseIVA:=0;
  // Bolli
   dValore:=0;
   Get_Aliq_IVA('0',dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Incasso
   dValore:=0;
   Get_Aliq_IVA('0',dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Imballo
   dValore:=0;
   Get_Aliq_IVA('0',dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Contrassegno
   dValore:=0;
   Get_Aliq_IVA('0',dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Accessorie
   dValore:=0;
   Get_Aliq_IVA('0',dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Spedizione
   dValore:=0;
   Get_Aliq_IVA('0',dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
 Except;
 End;
End;

procedure TfBolConto.Get_Aliq_IVA(strCodIVA: String;
  var dAliq: Double);
Begin
  Try
    If (dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]))
      Then dAliq:=dsoCODICEIVA.DataSet.FieldByNAme('ALIQUOTA').AsFloat
      Else dAliq:=0;
  Except
    dAliq:=-1;
  End;
End;




procedure TfBolConto.FormCreate(Sender: TObject);
begin
 ChangeDataSetsState(False);
 Get_Val_From_PersAz;
end;

procedure TfBolConto.Azzerare_IVA;
begin
//
 dsoDocumento.DataSet.FieldByName('CODIVA1').AsString:='';
 dsoDocumento.DataSet.FieldByName('CODIVA2').AsString:='';
 dsoDocumento.DataSet.FieldByName('CODIVA3').AsString:='';
 dsoDocumento.DataSet.FieldByName('CODIVA4').AsString:='';
 dsoDocumento.DataSet.FieldByName('CODIVA5').AsString:='';

 dsoDocumento.DataSet.FieldByName('ALIVA1').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('ALIVA2').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('ALIVA3').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('ALIVA4').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('ALIVA5').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPON1').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPON2').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPON3').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPON4').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPON5').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPOSTA1').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPOSTA2').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPOSTA3').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPOSTA4').asinteger:=0;
 dsoDocumento.DataSet.FieldByName('IMPOSTA5').asinteger:=0;
 //

 dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat:=
   dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat-
   dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsFloat;

 dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsInteger:=0;
 
 dsoDocumento.DataSet.FieldByName('TOTALE_EURO_IVATO').AsFloat:=
  Round((dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat)*1936.27);

end;

procedure TfBolConto.Insert_Scadenza;
Var
 wRateCntr,wGiorniFineMese,wNumRate,wGiornoRata: Word;
 wA,wM,wG: Word;
 dImportoRata: Currency;
 iFINE_MESE: Integer;
 
 dDataRata: TDate;

 Function Fine_Mese(wMese,wAnno: Word):Word;
 Begin
  Case (wMese) Of
     1: Result:=31;
     2: Result:=28;
     3: Result:=31;
     4: Result:=30;
     5: Result:=31;
     6: Result:=30;
     7: Result:=31;
     8: Result:=31;
     9: Result:=30;
    10: Result:=31;
    11: Result:=30;
    12: Result:=31
   Else Result:=1 
  End;
  If (IsLeapYear(wAnno))And(wMese=2)
    Then Inc(Result);
 End; // Func
            
 
begin
 // solo per le fatture
 If Not(dsoDocumento.DataSet.FieldByName('Tipo_Doc').AsInteger in [14,17,24,27])
   Then Exit;
 // se è stato selezionato
 If (dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString='')
  Then Begin
        ShowMessage('Pagamento non selezionato!'+#13+
                    'Documento N° '+dsoDocumento.DataSet.FieldByName('Num_Doc').AsString);
        Exit;
       End;

 If Not(dmodAz.ibTab_Pagamenti.Locate('ID_PAGAMENTO',
        dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString,[]))
   Then Exit;

 // Valori da tabella pagamenti  
 wNumRate:=dmodAz.ibTab_Pagamenti.FieldByName('NUMERO_RATE').AsInteger;
 wGiornoRata:=dmodAz.ibTab_Pagamenti.FieldByName('GIORNI_PRIMA_RATA').AsInteger;
 iFINE_MESE:=dmodAz.ibTab_Pagamenti.FieldByName('FINE_MESE').AsInteger;

{ Case (iFINE_MESE) Of
   1: wGiorniFineMese:=Fine_Mese(,);
   2: wGiorniFineMese:=Round(Fine_Mese(,)/2);
   3: wGiorniFineMese:=;
 End;}
 TRY
   If (wNumRate=0)
    Then With (dmodAz.ibqryScadenze) Do
       BEgin
         Open;
         Insert;
         FieldByName('DOCUMENTO_ID').AsInteger:=dsoDocumento.DataSet.FieldByName('ID_DOCUMENTO').AsInteger;
         FieldByName('PAGAMENTO_ID').AsString:=dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString;
         FieldByName('CLIFOR_ID').AsInteger:=dsoDocumento.DataSet.FieldByName('CLIFOR_ID').AsInteger;
         FieldByName('CLIFOR_TIPO').AsInteger:=intTipoCliFor;
         FieldByName('CLIFOR_DESCR').AsString:=LookCliForDescr.LookupSource.DataSet.FieldByName('DENOMINAZIONE').AsString;
         FieldByName('PAGATO').AsString:='N';
         FieldByName('IMPORTO').AsFloat:=dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat;
         FieldByName('NUM_DOC').AsInteger:=dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger;
         FieldByName('DATA_DOC').AsDateTime:=dsoDocumento.DataSet.FieldByName('DATA_DOC').AsDateTime;
         FieldByName('DATA_SCADENZA').AsDateTime:=Date;
         Post;
         Close;
         Exit;
       End;   // rate=0;
 Except
  Beep;
 End;
 // Importo per rata
 dImportoRata:=( (dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat-
                 dsoDocumento.DataSet.FieldByName('ACCONTO').AsFloat)/wNumRate);
 // Apri la tabella scadenze
 dmodAz.ibqryScadenze.Open;      
 For wRateCntr:=1 To wNumRate Do //Rate massimo 6!
 Begin
  If (wNumRate>6)
    Then Exit;

    dDataRata:=dsoDocumento.DataSet.FieldByName('DATA_DOC').AsDateTime
            +wGiornoRata;
    DecodeDate(dDataRata,wA,wM,wG);
    wM:=wM-1+wRateCntr; // rata
    Case (iFINE_MESE) Of
      1: wGiorniFineMese:=Fine_Mese(wM,wA);
      2: wGiorniFineMese:=15;
      3: If (wM=2)And(wG>28)
           Then If isLeapYear(wA)
                  Then wGiorniFineMese:=29
                  Else wGiorniFineMese:=28
           Else wGiorniFineMese:=wG
     Else  wGiorniFineMese:=Fine_Mese(wM,wA)
    End;
    dDataRata:=EncodeDate(wA,wM,wGiorniFineMese);
    

   With (dsoDocumento.DataSet) Do
   BEgin
    Edit;
     FieldByName('RATA'+IntToStr(wRateCntr)+'_DATA').AsDateTime:=dDataRata;
     FieldByName('RATA'+IntToStr(wRateCntr)+'_IMPORTO').AsFloat:=dImportoRata;
    Post;
   End;
   With (dmodAz.ibqryScadenze) Do
       BEgin
         Insert;
         FieldByName('DOCUMENTO_ID').AsInteger:=dsoDocumento.DataSet.FieldByName('ID_DOCUMENTO').AsInteger;
         FieldByName('PAGAMENTO_ID').AsString:=dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString;
         FieldByName('CLIFOR_ID').AsInteger:=dsoDocumento.DataSet.FieldByName('CLIFOR_ID').AsInteger;
         FieldByName('CLIFOR_TIPO').AsInteger:=intTipoCliFor;
         FieldByName('CLIFOR_DESCR').AsString:=LookCliForDescr.LookupSource.DataSet.FieldByName('DENOMINAZIONE').AsString;
         FieldByName('PAGATO').AsString:='N';
         FieldByName('IMPORTO').AsFloat:=dImportoRata;
         FieldByName('NUM_DOC').AsInteger:=dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger;
         FieldByName('DATA_DOC').AsDateTime:=dsoDocumento.DataSet.FieldByName('DATA_DOC').AsDateTime;
         FieldByName('DATA_SCADENZA').AsDateTime:=dDataRata;
         Post;
       End;  
  End;
  dmodAz.ibqryScadenze.Close;
  // OK !
End;

procedure TfBolConto.Elimina_Scadenza;
begin
//
 // solo per le fatture
 
 If Not(dsoDocumento.DataSet.FieldByName('Tipo_Doc').AsInteger in [14,17,24,27])
   Then Exit;
 With (dmodAz.ibqRicerca) Do
 Begin
  Close;
  SQL.Clear;
  SQL.Add('Delete from Scadenze');
  SQL.Add('where DOCUMENTO_ID='+
    IntToStr(dsoDocumento.DataSet.FieldByName('ID_DOCUMENTO').AsInteger));
  ExecSQL;
  Close;
  SQL.Clear;   
 End;
End;

procedure TfBolConto.Insert_Contab_Acq(i_ID_Doc: Integer);
Var
 intNumProt, intID_PianoConto: Integer;
 intPK_Contab: Integer;
begin
 // Acquisto : tot_doc va in dare e det. in avere
 // ottenere in num_prot -> uno per inserimento (ce procedure che torna ultimo)
 // -------------------------
 
 With (dmodAz) Do
 Begin
  Try
   ibspLastNumProt.ExecProc;
   intNumProt:=1+ibspLastNumProt.ParamByName('LAST_NUM_PROT').AsInteger;

    ibqRicerca2.Close;
    ibqRicerca2.SQL.Clear;
    ibqRicerca2.SQL.Add('select codice_articolo, importo, codice_iva_id, importo_con_iva');
    ibqRicerca2.SQL.Add('from tab_det_doc');
    ibqRicerca2.SQL.Add('where doc_id=:parID_Doc and pianoconto_id=:parID_PianoConto');
    ibqRicerca2.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;

    ibqRicerca.Close;
    ibqRicerca.SQL.Clear;
    ibqRicerca.SQL.Add('select pianoconto_id,Sum(IMPORTO_SCONTO) as Tot_Importo from TAB_DET_DOC');
    ibqRicerca.SQL.Add('where doc_id=:parID_Doc group by pianoconto_id');
    ibqRicerca.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;
    ibqRicerca.Open;
    ibqRicerca.First;

    // Inizia inserimento!
//    ibqTab_Doc.Locate('ID_Documento',i_ID_Doc,[]);
IBQuery1.Close;
IBQuery1.Open;
IBQuery1.Locate('ID_Documento',i_ID_Doc,[]);
    // inserire prima riga
    ibqryContab.Open;
    ibtblContab_Det.Open;

    // totale ivato
    ibqryContab.Insert;
    ibqryContabCON_DETT.AsInteger:=0;
    ibqryContabDATA_MOV.AsDateTime:=Date;
    ibqryContabDATA_DOC.AsDateTime:=IBQuery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
    ibqryContabDESCR_MOV.AsString:='Fattura di Acquisto';
     intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
     ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
     ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;
    ibqryContabAVERE.AsFloat:=ibquery1TOTALE_IVATO.AsFloat;
    ibqryContabDARE.AsFloat:=0;
    ibqryContab.Post;

    While Not(ibqRicerca.EoF) Do
    Begin

      ibqryContab.Insert;
      intPK_Contab:=ibqryContabPK_CODICE.AsInteger;
      ibqryContabCON_DETT.AsInteger:=1;
      ibqryContabDATA_MOV.AsDateTime:=Date;
      ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
      ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
      ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
      ibqryContabDESCR_MOV.AsString:='Fattura di Acquisto';

      if ibqRicerca.fieldByName('pianoconto_id').AsInteger = Null then
      intID_PianoConto:=dmodAz.ibTabPersAzACQUISTI.AsInteger
      ELSE
      intID_PianoConto := ibqRicerca.fieldByName('pianoconto_id').AsInteger;

       ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
       ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
       ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
       ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;

      ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
      ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
      ibqryContabNUM_PROT.AsInteger:=intNumProt;
       ibqryContabAVERE.AsFloat:=0;
       ibqryContabDARE.AsFloat:=ibqRicerca.fieldByName('tot_importo').asfloat;
      ibqryContab.Post;

      // .oO0o.
      intID_PianoConto:= ibqRicerca.FieldByName('PIANOCONTO_ID').asinteger;

      ibqRicerca2.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;
      ibqRicerca2.ParamByName('parID_PianoConto').AsInteger:=intID_PianoConto;
      ibqRicerca2.Open;
      ibqRicerca2.First;
      // Inserire det_contab!
      While Not(ibqRicerca2.EoF) Do
      Begin
       ibtblContab_Det.Insert;
       ibtblContab_DetFK_CONTABILITA.AsInteger:=intPK_Contab;
       ibtblContab_DetDATA_FATTURA.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
       ibtblContab_DetNUM_FATTURA.AsInteger:=ibquery1NUM_DOC.AsInteger;
       ibtblContab_DetCODICE_ARTICOLO.AsString:=ibqRicerca2.fieldByName('codice_articolo').asstring;

        ibtblContab_DetPIANOCONTO_ID.AsInteger:=intID_PianoConto;
        ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
        ibtblContab_DetSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
        ibtblContab_DetNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
       ibtblContab_DetIMPONIBILE.AsFloat:=ibqRicerca2.fieldByName('importo').asfloat;
       ibtblContab_DetIVA_PERC.AsFloat:=ibqRicerca2.fieldByName('codice_iva_id').asfloat;
       ibtblContab_DetTOTALE.AsFloat:=ibqRicerca2.fieldByName('importo_con_iva').asfloat;
       ibtblContab_DetIMPOSTA.AsFloat:=
         ibqRicerca2.fieldByName('importo_con_iva').asfloat-ibqRicerca2.fieldByName('importo').asfloat;
       ibtblContab_Det.Post;
       ibqRicerca2.Next;
      End;
      ibqRicerca2.Close;
      // .oOo.

      ibqRicerca.Next;
    End;
    // Riga per IVA
    ibqryContab.Insert;
    ibqryContabCON_DETT.AsInteger:=0;
    ibqryContabDATA_MOV.AsDateTime:=Date;
    ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
    ibqryContabDESCR_MOV.AsString:='Fattura di Acquisto';

     intID_PianoConto:=dmodAz.ibTabPersAzIVA_ACQ.asInteger;
     ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
     // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
     ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;

    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;
    ibqryContabAVERE.AsFloat:=0;
    ibqryContabDARE.AsFloat:=ibquery1TOTALE_IVA.AsFloat;
    ibqryContab.Post;

    // Spese

    // Bolli
    intID_PianoConto:=dmodAz.ibTabPersAzBOLLI_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    //Access
    intID_PianoConto:=dmodAz.ibTabPersAzACCESSORIE_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;

    //Incasso
    intID_PianoConto:=dmodAz.ibTabPersAzINCASSO_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    // Imballo
    intID_PianoConto:=dmodAz.ibTabPersAzIMBALLO_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    // spedizione
    intID_PianoConto:=dmodAz.ibTabPersAzSPEDIZIONE_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    // contrass
    intID_PianoConto:=dmodAz.ibTabPersAzCONTRASEGNO_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;

    ibqRicerca.Close;
    ibtblContab_Det.Close;
    ibqryContab.Close;
  Except
  End;
 End;
End;

procedure TfBolConto.Insert_Contab_Vend(i_ID_Doc: Integer);
Var
 intNumProt, intID_PianoConto: Integer;
 intPK_Contab: Integer;


begin
 // Vendita : tot_doc va in dare e det. in avere
 // ottenere in num_prot -> uno per inserimento (ce procedure che torna ultimo)
 // -------------------------

 With (dmodAz) Do
 Begin
  Try
   ibspLastNumProt.ExecProc;
   intNumProt:=1+ibspLastNumProt.ParamByName('LAST_NUM_PROT').AsInteger;

    ibqRicerca2.Close;
    ibqRicerca2.SQL.Clear;
    ibqRicerca2.SQL.Add('select codice_articolo, importo, codice_iva_id, importo_con_iva');
    ibqRicerca2.SQL.Add('from tab_det_doc');
    ibqRicerca2.SQL.Add('where doc_id=:parID_Doc and pianoconto_id=:parID_PianoConto');
    ibqRicerca2.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;

    ibqRicerca.Close;
    ibqRicerca.SQL.Clear;
    ibqRicerca.SQL.Add('select pianoconto_id,Sum(IMPORTO_SCONTO) as Tot_Importo from TAB_DET_DOC');
    ibqRicerca.SQL.Add('where doc_id=:parID_Doc group by pianoconto_id');
    ibqRicerca.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;
    ibqRicerca.Open;
    ibqRicerca.First;
    // Inizia inserimento!
//    ibqtab_doc.Locate('ID_Documento',i_ID_Doc,[]);

IBQuery1.Close;
IBQuery1.Open;
IBQuery1.Locate('ID_Documento',i_ID_Doc,[]);

    // inserire prima riga
    ibqryContab.Open;
    ibtblContab_Det.Open;

    ibqryContab.Insert;
    ibqryContabCON_DETT.AsInteger:=0;
    ibqryContabDATA_MOV.AsDateTime:=Date;
    ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
    ibqryContabDESCR_MOV.AsString:='Fattura di Vendita';
    ibqryContabTIPO_MOV.AsInteger:=0; // tipo 0 - da doc
     intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
     ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
     ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;

    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;

    ibqryContabAVERE.AsFloat:=0;
    ibqryContabDARE.AsFloat:=ibquery1TOTALE_IVATO.AsFloat;
    ibqryContab.Post;

    While Not(ibqRicerca.EoF) Do
    Begin

      ibqryContab.Insert;
      intPK_Contab:=ibqryContabPK_CODICE.AsInteger;
      ibqryContabCON_DETT.AsInteger:=1;
      ibqryContabDATA_MOV.AsDateTime:=Date;
      ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
      ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
      ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
      ibqryContabDESCR_MOV.AsString:='Fattura di Vendita';
      ibqryContabTIPO_MOV.AsInteger:=0; // tipo 0 - da doc

      if ibqRicerca.fieldByName('pianoconto_id').AsInteger = Null then
      intID_PianoConto:=dmodAz.ibTabPersAzVendite.AsInteger
      ELSE
      intID_PianoConto := ibqRicerca.fieldByName('pianoconto_id').AsInteger;

       ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
       ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
       ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
       ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
      ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
      ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
      ibqryContabNUM_PROT.AsInteger:=intNumProt;
       ibqryContabAVERE.AsFloat:=ibqRicerca.fieldByName('tot_importo').asfloat;
       ibqryContabDARE.AsFloat:=0;
      ibqryContab.Post;

      // .oOo.
      intID_PianoConto:= ibqRicerca.FieldByName('PIANOCONTO_ID').asinteger;

      ibqRicerca2.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;
      ibqRicerca2.ParamByName('parID_PianoConto').AsInteger:=intID_PianoConto;
      ibqRicerca2.Open;
      ibqRicerca2.First;
      // Inserire det_contab!
      While Not(ibqRicerca2.EoF) Do
      Begin
       ibtblContab_Det.Insert;
       ibtblContab_DetFK_CONTABILITA.AsInteger:=intPK_Contab;
       ibtblContab_DetDATA_FATTURA.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
       ibtblContab_DetNUM_FATTURA.AsInteger:=ibquery1NUM_DOC.AsInteger;
       ibtblContab_DetCODICE_ARTICOLO.AsString:=ibqRicerca2.fieldByName('codice_articolo').asstring;
        ibtblContab_DetPIANOCONTO_ID.AsInteger:=intID_PianoConto;
        ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
        ibtblContab_DetSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
        ibtblContab_DetNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
       ibtblContab_DetIMPONIBILE.AsFloat:=ibqRicerca2.fieldByName('importo').asfloat;
       ibtblContab_DetIVA_PERC.AsFloat:=ibqRicerca2.fieldByName('codice_iva_id').asfloat;
       ibtblContab_DetTOTALE.AsFloat:=ibqRicerca2.fieldByName('importo_con_iva').asfloat;
       ibtblContab_DetIMPOSTA.AsFloat:=
         ibqRicerca2.fieldByName('importo_con_iva').asfloat-ibqRicerca2.fieldByName('importo').asfloat;
       ibtblContab_Det.Post;
       ibqRicerca2.Next;
      End;
      ibqRicerca2.Close;
      // .oOo.

      ibqRicerca.Next;
    End;

    // Riga per IVA
    ibqryContab.Insert;
    ibqryContabCON_DETT.AsInteger:=0;
    ibqryContabDATA_MOV.AsDateTime:=Date;
    ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
    ibqryContabDESCR_MOV.AsString:='Fattura di Vendita';
    ibqryContabTIPO_MOV.AsInteger:=0; // tipo 0 - da doc

     intID_PianoConto:=dmodAz.ibTabPersAzIVA_VEN.asInteger;
     ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
     // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
     ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;

    ibqryContabAVERE.AsFloat:=ibquery1TOTALE_IVA.AsFloat;
    ibqryContabDARE.AsFloat:=0;
    ibqryContab.Post;



    // Spese
    // Bolli
    intID_PianoConto:=dmodAz.ibTabPersAzBOLLI_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     //Access
    intID_PianoConto:=dmodAz.ibTabPersAzACCESSORIE_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    //Incasso
    intID_PianoConto:=dmodAz.ibTabPersAzINCASSO_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    // Imballo
    intID_PianoConto:=dmodAz.ibTabPersAzIMBALLO_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    // spedizione
    intID_PianoConto:=dmodAz.ibTabPersAzSPEDIZIONE_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    // contrass
    intID_PianoConto:=dmodAz.ibTabPersAzCONTRASEGNO_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;

    ibqRicerca.Close;
    ibtblContab_Det.Close;
    ibqryContab.Close;
  Except
  End;
 End;
End;

procedure TfBolConto.Elimina_Contab(i_ID_Doc: Integer;CliForID: Integer);
begin
 With (dmodAz) Do
 Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('DELETE FROM CONTABILITA');
   ibqRicerca.SQL.Add('WHERE DOC_ID=:parID_Doc AND CLIFOR_ID=:CLIFOR_ID');
   ibqRicerca.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;
   ibqRicerca.ParamByName('CLIFOR_ID').AsInteger:=CLIFORID;
//   ibqRicerca.ParamByName('TIPO_Doc').AsInteger:=TIPODOC;
   ibqRicerca.ExecSQL;
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
 End;
end;

{
procedure TfBolConto.tbtnAggiornaIVAClick(Sender: TObject);
begin
  Aggiorna_IVA_Totale;
end;
}

procedure TfBolConto.Aggiorna_Spese_IVA;
 // iva per Spese.

 Procedure Update_iva(strCodIVA: String;dAliVa: Double;dImpon,dImposta: currency);
 Begin
  With (dmodAz) Do
  Begin
    If NOT(
         (ibqTab_DocCODIVA1.AsString =strCodIVA)OR
         (ibqTab_DocCODIVA2.AsString =strCodIVA)OR
         (ibqTab_DocCODIVA3.AsString =strCodIVA)OR
         (ibqTab_DocCODIVA4.AsString =strCodIVA)OR
         (ibqTab_DocCODIVA5.AsString =strCodIVA)
        )
           Then  If (ibqTab_DocCODIVA1.AsString ='')
                  Then Begin
                         ibqTab_DocCODIVA1.AsString:=strCodIVA;
                         ibqTab_DocALIVA1.AsFloat:=dAliVa;
                       end
                  Else If (ibqTab_DocCODIVA2.AsString ='')
                        Then Begin
                               ibqTab_DocCODIVA2.AsString:=strCodIVA;
                               ibqTab_DocALIVA2.AsFloat:=dAliVa;
                             End
                        Else If (ibqTab_DocCODIVA3.AsString ='')
                              Then Begin
                                     ibqTab_DocCODIVA3.AsString:=strCodIVA;
                                     ibqTab_DocALIVA3.AsFloat:=dAliVa;
                                   End
                              Else If (ibqTab_DocCODIVA4.AsString ='')
                                    Then Begin
                                           ibqTab_DocCODIVA4.AsString:=strCodIVA;
                                           ibqTab_DocALIVA4.AsFloat:=dAliVa;
                                         End
                                    Else If (ibqTab_DocCODIVA5.AsString ='')
                                          Then Begin
                                                 ibqTab_DocCODIVA5.AsString:=strCodIVA;
                                                 ibqTab_DocALIVA5.AsFloat:=dAliVa;
                                               End
                                          Else Exit;

          // Update!!!
          If (ibqTab_DocCODIVA1.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON1.AsFloat := ibqTab_DocIMPON1.AsFloat+dImpon;
                  ibqTab_DocIMPOSTA1.AsFloat := ibqTab_DocIMPOSTA1.AsFloat+dImposta;
                End;
          If (ibqTab_DocCODIVA2.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON2.AsFloat :=ibqTab_DocIMPON2.AsFloat+ dImpon;
                  ibqTab_DocIMPOSTA2.AsFloat :=ibqTab_DocIMPOSTA2.AsFloat+ dImposta;
                End;
          If (ibqTab_DocCODIVA3.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON3.AsFloat :=ibqTab_DocIMPON3.AsFloat+ dImpon;
                  ibqTab_DocIMPOSTA3.AsFloat :=ibqTab_DocIMPOSTA3.AsFloat+ dImposta;
                End;
          If (ibqTab_DocCODIVA4.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON4.AsFloat :=ibqTab_DocIMPON4.AsFloat+ dImpon;
                  ibqTab_DocIMPOSTA4.AsFloat :=ibqTab_DocIMPOSTA4.AsFloat+ dImposta;
                End;
          If (ibqTab_DocCODIVA5.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON5.AsFloat :=ibqTab_DocIMPON5.AsFloat+ dImpon;
                  ibqTab_DocIMPOSTA5.AsFloat :=ibqTab_DocIMPOSTA5.AsFloat+ dImposta;
                End;
  End;
 End;

Var
 strCodIVA: String;
 dAliVa: Double;
 dImpon,dImposta : Currency;
begin
 //  Bolli
  strCodIVA:='0';
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=0;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Accessor
  strCodIVA:='0';
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=0;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Incasso
  strCodIVA:='0';
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=0;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Imballo
  strCodIVA:='0';
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=0;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Spediz
  strCodIVA:='0';
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=0;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Contras
  strCodIVA:='0';
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=0;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);

End;

function TfBolConto.Inserimento_di_riga_contab(var iPK_Codice: Integer;
  iConDett: Integer; dtData_Doc, dtData_Mov: TDateTime; iNum_Doc,
  iDoc_ID: Integer; sDescr_Mov: String; iTIPO_Mov, iPianoConto: Integer;
  sSottoContoDescr, sNomeContoDescr: String; iCliForID, iTipoCliFor,
  iNumProto: Integer; dDare, dAvere: Currency): Boolean;
begin
 Begin
  Try
   With (dmodAz) Do
   Begin
    ibqryContab.Insert;
    iPK_Codice:=ibqryContabPK_Codice.Asinteger;
    ibqryContabCON_DETT.AsInteger:=iConDett;
    ibqryContabDATA_MOV.AsDateTime:=dtData_Mov;
    ibqryContabDATA_DOC.AsDateTime:=dtData_Doc;
    ibqryContabNUM_DOC.AsInteger:=iNum_Doc;
    ibqryContabDOC_ID.AsInteger:=iDoc_ID;
    ibqryContabDESCR_MOV.AsString:=sDescr_Mov;
    ibqryContabTIPO_MOV.AsInteger:=iTIPO_Mov; // tipo 0 - da doc

     ibqryContabPIANOCONTO_ID.AsInteger:=iPianoConto;
     ibqryContabSOTTOCONTO_DESCR.AsString:=sSottoContoDescr;
     ibqryContabNOME_CONTO.AsString:=sNomeContoDescr;
    ibqryContabCLIFOR_ID.AsInteger:=iCliForID;
    ibqryContabTIPO_CLIFOR.AsInteger:=iTipoCliFor;
    ibqryContabNUM_PROT.AsInteger:=iNumProto;

    ibqryContabAVERE.AsFloat:=dAvere;
    ibqryContabDARE.AsFloat:=dDare;
    ibqryContab.Post;
    Result:=True;
   End;
  Except
   Result:=False;
  End
 End;
end;




procedure TfBolConto.dbeNumeroExit(Sender: TObject);
begin
 Try
  intNewNumDoc:=dbeNumero.Field.Asinteger;
  // Verificare se esiste!
  If (Verifica_NumDoc(dbeNumero.Field.Asinteger))
   Then Begin
          Application.MessageBox('Il numero già esiste!','Errore',mb_ok);
          dbeNumero.SetFocus;
        End;
  Except
  End;

end;

function TfBolConto.Verifica_NumDoc(
  iNumDoc_per_Verifica: Integer): Boolean;
Var
 strTabName: String;
begin
  // Lettura di Numero di Documento al base di tipo documento
  Get_Tab_Name(intTipoDoc,strTabName);

 With (dmodAz.ibqRicerca) Do
 Begin
   Close;
   SQL.Clear;
   SQL.Add('Select NUMERO From '+strTabName);
   SQL.Add('Where Numero = '+IntToStr(iNumDoc_per_Verifica));
   Open;
   If (IsEmpty)
     Then Result:=False
     Else Result:=True;
   Close
 End;
end;

Procedure TfBolConto.Aggiorna_IVA_Totale;
Begin
 Try
  dsoRigheDoc.DataSet.First;
  Azzerare_IVA;
  Aggiorna_Spese_IVA;
  While Not(dsoRigheDoc.DataSet.EoF) Do
  Begin
    Aggiorna_IVA(True,dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').asinteger);
    dsoRigheDoc.DataSet.Next;
  End;
  Calcola_Totali;
 Except
 End;
End;

procedure TfBolConto.FormDestroy(Sender: TObject);
begin
 ChangeDataSetsState(False);
end;

Procedure TfBolConto.Clean_All_TEdits;
Var
 iCntr, iCntrComp: Integer;
Begin
 // Search for all data source components and open those datesets

 iCntrComp:=Self.ComponentCount; // All components on form
 For iCntr:=0 To iCntrComp-1 Do
  // Check if component is a Datesource:
  If (Self.Components[iCntr] is TEdit)
   Then With (Self.Components[iCntr] as TEdit) Do
         Text:='';
End;

procedure TfBolConto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=bCanClose;
end;

procedure TfBolConto.tbtnEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfBolConto.Edit_Mode(bMode: Boolean);
begin
 // tbtn's
 bCanClose:=Not(bMode);
 tbtnEsci.Enabled:=Not(bMode);
 tbtnNuovo.Enabled:=Not(bMode);
 tbtnModifica.Enabled:=Not(bMode);
 tbtnSalva.Enabled:=(bMode);
 tbtnAnulla.Enabled:=(bMode);
 tbtnElimina.Enabled:=Not(bMode);
 tbtnPrev.Enabled:=Not(bMode);
 tbtnNext.Enabled:=Not(bMode);
 ToolButton2.Enabled:=Not(bMode);
 // panel
// paView.Enabled:=(bMode);
end;

procedure TfBolConto.Edit_Modex(bMode: Boolean);
begin
 SpeedButton1.Enabled:=Not(bMode);
 SpeedButton2.Enabled:=Not(bMode);
 BitBtn1.Enabled:=(bMode);
 SpeedButton4.Enabled:=(bMode);
 SpeedButton3.Enabled:=Not(bMode);
end;

procedure TfBolConto.ChangeDataSetsState(bOpen: Boolean);
Var
 iCntr,iCntrDSO: Integer;
begin
 // Search for all data source components and open those datesets
  iCntrDSO:=Self.ComponentCount; // All components on form
  For iCntr:=0 To iCntrDSO-1 Do
  // Check if component is a Datesource:
  If (Self.Components[iCntr] is TDataSource)
   Then
    If ((Self.Components[iCntr] as TDataSource).Tag=0 )
     Then
       Try With (Self.Components[iCntr] as TDataSource) Do DataSet.Active:=bOpen;
       Except End;
end;

procedure TfBolConto.BitBtn1Click(Sender: TObject);
var
 iNRiga: Integer;
begin
Try
   dsoRigheDoc.DataSet.FieldByName('OP_QTA_DISPONIBILE').AsFloat:=dbeQtaCons.Field.AsInteger;
   dsoRigheDoc.DataSet.FieldByName('OP_QTA_GIACENZA').asfloat:=dbeQtaCons.Field.AsInteger;
   dsoRigheDoc.DataSet.Post;
Except
   Beep;
End;
Aggiorna_IVA(True,iNRiga);
Calcola_Totali;
Edit_Modex(False);
SpeedButton1.Click;
end;

procedure TfBolConto.dbeCodiceClick(Sender: TObject);
begin
dbeCodice.SelectAll;
end;

procedure TfBolConto.dbeCodiceEnter(Sender: TObject);
begin
dbeCodice.SelectAll;
end;

procedure TfBolConto.DBEdit3Enter(Sender: TObject);
begin
DBEdit3.SelectAll;
end;

procedure TfBolConto.dbeCodiceExit(Sender: TObject);
begin
If (dbeCodice.Text='')
Then
begin
dsoRigheDoc.DataSet.Cancel;
Exit;
end;
if (intTipoDoc<>510) and (intTipoDoc<>550) then
exit;
If (boolModifica)
Then Exit;
ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_articoli');
ibqRicerca.SQL.Add('where codice_Articolo=:parArt');
ibqRicerca.ParamByName('parArt').AsString:= dbeCodice.Field.AsString;
ibqRicerca.Open;
if ibqRicerca.IsEmpty
then
Exit;
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        ibqRicerca.fieldbyname('CODICE_ARTICOLO').AsString;

dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        ibqRicerca.fieldbyname('DESCR').AsString;
dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsFloat :=0;
dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=1;
dsoRigheDoc.DataSet.FieldByName('PASSATA').AsString:='N';
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger:= 1;
dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsInteger:= 1;

if intTipoDoc=200 then
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger := 1;

DBEQtaCons.SetFocus;
end;

procedure TfBolConto.DBEdit4Enter(Sender: TObject);
begin
DBEdit4.SelectAll;
end;

procedure TfBolConto.IBQuery1CalcFields(DataSet: TDataSet);
var
vo,R : single;
begin
try
R:=0;
vo := ((IBQuery1PREZZO_BASE.AsFloat +((V-6)*IBQuery1RIC.AsInteger))/L);
IBQuery1PREZZO_LISTINO.AsFloat := VO + (VO*R/100);
Except;
end;
end;

procedure TfBolConto.DBEdit3Exit(Sender: TObject);
begin
try
dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat :=
        dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat *
        dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsFloat;

dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat :=
        dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
        dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat ;

dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat :=
        dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat -
        (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*
        dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100) ;

Except;
end;
end;

procedure TfBolConto.DBEdit3Click(Sender: TObject);
begin
DBEdit3.SelectAll;
end;

procedure TfBolConto.DBEdit4Click(Sender: TObject);
begin
DBEdit4.SelectAll;
end;

procedure TfBolConto.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit3.SetFocus;
end;

procedure TfBolConto.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit3.SetFocus;
end;

procedure TfBolConto.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit4.SetFocus;

end;

procedure TfBolConto.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit7.SetFocus;
end;

procedure TfBolConto.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit6.SetFocus;
end;

procedure TfBolConto.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
BitBtn1.SetFocus;
end;

procedure TfBolConto.BitBtn1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
SpeedButton1.Click;
end;

procedure TfBolConto.BitBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
SpeedButton1.Click;
end;

procedure TfBolConto.Esco;
begin
 If (dbeCodice.Text='')
  Then Exit;
 If (boolModifica)
   Then Exit;

// If (boolArtLocated)Then
//  Exit;

 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;

  // Pass vals
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='CODICE_ARTICOLO';
    strCampo2:='DESCR';

    If (boolDoc_Vendita)
      Then  strCampo3:='PREZZO_BASE'
      Else  strCampo3:='COSTO_STANDART';

    intRichieste:=3;
    strResCampoCodice:='CODICE_ARTICOLO';
    strValore:=dbeCodice.Field.AsString;
   // get vals
    GetValues;
   // Get vals
if dsoDati.DataSet.IsEmpty then
begin
dsoRigheDoc.DataSet.Cancel;
SpeedButton1.Click;
Exit;
end;
  strCodArt:=VarToStr(vaResValore);
  dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
  dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=VarToStr(vaResValore2);
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=VarToStr(vaResValore3);

//   boolArtLocated:=True;

//dsoArticoli.DataSet.Locate('CODICE_ARTICOLO',strCodArt,[]);


   If (boolDoc_Vendita)
     Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 dsoDati.DataSet.FieldByName('CONTO_VENDITA').AsInteger
     Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 dsoDati.DataSet.FieldByName('CONTO_ACQUISTO').AsInteger;

dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger:=
        dsoDati.DataSet.FieldByName('UN_MIS2_VAL').AsInteger;
if dsoDati.DataSet.FieldByName('UN_MIS2_VAL').AsInteger <1 then
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger := 1;

if intTipoDoc=200 then
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger := 1;

        //   If Not(dsoArticoli.DataSet.fieldByname('CODICE_IVA_ID').AsString='')
//     Then LookIVA.Field.AsString :=
//           dsoArticoli.DataSet.fieldByname('CODICE_IVA_ID').AsString;

   Free;
  End;

  // Immissione prezzo dal listino
  With (dmodAz) Do
  Begin
   If Not(ibqContabile_Articolo.Active)
    Then ibqContabile_Articolo.Open;
 // se il cliente non ha listino è inutile fare questa procedura
{
   if strCodiceListino <> '' then
   begin
   ibqryListiniPerArt.Close;
   ibqryListiniPerArt.ParamByName('parCodArt').AsString:=dbeCodice.Field.AsString;
   ibqryListiniPerArt.Open;
   If (ibqryListiniPerArt.Locate('CODICE_LISTINO',strCodiceListino,[]))
     Then dbePrezzoUnitario.Field.AsFloat:=ibqryListiniPerArt.FieldByName('Prezzo_').AsFloat;
   ibqryListiniPerArt.Close;
   end;
   ibqContabile_Articolo.Close;
  End;
}

//  Update_Sta_;

 end;

 if dsoDocumento.DataSet.FieldByName('Listino').AsInteger<6 then
L := 2
else
L := 1;

V := dsoDocumento.DataSet.FieldByName('Listino').AsInteger;
if V < 6 then V := v+6;

IBQuery1.Close;
IBQuery1.ParamByName('CA').AsString := strCodArt;
IBQuery1.Open;
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
        IBQuery1.FieldValues['PREZZO_LISTINO'];

end;

procedure TfBolConto.DBSchedaExit(Sender: TObject);
var
a:integer;
b,c : double;
begin
If not (dsoRigheDoc.DataSet.State in [dsinsert,dsedit])
then exit;
If (DBScheda.Text='')
Then
begin
dsoRigheDoc.DataSet.Cancel;
Edit_Modex(false);
Exit;
end;
If (boolModifica)
Then Exit;
A:= DBScheda.Field.AsInteger;
ibqRicerca.Close;
ibqRicerca.SQL.Clear;
if (intTipoDoc=510) OR (intTipoDoc=550) then
begin
dbeCodice.SetFocus;
exit;
end;


if (intTipoDoc = 500) then
begin
ibqRicerca.SQL.Add('select * from taglio');
ibqRicerca.SQL.Add('where numero=:parID_Doc');
ibqRicerca.SQL.Add(' and PASSATA<>''S''');
end;

if (intTipoDoc = 590) then
begin
ibqRicerca.SQL.Add('select * from pretaglio');
ibqRicerca.SQL.Add('where numero=:parID_Doc');
//ibqRicerca.SQL.Add(' and PASSATA<>''S''');
end;

if (intTipoDoc = 591) then
begin
ibqRicerca.SQL.Add('select * from taglio');
ibqRicerca.SQL.Add('where numero=:parID_Doc');
end;

if intTipoDoc = 501 then
begin
if RadioGroup1.ItemIndex=0 then
begin
ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =500)');
ibqRicerca.SQL.Add('and  (TAB_DET_DOC.SCHEDA=:parID_Doc) and (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID)');
ibqRicerca.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;

with IBQuery2 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =501 ');
   SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc and TAB_DET_DOC.sconto4=0');
ParamByName('parID_Doc').AsInteger:= A;
Open;
end;

end
else
begin
ibqRicerca.SQL.Add('select * from tagliofas');
ibqRicerca.SQL.Add('where numero=:parID_Doc and PASSATA<>''S''');
end;
end;

if intTipoDoc = 502 then
begin

if RadioGroup1.ItemIndex=0 then
begin
ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =501)');
ibqRicerca.SQL.Add('and  (TAB_DET_DOC.SCHEDA=:parID_Doc) and (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID) and (TAB_DET_DOC.sconto4=0)');
ibqRicerca.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;

with IBQuery2 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =502) ');
   SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc) and (TAB_DET_DOC.sconto4=0)');
ParamByName('parID_Doc').AsInteger:= A;
Open;
end;
end;
if RadioGroup1.ItemIndex=1 then
begin
ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =501)');
ibqRicerca.SQL.Add('and  (TAB_DET_DOC.SCHEDA=:parID_Doc) and (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID and TAB_DET_DOC.sconto4=1)');
ibqRicerca.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;

with IBQuery2 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =502 ');
   SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc and TAB_DET_DOC.sconto4=1');
ParamByName('parID_Doc').AsInteger:= A;
Open;

end;
end;

end;

if intTipoDoc=511 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512) or (TAB_DOCUMENTI.TIPO_DOC =520))');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
ibqRicerca2.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
ibqRicerca.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');

end;

if intTipoDoc=512 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512) or (TAB_DOCUMENTI.TIPO_DOC =520))');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
ibqRicerca2.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
ibqRicerca.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
end;

if intTipoDoc=551 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =551)');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =550');
ibqRicerca2.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =550');
ibqRicerca.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
end;

if intTipoDoc=520 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512) or (TAB_DOCUMENTI.TIPO_DOC =520))');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
ibqRicerca2.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
ibqRicerca.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
end;

if intTipoDoc=513 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =513)');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc) AND (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512) or (TAB_DOCUMENTI.TIPO_DOC =520))');
ibqRicerca2.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID) AND (TAB_DET_DOC.scheda=:parID_Doc)');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512) or (TAB_DOCUMENTI.TIPO_DOC =520))');
ibqRicerca.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID) AND (TAB_DET_DOC.scheda=:parID_Doc)');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
end;

if intTipoDoc=552 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =552)');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc) AND (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =551))');
ibqRicerca2.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID) AND (TAB_DET_DOC.scheda=:parID_Doc)');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =551))');
ibqRicerca.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID) AND (TAB_DET_DOC.scheda=:parID_Doc)');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
end;

if intTipoDoc=514 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =514)');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =513))');
ibqRicerca2.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =513))');
ibqRicerca.SQL.Add('AND TAB_DET_DOC.scheda =:parID_Doc');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
end;

if intTipoDoc=553 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =553)');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =552)) AND (TAB_DET_DOC.scheda =:parID_Doc)');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =552)) AND (TAB_DET_DOC.scheda =:parID_Doc)');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
end;

if (intTipoDoc=515) or (intTipoDoc=516) then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =515) or (TAB_DOCUMENTI.TIPO_DOC =516))');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =514)) AND (TAB_DET_DOC.scheda =:parID_Doc)');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =514)) AND (TAB_DET_DOC.scheda =:parID_Doc)');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');

end;

if intTipoDoc=554 then
begin
IBQuery2.Close;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('SELECT');
IBQuery2.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
IBQuery2.SQL.Add('JOIN TAB_DOCUMENTI ON');
IBQuery2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
IBQuery2.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =554)');
IBQuery2.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');
IBQuery2.ParamByName('parID_Doc').AsInteger:= A;
IBQuery2.Open;

ibqRicerca2.Close;
ibqRicerca2.SQL.Clear;
ibqRicerca2.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
ibqRicerca2.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca2.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca2.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =553)) AND (TAB_DET_DOC.scheda =:parID_Doc)');
ibqRicerca2.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
ibqRicerca2.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
ibqRicerca2.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca2.Open;

ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select * from tab_det_doc');
ibqRicerca.SQL.Add('JOIN TAB_DOCUMENTI ON');
ibqRicerca.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
ibqRicerca.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =553)) AND (TAB_DET_DOC.scheda =:parID_Doc)');
ibqRicerca.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
end;

ibqRicerca.ParamByName('parID_Doc').AsInteger:= A;
ibqRicerca.Open;

if (dsoricerca.DataSet.IsEmpty) and (dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger<>0) then
begin
dsoRigheDoc.DataSet.Cancel;
SpeedButton1.Click;
Exit;
end;
if intTipoDoc = 500 then
begin

dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger:=
        ibqRicerca.fieldbyname('NUMERO').AsInteger;

dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        ibqRicerca.fieldbyname('CODICE').AsString;

  dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        ibqRicerca.fieldbyname('DESCR').AsString;
  dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
        ibqRicerca.fieldbyname('TOTALE').AsFloat;

  dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=
        ibqRicerca.fieldbyname('PK_CODICE').AsFloat;

end;

if (intTipoDoc = 590) or (intTipoDoc = 591) then
begin

dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger:=
        ibqRicerca.fieldbyname('NUMERO').AsInteger;

dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        ibqRicerca.fieldbyname('CODICE').AsString;

  dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        ibqRicerca.fieldbyname('DESCR').AsString;
  dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
        ibqRicerca.fieldbyname('TOTALE').AsFloat;

  dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=
        ibqRicerca.fieldbyname('PK_CODICE').AsFloat;

end;


if intTipoDoc = 501 then
begin
if RadioGroup1.ItemIndex =0 then
begin
dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger:=
        ibqRicerca.fieldbyname('SCHEDA').AsInteger;

dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        ibqRicerca.fieldbyname('CODICE_ARTICOLO').AsString;

  dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        ibqRicerca.fieldbyname('DESCR').AsString;

if IBQuery2.IsEmpty then
dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
 ibqRicerca.fieldbyname('QUANTITA').AsFloat
else
dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
 ibqRicerca.fieldbyname('QUANTITA').AsFloat-IBQuery2.fieldbyname('F_1').AsFloat;
dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=
        ibqRicerca.fieldbyname('SCONTO3').AsFloat;
end;
if RadioGroup1.ItemIndex=1 then
begin
dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger:=
        ibqRicerca.fieldbyname('NUMERO').AsInteger;

dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        ibqRicerca.fieldbyname('CODICE').AsString;

  dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        ibqRicerca.fieldbyname('DESCR').AsString;
  dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
        ibqRicerca.fieldbyname('TOTALE').AsFloat;
 dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=
       ibqRicerca.fieldbyname('PK_CODICE').AsFloat;

  dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsFloat:=1;
end;
end;

if intTipoDoc = 502 then
begin
dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger:=
        ibqRicerca.fieldbyname('SCHEDA').AsInteger;

dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        ibqRicerca.fieldbyname('CODICE_ARTICOLO').AsString;

dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        ibqRicerca.fieldbyname('DESCR').AsString;

dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsFloat :=
        ibqRicerca.fieldbyname('SCONTO4').AsFloat;

dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=
       ibqRicerca.fieldbyname('SCONTO3').AsFloat;

if IBQuery2.IsEmpty then
  dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
          ibqRicerca.fieldbyname('QUANTITA').AsFloat
else
  dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
ibqRicerca.fieldbyname('QUANTITA').AsFloat-IBQuery2.fieldbyname('F_1').AsFloat;
end;

if (intTipoDoc = 511) or (intTipoDoc = 512) or (intTipoDoc = 513) or (intTipoDoc = 514)
        or (intTipoDoc = 515) or (intTipoDoc = 516) or (intTipoDoc = 520) or (intTipoDoc = 551)
        or (intTipoDoc = 552) or (intTipoDoc = 553) or (intTipoDoc = 554) then
begin
ibDistinta.close;
ibDistinta.ParamByName('parcodart').AsString:= ibqRicerca.fieldbyname('CODICE_ARTICOLO').AsString;
ibDistinta.Open;


dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger:=
        ibqRicerca.fieldbyname('SCHEDA').AsInteger;

dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        ibqRicerca.fieldbyname('CODICE_ARTICOLO').AsString;

dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        ibqRicerca.fieldbyname('DESCR').AsString;

dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsFloat :=
        ibqRicerca.fieldbyname('SCONTO4').AsFloat;

dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=
       ibqRicerca.fieldbyname('SCONTO3').AsFloat;

if (intTipoDoc = 511) or (intTipoDoc = 512) or (intTipoDoc = 520) or (intTipoDoc = 551)
 then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=ibDistinta.fieldbyname('fasonista').AsFloat
  else
    dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=1;
if IBQuery2.IsEmpty then
  dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
          ibqRicerca2.fieldbyname('QUANTITA').AsFloat
else
  dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:=
ibqRicerca2.fieldbyname('QUANTITA').AsFloat-IBQuery2.fieldbyname('F_1').AsFloat;
end;

  dsoRigheDoc.DataSet.FieldByName('PASSATA').AsString:='N';
  dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger:= 1;
  dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsInteger:= 1;

if intTipoDoc=200 then
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger := 1;

if (dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger=0) then
begin
dsoRigheDoc.DataSet.FieldByName('SCHEDA').AsInteger:= 0;
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').Asstring:= '-';
dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsFloat := 0;
dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:= 0;
dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat:= 0;
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=1;
dsoRigheDoc.DataSet.FieldByName('PASSATA').AsString:='N';
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger:= 1;
dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsInteger:= 1;

end;

DBEQtaCons.SetFocus;
if DBScheda.Text = '0' then
begin
dbeDescr.SetFocus;
exit;
end;

end;

procedure TfBolConto.DBSchedaClick(Sender: TObject);
begin
DBScheda.SelectAll;
end;

procedure TfBolConto.DBSchedaEnter(Sender: TObject);
begin
DBScheda.SelectAll;
end;

procedure TfBolConto.DBSchedaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
if DBScheda.Text = '0' then
begin
dbeDescr.SetFocus;
exit;
end;
if intTipoDoc=510 then
begin
dbeCodice.SetFocus;
exit;
end
else
DBEQtaCons.SetFocus;
end;
end;

procedure TfBolConto.DBSchedaDblClick(Sender: TObject);
begin
if intTipoDoc=500 then
begin
fSelectTaglio:=TfSelectTaglio.Create(Self);
fSelectTaglio.ShowModal;
fSelectTaglio.Free;
end;
if intTipoDoc=501 then
begin

if RadioGroup1.ItemIndex = 0 then
begin
fselectCL:=TfselectCL.Create(Self);
fselectCL.IBQuery1.Close;
fselectCL.IBQuery1.SQL.Clear;
fselectCL.IBQuery1.SQL.Add('select * from tab_det_doc');
fselectCL.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fselectCL.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fselectCL.IBQuery1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =500)');
fselectCL.IBQuery1.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID =:parCliFor_ID)');
fselectCL.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
fselectCL.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
//fSelectTaglio.IBQuery1.AutoCalcFields := True;
fselectCL.IBQuery1.Open;
fselectCL.ShowModal;
fselectCL.Free;
end;
if RadioGroup1.ItemIndex = 1 then
begin
fSelectTaglio:=TfSelectTaglio.Create(Self);
//fSelectTaglio.IBQuery1.AutoCalcFields := False;
fSelectTaglio.IBQuery1.Close;
fSelectTaglio.IBQuery1.sql.clear;
fSelectTaglio.IBQuery1.sql.add('Select * from tagliofas');
fSelectTaglio.IBQuery1.sql.add('where Passata=''N''');
fSelectTaglio.IBQuery1.sql.add('Order by codice');
fSelectTaglio.IBQuery1.Open;
fSelectTaglio.ShowModal;
fSelectTaglio.Free;
end;
end;

if intTipoDoc=502 then
begin

if RadioGroup1.ItemIndex = 0 then
begin
fSelectDep:=TfSelectDep.Create(Self);

fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =502)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc) and (TAB_DET_DOC.sconto4=0)');

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select * from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =501)');
fSelectDep.IBQuery1.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID) and (TAB_DET_DOC.sconto4=0)');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
//and PASSATA<>''S''
//fselectCL.IBQuery1.ParamByName('parID_Doc').AsInteger:= A;
fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;

fSelectDep.ShowModal;
fSelectDep.Free;
end;

if RadioGroup1.ItemIndex = 1 then
begin
fSelectDep:=TfSelectDep.Create(Self);

fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =502)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc) and (TAB_DET_DOC.sconto4=1)');

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select * from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =501)');
fSelectDep.IBQuery1.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID) and (TAB_DET_DOC.sconto4=1)');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
//and PASSATA<>''S''
//fselectCL.IBQuery1.ParamByName('parID_Doc').AsInteger:= A;
fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

end;

if (intTipoDoc=511) OR (intTipoDoc=512) OR (intTipoDoc=520) then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512) or (TAB_DOCUMENTI.TIPO_DOC =520))');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
//fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

{if intTipoDoc=512 then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512))');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select * from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;}

if (intTipoDoc=551) then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =551)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =550');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
//fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

if intTipoDoc=513 then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =513)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc) AND (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID)');


fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512) or (TAB_DOCUMENTI.TIPO_DOC =520))');
fSelectDep.IBQuery1.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID)');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBSQL1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

if intTipoDoc=552 then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) AS F_1  FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =552)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc) AND (TAB_DOCUMENTI.CLIFOR_ID = :parCliFor_ID)');


fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =551))');
fSelectDep.IBQuery1.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID)');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;

fSelectDep.IBSQL1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

if intTipoDoc=514 then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =514)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =513))');
//fSelectDep.IBQuery1.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID)');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
//fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
//fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
//fSelectDep.IBSQL1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

if intTipoDoc=553 then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) AS F_1  FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =553)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =552))');
//fSelectDep.IBQuery1.SQL.Add('AND (TAB_DOCUMENTI.CLIFOR_ID=:parCliFor_ID)');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
//fSelectDep.IBQuery1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
//fSelectDep.IBSQL1.ParamByName('parCliFor_ID').AsInteger:= LookCliForCod.KeyValue;
fSelectDep.IBQuery1.Open;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

if (intTipoDoc=515) or (intTipoDoc=516) then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) AS F_1  FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =515) or (TAB_DOCUMENTI.TIPO_DOC =516))');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');

fSelectDep.IBQuery1.Filter:='RIMASTI<>0';

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =514))');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
fSelectDep.IBQuery1.Open;
//fSelectDep.IBQuery1.Filtered := True;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

if (intTipoDoc=554) then
begin
fSelectDep:=TfSelectDep.Create(Self);
fSelectDep.IBSQL1.Close;
fSelectDep.IBSQL1.SQL.Clear;
fSelectDep.IBSQL1.SQL.Add('SELECT');
fSelectDep.IBSQL1.SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
fSelectDep.IBSQL1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBSQL1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBSQL1.SQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =554)');
fSelectDep.IBSQL1.SQL.Add('AND (TAB_DET_DOC.scheda =:parID_Doc)');

fSelectDep.IBQuery1.Filter:='RIMASTI<>0';

fSelectDep.IBQuery1.Close;
fSelectDep.IBQuery1.SQL.Clear;
fSelectDep.IBQuery1.SQL.Add('select distinct scheda,codice_articolo,descr,sum(QUANTITA) as QUANTITA from tab_det_doc');
fSelectDep.IBQuery1.SQL.Add('JOIN TAB_DOCUMENTI ON');
fSelectDep.IBQuery1.SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
fSelectDep.IBQuery1.SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =553))');
fSelectDep.IBQuery1.SQL.Add('group by TAB_DET_DOC.scheda,TAB_DET_DOC.codice_articolo,TAB_DET_DOC.descr');
fSelectDep.IBQuery1.SQL.Add('ORDER BY TAB_DET_DOC.CODICE_ARTICOLO,TAB_DET_DOC.SCHEDA');
fSelectDep.IBQuery1.Open;
//fSelectDep.IBQuery1.Filtered := True;
fSelectDep.ShowModal;
fSelectDep.Free;
end;

If (dbscheda.Text='')
Then Exit
else
BitBtn1.SetFocus;
end;

procedure TfBolConto.ToolButton2Click(Sender: TObject);
begin
if (intTipoDoc>=510) and (intTipoDoc<=520) then exit;
dmodAz.ibqryPretFas.Open;
fVisConto:=TfVisConto.Create(Self);
fVisConto.IBQuery3.Close;
fVisConto.IBQuery3.ParamByName('tipdoc').AsInteger :=
intTipoDoc;
fVisConto.ShowModal;
fVisConto.Free;
end;

procedure TfBolConto.SpeedButton1Click(Sender: TObject);
Var
 strTipo_Serv: String;
 iNRiga, iNRiga_Nuovo, L, V: Integer;
begin
If (tbtnEsci.Enabled)
Then Exit;
If (LookNostrDepCod.KeyValue=null)
Then Begin
MessageDlg('Scegli deposito.',mtWarning,[mbOK],0);
exit;
End;
If (LookCliForCod.KeyValue=null)
Then Begin
MessageDlg('Scegli un '+laCliFor.Caption+'.',mtWarning,[mbOK],0);
exit;
End;
boolModifica:=False;
nuovissimo := True;
iNRiga_Nuovo:=1;
Try
If (dsoRigheDoc.DataSet.IsEmpty)
Then iNRiga_Nuovo:=1
Else Begin
dsoRigheDoc.DataSet.Last;
iNRiga_Nuovo:=1+dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
End;
Except
End;
Try
dsoRigheDoc.DataSet.Insert;
dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString:='ARTICOLO';
dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('DOC_ID').AsInteger:=
 dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
iNumero_Riga:=iNRiga_Nuovo;
dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger:=iNRiga_Nuovo;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=IntToStr(LookNostrDepCod.KeyValue);
dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;
dsoRigheDoc.DataSet.FieldByName('RIF_PRE_NUM_DOC').AsInteger:=1;
Except
Beep;
End;
Edit_Modex(True);
boolDoc_Vendita:=boolVendita;
DBScheda.SetFocus;
End;

procedure TfBolConto.SpeedButton2Click(Sender: TObject);
Var
 iNRiga: Integer;
// dTemp: Double;
begin
If (tbtnEsci.Enabled)
Then Exit;
iNRiga:= dsoRigheDoc.DataSet.fieldByName('NUM_RIGA_ID').AsInteger;
Try
Aggiorna_IVA(False,iNRiga);
dsoRigheDoc.dataset.Edit;
Except
End;
boolModifica:=True;
Edit_Modex(True);
end;

procedure TfBolConto.SpeedButton3Click(Sender: TObject);
Var
 iNRiga,pre: Integer;
begin
If (tbtnEsci.Enabled)
Then Exit;
If (dsoRigheDoc.dataset.isEmpty)
Then Exit;
If (MessageDlg('Eliminare riga?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then  Begin
if intTipoDoc=500 then
begin
dmodAz.ibqryTaglio.Close;
dmodAz.ibqryTaglio.Open;
pre :=dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsInteger;
if dmodAz.ibqryTaglio.Locate('PK_CODICE',pre,[]) then
begin
dmodAz.ibqryTaglio.Edit;
dmodAz.ibqryTaglio.FieldByName('PASSATA').AsString := 'N';
dmodAz.ibqryTaglio.Post;
end;
end;
dmodAz.ibqryTaglio.Close;

if intTipoDoc=501 then
begin
dmodAz.ibqryPretFas.Close;
dmodAz.ibqryPretFas.Open;
pre :=dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsInteger;
if dsoRigheDoc.DataSet.FieldByName('SCONTO4').AsInteger = 1 then
begin
if dmodAz.ibqryPretFas.Locate('PK_CODICE',pre,[]) then
begin
dmodAz.ibqryPretFas.Edit;
dmodAz.ibqryPretFas.FieldByName('PASSATA').AsString := 'N';
dmodAz.ibqryPretFas.Post;
end;
end;
dmodAz.ibqryPretFas.Close;
end;
iNRiga:= dsoRigheDoc.DataSet.fieldByName('NUM_RIGA_ID').AsInteger;
Aggiorna_IVA(False,iNRiga);
dsoRigheDoc.DataSet.Delete;
End;
Calcola_Totali;
Edit_Modex(false);
end;

procedure TfBolConto.SpeedButton4Click(Sender: TObject);
begin
Try
if dsoRigheDoc.DataSet.State in [dsBrowse] then exit;
dsoRigheDoc.DataSet.Cancel;
Edit_Modex(False);
Except
Beep;
End;
end;

procedure TfBolConto.SpeedButton5Click(Sender: TObject);
begin
fTerm:=TfTerm.Create(Self);
fTerm.ShowModal;
fTerm.Free;
end;

procedure TfBolConto.Apri;
begin
dmodAz.dsoqTabCli.DataSet.Open;
dmodAz.dsoqTabFor.DataSet.Open;
dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=intTipoDoc;
dsoDocumento.DataSet.Open;
dsoRigheDoc.DataSet.Open;
dsAspetto.DataSet.Open;
dsoCauInt.DataSet.Open;
dsEsenteIVA.DataSet.Open;
dsoAgenti.DataSet.Open;
dsoAltreDest.DataSet.Open;
dsoAttivita.DataSet.Open;
dsoBanca.DataSet.Open;
dsoCauMag.DataSet.Open;
dsoCausSped.DataSet.Open;
dsoCauTrasp.DataSet.Open;
dsoCODICEIVA.DataSet.Open;
dsoDepositi.DataSet.Open;
dsoListino.DataSet.Open;
dsoMoneta.DataSet.Open;
dsoPagamenti.DataSet.Open;
dsoPorto.DataSet.Open;
dsoVettori.DataSet.Open;
dsProvv.DataSet.Open;
dsPianoConto.DataSet.Open;
end;

procedure TfBolConto.LookCliForCodChange(Sender: TObject);
begin
LookAgCod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookAgDescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookNostrDepCod.KeyValue := 1;
LookNostrDepDescr.KeyValue := 1;
If (LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').AsString='')
  Then  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=0
  Else  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=1;
dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;

 // Contropartita
 If (dmodAz.ibTab_Piano_Conti.Locate('Tipo',LookCliForCod.LookupSource.DataSet.FieldByName('ID_Cli_for').asinteger,[]))
  Then dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
     dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger
  Else  ;
 //
 dbeIndirizzo_cli_for.Field.AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('indirizzo').AsString;

 dbeIndirizzo_cli_for2.Field.AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('com_descr').AsString+'-'+
  LookCliForCod.LookupSource.DataSet.FieldByName('cap_descr').AsString+'('+
  LookCliForCod.LookupSource.DataSet.FieldByName('pr_descr').AsString+')';
 //
 dmodAz.ibqTab_DocTEL1.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL1').AsString;
 dmodAz.ibqTab_DocTEL2.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL2').AsString;
 dmodAz.ibqTab_DocTEL3.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('FAX').AsString;
end;

procedure TfBolConto.RxDBLookupCombo2Change(Sender: TObject);
begin
RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
dsoRigheDoc.DataSet.fieldbyname('A').asstring :=
  RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('DESCR').AsString;
end;

procedure TfBolConto.RxDBLookupCombo1Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
dsoRigheDoc.DataSet.fieldbyname('A').asstring :=
  RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('DESCR').AsString;
end;

procedure TfBolConto.LookCliForDescrChange(Sender: TObject);
begin
LookAgCod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookAgDescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookNostrDepCod.KeyValue := 1;
LookNostrDepDescr.KeyValue := 1;
If (LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').AsString='')
  Then  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=0
  Else  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=1;
dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
dmodAz.ibTab_Piano_Conti.Locate('Tipo',LookCliForCod.LookupSource.DataSet.FieldByName('ID_Cli_for').asinteger,[]);
dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
    dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger;
 //Indirizzo + citta + CAP + Pr
 dbeIndirizzo_cli_for.Field.AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('indirizzo').AsString;
 dbeIndirizzo_cli_for2.Field.AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('com_descr').AsString+'-'+
  LookCliForCod.LookupSource.DataSet.FieldByName('cap_descr').AsString+'('+
  LookCliForCod.LookupSource.DataSet.FieldByName('pr_descr').AsString+')';
  // Tel
 dmodAz.ibqTab_DocTEL1.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL1').AsString;
 dmodAz.ibqTab_DocTEL2.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL2').AsString;
 dmodAz.ibqTab_DocTEL3.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('FAX').AsString;
end;

procedure TfBolConto.DBEQtaConsKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
BitBtn1.SetFocus;
end;

procedure TfBolConto.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

end.
