unit uBaseFormDoc3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, Mask, ComCtrls,
  ToolWin, ExtCtrls, Db, Menus, RxLookup, IBCustomDataSet, IBQuery, RxMemDS, Variants,
  ToolEdit, CurrEdit, RXDBCtrl,IBTable, IBSQL, IBStoredProc, Provider, DBClient,
  DBLocal,OoMisc, AdPort,INIFiles,StrUtils, RxDBComb;

type
  TfBaseFormDoc3 = class(TfBaseForm3)
    Panel1: TPanel;
    paGrid: TPanel;
    pctrlRighe: TPageControl;
    tabs21: TTabSheet;
    tabs22: TTabSheet;
    paCastIVA: TPanel;
    tabs23: TTabSheet;
    paContabili: TPanel;
    Label40: TLabel;
    Label50: TLabel;
    gbCodIVASpese: TGroupBox;
    Label46: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label45: TLabel;
    LookBolliCod: TDBLookupComboBox;
    LookBolliDescr: TDBLookupComboBox;
    LookImballoCod: TDBLookupComboBox;
    LookIncassoCod: TDBLookupComboBox;
    LookIncassoDescr: TDBLookupComboBox;                          
    LookImballoDescr: TDBLookupComboBox;
    LookContrsegnoCod: TDBLookupComboBox;
    LookAccessorieCod: TDBLookupComboBox;
    LookSpedizioneCod: TDBLookupComboBox;
    LookSpedizioneDescr: TDBLookupComboBox;
    LookAccessorieDescr: TDBLookupComboBox;
    LookContraSegnoDescr: TDBLookupComboBox;
    LookAttivita: TDBLookupComboBox;
    LookSubAttivita: TDBLookupComboBox;
    tabs24: TTabSheet;
    paAltro: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    laReport: TLabel;
    LookCauCollCod: TDBLookupComboBox;
    LookCauCollDescr: TDBLookupComboBox;
    LookCauMagCod: TDBLookupComboBox;
    LookCauMagDescr: TDBLookupComboBox;
    bbLookReport: TBitBtn;
    dbeReport: TDBEdit;
    dbcbAcrpRigheInStampa: TDBCheckBox;
    dbcbStampaNoteCliente: TDBCheckBox;
    paAdds: TPanel;
    laTotMerc: TLabel;
    laTotServ: TLabel;
    laTotSpese: TLabel;
    laTotOmagg: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    laTotale: TLabel;
    laAccount: TLabel;
    Label39: TLabel;
    dbeTotMerc: TDBEdit;
    dbeTotServ: TDBEdit;
    dbeTotSpese: TDBEdit;
    dbeTotOmagg: TDBEdit;
    dbeTotSconti: TDBEdit;
    dbeImponibile: TDBEdit;
    dbeImposta: TDBEdit;
    dbeTotale: TDBEdit;
    dbeDataAcconto: TDBEdit;
    dbeAbbuoni: TDBEdit;
    dbeResi: TDBEdit;
    dbeDaPagare: TDBEdit;
    dbcbRilevaAcconto: TDBCheckBox;
    Label49: TLabel;
    dsoRigheDoc: TDataSource;
    dbgRighe: TDBGrid;
    tbtnNumDoc: TToolButton;
    dsoMoneta: TDataSource;
    dsoPagamenti: TDataSource;
    dsoPorto: TDataSource;
    dsoCausSped: TDataSource;
    dsoBanca: TDataSource;
    dsoListino: TDataSource;
    dsoAltreDest: TDataSource;
    dsoDepositi: TDataSource;
    dsoCODICEIVA: TDataSource;
    dsoCauMag: TDataSource;
    dsoCauTrasp: TDataSource;
    dsoAttivita: TDataSource;
    ToolButton1: TToolButton;
    tbtnPrint: TToolButton;
    ToolButton3: TToolButton;
    laCodIVA: TLabel;
    dbeCodIva1: TDBEdit;
    laAliqIVA: TLabel;
    dbeAl1: TDBEdit;
    dbeImpos1: TDBEdit;
    laImpost: TLabel;
    laImpon: TLabel;
    dbeImpon1: TDBEdit;
    dbeImpos2: TDBEdit;
    dbeImpon2: TDBEdit;
    dbeAl2: TDBEdit;
    dbeCodIva2: TDBEdit;
    dbeImpos4: TDBEdit;
    dbeImpon4: TDBEdit;
    dbeAl4: TDBEdit;
    dbeCodIva4: TDBEdit;
    dbeCodIVA3: TDBEdit;
    dbeAl3: TDBEdit;
    dbeImpon3: TDBEdit;
    dbeImpos3: TDBEdit;
    dbeCodIva5: TDBEdit;
    dbeAl5: TDBEdit;
    dbeImpon5: TDBEdit;
    dbeImpos5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dsoAgenti: TDataSource;
    Label7: TLabel;
    LookVettoreCod: TDBLookupComboBox;
    LookVettoreDescr: TDBLookupComboBox;
    dsoVettori: TDataSource;
    dbeVettore_Ind: TDBEdit;
    dbeVettore_Ind2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dsAspetto: TDataSource;
    dbcbIvaesente: TDBCheckBox;
    dsEsenteIVA: TDataSource;
    mmPerDoc: TMainMenu;
    File1: TMenuItem;
    Rimetterescadenze1: TMenuItem;
    miDoc_Det_PianoConto: TMenuItem;
    lblContoAcqVend: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    rxdblcPianoConto: TRxDBLookupCombo;
    dsPianoConto: TDataSource;
    dsPersAz: TDataSource;
    dsoDocumento: TDataSource;
    pctrlMain: TPageControl;
    tabs1: TTabSheet;
    pa1: TPanel;
    laOra: TLabel;
    laDataDoc: TLabel;
    laDataReg: TLabel;
    laDataCons: TLabel;
    laNumero: TLabel;
    laSerie: TLabel;
    laCliFor: TLabel;
    laNostroDeposito: TLabel;
    dbeOra: TDBEdit;
    dbeDataDoc: TDBEdit;
    dbeMese: TDBEdit;
    dbeDataCons: TDBEdit;
    dbeNumero: TDBEdit;
    dbeSerie: TDBEdit;
    dbeListino: TDBEdit;
    dbeIndirizzo_cli_for: TDBEdit;
    dbeIndirizzo_cli_for2: TDBEdit;
    dbeContropartita: TDBEdit;
    LookCliForDescr: TRxDBLookupCombo;
    LookCliForCod: TRxDBLookupCombo;
    LookNostrDepDescr: TRxDBLookupCombo;
    LookNostrDepCod: TRxDBLookupCombo;
    tabs2: TTabSheet;
    pa2: TPanel;
    laMoneta: TLabel;
    laPagamento: TLabel;
    laSconto: TLabel;
    laPIUTraSconti: TLabel;
    laImportoSconto: TLabel;
    dbeSconto1: TDBEdit;
    dbeSconto2: TDBEdit;
    dbeImportoSconto: TDBEdit;
    tabs4: TTabSheet;
    pa4: TPanel;
    laPorto: TLabel;
    laCauMag: TLabel;
    laNrColli: TLabel;
    laPesoLordo: TLabel;
    laPesoNetto: TLabel;
    laNote: TLabel;
    dbeNrColl: TDBEdit;
    dbePesoLordo: TDBEdit;
    dbePesoNetto: TDBEdit;
    dbmNote: TDBMemo;
    tabs5: TTabSheet;
    pa5: TPanel;
    laBancaForn: TLabel;
    laListino: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LookBancaFornCod: TDBLookupComboBox;
    LookBancaFornDescr: TDBLookupComboBox;
    LookListinoCod: TDBLookupComboBox;
    LookListinoDescr: TDBLookupComboBox;
    LookAltraDestCod: TDBLookupComboBox;
    LookAltraDestDescr: TDBLookupComboBox;
    dbcbAltraDest: TDBCheckBox;
    dbeVS_Rif: TDBEdit;
    dbeNSrif: TDBEdit;
    ToolButton6: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Edit2: TEdit;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    ToolButton2: TToolButton;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CODICE: TStringField;
    RxMemoryData1QTA: TFloatField;
    OpenDialog1: TOpenDialog;
    DBEdit1: TDBEdit;
    dsProvv: TDataSource;
    LookMonetaCod: TRxDBLookupCombo;
    LookPagCod2: TRxDBLookupCombo;
    LookMonetaDescr: TRxDBLookupCombo;
    LookPagDescr: TRxDBLookupCombo;
    LookCauSpedCod: TRxDBLookupCombo;
    LookCauSpedDescr: TRxDBLookupCombo;
    lookPortoCod: TRxDBLookupCombo;
    LookPortoDescr: TRxDBLookupCombo;
    StatusBar1: TStatusBar;
    Label12: TLabel;
    RxMemoryData1PREZZO: TCurrencyField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    laBolli: TLabel;
    laAccessor: TLabel;
    laIncasso: TLabel;
    laImballo: TLabel;
    laSpediz: TLabel;
    laContrass: TLabel;
    Label11: TLabel;
    dbeBolli: TDBEdit;
    dbeAccessor: TDBEdit;
    dbeImballo: TDBEdit;
    dbeIncasso: TDBEdit;
    dbeContras: TDBEdit;
    dbeSpediz: TDBEdit;
    DBEdit2: TDBEdit;
    ibqCont_Art: TIBDataSet;
    ibqCont_ArtCODICE_ARTICOLO: TIBStringField;
    ibqCont_ArtDEPOSITO_ID: TIBStringField;
    ibqCont_ArtCLI_FOR_ID: TIntegerField;
    ibqCont_ArtTIPO_CLI_FOR_ID: TSmallintField;
    ibqCont_ArtDESCR: TIBStringField;
    ibqCont_ArtQTA_ACQUISTI: TFloatField;
    ibqCont_ArtVAL_ACQUISTI: TFloatField;
    ibqCont_ArtQTA_VENDITA: TFloatField;
    ibqCont_ArtVAL_VENDITA: TFloatField;
    ibqCont_ArtQTA_ALTRE_ENTRATE: TFloatField;
    ibqCont_ArtVAL_ALTRE_ENTRATE: TFloatField;
    ibqCont_ArtQTA_ALTRE_USCITE: TFloatField;
    ibqCont_ArtVAL_ALTRE_USCITA: TFloatField;
    ibqCont_ArtQTA_RESO_CLIENTE: TFloatField;
    ibqCont_ArtVAL_RESO_CLIENTE: TFloatField;
    ibqCont_ArtQTA_RESO_FORNITORE: TFloatField;
    ibqCont_ArtVAL_RESO_FORNITORE: TFloatField;
    ibqCont_ArtQTA_ORDINATO: TFloatField;
    ibqCont_ArtVAL_ORDINATO: TFloatField;
    ibqCont_ArtQTA_IMPEGNATO: TFloatField;
    ibqCont_ArtVAL_QTA_IMPEGNATO: TFloatField;
    ibqCont_ArtQTA_EVASA_CLIENTE: TFloatField;
    ibqCont_ArtVAL_EVASO_CLIENTE: TFloatField;
    ibqCont_ArtQTA_EVASA_FORNITORE: TFloatField;
    ibqCont_ArtVAL_EVASO_FORNITORE: TFloatField;
    ibqCont_ArtQTA_GIACENZA_INIZIALE: TFloatField;
    ibqCont_ArtCOSTO_GIACENZA_INIZIALE: TFloatField;
    ibqCont_ArtVAL_GIACENZA_INIZIALE: TFloatField;
    ibqCont_ArtGIACENZA_ATTUALE: TFloatField;
    ibqCont_ArtDISPONIBILITA: TFloatField;
    ibqCont_ArtCOSTO_ULTIMO: TFloatField;
    ibqCont_ArtMED_PREZZO_VEND: TFloatField;
    ibqCont_ArtULT_COSTO_ACQ: TFloatField;
    ibqCont_ArtMEDIO_COSTO_ACQ: TFloatField;
    ibqCont_ArtULT_PREZZO_VEND: TFloatField;
    ibqCont_ArtDATA_ULTIMO_ACQUISTO: TDateTimeField;
    ibqCont_ArtDATA_ULTIMA_VENDITA: TDateTimeField;
    ibqCont_ArtPRETAGLIO: TFloatField;
    ibqryDetDoc: TIBDataSet;
    ibqryDetDocID_DOC_DET: TIntegerField;
    ibqryDetDocTIPO_RIGA: TIntegerField;
    ibqryDetDocCODICE_ARTICOLO: TIBStringField;
    ibqryDetDocDESCR: TIBStringField;
    ibqryDetDocCOSTO: TFloatField;
    ibqryDetDocCOSTOINVALUTA: TFloatField;
    ibqryDetDocUNITA_MISURA: TIBStringField;
    ibqryDetDocFATTCONV: TFloatField;
    ibqryDetDocQTA_UM: TFloatField;
    ibqryDetDocQUANTITA: TFloatField;
    ibqryDetDocSCONTO1: TFloatField;
    ibqryDetDocSCONTO2: TFloatField;
    ibqryDetDocSCONTO3: TFloatField;
    ibqryDetDocSCONTO4: TFloatField;
    ibqryDetDocIMPORTO_SCONTO: TFloatField;
    ibqryDetDocIMPORTO: TFloatField;
    ibqryDetDocIMPORTOINVALUTA: TFloatField;
    ibqryDetDocOMAGGIO: TSmallintField;
    ibqryDetDocDEP: TIBStringField;
    ibqryDetDocSCONTO_EQ: TFloatField;
    ibqryDetDocPERC_PROVV: TFloatField;
    ibqryDetDocTIPO_SERVIZIO: TIBStringField;
    ibqryDetDocIVATO: TFloatField;
    ibqryDetDocIMPORTO_CON_IVA: TFloatField;
    ibqryDetDocCODICE_IVA_ID: TIBStringField;
    ibqryDetDocDATA_REG: TDateTimeField;
    ibqryDetDocRIF_A: TSmallintField;
    ibqryDetDocRIF_A_PRE: TSmallintField;
    ibqryDetDocRIF_A_ORD: TSmallintField;
    ibqryDetDocRIF_A_DDT: TSmallintField;
    ibqryDetDocRIF_ID_DOC_DET: TIntegerField;
    ibqryDetDocRIF_DDT_ID_DOC: TIntegerField;
    ibqryDetDocRIF_DDT_DATA_DOC: TDateTimeField;
    ibqryDetDocRIF_ORD_ID_DOC: TIntegerField;
    ibqryDetDocRIF_ORD_DATA_DOC: TDateTimeField;
    ibqryDetDocRIF_PRE_ID_DOC: TIntegerField;
    ibqryDetDocRIF_PRE_DATA_DOC: TDateTimeField;
    ibqryDetDocPIANOCONTO_ID: TIntegerField;
    ibqryDetDocRIF_PRE_NUM_DOC: TIntegerField;
    ibqryDetDocRIF_ORD_NUM_DOC: TIntegerField;
    ibqryDetDocRIF_DDT_NUM_DOC: TIntegerField;
    ibqryDetDocOP_QTA_DISPONIBILE: TFloatField;
    ibqryDetDocOP_VAL_DISPONIBILE: TFloatField;
    ibqryDetDocOP_QTA_GIACENZA: TFloatField;
    ibqryDetDocOP_VAL_GIACENZA: TFloatField;
    ibqryDetDocDOC_ID: TIntegerField;
    ibqryDetDocTOTCOLLI: TIBStringField;
    ibqryDetDocTOTSCAT: TFloatField;
    ibqryDetDocPREZZOLIST: TFloatField;
    ibqryDetDocSCHEDA: TFloatField;
    ibqryDetDocPASSATA: TIBStringField;
    ibqryDetDocCOL: TIBStringField;
    ibqryDetDocA: TIBStringField;
    ibqryDetDocB: TIBStringField;
    ibqryDetDocC: TIBStringField;
    ibqryDetDocNUM_RIGA_ID: TIntegerField;
    Panel2: TPanel;
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    Label17: TLabel;
    dbeQtaUM: TDBEdit;
    laQtaCons: TLabel;
    dbeQtaCons: TDBEdit;
    laPrezzoUnitario: TLabel;
    RxDBCalcEdit5: TRxDBCalcEdit;
    laImporto: TLabel;
    RxDBCalcEdit6: TRxDBCalcEdit;
    laSc1: TLabel;
    DBEdit16: TDBEdit;
    laSc2: TLabel;
    DBEdit17: TDBEdit;
    laScMoneta: TLabel;
    RxDBCalcEdit7: TRxDBCalcEdit;
    laImportoScontato: TLabel;
    RxDBCalcEdit8: TRxDBCalcEdit;
    laIVA: TLabel;
    LookIVA: TRxDBLookupCombo;
    laIVAto: TLabel;
    dbeIvato: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    IBQuery2: TIBQuery;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    IBQuery2DESCR: TIBStringField;
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
    Label18: TLabel;
    DBEdit18: TDBEdit;
    IBDataSet1: TIBDataSet;
    IBDataSet1ID_DOCUMENTO: TIntegerField;
    IBDataSet1TESTATA_PN_ID: TIntegerField;
    IBDataSet1CAUSALE_DOC: TIBStringField;
    IBDataSet1TIPO_DOC: TIntegerField;
    IBDataSet1DA_FATTURARE: TSmallintField;
    IBDataSet1CLIFOR_ID: TIntegerField;
    IBDataSet1TIPO_CLIFOR: TSmallintField;
    IBDataSet1DEPOSITO: TIBStringField;
    IBDataSet1CONTRO_CLIFOR_ID: TIntegerField;
    IBDataSet1CONTRO_TIPO_CLIFOR: TSmallintField;
    IBDataSet1CONTRO_DEPOSITO: TIBStringField;
    IBDataSet1CAUSALE_MAGAZZINO: TIBStringField;
    IBDataSet1CONTRO_CAUS_MAG: TIBStringField;
    IBDataSet1ATTIVITA: TIBStringField;
    IBDataSet1SUBATTIVITA: TIBStringField;
    IBDataSet1DATA_REGISTRAZIONE: TDateTimeField;
    IBDataSet1DATA_DOC: TDateTimeField;
    IBDataSet1DATA_CONFERMA: TDateTimeField;
    IBDataSet1DATA_EVASIONE: TDateTimeField;
    IBDataSet1STATO_DOCUMENTO: TIntegerField;
    IBDataSet1STATO_CONTABILITA: TIntegerField;
    IBDataSet1MONETA_ID: TIBStringField;
    IBDataSet1CAMBIO: TFloatField;
    IBDataSet1KINGUA_ID: TIBStringField;
    IBDataSet1LISTINO: TIBStringField;
    IBDataSet1NS_RIFERIMENTO: TIBStringField;
    IBDataSet1VS_RIFERIMENTO: TIBStringField;
    IBDataSet1CAUSALE_CONTABILE: TIBStringField;
    IBDataSet1CODICE_BOLL: TIBStringField;
    IBDataSet1PAGAMENTO_ID: TIBStringField;
    IBDataSet1BANCA_CLIFOR: TIBStringField;
    IBDataSet1BANCA_AZIENDA: TIBStringField;
    IBDataSet1VETTORE1: TIBStringField;
    IBDataSet1VETTORE2: TIBStringField;
    IBDataSet1VETTORE3: TIBStringField;
    IBDataSet1PORTO: TIBStringField;
    IBDataSet1ASPETTO: TIBStringField;
    IBDataSet1SPEDIZIONE: TIBStringField;
    IBDataSet1PESO_NETTO: TFloatField;
    IBDataSet1PESO_LORDO: TFloatField;
    IBDataSet1CUBAGGIO: TFloatField;
    IBDataSet1DESTINARIO: TIBStringField;
    IBDataSet1IMBALLO: TIBStringField;
    IBDataSet1SCONTO1: TFloatField;
    IBDataSet1AGENTE_ID: TIBStringField;
    IBDataSet1DATA_CONSEGNA: TDateTimeField;
    IBDataSet1NUM_DOC: TIntegerField;
    IBDataSet1NRCOLLI: TFloatField;
    IBDataSet1SCONTO2: TFloatField;
    IBDataSet1IMPORTO_SCONTO: TFloatField;
    IBDataSet1NOTA: TIBStringField;
    IBDataSet1SOSPESO: TSmallintField;
    IBDataSet1IVA_SOSPESA: TSmallintField;
    IBDataSet1COD_IVA_ESENTE: TIBStringField;
    IBDataSet1COD_IVA_SPESE_BOLLI: TIBStringField;
    IBDataSet1COD_IVA_SPESE_INCASSO: TIBStringField;
    IBDataSet1COD_IVA_SPESE_IMVALLO: TIBStringField;
    IBDataSet1COD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    IBDataSet1COD_IVA_SPESE_ACCESSIONE: TIBStringField;
    IBDataSet1COD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    IBDataSet1ACCORPA_RIGHE: TSmallintField;
    IBDataSet1ATTIVITA2: TIBStringField;
    IBDataSet1SUBATTIVITA2: TIBStringField;
    IBDataSet1SOGGETTO_CEE: TSmallintField;
    IBDataSet1REPORT: TIBStringField;
    IBDataSet1RILEVA_ACCONTO: TSmallintField;
    IBDataSet1ORA: TIBStringField;
    IBDataSet1FATT_ACCOMP: TSmallintField;
    IBDataSet1TIPO_FATT: TSmallintField;
    IBDataSet1ST_NOTE_CLIFOR: TSmallintField;
    IBDataSet1IVATO: TSmallintField;
    IBDataSet1STAMPATO: TSmallintField;
    IBDataSet1DATA_COMPETENZA_IVA: TDateTimeField;
    IBDataSet1MEZZO_TRASPORTO: TSmallintField;
    IBDataSet1TOT_PROVVIGIONE: TFloatField;
    IBDataSet1TIPO_PROVVIGIONE: TSmallintField;
    IBDataSet1TOT_IMP_PROVVIGIONE: TFloatField;
    IBDataSet1CAST_MANUALE: TSmallintField;
    IBDataSet1NUM_DOC2: TIntegerField;
    IBDataSet1SERIE_DOC2: TIBStringField;
    IBDataSet1MESE_CONT: TIntegerField;
    IBDataSet1ALTRE_DERT_SI_NO: TSmallintField;
    IBDataSet1SPESE_IMBALLO: TFloatField;
    IBDataSet1SPESE_BOLLI: TFloatField;
    IBDataSet1SPESE_ACCESSORIE: TFloatField;
    IBDataSet1SPESE_INCASSO: TFloatField;
    IBDataSet1SPESE_SPEDIZIONE: TFloatField;
    IBDataSet1SPESE_CONTRASS: TFloatField;
    IBDataSet1CAU_TRASP_ID: TIBStringField;
    IBDataSet1PER_ALTRA_DEST: TSmallintField;
    IBDataSet1IMPORTO_CON_IVA: TFloatField;
    IBDataSet1TOTALE_MERCE: TFloatField;
    IBDataSet1TOTALE_SERVIZI: TFloatField;
    IBDataSet1TOTALE: TFloatField;
    IBDataSet1TOTALE_IVA: TFloatField;
    IBDataSet1TOTALE_IVATO: TFloatField;
    IBDataSet1TOTALE_SCONTI: TFloatField;
    IBDataSet1TOTALE_EURO: TFloatField;
    IBDataSet1TOTALE_EURO_IVATO: TFloatField;
    IBDataSet1CODIVA1: TIBStringField;
    IBDataSet1ALIVA1: TFloatField;
    IBDataSet1IMPON1: TFloatField;
    IBDataSet1IMPOSTA1: TFloatField;
    IBDataSet1CODIVA2: TIBStringField;
    IBDataSet1ALIVA2: TFloatField;
    IBDataSet1IMPON2: TFloatField;
    IBDataSet1IMPOSTA2: TFloatField;
    IBDataSet1CODIVA3: TIBStringField;
    IBDataSet1ALIVA3: TFloatField;
    IBDataSet1IMPON3: TFloatField;
    IBDataSet1IMPOSTA3: TFloatField;
    IBDataSet1CODIVA4: TIBStringField;
    IBDataSet1ALIVA4: TFloatField;
    IBDataSet1IMPON4: TFloatField;
    IBDataSet1IMPOSTA4: TFloatField;
    IBDataSet1CODIVA5: TIBStringField;
    IBDataSet1ALIVA5: TFloatField;
    IBDataSet1IMPON5: TFloatField;
    IBDataSet1IMPOSTA5: TFloatField;
    IBDataSet1TOT_SPESE: TFloatField;
    IBDataSet1ALTRA_DEST: TIBStringField;
    IBDataSet1SERIE_DOC: TIBStringField;
    IBDataSet1CLI_FOR_IND: TIBStringField;
    IBDataSet1ACCONTO: TFloatField;
    IBDataSet1RATA1_IMPORTO: TFloatField;
    IBDataSet1RATA2_IMPORTO: TFloatField;
    IBDataSet1RATA3_IMPORTO: TFloatField;
    IBDataSet1RATA4_IMPORTO: TFloatField;
    IBDataSet1RATA5_IMPORTO: TFloatField;
    IBDataSet1RATA6_IMPORTO: TFloatField;
    IBDataSet1TEL1: TIBStringField;
    IBDataSet1TEL2: TIBStringField;
    IBDataSet1TEL3: TIBStringField;
    IBDataSet1IVA_ESENTE: TSmallintField;
    IBDataSet1IVA_ESENTE_ID: TIntegerField;
    IBDataSet1VETTORE_IND: TIBStringField;
    IBDataSet1VETTORE_IND2: TIBStringField;
    IBDataSet1CLI_FOR_IND2: TIBStringField;
    IBDataSet1RATA1_DATA: TDateField;
    IBDataSet1RATA2_DATA: TDateField;
    IBDataSet1RATA3_DATA: TDateField;
    IBDataSet1RATA4_DATA: TDateField;
    IBDataSet1RATA5_DATA: TDateField;
    IBDataSet1RATA6_DATA: TDateField;
    IBDataSet1PIANOCONTO_ID: TIntegerField;
    IBDataSet1ALTRA_DEST2: TIBStringField;
    IBDataSet1CLIFORDESCR: TIBStringField;
    IBDataSet1CLIFORPARTITAIVA: TIBStringField;
    DataSource1: TDataSource;
    IBDataSet2: TIBDataSet;
    IBDataSet2ID_DOC_DET: TIntegerField;
    IBDataSet2TIPO_RIGA: TIntegerField;
    IBDataSet2CODICE_ARTICOLO: TIBStringField;
    IBDataSet2DESCR: TIBStringField;
    IBDataSet2COSTO: TFloatField;
    IBDataSet2COSTOINVALUTA: TFloatField;
    IBDataSet2UNITA_MISURA: TIBStringField;
    IBDataSet2FATTCONV: TFloatField;
    IBDataSet2QTA_UM: TFloatField;
    IBDataSet2QUANTITA: TFloatField;
    IBDataSet2SCONTO1: TFloatField;
    IBDataSet2SCONTO2: TFloatField;
    IBDataSet2SCONTO3: TFloatField;
    IBDataSet2SCONTO4: TFloatField;
    IBDataSet2IMPORTO_SCONTO: TFloatField;
    IBDataSet2IMPORTO: TFloatField;
    IBDataSet2IMPORTOINVALUTA: TFloatField;
    IBDataSet2OMAGGIO: TSmallintField;
    IBDataSet2DEP: TIBStringField;
    IBDataSet2SCONTO_EQ: TFloatField;
    IBDataSet2PERC_PROVV: TFloatField;
    IBDataSet2TIPO_SERVIZIO: TIBStringField;
    IBDataSet2IVATO: TFloatField;
    IBDataSet2IMPORTO_CON_IVA: TFloatField;
    IBDataSet2CODICE_IVA_ID: TIBStringField;
    IBDataSet2DATA_REG: TDateTimeField;
    IBDataSet2RIF_A: TSmallintField;
    IBDataSet2RIF_A_PRE: TSmallintField;
    IBDataSet2RIF_A_ORD: TSmallintField;
    IBDataSet2RIF_A_DDT: TSmallintField;
    IBDataSet2RIF_ID_DOC_DET: TIntegerField;
    IBDataSet2RIF_DDT_ID_DOC: TIntegerField;
    IBDataSet2RIF_DDT_DATA_DOC: TDateTimeField;
    IBDataSet2RIF_ORD_ID_DOC: TIntegerField;
    IBDataSet2RIF_ORD_DATA_DOC: TDateTimeField;
    IBDataSet2RIF_PRE_ID_DOC: TIntegerField;
    IBDataSet2RIF_PRE_DATA_DOC: TDateTimeField;
    IBDataSet2PIANOCONTO_ID: TIntegerField;
    IBDataSet2RIF_PRE_NUM_DOC: TIntegerField;
    IBDataSet2RIF_ORD_NUM_DOC: TIntegerField;
    IBDataSet2RIF_DDT_NUM_DOC: TIntegerField;
    IBDataSet2OP_QTA_DISPONIBILE: TFloatField;
    IBDataSet2OP_VAL_DISPONIBILE: TFloatField;
    IBDataSet2OP_QTA_GIACENZA: TFloatField;
    IBDataSet2OP_VAL_GIACENZA: TFloatField;
    IBDataSet2DOC_ID: TIntegerField;
    IBDataSet2TOTCOLLI: TIBStringField;
    IBDataSet2TOTSCAT: TFloatField;
    IBDataSet2PREZZOLIST: TFloatField;
    IBDataSet2SCHEDA: TFloatField;
    IBDataSet2PASSATA: TIBStringField;
    IBDataSet2COL: TIBStringField;
    IBDataSet2A: TIBStringField;
    IBDataSet2B: TIBStringField;
    IBDataSet2C: TIBStringField;
    IBDataSet2NUM_RIGA_ID: TIntegerField;
    IbqUpdoc: TIBSQL;
    Ibqupdet: TIBSQL;
    IBQuery1: TIBQuery;
    IBQuery1ID_DOC_DET: TIntegerField;
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
    IBQuery1A: TIBStringField;
    IBQuery1B: TIBStringField;
    IBQuery1C: TIBStringField;
    IBQuery1NUM_RIGA_ID: TIntegerField;
    ibq_aggArt: TIBDataSet;
    ibq_aggArtCODICE_ARTICOLO: TIBStringField;
    ibq_aggArtDESCR: TIBStringField;
    ibq_aggArtDESCR2: TIBStringField;
    ibq_aggArtCODICE_IVA_ID: TIBStringField;
    ibq_aggArtUNITA_DI_MISURA1_ID: TIBStringField;
    ibq_aggArtUNITA_DI_MISURA2_ID: TIBStringField;
    ibq_aggArtUNITA_DI_MISURA3_ID: TIBStringField;
    ibq_aggArtSCONTO1: TFloatField;
    ibq_aggArtSCONTO2: TFloatField;
    ibq_aggArtSCONTO3: TFloatField;
    ibq_aggArtPROVVIGIONE: TFloatField;
    ibq_aggArtPESO_NETTO_KG: TFloatField;
    ibq_aggArtPESO_LORDO_KG: TFloatField;
    ibq_aggArtSCORTA_MIN: TFloatField;
    ibq_aggArtSCORTA_MAX: TFloatField;
    ibq_aggArtLOTTO_RIORDINO: TFloatField;
    ibq_aggArtGG_APPROVVIGIONAMENTO: TIntegerField;
    ibq_aggArtQTA_X_CONFEZIONE: TIntegerField;
    ibq_aggArtANNO: TIntegerField;
    ibq_aggArtDESCR_AGGIUNTIVA_ID: TIBStringField;
    ibq_aggArtPREZZO_BASE: TFloatField;
    ibq_aggArtCOSTO_STANDART: TFloatField;
    ibq_aggArtTIPO_ARTICOLO_ID: TSmallintField;
    ibq_aggArtFATT_CONV1: TFloatField;
    ibq_aggArtFATT_CONV2: TFloatField;
    ibq_aggArtCOSTO_ID: TIntegerField;
    ibq_aggArtRICAVO_ID: TIntegerField;
    ibq_aggArtGIORNI_MAX_INVENDUTO: TIntegerField;
    ibq_aggArtASPETTO_ID: TIBStringField;
    ibq_aggArtRIORDINO_MESE_DA: TSmallintField;
    ibq_aggArtRIORDINO_MESE_A: TSmallintField;
    ibq_aggArtRIORDINO_GIORNO_DA: TSmallintField;
    ibq_aggArtRIORDINO_GIORNO_A: TSmallintField;
    ibq_aggArtSTAGIONE_ID: TIBStringField;
    ibq_aggArtGRUPPO_ALTERNATIVO: TIBStringField;
    ibq_aggArtPRODUTTORE_ID: TIBStringField;
    ibq_aggArtCATEGORIA_ARTICOLO_ID: TIBStringField;
    ibq_aggArtCATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    ibq_aggArtCODICE_BASE: TIBStringField;
    ibq_aggArtDERIVATO: TSmallintField;
    ibq_aggArtVARIANTE1_ID: TIBStringField;
    ibq_aggArtVARIANTE2_ID: TIBStringField;
    ibq_aggArtVARIANTE3_ID: TIBStringField;
    ibq_aggArtNUM_VARIANTI: TIntegerField;
    ibq_aggArtTIPO_COSTO_ID: TSmallintField;
    ibq_aggArtTIPO_RICAVO_ID: TSmallintField;
    ibq_aggArtOMAGGIO: TSmallintField;
    ibq_aggArtTIPO_CLI_FOR_ID: TSmallintField;
    ibq_aggArtCLI_FOR_ID: TIntegerField;
    ibq_aggArtCODE_BAR: TIBStringField;
    ibq_aggArtDESCR_CODE_BAR: TIBStringField;
    ibq_aggArtNON_STAMPA_INVENTARIO: TSmallintField;
    ibq_aggArtNON_STAMPA_REGISTRO: TSmallintField;
    ibq_aggArtNOMENCLATURA: TIntegerField;
    ibq_aggArtFATT_CONV1_NOMENCLATURA: TFloatField;
    ibq_aggArtFATT_CONV2_NOMENCLATURA: TFloatField;
    ibq_aggArtPROV_ORDINE: TIntegerField;
    ibq_aggArtCOSTO_ULTIMO: TFloatField;
    ibq_aggArtDATA_COSTO_ULTIMO: TDateTimeField;
    ibq_aggArtNUM_REPARTO: TIntegerField;
    ibq_aggArtTIPO_CODE_BAR_ID: TSmallintField;
    ibq_aggArtCONTO_ACQUISTO: TIntegerField;
    ibq_aggArtCONTO_VENDITA: TIntegerField;
    ibq_aggArtUN_MIS2_VAL: TIntegerField;
    ibq_aggArtUN_MIS3_VAL: TIntegerField;
    ibq_aggArtCAT_ART_FAMIGLIA_ID: TIntegerField;
    ibq_aggArtCAT_ART_GRUPPO_ID: TIntegerField;
    ibq_aggArtCAT_ART_MARCA_ID: TIntegerField;
    ibq_aggArtFOTO_PERCORSO: TIBStringField;
    ibq_aggArtCAT_ART_TIPO_ID: TIntegerField;
    ibq_aggArtFLAG_ACCESSORIE: TIBStringField;
    ibq_aggArtDATAMOD: TDateTimeField;
    ibq_aggArtSCONTO4: TFloatField;
    ibq_aggArtPREZZO_IVATO: TFloatField;
    ibq_aggArtP2IVATO: TFloatField;
    ibq_aggArtP3IVATO: TFloatField;
    ibq_aggArtP4IVATO: TFloatField;
    ibq_aggArtP5IVATO: TFloatField;
    ibq_aggArtSC21: TFloatField;
    ibq_aggArtSC22: TFloatField;
    ibq_aggArtSC23: TFloatField;
    ibq_aggArtSC31: TFloatField;
    ibq_aggArtSC32: TFloatField;
    ibq_aggArtSC33: TFloatField;
    ibq_aggArtSC41: TFloatField;
    ibq_aggArtSC42: TFloatField;
    ibq_aggArtSC43: TFloatField;
    ibq_aggArtSC51: TFloatField;
    ibq_aggArtSC52: TFloatField;
    ibq_aggArtSC53: TFloatField;
    ibq_aggArtR2: TFloatField;
    ibq_aggArtR3: TFloatField;
    ibq_aggArtR4: TFloatField;
    ibq_aggArtR5: TFloatField;
    ibq_aggArtIMP2: TFloatField;
    ibq_aggArtIMP3: TFloatField;
    ibq_aggArtIMP4: TFloatField;
    ibq_aggArtIMP5: TFloatField;
    ibq_aggArtRICARPREC: TFloatField;
    ibq_aggArtP6IVATO: TFloatField;
    ibq_aggArtIMP6: TFloatField;
    ibq_aggArtSTRUTT: TFloatField;
    ibq_aggArtCA: TFloatField;
    ibq_aggArtCG: TFloatField;
    ibq_aggArtAG: TFloatField;
    ibq_aggArtCA2: TFloatField;
    ibq_aggArtCG2: TFloatField;
    ibq_aggArtAG2: TFloatField;
    ibq_aggArtCA3: TFloatField;
    ibq_aggArtCG3: TFloatField;
    ibq_aggArtAG3: TFloatField;
    ibq_aggArtCA4: TFloatField;
    ibq_aggArtCG4: TFloatField;
    ibq_aggArtAG4: TFloatField;
    ibq_aggArtCA5: TFloatField;
    ibq_aggArtCG5: TFloatField;
    ibq_aggArtAG5: TFloatField;
    ibq_aggArtCA6: TFloatField;
    ibq_aggArtCG6: TFloatField;
    ibq_aggArtAG6: TFloatField;
    ibq_aggArtID_OFFERTA: TIntegerField;
    ibq_aggArtCR: TFloatField;
    ibq_aggArtCR2: TFloatField;
    ibq_aggArtCR3: TFloatField;
    ibq_aggArtCR4: TFloatField;
    ibq_aggArtCR5: TFloatField;
    ibq_aggArtCR6: TFloatField;
    ibq_aggArt_tmp: TIBDataSet;
    DataSource2: TDataSource;
    ibqCont_Art_tmp: TIBDataSet;
    ibqCont_Art_tmpCODICE_ARTICOLO: TIBStringField;
    ibqCont_Art_tmpDEPOSITO_ID: TIBStringField;
    ibqCont_Art_tmpCLI_FOR_ID: TIntegerField;
    ibqCont_Art_tmpTIPO_CLI_FOR_ID: TSmallintField;
    ibqCont_Art_tmpDESCR: TIBStringField;
    ibqCont_Art_tmpQTA_ACQUISTI: TFloatField;
    ibqCont_Art_tmpVAL_ACQUISTI: TFloatField;
    ibqCont_Art_tmpQTA_VENDITA: TFloatField;
    ibqCont_Art_tmpVAL_VENDITA: TFloatField;
    ibqCont_Art_tmpQTA_ALTRE_ENTRATE: TFloatField;
    ibqCont_Art_tmpVAL_ALTRE_ENTRATE: TFloatField;
    ibqCont_Art_tmpQTA_ALTRE_USCITE: TFloatField;
    ibqCont_Art_tmpVAL_ALTRE_USCITA: TFloatField;
    ibqCont_Art_tmpQTA_RESO_CLIENTE: TFloatField;
    ibqCont_Art_tmpVAL_RESO_CLIENTE: TFloatField;
    ibqCont_Art_tmpQTA_RESO_FORNITORE: TFloatField;
    ibqCont_Art_tmpVAL_RESO_FORNITORE: TFloatField;
    ibqCont_Art_tmpQTA_ORDINATO: TFloatField;
    ibqCont_Art_tmpVAL_ORDINATO: TFloatField;
    ibqCont_Art_tmpQTA_IMPEGNATO: TFloatField;
    ibqCont_Art_tmpVAL_QTA_IMPEGNATO: TFloatField;
    ibqCont_Art_tmpQTA_EVASA_CLIENTE: TFloatField;
    ibqCont_Art_tmpVAL_EVASO_CLIENTE: TFloatField;
    ibqCont_Art_tmpQTA_EVASA_FORNITORE: TFloatField;
    ibqCont_Art_tmpVAL_EVASO_FORNITORE: TFloatField;
    ibqCont_Art_tmpQTA_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art_tmpCOSTO_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art_tmpVAL_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art_tmpGIACENZA_ATTUALE: TFloatField;
    ibqCont_Art_tmpDISPONIBILITA: TFloatField;
    ibqCont_Art_tmpCOSTO_ULTIMO: TFloatField;
    ibqCont_Art_tmpMED_PREZZO_VEND: TFloatField;
    ibqCont_Art_tmpULT_COSTO_ACQ: TFloatField;
    ibqCont_Art_tmpMEDIO_COSTO_ACQ: TFloatField;
    ibqCont_Art_tmpULT_PREZZO_VEND: TFloatField;
    ibqCont_Art_tmpDATA_ULTIMO_ACQUISTO: TDateTimeField;
    ibqCont_Art_tmpDATA_ULTIMA_VENDITA: TDateTimeField;
    ibqCont_Art_tmpPRETAGLIO: TFloatField;
    IbqDel: TIBQuery;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    Label19: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label5: TLabel;
    LookAgCod: TRxDBLookupCombo;
    LookAgDescr: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label8: TLabel;
    Label20: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    Label21: TLabel;
    LookCADescr: TRxDBLookupCombo;
    LookCACod: TRxDBLookupCombo;
    IBDataSet3: TIBDataSet;
    IBDataSet3ID_DOC: TFloatField;
    IBDataSet3CODICE: TIBStringField;
    IBDataSet3DESCRIZIONE: TIBStringField;
    IBDataSet3SERIALE: TIBStringField;
    IBDataSet3ID_DET_DOC: TFloatField;
    IBQuery5: TIBQuery;
    IBQuery5CODICE_ARTICOLO: TIBStringField;
    IBQuery5CLI_FOR_ID: TIntegerField;
    IBQuery5CODICE_AGGIUNTIVO: TIBStringField;
    IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField;
    IBQuery5QUANTITA: TFloatField;
    IBQuery5DESCR: TIBStringField;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DataSource3: TDataSource;
    tabSeriali: TIBDataSet;
    tabSerialiID_DOC: TFloatField;
    tabSerialiCODICE: TIBStringField;
    tabSerialiDESCRIZIONE: TIBStringField;
    tabSerialiID_DET_DOC: TFloatField;
    tabSerialiSERIALE: TIBStringField;
    T6: TTabSheet;
    pa6: TPanel;
    DBCheckBox1: TDBCheckBox;
    Label22: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    ibqCont_Art2: TIBDataSet;
    ibqCont_Art_tmp2: TIBDataSet;
    ibqCont_Art2CODICE_ARTICOLO: TIBStringField;
    ibqCont_Art2DEPOSITO_ID: TIBStringField;
    ibqCont_Art2CLI_FOR_ID: TIntegerField;
    ibqCont_Art2TIPO_CLI_FOR_ID: TSmallintField;
    ibqCont_Art2DESCR: TIBStringField;
    ibqCont_Art2QTA_ACQUISTI: TFloatField;
    ibqCont_Art2VAL_ACQUISTI: TFloatField;
    ibqCont_Art2QTA_VENDITA: TFloatField;
    ibqCont_Art2VAL_VENDITA: TFloatField;
    ibqCont_Art2QTA_ALTRE_ENTRATE: TFloatField;
    ibqCont_Art2VAL_ALTRE_ENTRATE: TFloatField;
    ibqCont_Art2QTA_ALTRE_USCITE: TFloatField;
    ibqCont_Art2VAL_ALTRE_USCITA: TFloatField;
    ibqCont_Art2QTA_RESO_CLIENTE: TFloatField;
    ibqCont_Art2VAL_RESO_CLIENTE: TFloatField;
    ibqCont_Art2QTA_RESO_FORNITORE: TFloatField;
    ibqCont_Art2VAL_RESO_FORNITORE: TFloatField;
    ibqCont_Art2QTA_ORDINATO: TFloatField;
    ibqCont_Art2VAL_ORDINATO: TFloatField;
    ibqCont_Art2QTA_IMPEGNATO: TFloatField;
    ibqCont_Art2VAL_QTA_IMPEGNATO: TFloatField;
    ibqCont_Art2QTA_EVASA_CLIENTE: TFloatField;
    ibqCont_Art2VAL_EVASO_CLIENTE: TFloatField;
    ibqCont_Art2QTA_EVASA_FORNITORE: TFloatField;
    ibqCont_Art2VAL_EVASO_FORNITORE: TFloatField;
    ibqCont_Art2QTA_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art2COSTO_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art2VAL_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art2GIACENZA_ATTUALE: TFloatField;
    ibqCont_Art2DISPONIBILITA: TFloatField;
    ibqCont_Art2COSTO_ULTIMO: TFloatField;
    ibqCont_Art2MED_PREZZO_VEND: TFloatField;
    ibqCont_Art2ULT_COSTO_ACQ: TFloatField;
    ibqCont_Art2MEDIO_COSTO_ACQ: TFloatField;
    ibqCont_Art2ULT_PREZZO_VEND: TFloatField;
    ibqCont_Art2DATA_ULTIMO_ACQUISTO: TDateTimeField;
    ibqCont_Art2DATA_ULTIMA_VENDITA: TDateTimeField;
    ibqCont_Art2PRETAGLIO: TFloatField;
    ibqCont_Art_tmp2CODICE_ARTICOLO: TIBStringField;
    ibqCont_Art_tmp2DEPOSITO_ID: TIBStringField;
    ibqCont_Art_tmp2CLI_FOR_ID: TIntegerField;
    ibqCont_Art_tmp2TIPO_CLI_FOR_ID: TSmallintField;
    ibqCont_Art_tmp2DESCR: TIBStringField;
    ibqCont_Art_tmp2QTA_ACQUISTI: TFloatField;
    ibqCont_Art_tmp2VAL_ACQUISTI: TFloatField;
    ibqCont_Art_tmp2QTA_VENDITA: TFloatField;
    ibqCont_Art_tmp2VAL_VENDITA: TFloatField;
    ibqCont_Art_tmp2QTA_ALTRE_ENTRATE: TFloatField;
    ibqCont_Art_tmp2VAL_ALTRE_ENTRATE: TFloatField;
    ibqCont_Art_tmp2QTA_ALTRE_USCITE: TFloatField;
    ibqCont_Art_tmp2VAL_ALTRE_USCITA: TFloatField;
    ibqCont_Art_tmp2QTA_RESO_CLIENTE: TFloatField;
    ibqCont_Art_tmp2VAL_RESO_CLIENTE: TFloatField;
    ibqCont_Art_tmp2QTA_RESO_FORNITORE: TFloatField;
    ibqCont_Art_tmp2VAL_RESO_FORNITORE: TFloatField;
    ibqCont_Art_tmp2QTA_ORDINATO: TFloatField;
    ibqCont_Art_tmp2VAL_ORDINATO: TFloatField;
    ibqCont_Art_tmp2QTA_IMPEGNATO: TFloatField;
    ibqCont_Art_tmp2VAL_QTA_IMPEGNATO: TFloatField;
    ibqCont_Art_tmp2QTA_EVASA_CLIENTE: TFloatField;
    ibqCont_Art_tmp2VAL_EVASO_CLIENTE: TFloatField;
    ibqCont_Art_tmp2QTA_EVASA_FORNITORE: TFloatField;
    ibqCont_Art_tmp2VAL_EVASO_FORNITORE: TFloatField;
    ibqCont_Art_tmp2QTA_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art_tmp2COSTO_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art_tmp2VAL_GIACENZA_INIZIALE: TFloatField;
    ibqCont_Art_tmp2GIACENZA_ATTUALE: TFloatField;
    ibqCont_Art_tmp2DISPONIBILITA: TFloatField;
    ibqCont_Art_tmp2COSTO_ULTIMO: TFloatField;
    ibqCont_Art_tmp2MED_PREZZO_VEND: TFloatField;
    ibqCont_Art_tmp2ULT_COSTO_ACQ: TFloatField;
    ibqCont_Art_tmp2MEDIO_COSTO_ACQ: TFloatField;
    ibqCont_Art_tmp2ULT_PREZZO_VEND: TFloatField;
    ibqCont_Art_tmp2DATA_ULTIMO_ACQUISTO: TDateTimeField;
    ibqCont_Art_tmp2DATA_ULTIMA_VENDITA: TDateTimeField;
    ibqCont_Art_tmp2PRETAGLIO: TFloatField;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ibDistinte: TIBDataSet;
    dbeAcconti: TDBEdit;
    Label23: TLabel;
    IBQuery3_R1: TIBQuery;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    IBStringField26: TIBStringField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    FloatField71: TFloatField;
    FloatField72: TFloatField;
    FloatField73: TFloatField;
    FloatField74: TFloatField;
    FloatField75: TFloatField;
    FloatField76: TFloatField;
    FloatField77: TFloatField;
    FloatField78: TFloatField;
    FloatField79: TFloatField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IBStringField29: TIBStringField;
    FloatField80: TFloatField;
    FloatField81: TFloatField;
    SmallintField14: TSmallintField;
    FloatField82: TFloatField;
    FloatField83: TFloatField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IBStringField30: TIBStringField;
    SmallintField15: TSmallintField;
    SmallintField16: TSmallintField;
    SmallintField17: TSmallintField;
    SmallintField18: TSmallintField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IntegerField28: TIntegerField;
    IBStringField35: TIBStringField;
    SmallintField19: TSmallintField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    IntegerField29: TIntegerField;
    SmallintField20: TSmallintField;
    SmallintField21: TSmallintField;
    SmallintField22: TSmallintField;
    SmallintField23: TSmallintField;
    IntegerField30: TIntegerField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    SmallintField24: TSmallintField;
    SmallintField25: TSmallintField;
    IntegerField31: TIntegerField;
    FloatField84: TFloatField;
    FloatField85: TFloatField;
    IntegerField32: TIntegerField;
    FloatField86: TFloatField;
    DateTimeField3: TDateTimeField;
    IntegerField33: TIntegerField;
    SmallintField26: TSmallintField;
    IntegerField34: TIntegerField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    IntegerField40: TIntegerField;
    IBStringField41: TIBStringField;
    IntegerField41: TIntegerField;
    IBStringField42: TIBStringField;
    DateTimeField4: TDateTimeField;
    FloatField87: TFloatField;
    FloatField88: TFloatField;
    FloatField89: TFloatField;
    FloatField90: TFloatField;
    FloatField91: TFloatField;
    FloatField92: TFloatField;
    FloatField93: TFloatField;
    FloatField94: TFloatField;
    FloatField95: TFloatField;
    FloatField96: TFloatField;
    FloatField97: TFloatField;
    FloatField98: TFloatField;
    FloatField99: TFloatField;
    FloatField100: TFloatField;
    FloatField101: TFloatField;
    FloatField102: TFloatField;
    FloatField103: TFloatField;
    FloatField104: TFloatField;
    FloatField105: TFloatField;
    FloatField106: TFloatField;
    FloatField107: TFloatField;
    FloatField108: TFloatField;
    FloatField109: TFloatField;
    FloatField110: TFloatField;
    FloatField111: TFloatField;
    FloatField112: TFloatField;
    FloatField113: TFloatField;
    FloatField114: TFloatField;
    FloatField115: TFloatField;
    FloatField116: TFloatField;
    FloatField117: TFloatField;
    FloatField118: TFloatField;
    FloatField119: TFloatField;
    FloatField120: TFloatField;
    FloatField121: TFloatField;
    FloatField122: TFloatField;
    FloatField123: TFloatField;
    FloatField124: TFloatField;
    FloatField125: TFloatField;
    FloatField126: TFloatField;
    FloatField127: TFloatField;
    FloatField128: TFloatField;
    FloatField129: TFloatField;
    FloatField130: TFloatField;
    FloatField131: TFloatField;
    FloatField132: TFloatField;
    FloatField133: TFloatField;
    FloatField134: TFloatField;
    IntegerField42: TIntegerField;
    FloatField135: TFloatField;
    FloatField136: TFloatField;
    FloatField137: TFloatField;
    FloatField138: TFloatField;
    FloatField139: TFloatField;
    FloatField140: TFloatField;
    IBQuery3_R3: TIBQuery;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    IBStringField47: TIBStringField;
    IBStringField48: TIBStringField;
    IBStringField49: TIBStringField;
    FloatField141: TFloatField;
    FloatField142: TFloatField;
    FloatField143: TFloatField;
    FloatField144: TFloatField;
    FloatField145: TFloatField;
    FloatField146: TFloatField;
    FloatField147: TFloatField;
    FloatField148: TFloatField;
    FloatField149: TFloatField;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    IntegerField45: TIntegerField;
    IBStringField50: TIBStringField;
    FloatField150: TFloatField;
    FloatField151: TFloatField;
    SmallintField27: TSmallintField;
    FloatField152: TFloatField;
    FloatField153: TFloatField;
    IntegerField46: TIntegerField;
    IntegerField47: TIntegerField;
    IntegerField48: TIntegerField;
    IBStringField51: TIBStringField;
    SmallintField28: TSmallintField;
    SmallintField29: TSmallintField;
    SmallintField30: TSmallintField;
    SmallintField31: TSmallintField;
    IBStringField52: TIBStringField;
    IBStringField53: TIBStringField;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IntegerField49: TIntegerField;
    IBStringField56: TIBStringField;
    SmallintField32: TSmallintField;
    IBStringField57: TIBStringField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IntegerField50: TIntegerField;
    SmallintField33: TSmallintField;
    SmallintField34: TSmallintField;
    SmallintField35: TSmallintField;
    SmallintField36: TSmallintField;
    IntegerField51: TIntegerField;
    IBStringField60: TIBStringField;
    IBStringField61: TIBStringField;
    SmallintField37: TSmallintField;
    SmallintField38: TSmallintField;
    IntegerField52: TIntegerField;
    FloatField154: TFloatField;
    FloatField155: TFloatField;
    IntegerField53: TIntegerField;
    FloatField156: TFloatField;
    DateTimeField5: TDateTimeField;
    IntegerField54: TIntegerField;
    SmallintField39: TSmallintField;
    IntegerField55: TIntegerField;
    IntegerField56: TIntegerField;
    IntegerField57: TIntegerField;
    IntegerField58: TIntegerField;
    IntegerField59: TIntegerField;
    IntegerField60: TIntegerField;
    IntegerField61: TIntegerField;
    IBStringField62: TIBStringField;
    IntegerField62: TIntegerField;
    IBStringField63: TIBStringField;
    DateTimeField6: TDateTimeField;
    FloatField157: TFloatField;
    FloatField158: TFloatField;
    FloatField159: TFloatField;
    FloatField160: TFloatField;
    FloatField161: TFloatField;
    FloatField162: TFloatField;
    FloatField163: TFloatField;
    FloatField164: TFloatField;
    FloatField165: TFloatField;
    FloatField166: TFloatField;
    FloatField167: TFloatField;
    FloatField168: TFloatField;
    FloatField169: TFloatField;
    FloatField170: TFloatField;
    FloatField171: TFloatField;
    FloatField172: TFloatField;
    FloatField173: TFloatField;
    FloatField174: TFloatField;
    FloatField175: TFloatField;
    FloatField176: TFloatField;
    FloatField177: TFloatField;
    FloatField178: TFloatField;
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
    IntegerField63: TIntegerField;
    FloatField205: TFloatField;
    FloatField206: TFloatField;
    FloatField207: TFloatField;
    FloatField208: TFloatField;
    FloatField209: TFloatField;
    FloatField210: TFloatField;
    ibdProt1: TIBDataSet;
    ibdProt1NUMERO: TIntegerField;
    ibdProt1DATA: TDateTimeField;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    SaveDialog1: TSaveDialog;
    Label24: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    DBLookupComboBox25: TRxDBLookupCombo;
    DBLookupComboBox26: TRxDBLookupCombo;
    RxCalcEdit1: TRxCalcEdit;
    ibqCont_Art_tmp2MEDIA_SPESE: TFloatField;
    ibqCont_Art2MEDIA_SPESE: TFloatField;
    ibqCont_ArtMEDIA_SPESE: TFloatField;
    ibqCont_Art_tmpMEDIA_SPESE: TFloatField;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    SpeedButton4: TSpeedButton;
    TabSheet3: TTabSheet;
    DBEdit21: TDBEdit;
    tbarArtEvent: TToolBar;
    tbtnaInsert: TToolButton;
    ToolButton15: TToolButton;
    tbtnaEdit: TToolButton;
    ToolButton16: TToolButton;
    tbtnaDel: TToolButton;
    sepa2: TToolButton;
    edNumRigaLocate: TEdit;
    sep7: TToolButton;
    tbtnDaPreventivo: TToolButton;
    sep9: TToolButton;
    tbtnDaOrdine: TToolButton;
    sep8: TToolButton;
    tbtnDaDDT: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
    tt: TToolButton;
    tbtnAggiornaIVA: TToolButton;
    ToolButton7: TToolButton;
    ToolButton14: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    Label27: TLabel;
    DBEdit22: TDBEdit;
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
    procedure tbtnaInsertClick(Sender: TObject);
    procedure tbtnaEditClick(Sender: TObject);
    procedure tbtnaDelClick(Sender: TObject);
    procedure edNumRigaLocateKeyPress(Sender: TObject; var Key: Char);
    procedure edNumRigaLocateChange(Sender: TObject);
    procedure tbtnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbeBolliExit(Sender: TObject);
    procedure LookVettoreCodExit(Sender: TObject);
    procedure tbtnDaPreventivoClick(Sender: TObject);
    procedure tbtnDaOrdineClick(Sender: TObject);
    procedure tbtnDaDDTClick(Sender: TObject);
    procedure Rimetterescadenze1Click(Sender: TObject);
    procedure miDoc_Det_PianoContoClick(Sender: TObject);
    procedure tbtnAggiornaIVAClick(Sender: TObject);
    procedure dbeNumeroExit(Sender: TObject);
    procedure LookCliForDescrChange(Sender: TObject);
    procedure LookCliForCodChange(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure dbcbAltraDestClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure LookAgDescrExit(Sender: TObject);
    procedure LookAgDescrCloseUp(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure LookVettoreCodCloseUp(Sender: TObject);
    procedure LookAgCodChange(Sender: TObject);
    procedure LookAgDescrChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeQtaUMKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure Stampe1Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeNumeroMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure laCliForDblClick(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure dbeNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDataDocKeyPress(Sender: TObject; var Key: Char);
   Private
    SavePlace: TBookmark;
    dSc1,dSc2,dScM: Double;
    boolNuovo, boolModifica,boolDoc_Vendita: Boolean;
    strTipo_Servizio,strCodiceListino: String;
    iNumero_Riga,iCliForID,intID_Doc,NumReg,dist_F:integer;
    strCodDep, strCodIVA, strCodArt,deposito,Conta_acq: String;
    strCodCauMag_TMP,strCodCauMag_TMP2 : string;
    Procedure Pass_Doc(intPassTipoDoc: Integer);
    Procedure Get_Num_Doc;
    Procedure Set_Num_Doc;
    Procedure Del_Num_Doc;
    Procedure Locate_Riga;
    Procedure Get_Tab_Name(iTipoDoc: Integer; Var strTab_Name: String);
    Procedure Disable_Panels(bDisAb: Boolean);
    // ---------
    Procedure Aggiornamento_Contabilita(bNormale: Boolean);
    Procedure Aggiornamento_Contabilita2(bNormale: Boolean);
    Procedure Aggiornamento_Contabilita_TEMP(bNormale: Boolean);
    Procedure Aggiornamento_Contabilita_TEMP2(bNormale: Boolean);
    Procedure Scarico_Distinta(bNormale: Boolean);
    Procedure Scarico_Distinta2(bNormale: Boolean);
    Procedure Scarico_Distinta_R1(bNormale: Boolean);
    Procedure Scarico_Distinta_R2(bNormale: Boolean);
    Procedure Scarico_Distinta_R3(bNormale: Boolean);
    Procedure Scarico_Distinta_R4(bNormale: Boolean);
    Procedure Get_Val_From_PersAz;
    Procedure Calcola_Spese(VAR dSpese: Currency;VAR dSpeseIVA: Currency);
    Procedure Get_Aliq_IVA(strCodIVA: String; Var dAliq: Double);
    Procedure Azzerare_IVA;
    Procedure Insert_Scadenza;
    Procedure Elimina_Scadenza;
    // !!!
    Procedure Insert_Contab_Vend(i_ID_Doc: Integer);
    Procedure Insert_Contab_Acq(i_ID_Doc: Integer);
    Procedure Elimina_Contab(i_ID_Doc: Integer);
    Procedure Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
    Procedure Aggiorna_Spese_IVA;

    Function  Inserimento_di_riga_contab(Var iPK_Codice: Integer;iConDett: Integer;
              dtData_Doc,dtData_Mov: TDateTime;iNum_Doc,iDoc_ID: Integer;
              sDescr_Mov: String; iTIPO_Mov, iPianoConto: Integer;
              sSottoContoDescr,sNomeContoDescr: String; iCliForID,
              iTipoCliFor,iNumProto: Integer; dDare,dAvere: Currency): Boolean;
    Function Verifica_NumDoc(iNumDoc_per_Verifica: Integer): Boolean;
    Function Verifica_NumDoc2(iNumDoc_per_Verifica: Integer): Boolean;
    Procedure Apri;

   Public
    { Public declarations }
    intTipoDoc, intTipoCliFor,PD: Integer;
    intNewNumDoc,intOldNumDoc, Id_docum: Integer;
    boolVendita,boolNonHaListino,boolInsert: Boolean;
    nuovissimo : bool;
    strCAU_MAG: String;
    strCodIvaSp_Boll,strCodIvaSp_Inc,strCodIvaSp_Imb,
    strCodIvaSp_ContrSegn,strCodIvaSp_Access,strCodIvaSp_Sped: String;
    Procedure Aggiorna_IVA_Totale;
    Procedure Calcola_Totali;
    procedure PassaTutte;
    procedure TERMINA;
  end;

var
  fBaseFormDoc3: TfBaseFormDoc3;
  
implementation

uses uAzDM, uRicercaVeloceAZ, uNumDocList, uPubDM, uDocArt, frmuPassDoc, uStBC,
  uLettBarcode, uClienti, uForn;

{$R *.DFM}

procedure TfBaseFormDoc3.tbtnNuovoClick(Sender: TObject);
Var
 wAnno,wMese,wGiorno,wOra,wMin,wSec,wMSec: Word;
 zz,iID_Doc_New: Integer;
begin
  inherited;
//Panel2.Enabled := true;
if (intTipoDoc=210) or (intTipoDoc=211) or (intTipoDoc=13)or (intTipoDoc=23) then
begin
DBCheckBox1.Enabled := True;

end;
 DecodeDate(Date,wAnno,wMese,wGiorno);
 DecodeTime(Time,wOra,wMin,wSec,wMSec);

 tbtnNumDoc.Enabled:=False;
 tbtnPrint.Enabled:=False;
 ToolButton6.Enabled:=False;
 ToolButton5.Enabled:=False;
 ToolButton11.Enabled:=False;
 ToolButton2.Enabled:=False;
 ToolButton20.Enabled:=False;
 ToolButton22.Enabled:=False;

 pctrlMain.ActivePage:=tabs1;
 pctrlMain.ActivePage:=tabs21;
 {- - - -- - - - -- - - - -- -- --}
If (dsoDocumento.DataSet.State in [dsInsert, dsEdit])
then
exit
 else
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsoDocumento.DataSet.Insert;
boolInsert:=True;
Disable_Panels(False);
 {- - - -- - - - -- - - - -- -- --}
 dsoDocumento.DataSet.fieldByName('ORA').AsString:=IntToStr(wOra)+'.'+IntToStr(wMin);
 dsoDocumento.DataSet.fieldByName('DATA_DOC').AsDateTime:=Date;
// dsoDocumento.DataSet.fieldByName('DATA_CONSEGNA').AsDateTime:=Date;
dsoDocumento.DataSet.fieldByName('SERIE_DOC2').AsString:=inttostr(wMese);
 dsoDocumento.DataSet.fieldByName('CAUSALE_MAGAZZINO').AsString:=strCAU_MAG;
 dsoDocumento.DataSet.FieldByName('Tipo_Doc').AsInteger:=intTipoDoc;
 dsoDocumento.DataSet.FieldByName('PER_ALTRA_DEST').AsInteger:=0;
 dsoDocumento.DataSet.FieldByName('CODICE_BOLL').AsInteger:=0;
 dsoDocumento.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=intTipoCliFor;
 dsoDocumento.DataSet.FieldByName('NUM_DOC2').AsInteger:=1;


 dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_BOLLI').AsString:=strCodIvaSp_Boll;
 dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_INCASSO').AsString:=strCodIvaSp_Inc;
 dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_IMVALLO').AsString:=strCodIvaSp_Imb;
 dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_CONTRASSEGNO').AsString:=strCodIvaSp_ContrSegn;
 dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_ACCESSIONE').AsString:=strCodIvaSp_Access;
 dsoDocumento.DataSet.fieldByName('COD_IVA_SPESE_SPEDIZIONE').AsString:=strCodIvaSp_Sped;

 dsoDocumento.DataSet.fieldByName('SPESE_SPEDIZIONE').AsCurrency:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_BOLLI').AsCurrency:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_INCASSO').AsCurrency:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_ACCESSORIE').AsCurrency:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_IMBALLO').AsCurrency:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_CONTRASS').AsCurrency:=0;
 if not varisnull(deposito) then
 LookNostrDepCod.KeyValue := deposito;
 dsoDocumento.dataset.Post;
 dsoDocumento.dataset.Edit;

 If (intTipoDoc=23) or (intTipoDoc=24) or (intTipoDoc=27) or (intTipoDoc=335) or (intTipoDoc=336) or (intTipoDoc=31)
  Then Exit;
 Get_Num_Doc;
 dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;
dbeNumero.SetFocus;
end;

procedure TfBaseFormDoc3.tbtnModificaClick(Sender: TObject);
var
tipodoc : Integer;
begin
If (dsoDocumento.DataSet.IsEmpty)
Then Exit;
inherited;
//Panel2.Enabled := true;
if (intTipoDoc=210) or (intTipoDoc=211) or (intTipoDoc=13)or (intTipoDoc=23) then
begin
DBCheckBox1.Enabled := True;

end;
intNewNumDoc:=dsoDocumento.DataSet.fieldByName('NUM_DOC').AsInteger;
Id_docum :=dsoDocumento.DataSet.fieldByName('ID_DOCUMENTO').AsInteger;
IbqUpdoc.Close;
IbqUpdoc.ParamByName('id_doc').AsInteger :=Id_docum;
IbqUpdoc.ExecQuery;
Ibqupdet.Close;
Ibqupdet.ParamByName('id_doc').AsInteger :=Id_docum;
Ibqupdet.ExecQuery;
IBDataSet1.Close;
IBDataSet1.ParamByName('parTipoDoc').AsInTeger:=intTipoDoc;
IBDataSet1.ParamByName('id_doc').AsInTeger:=Id_docum;
IBDataSet1.Open;
IBDataSet2.Open;
strCodCauMag_TMP :=  LookCauMagCod.keyValue;
if DBCheckBox1.Checked then
strCodCauMag_TMP2 := RxDBLookupCombo10.KeyValue;

tbtnNumDoc.Enabled:=False;
tbtnPrint.Enabled:=False;
ToolButton6.Enabled:=False;
ToolButton5.Enabled:=False;
ToolButton11.Enabled:=False;
ToolButton2.Enabled:=False;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsoDocumento.DataSet.Edit;
boolInsert:=False;
tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;
Disable_Panels(False);
//dbeNumero.SetFocus;
end;

procedure TfBaseFormDoc3.tbtnSalvaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
 saveplace2 : TBookmark;
begin
If (dsoRigheDoc.dataset.isEmpty)
Then Exit;
If (LookCauMagCod.KeyValue=Null)
Then Begin
MessageDlg('La Causale magazzino non è stata scelta!',mtWarning,[mbRetry],0);
Exit;
End;
If (dbeNumero.Text='')
Then Begin
MessageDlg('Immettere un numero di documento!!!',mtWarning,[mbRetry],0);
Exit;
End;

If (MessageDlg('Conferma il salvataggio!',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;

Edit2.SetFocus;

If (dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString='')
Then
IF (MessageDlg('Pagamento non selezionato, Continuare ?!',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
then Exit;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
Try
SavePlace2 :=  dsoDocumento.DataSet.GetBookmark;
If (boolInsert) = false then //dsoDocumento.DataSet.State in [dsInsert])
begin
Elimina_Scadenza;
elimina_Contab(int_ID_Docum);
Aggiornamento_Contabilita_TEMP( False);
{
If ((intTipoDoc = 13) or (intTipoDoc = 350) or
   (intTipoDoc = 14) or (intTipoDoc = 210) or (intTipoDoc = 135)) then
Scarico_Distinta2(False);
}
if dist_F=1 then
begin
If ((intTipoDoc = 13) or (intTipoDoc = 14)) then
Scarico_Distinta_R4(False);

If ((intTipoDoc = 235)) then
Scarico_Distinta_R2(False);
end;

if DBCheckBox1.Checked then
Aggiornamento_Contabilita_TEMP2( False);
IbqDel.ExecSQL;
IBDataSet1.Close;
IBDataSet2.Close;
end;
dsoDocumento.DataSet.Edit;
////////
if LookVettoreCod.Text <> '' then
begin
dbeVettore_Ind.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('indirizzo').AsString;

dbeVettore_Ind2.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('citta').AsString+'-'+
  LookVettoreCod.ListSource.DataSet.FieldByName('cap').AsString+'('+
  LookVettoreCod.ListSource.DataSet.FieldByName('prov').AsString+')';
end;
////////
Aggiorna_IVA_Totale;
Calcola_Totali;
If (dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger=1)
Then Azzerare_IVA;
cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;
if dbcbAltraDest.Checked then
dsoDocumento.DataSet.FieldByName('ALTRA_DEST').AsString :=
   RxDBLookupCombo2.Text+' '+RxDBLookupCombo3.Text+' '+
   RxDBLookupCombo4.Text+' '+RxDBLookupCombo5.Text;

If ((boolInsert) and (intTipoDoc<>23)and (intTipoDoc<>24) and (intTipoDoc<>27) and (intTipoDoc<>31) and (intTipoDoc<>336)
        and (intTipoDoc<>335)) THEN
begin
Set_Num_Doc;
if (boolVendita or (intTipoDoc = 135)or (intTipoDoc = 22)) then
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;
end;
dsoDocumento.DataSet.Post ;

//Elimina_Scadenza;
 If (dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString<>'')
  Then
Insert_Scadenza;
If ((intTipoDoc = 24) or (intTipoDoc = 27) or
   (intTipoDoc = 14) or (intTipoDoc = 17) or (intTipoDoc = 25) or (intTipoDoc = 28) or
   (intTipoDoc = 15) or (intTipoDoc = 18))
Then
If (boolVendita)
Then Insert_Contab_Vend(int_ID_Docum)
Else
if Conta_acq='S' then
 Insert_Contab_Acq(int_ID_Docum);

//END
Aggiornamento_Contabilita( True );

{If ((intTipoDoc = 13) or (intTipoDoc = 350) or
   (intTipoDoc = 14) or (intTipoDoc = 210) or (intTipoDoc = 135)) then
Scarico_Distinta(True); }

if dist_F=1 then
begin
If ((intTipoDoc = 13) or (intTipoDoc = 14)) then
Scarico_Distinta_R3(True);

If ((intTipoDoc = 235)) then
Scarico_Distinta_R1(True);
end;
if DBCheckBox1.Checked then
Aggiornamento_Contabilita2( True );

if tipodoc = 151 then
Scarico_Distinta(True);

 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
inherited;
Disable_Panels(True);
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace2);
dsoDocumento.DataSet.FreeBookmark(SavePlace2);

dsoDocumento.DataSet.Locate('ID_DOCUMENTO',int_ID_Docum,[]);
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
 ToolButton6.Enabled:=True;
 ToolButton5.Enabled:=True;
 ToolButton11.Enabled:=True;
 ToolButton2.Enabled:=True;
ToolButton20.Enabled:=True;
ToolButton22.Enabled:=True;

Panel2.Enabled := False;
If (MessageDlg('Stampare?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then tbtnPrint.Click;
end;

procedure TfBaseFormDoc3.tbtnAnullaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
begin
If (MessageDlg('Annullare ?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
SavePlace := dsoDocumento.DataSet.GetBookmark;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
inherited;
If (dsoRigheDoc.DataSet.State in [dsInsert,dsEdit])
Then dsoRigheDoc.DataSet.Cancel;
Disable_Panels(True);
If (dsoDocumento.DataSet.State in [dsEdit]) And Not(boolInsert)
Then
dsoDocumento.DataSet.Cancel;
dmodAz.ibtrDef.Rollback;
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace);
dsoDocumento.DataSet.FreeBookmark(SavePlace);
tbtnNumDoc.Enabled:=True;
Panel2.Enabled := False;
tbtnPrint.Enabled:=True;
ToolButton6.Enabled:=True;
ToolButton5.Enabled:=True;
ToolButton11.Enabled:=True;
ToolButton2.Enabled:=True;
ToolButton20.Enabled:=True;
ToolButton22.Enabled:=True;

tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
end;

procedure TfBaseFormDoc3.tbtnEliminaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
begin
Disable_Panels(True);
boolInsert:=False;

If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
Try
Aggiornamento_Contabilita( False);
{If ((intTipoDoc = 13) or (intTipoDoc = 350) or
   (intTipoDoc = 14) or (intTipoDoc = 210) ) then
//Scarico_Distinta2(False);
Scarico_Distinta(False);}
if dist_F=1 then
begin
If ((intTipoDoc = 13) or (intTipoDoc = 14)) then
Scarico_Distinta_R3(False);

If ((intTipoDoc = 235)) then
Scarico_Distinta_R1(False);
end;

if DBCheckBox1.Checked then
Aggiornamento_Contabilita2( False);

While Not(dsoRigheDoc.DataSet.IsEmpty) Do dsoRigheDoc.DataSet.Delete;
If ((intTipoDoc = 23) or (intTipoDoc = 27) or
   (intTipoDoc = 14) or (intTipoDoc = 17) or (intTipoDoc = 25) or (intTipoDoc = 28))
Then
Begin
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
elimina_Contab(int_ID_Docum);
Elimina_Scadenza;
End;
dsoDocumento.DataSet.Delete;
Del_Num_Doc;
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
ToolButton6.Enabled:=True;
ToolButton5.Enabled:=True;
ToolButton11.Enabled:=True;
ToolButton2.Enabled:=True;
ToolButton20.Enabled:=True;
ToolButton22.Enabled:=True;

Panel2.Enabled := False;
inherited;
 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
Apri;
end;

procedure TfBaseFormDoc3.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoDocumento.DataSet.Prior;
end;

procedure TfBaseFormDoc3.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoDocumento.DataSet.Next;
end;

procedure TfBaseFormDoc3.Get_Num_Doc;
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

procedure TfBaseFormDoc3.Set_Num_Doc;
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

procedure TfBaseFormDoc3.Get_Tab_Name(iTipoDoc: Integer;
  var strTab_Name: String);
begin
if dmodAz.TipoNum = '1' then
begin
  Case (iTipoDoc) of
   11: strTab_Name:='NUM_DOC_VEN_PREV';
   12: strTab_Name:='NUM_DOC_VEN_ORD';
   13: strTab_Name:='NUM_DOC_VEN_DDT';
   135: strTab_Name:='NUM_DOC_VEN_DDT';
   235: strTab_Name:='NUM_ORDINI';
   14: strTab_Name:='NUM_DOC_VEN_FATT';
   15: strTab_Name:='NUM_DOC_VEN_NOTA';
   16: strTab_Name:='NUM_DOC_VEN_BANCO';
   17: strTab_Name:='NUM_DOC_VEN_FATT';
   31: strTab_Name:='NUM_RES_CLI';
   210: strTab_Name:='NUM_BOL_VEN';
   136: strTab_Name:='NUM_BOL_EXT';
   
   18: strTab_Name:='NUM_DOC_VEN_NOTA2';

   21: strTab_Name:='NUM_DOC_ACQ_PREV';
   22: strTab_Name:='NUM_DOC_ACQ_ORD';
   23: strTab_Name:='NUM_DOC_ACQ_DDT';
   335: strTab_Name:='NUM_DOC_ACQ_DDT';
   336: strTab_Name:='NUM_DOC_ACQ_DDT';
   24: strTab_Name:='NUM_DOC_ACQ_FATT';
   25: strTab_Name:='NUM_DOC_ACQ_NOTA';
   32: strTab_Name:='NUM_RES_FOR';
   211: strTab_Name:='NUM_BOL_CAMP';

  151: strTab_Name:='NUM_BOL_CL1';
   27: strTab_Name:='NUM_DOC_ACQ_FATT2';
   28: strTab_Name:='NUM_DOC_ACQ_NOTA2';
   Else strTab_Name:='';
  End;
  end
  else
begin
  Case (iTipoDoc) of
   11: strTab_Name:='NUM_DOC_VEN_PREV';
   12: strTab_Name:='NUM_DOC_VEN_ORD';
   13: strTab_Name:='NUM_DOC_VEN_DDT';
   135: strTab_Name:='NUM_DOC_VEN_DDT';
   235: strTab_Name:='NUM_ORDINI';
   14: strTab_Name:='NUM_DOC_VEN_FATT';
   15: strTab_Name:='NUM_DOC_VEN_NOTA';
   16: strTab_Name:='NUM_DOC_VEN_BANCO';
   17: strTab_Name:='NUM_DOC_VEN_FATT2';
   31: strTab_Name:='NUM_RES_CLI';
   210: strTab_Name:='NUM_BOL_VEN';
   136: strTab_Name:='NUM_BOL_EXT';

   18: strTab_Name:='NUM_DOC_VEN_NOTA2';

   21: strTab_Name:='NUM_DOC_ACQ_PREV';
   22: strTab_Name:='NUM_DOC_ACQ_ORD';
   23: strTab_Name:='NUM_DOC_ACQ_DDT';
   335: strTab_Name:='NUM_DOC_ACQ_DDT';
   336: strTab_Name:='NUM_DOC_ACQ_DDT';
   24: strTab_Name:='NUM_DOC_ACQ_FATT';
   25: strTab_Name:='NUM_DOC_ACQ_NOTA';
   32: strTab_Name:='NUM_RES_FOR';
   211: strTab_Name:='NUM_BOL_CAMP';

  151: strTab_Name:='NUM_BOL_CL1';
   27: strTab_Name:='NUM_DOC_ACQ_FATT2';
   28: strTab_Name:='NUM_DOC_ACQ_NOTA2';
   Else strTab_Name:='';
  End;
  end;

if dmodAz.TipoNum = '5' then
begin
  Case (iTipoDoc) of
   11: strTab_Name:='NUM_DOC_VEN_PREV';
   12: strTab_Name:='NUM_DOC_VEN_ORD';
   13: strTab_Name:='NUM_DOC_VEN_DDT';
   135: strTab_Name:='NUM_DOC_VEN_DDT';
   235: strTab_Name:='NUM_ORDINI';
   14: strTab_Name:='NUM_DOC_VEN_FATT';
   15: strTab_Name:='NUM_DOC_VEN_FATT';
   16: strTab_Name:='NUM_DOC_VEN_BANCO';
   17: strTab_Name:='NUM_DOC_VEN_FATT';
   31: strTab_Name:='NUM_RES_CLI';
   210: strTab_Name:='NUM_BOL_VEN';
   136: strTab_Name:='NUM_BOL_EXT';

   18: strTab_Name:='NUM_DOC_VEN_NOTA2';

   21: strTab_Name:='NUM_DOC_ACQ_PREV';
   22: strTab_Name:='NUM_DOC_ACQ_ORD';
   23: strTab_Name:='NUM_DOC_ACQ_DDT';
   335: strTab_Name:='NUM_DOC_ACQ_DDT';
   336: strTab_Name:='NUM_DOC_ACQ_DDT';
   24: strTab_Name:='NUM_DOC_ACQ_FATT';
   25: strTab_Name:='NUM_DOC_ACQ_NOTA';
   32: strTab_Name:='NUM_RES_FOR';
   211: strTab_Name:='NUM_BOL_CAMP';

  151: strTab_Name:='NUM_BOL_CL1';
   27: strTab_Name:='NUM_DOC_ACQ_FATT2';
   28: strTab_Name:='NUM_DOC_ACQ_NOTA2';
   Else strTab_Name:='';
  End;
END;
end;

procedure TfBaseFormDoc3.tbtnNumDocClick(Sender: TObject);
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

procedure TfBaseFormDoc3.FormShow(Sender: TObject);
begin
Apri;
Disable_Panels(True);
pctrlMain.ActivePage:=tabs1;
pctrlRighe.ActivePage:=tabs21;
inherited;
With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
begin
deposito := ReadString('INFO','DEP','.');
Conta_acq:=ReadString('INFO','CONT_ACQ','.');
dist_F := strtoint(ReadString('INFO','DIST','.'));
if ReadString('INFO','CORE','.') = 'C'
then
begin
LookCliForDescr.Visible := False;
dbeIndirizzo_cli_for.Visible := False;
dbeIndirizzo_cli_for2.Visible := False;
end;
If (boolVendita) Then
Begin
laCliFor.Caption:='Cliente';
LookCliForCod.LookupSource:=dmodAz.dsoqTabCli;
LookCliForDescr.LookupSource:=dmodAz.dsoqTabCli;
DBCheckBox1.caption := 'Trasf. a'
End
Else
Begin
laCliFor.Caption:='Fornitore';
LookCliForCod.LookupSource:=dmodAz.dsoqTabFor;
LookCliForDescr.LookupSource:=dmodAz.dsoqTabFor;
DBCheckBox1.caption := 'Preleva da'
end;
Free;
end;
if (intTipoDoc=17) or (intTipoDoc=27) then
ToolButton24.Visible := true;
/////////////////
end;

procedure TfBaseFormDoc3.dbgRigheDblClick(Sender: TObject);
begin
 tbtnaEdit.Click;
end;

procedure TfBaseFormDoc3.Del_Num_Doc;
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

procedure TfBaseFormDoc3.tbtnaInsertClick(Sender: TObject);
Var
 strTipo_Serv: String;
 iNRiga: Integer;
begin
If (tbtnEsci.Enabled)
Then Exit;
If (LookNostrDepCod.KeyValue=null)
Then Begin
MessageDlg('Scegli un deposito!!',mtWarning,[mbOK],0);
exit;
End;
If (LookCliForCod.KeyValue=null)
Then Begin
MessageDlg('Scegli un '+laCliFor.Caption+'.',mtWarning,[mbOK],0);
exit;
End;
Try
Case (Application.MessageBox( 'Se vuoi inserire un Articolo premi "Si",'+
      #13+'Se vuoi inserire un Servizio premi "No",'+
      #13+'"Annulla" - per Fuori Magazzino.','Scegli'
      ,MB_YESNOCANCEL+MB_ICONQUESTION)) Of
   ID_Yes:    strTipo_Serv:='ARTICOLO';
   ID_No:     strTipo_Serv:='SERVIZIO';
   ID_Cancel: strTipo_Serv:='FUORI MAGAZZINO'
Else  strTipo_Serv:='ARTICOLO'
End;
nuovissimo := True;
fDocArt := TfDocArt.Create(Self);
fDocArt.boolNuovo:=True;
fDocArt.boolModifica:=False;
fDocArt.boolDoc_Vendita:=boolVendita;
fDocArt.Agg_Check.Checked := True;
fDocArt.intID_Doc:=dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
fDocArt.iCliForID:=LookCliForCod.Field.AsInteger;
fDocArt.strCodDep:=LookNostrDepCod.KeyValue;
fDocArt.strTipo_Servizio:=strTipo_Serv;
fDocArt.strCodiceListino:=dbeListino.Field.AsString;
fDocArt.dSc1:=dbeSconto1.Field.AsFloat;
fDocArt.dSc2:=dbeSconto2.Field.AsFloat;
fDocArt.dScM:=dbeImportoSconto.Field.AsCurrency;
fDocArt.Prov:=RxDBCalcEdit6.Value;
fDocArt.ShowModal;
iNRiga:=fDocArt.iNumero_Riga;
fDocArt.Free;
Aggiorna_IVA(True,iNRiga);
Except
End;
Calcola_Totali;
End;

procedure TfBaseFormDoc3.tbtnaEditClick(Sender: TObject);
Var
 iNRiga: Integer;
 saveplace3 : TBookmark;
begin
If (tbtnEsci.Enabled)
   Then Exit;
If (dsoRigheDoc.dataset.isEmpty)
   Then Exit;
iNRiga:= dsoRigheDoc.DataSet.fieldByName('NUM_RIGA_ID').AsInteger;
Try
Aggiorna_IVA(False,iNRiga);
fDocArt := TfDocArt.Create(Self);
fDocArt.boolNuovo:=False;
fDocArt.strCodiceListino:=dbeListino.Field.AsString;
fDocArt.boolModifica:=True;
fDocArt.boolDoc_Vendita:=boolVendita;
fDocArt.iCliForID:=LookCliForCod.Field.AsInteger;
fDocArt.intID_Doc:=dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
fDocArt.ShowModal;
iNRiga:=fDocArt.iNumero_Riga;
fDocArt.Free;
Aggiorna_IVA(True,iNRiga);
Except
End;
Calcola_Totali;
end;

procedure TfBaseFormDoc3.tbtnaDelClick(Sender: TObject);
Var
 iNRiga: Integer;
begin
If (tbtnEsci.Enabled)
Then Exit;
If (dsoRigheDoc.dataset.isEmpty)
Then Exit;
If (MessageDlg('Eliminare riga?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then  Begin
iNRiga:= dsoRigheDoc.DataSet.fieldByName('NUM_RIGA_ID').AsInteger;
Aggiorna_IVA(False,iNRiga);
dsoRigheDoc.DataSet.Delete;
Calcola_Totali;
end;

end;

procedure TfBaseFormDoc3.edNumRigaLocateKeyPress(Sender: TObject;var Key: Char);
begin
  inherited;
If ((Key=#13)And(Not(edNumRigaLocate.Text='')))
then begin
dsoRigheDoc.DataSet.BlockReadSize := 1;
Locate_Riga;
dsoRigheDoc.DataSet.BlockReadSize := 0;
end;
end;

procedure TfBaseFormDoc3.edNumRigaLocateChange(Sender: TObject);
begin
 Try
  If Not(edNumRigaLocate.Text='')
   Then StrToInt(edNumRigaLocate.Text);
 Except
   edNumRigaLocate.Text:='1';
 End;
end;

procedure TfBaseFormDoc3.Locate_Riga;
begin
Try
If Not(dbgRighe.DataSource.DataSet.Locate('NUM_RIGA_ID',StrToInt(edNumRigaLocate.Text),[]))
Then Beep;
Beep;
Except
End;
end;

procedure TfBaseFormDoc3.Disable_Panels(bDisAb: Boolean);
begin
 pa1.Enabled:=Not(bDisAb);
 pa2.Enabled:=Not(bDisAb);
 pa4.Enabled:=Not(bDisAb);
 pa5.Enabled:=Not(bDisAb);
 pa6.Enabled:=Not(bDisAb);
 paCastIVA.Enabled:=Not(bDisAb);
 paContabili.Enabled:=Not(bDisAb);
 paAltro.Enabled:=Not(bDisAb);
 paAdds.Enabled:=Not(bDisAb);
end;


procedure TfBaseFormDoc3.Aggiornamento_Contabilita(bNormale: Boolean);
Var
 strCodArt,strCodDep,strCodCauMag: String;
 iNormal: Integer;
 dPrezzo : Currency;
 dIva,a1,a2 : double;
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

 dsoRigheDoc.DataSet.BlockReadSize:=1;
 dsoRigheDoc.DataSet.First;
 ibqryDetDoc.Open;
 ibqCont_Art.Open;
 ibq_aggArt.Open;
// With (dmodAz) Do
a1:=0;
if dsoDocumento.DataSet.FieldByName('TOTALE_MERCE').AsCurrency <> 0
then begin
a1:= dsoDocumento.DataSet.FieldByName('TOT_SPESE').AsCurrency*100/dsoDocumento.DataSet.FieldByName('TOTALE_MERCE').AsCurrency;
RxCalcEdit1.Value := a1;
end;

  While Not(dsoRigheDoc.DataSet.EoF) Do
  Begin
  if not varisnull(dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsVariant)  then
  begin

   If (dsoRigheDoc.DataSet.Fieldbyname('Rif_a').AsInteger=1)
    Then
     Begin
      Try
      if not ibqryDetDoc.IsEmpty
       Then Begin
       ibqryDetDoc.Edit;
       ibqryDetDoc.FIeldByName('OP_QTA_GIACENZA').AsFloat:=
       ibqryDetDoc.FieldByNAme('OP_QTA_GIACENZA').AsFloat+1*iNormal*
       dsoRigheDoc.DataSet.fieldbyname('QUANTITA').AsFloat;
       ibqryDetDoc.Post;
       End;
        Except
       End;
       End;

   If (dsoRigheDoc.DataSet.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
{
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;
           ibqCont_Art.Open;
}


Try
If (ibqCont_Art.IsEmpty)
Then Begin
ibqCont_Art.Insert;
ibqCont_ArtCODICE_ARTICOLO.AsString:=dsoRigheDoc.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
ibqCont_ArtDEPOSITO_ID.AsString:=trim(dsoRigheDoc.DataSet.fieldbyname('DEP').AsString);
End
Else ibqCont_Art.Edit;

ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat :=
 ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
 dsoCauMag.DataSet.FieldByName('QTA_ACQUISTI').AsFloat;
ibqCont_Art.FieldByName('VAL_ACQUISTI').AsCurrency := ibqCont_Art.FieldByName('VAL_ACQUISTI').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ACQUISTI').AsCurrency;
ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat := ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_VENDITA').AsFloat;
ibqCont_Art.FieldByName('VAL_VENDITA').AsCurrency := ibqCont_Art.FieldByName('VAL_VENDITA').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_VENDITA').AsCurrency;
{
Try
if (boolVendita)
Then ibqCont_Art.FieldByName('ULT_PREZZO_VEND').AsFloat := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1
Else
begin
ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsFloat := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;

a1:= dsoDocumento.DataSet.FieldByName('TOT_SPESE').AsFloat*100/dsoDocumento.DataSet.FieldByName('TOTALE_MERCE').AsFloat;
RxCalcEdit1.Value := a1;
//ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsFloat ;
if dsoRigheDoc.DataSet.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt.Edit;
ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
if ibq_aggArt.FieldByName('NON_STAMPA_REGISTRO').AsInteger = 1 then
begin
dPrezzo := ((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1) +
((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1)*
 ibq_aggArt.FieldByName('RICARPREC').AsFloat/100;

ibq_aggArt.FieldByName('PREZZO_BASE').AsFloat := dPrezzo;

ibq_aggArt.FieldByName('PREZZO_IVATO').AsFloat := (dPrezzo*(1+ibq_aggArt.FieldByName('CODICE_IVA_ID').AsFloat/100));
end;
ibq_aggArt.Post;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////
end
Except
End;

If Not(ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art.FieldByName('MED_PREZZO_VEND').AsFloat := (ibqCont_Art.FieldByName('VAL_VENDITA').AsFloat / ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat)/1;
If Not(ibqCont_Art.FieldByName('QTA_ACQUISTi').AsFloat=0)
Then  ibqCont_Art.FieldByName('MEDIO_COSTO_ACQ').AsFloat := (ibqCont_Art.FieldByName('VAL_ACQUISTi').AsFloat / ibqCont_Art.FieldByName('QTA_ACQUISTi').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1)
Then ibqCont_Art.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1)
Then ibqCont_Art.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsFloat=1)
Then ibqCont_Art.FieldByName('COSTO_ULTIMO').AsFloat := dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
}


ibqCont_Art.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat := ibqCont_Art.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat;
ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency := ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency;

try
begin
if (ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency <> 0) then
ibqCont_Art.FieldByName('COSTO_GIACENZA_INIZIALE').AsCurrency := (ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency/ibqCont_Art.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat)/1 ;
end
except
end;

Try
if (boolVendita) Then
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1) Then
begin
ibqCont_Art.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
ibqCont_Art.FieldByName('ULT_PREZZO_VEND').AsCurrency := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
If Not(ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art.FieldByName('MED_PREZZO_VEND').AsCurrency := (ibqCont_Art.FieldByName('VAL_VENDITA').AsFloat / ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat)/1;
end
end
Else
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1) Then
begin
ibqCont_Art.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsCurrency := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsCurrency=1) Then
begin
 ibqCont_Art.FieldByName('COSTO_ULTIMO').AsCurrency := dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency;
 ibqCont_Art.FieldByName('PRETAGLIO').AsFloat := dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency+
                (dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency*a1/100);
a2:=ibqCont_Art.FieldByName('VAL_ACQUISTi').AsCurrency+
                (ibqCont_Art.FieldByName('VAL_ACQUISTi').AsCurrency*a1/100);
If Not(ibqCont_Art.FieldByName('QTA_ACQUISTi').AsFloat=0)
Then begin
ibqCont_Art.FieldByName('MEDIO_COSTO_ACQ').AsCurrency :=
((ibqCont_Art.FieldByName('VAL_ACQUISTi').AsCurrency+ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency)
 / (ibqCont_Art.FieldByName('QTA_ACQUISTi').AsFloat+ibqCont_Art.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat))/1;
ibqCont_Art.FieldByName('MEDIA_SPESE').AsCurrency := (a2 / ibqCont_Art.FieldByName('QTA_ACQUISTi').AsFloat)/1;
end;

 //ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsFloat ;
end;
if dsoRigheDoc.DataSet.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt.Edit;
ibq_aggArt.FieldByName('COSTO_STANDART').AsCurrency :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
if ibq_aggArt.FieldByName('NON_STAMPA_REGISTRO').AsInteger = 1 then
begin
dPrezzo := ((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1) +
((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1)*
 ibq_aggArt.FieldByName('RICARPREC').AsFloat/100;

ibq_aggArt.FieldByName('PREZZO_BASE').AsCurrency := dPrezzo;

ibq_aggArt.FieldByName('PREZZO_IVATO').AsCurrency := (dPrezzo*(1+ibq_aggArt.FieldByName('CODICE_IVA_ID').AsFloat/100));
end;
ibq_aggArt.Post;
end;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////

end
Except
End;


ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_ENTRATE').AsFloat;
ibqCont_Art.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency := dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency;
ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_USCITE').AsFloat;
ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsCurrency := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPOrTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_USCITE').AsCurrency;
ibqCont_Art.FieldByName('QTA_ORDINATO').AsFloat := ibqCont_Art.FieldByName('QTA_ORDINATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ORDINATO').AsFloat;
ibqCont_Art.FieldByName('VAL_ORDINATO').AsCurrency := ibqCont_Art.FieldByName('VAL_ORDINATO').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ORDINATO').AsCurrency;
ibqCont_Art.FieldByName('QTA_IMPEGNATO').AsFloat := ibqCont_Art.FieldByName('QTA_IMPEGNATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_IMPEGNATO').AsFloat;
ibqCont_Art.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency := ibqCont_Art.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_IMPEGNATO').AsCurrency;
ibqCont_Art.FieldByName('QTA_EVASA_CLIENTE').AsFloat := ibqCont_Art.FieldByName('QTA_EVASA_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_CLIENTE').AsFloat;
ibqCont_Art.FieldByName('VAL_EVASo_CLIENTE').AsCurrency := ibqCont_Art.FieldByName('VAL_EVASo_CLIENTE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_EVASo_CLIENTE').AsCurrency;
ibqCont_Art.FieldByName('QTA_EVASA_FORNITORE').AsFloat := ibqCont_Art.FieldByName('QTA_EVASA_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_FORNITORE').AsFloat;
ibqCont_Art.FieldByName('VAL_EVASo_FORNITORE').AsCurrency := ibqCont_Art.FieldByName('VAL_EVASo_FORNITORE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_EVASo_FORNITORE').AsCurrency;
ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat := ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_CLIENTE').AsFloat;
ibqCont_Art.FieldByName('VAL_RESO_CLIENTE').AsCurrency := ibqCont_Art.FieldByName('VAL_RESO_CLIENTE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_CLIENTE').AsCurrency;
ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat := ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_FORNITORE').AsFloat;
ibqCont_Art.FieldByName('VAL_RESO_FORNITORE').AsCurrency := ibqCont_Art.FieldByName('VAL_RESO_FORNITORE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_FORNITORE').AsCurrency;
if dmodAz.Acc = 0 then
ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +
    ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat
    -ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat-ibqCont_Art.FieldByName('QTA_ORDINATO').AsFloat
    +ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat +
    ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat+ibqCont_Art.FieldByName('QTA_EVASA_CLIENTE').AsFloat- ibqCont_Art.FieldByName('QTA_IMPEGNATO').AsFloat
else
ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
 ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat - ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
 ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

ibqCont_Art.Post;
Except
ibqCont_Art.Post;
End;
End;
end;

dsoRigheDoc.DataSet.Next;
  End;
 dsoRigheDoc.DataSet.BlockReadSize:=0;
ibqCont_Art.Close;
end;

procedure TfBaseFormDoc3.Aggiornamento_Contabilita2(bNormale: Boolean);
Var
 strCodArt,strCodDep,strCodCauMag: String;
 iNormal: Integer;
 a1:double;
begin
 // Aggiornamento contabile articolo.
 If (bNormale)
   Then iNormal := 1
   Else iNormal := -1;
 strCodCauMag:=RxDBLookupCombo10.KeyValue;
 dsoCauMag.DataSet.Locate('CODICE_CAUSALE',strCodCauMag,[]);

 dsoRigheDoc.DataSet.BlockReadSize:=1;
 dsoRigheDoc.DataSet.First;
 ibqryDetDoc.Open;
 ibqCont_Art2.ParamByName('ID_DEP').AsString:=trim(dsoDocumento.DataSet.fieldbyname('CONTRO_DEPOSITO').AsString);
 ibqCont_Art2.Open;
 ibq_aggArt.Open;
// With (dmodAz) Do
  While Not(dsoRigheDoc.DataSet.EoF) Do
  Begin
  if not varisnull(dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsVariant)  then
  begin

   If (dsoRigheDoc.DataSet.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
{
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;
           ibqCont_Art.Open;
}
Try
If (ibqCont_Art2.IsEmpty)
Then Begin
ibqCont_Art2.Insert;
ibqCont_Art2CODICE_ARTICOLO.AsString:=dsoRigheDoc.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
ibqCont_Art2DEPOSITO_ID.AsString:=trim(dsoDocumento.DataSet.fieldbyname('CONTRO_DEPOSITO').AsString);
End
Else ibqCont_Art2.Edit;

ibqCont_Art2.FieldByName('QTA_ACQUISTI').AsFloat :=
 ibqCont_Art2.FieldByName('QTA_ACQUISTI').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
 dsoCauMag.DataSet.FieldByName('QTA_ACQUISTI').AsFloat;
ibqCont_Art2.FieldByName('VAL_ACQUISTI').AsCurrency := ibqCont_Art2.FieldByName('VAL_ACQUISTI').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ACQUISTI').AsCurrency;
ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat := ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_VENDITA').AsFloat;
ibqCont_Art2.FieldByName('VAL_VENDITA').AsCurrency := ibqCont_Art2.FieldByName('VAL_VENDITA').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_VENDITA').AsCurrency;

Try
if (boolVendita) Then
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1) Then
begin
ibqCont_Art2.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
ibqCont_Art2.FieldByName('ULT_PREZZO_VEND').AsCurrency := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
If Not(ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art2.FieldByName('MED_PREZZO_VEND').AsCurrency := (ibqCont_Art2.FieldByName('VAL_VENDITA').AsCurrency / ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat)/1;
end
end
Else
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1) Then
begin
If Not(ibqCont_Art2.FieldByName('QTA_ACQUISTI').AsFloat=0)
Then
ibqCont_Art2.FieldByName('MEDIO_COSTO_ACQ').AsCurrency :=
((ibqCont_Art2.FieldByName('VAL_ACQUISTi').AsCurrency+ibqCont_Art2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency)
 / (ibqCont_Art2.FieldByName('QTA_ACQUISTi').AsFloat+ibqCont_Art2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat))/1;

ibqCont_Art2.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
ibqCont_Art2.FieldByName('ULT_COSTO_ACQ').AsCurrency := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsCurrency=1)
Then ibqCont_Art2.FieldByName('COSTO_ULTIMO').AsCurrency := dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency;
a1:= dsoDocumento.DataSet.FieldByName('TOT_SPESE').AsCurrency*100/dsoDocumento.DataSet.FieldByName('TOTALE_MERCE').AsCurrency;
RxCalcEdit1.Value := a1;
//ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsFloat ;
if dsoRigheDoc.DataSet.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt.Edit;
ibq_aggArt.FieldByName('COSTO_STANDART').AsCurrency :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
{
if ibq_aggArt.FieldByName('NON_STAMPA_REGISTRO').AsInteger = 1 then
begin
dPrezzo := ((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1) +
((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1)*
 ibq_aggArt.FieldByName('RICARPREC').AsFloat/100;

ibq_aggArt.FieldByName('PREZZO_BASE').AsFloat := dPrezzo;

ibq_aggArt.FieldByName('PREZZO_IVATO').AsFloat := (dPrezzo*(1+ibq_aggArt.FieldByName('CODICE_IVA_ID').AsFloat/100));
end;
}
ibq_aggArt.Post;
end;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////

end
Except
End;




{
Try
if (boolVendita)
Then ibqCont_Art2.FieldByName('ULT_PREZZO_VEND').AsFloat := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1
Else
begin
ibqCont_Art2.FieldByName('ULT_COSTO_ACQ').AsFloat := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
if dsoRigheDoc.DataSet.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt.Edit;
ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
ibq_aggArt.Post;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////
end
Except
End;

If Not(ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art2.FieldByName('MED_PREZZO_VEND').AsFloat := (ibqCont_Art2.FieldByName('VAL_VENDITA').AsFloat / ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat)/1;
If Not(ibqCont_Art2.FieldByName('QTA_ACQUISTi').AsFloat=0)
Then  ibqCont_Art2.FieldByName('MEDIO_COSTO_ACQ').AsFloat := (ibqCont_Art2.FieldByName('VAL_ACQUISTi').AsFloat / ibqCont_Art2.FieldByName('QTA_ACQUISTi').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1)
Then ibqCont_Art2.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1)
Then ibqCont_Art2.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsFloat=1)
Then ibqCont_Art2.FieldByName('COSTO_ULTIMO').AsFloat := dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;


}
ibqCont_Art2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat := ibqCont_Art2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat;
ibqCont_Art2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency := ibqCont_Art2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency;
try
begin
if (ibqCont_Art2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency <> 0) then
ibqCont_Art2.FieldByName('COSTO_GIACENZA_INIZIALE').AsCurrency := (ibqCont_Art2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency/ibqCont_Art2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat)/1 ;
end
except
end;
ibqCont_Art2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat := ibqCont_Art2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_ENTRATE').AsFloat;
ibqCont_Art2.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency := dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency;
ibqCont_Art2.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art2.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_USCITE').AsFloat;
ibqCont_Art2.FieldByName('VAL_ALTRE_USCITA').AsCurrency := ibqCont_Art2.FieldByName('VAL_ALTRE_USCITA').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPOrTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_USCITE').AsCurrency;
ibqCont_Art2.FieldByName('QTA_ORDINATO').AsFloat := ibqCont_Art2.FieldByName('QTA_ORDINATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ORDINATO').AsFloat;
ibqCont_Art2.FieldByName('VAL_ORDINATO').AsCurrency := ibqCont_Art2.FieldByName('VAL_ORDINATO').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ORDINATO').AsCurrency;
ibqCont_Art2.FieldByName('QTA_IMPEGNATO').AsFloat := ibqCont_Art2.FieldByName('QTA_IMPEGNATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_IMPEGNATO').AsFloat;
ibqCont_Art2.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency := ibqCont_Art2.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_IMPEGNATO').AsCurrency;
ibqCont_Art2.FieldByName('QTA_EVASA_CLIENTE').AsFloat := ibqCont_Art2.FieldByName('QTA_EVASA_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_CLIENTE').AsFloat;
ibqCont_Art2.FieldByName('VAL_EVASo_CLIENTE').AsCurrency := ibqCont_Art2.FieldByName('VAL_EVASo_CLIENTE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_EVASo_CLIENTE').AsCurrency;
ibqCont_Art2.FieldByName('QTA_EVASA_FORNITORE').AsFloat := ibqCont_Art2.FieldByName('QTA_EVASA_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_FORNITORE').AsFloat;
ibqCont_Art2.FieldByName('VAL_EVASo_FORNITORE').AsCurrency := ibqCont_Art2.FieldByName('VAL_EVASo_FORNITORE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_EVASo_FORNITORE').AsCurrency;
ibqCont_Art2.FieldByName('QTA_RESO_CLIENTE').AsFloat := ibqCont_Art2.FieldByName('QTA_RESO_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_CLIENTE').AsFloat;
ibqCont_Art2.FieldByName('VAL_RESO_CLIENTE').AsCurrency := ibqCont_Art2.FieldByName('VAL_RESO_CLIENTE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_CLIENTE').AsCurrency;
ibqCont_Art2.FieldByName('QTA_RESO_FORNITORE').AsFloat := ibqCont_Art2.FieldByName('QTA_RESO_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_FORNITORE').AsFloat;
ibqCont_Art2.FieldByName('VAL_RESO_FORNITORE').AsCurrency := ibqCont_Art2.FieldByName('VAL_RESO_FORNITORE').AsCurrency + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_FORNITORE').AsCurrency;

if dmodAz.Acc = 0 then
ibqCont_Art2.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art2.FieldByName('QTA_ACQUISTI').AsFloat +
    ibqCont_Art2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat
    -ibqCont_Art2.FieldByName('QTA_RESO_FORNITORE').AsFloat
    +ibqCont_Art2.FieldByName('QTA_RESO_CLIENTE').AsFloat +
    ibqCont_Art2.FieldByName('qta_GIACENZA_INIZIALE').AsFloat+ibqCont_Art2.FieldByName('QTA_EVASA_CLIENTE').AsFloat - ibqCont_Art2.FieldByName('QTA_IMPEGNATO').AsFloat
else
 ibqCont_Art2.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art2.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art2.FieldByName('QTA_VENDITA').AsFloat -
 ibqCont_Art2.FieldByName('QTA_ALTRE_USCITE').AsFloat - ibqCont_Art2.FieldByName('QTA_RESO_FORNITORE').AsFloat +
 ibqCont_Art2.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art2.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

ibqCont_Art2.Post;
Except
ibqCont_Art2.Post;
End;
End;
end;
dsoRigheDoc.DataSet.Next;
  End;
 dsoRigheDoc.DataSet.BlockReadSize:=0;
ibqCont_Art2.Close;
end;


procedure TfBaseFormDoc3.Aggiornamento_Contabilita_TEMP(bNormale: Boolean);
Var
 strCodArt,strCodDep,strCodCauMag: String;
 iNormal: Integer;
 a1:double;
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
 strCodCauMag:= strCodCauMag_TMP;
 dsoCauMag.DataSet.Locate('CODICE_CAUSALE',strCodCauMag,[]);

 IBDataSet2.BlockReadSize:=1;
 IBDataSet2.First;
 ibqryDetDoc.Open;
 ibqCont_Art_tmp.Open;
 ibq_aggArt_tmp.Open;
// With (dmodAz) Do
  While Not(IBDataSet2.EoF) Do
  Begin
  if not varisnull(IBDataSet2.FieldByName('QUANTITA').AsVariant)  then
  begin

   If (IBDataSet2.Fieldbyname('Rif_a').AsInteger=1)
    Then
     Begin
      Try
      if not ibqryDetDoc.IsEmpty
       Then Begin
       ibqryDetDoc.Edit;
       ibqryDetDoc.FIeldByName('OP_QTA_GIACENZA').AsFloat:=
       ibqryDetDoc.FieldByNAme('OP_QTA_GIACENZA').AsFloat+1*iNormal*
       IBDataSet2.fieldbyname('QTA').AsFloat;
       ibqryDetDoc.Post;
       End;
        Except
       End;
       End;

   If (IBDataSet2.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
{
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;
           ibqCont_Art.Open;
}
Try
If (ibqCont_Art_tmp.IsEmpty)
Then Begin
ibqCont_Art_tmp.Insert;
ibqCont_Art_tmpCODICE_ARTICOLO.AsString:=IBDataSet2.fieldbyname('CODICE_ARTICOLO').AsString;
ibqCont_Art_tmpDEPOSITO_ID.AsString:=trim(IBDataSet2.fieldbyname('DEP').AsString);
End
Else ibqCont_Art_tmp.Edit;

ibqCont_Art_tmp.FieldByName('QTA_ACQUISTI').AsFloat :=
 ibqCont_Art_tmp.FieldByName('QTA_ACQUISTI').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat *
 dsoCauMag.DataSet.FieldByName('QTA_ACQUISTI').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_ACQUISTI').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_ACQUISTI').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ACQUISTI').AsCurrency;
ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_VENDITA').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_VENDITA').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_VENDITA').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_VENDITA').AsCurrency;

Try
if (boolVendita) Then
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1) Then
begin
ibqCont_Art_tmp.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
ibqCont_Art_tmp.FieldByName('ULT_PREZZO_VEND').AsCurrency := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
If Not(ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art_tmp.FieldByName('MED_PREZZO_VEND').AsCurrency := (ibqCont_Art_tmp.FieldByName('VAL_VENDITA').AsCurrency / ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat)/1;
end
end
Else
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1) Then
begin
If Not(ibqCont_Art_tmp.FieldByName('QTA_ACQUISTi').AsFloat=0)
Then
ibqCont_Art_tmp.FieldByName('MEDIO_COSTO_ACQ').AsCurrency :=
((ibqCont_Art_tmp.FieldByName('VAL_ACQUISTi').AsCurrency+ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency)
 / (ibqCont_Art_tmp.FieldByName('QTA_ACQUISTi').AsFloat+ibqCont_Art_tmp.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat))/1;

ibqCont_Art_tmp.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
ibqCont_Art_tmp.FieldByName('ULT_COSTO_ACQ').AsCurrency := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsCurrency=1)
Then ibqCont_Art_tmp.FieldByName('COSTO_ULTIMO').AsCurrency := IBDataSet2.FieldByName('COSTO').AsCurrency;
//a1:= dsoDocumento.DataSet.FieldByName('TOT_SPESE').AsFloat*100/dsoDocumento.DataSet.FieldByName('TOTALE_MERCE').AsFloat;
//RxCalcEdit1.Value := a1;
//ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsFloat ;
if IBDataSet2.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt_tmp.Edit;
ibq_aggArt_tmp.FieldByName('COSTO_STANDART').AsCurrency :=(IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
{
if ibq_aggArt.FieldByName('NON_STAMPA_REGISTRO').AsInteger = 1 then
begin
dPrezzo := ((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1) +
((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1)*
 ibq_aggArt.FieldByName('RICARPREC').AsFloat/100;

ibq_aggArt.FieldByName('PREZZO_BASE').AsFloat := dPrezzo;

ibq_aggArt.FieldByName('PREZZO_IVATO').AsFloat := (dPrezzo*(1+ibq_aggArt.FieldByName('CODICE_IVA_ID').AsFloat/100));
end;
}
ibq_aggArt_tmp.Post;
end;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////

end
Except
End;
{
Try
if (boolVendita)
Then  ibqCont_Art_tmp.FieldByName('ULT_PREZZO_VEND').AsFloat := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1
Else
begin
ibqCont_Art_tmp.FieldByName('ULT_COSTO_ACQ').AsFloat := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
if IBDataSet2.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt_tmp.Edit;
ibq_aggArt_tmp.FieldByName('COSTO_STANDART').AsFloat :=(IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
ibq_aggArt_tmp.post;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////
end

except
End;

If Not(ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art_tmp.FieldByName('MED_PREZZO_VEND').AsFloat := (ibqCont_Art_tmp.FieldByName('VAL_VENDITA').AsFloat / ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat)/1;
If Not(ibqCont_Art_tmp.FieldByName('QTA_ACQUISTi').AsFloat=0)
Then  ibqCont_Art_tmp.FieldByName('MEDIO_COSTO_ACQ').AsFloat := (ibqCont_Art_tmp.FieldByName('VAL_ACQUISTi').AsFloat / ibqCont_Art_tmp.FieldByName('QTA_ACQUISTi').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1)
Then ibqCont_Art_tmp.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1)
Then ibqCont_Art_tmp.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsFloat=1)
Then ibqCont_Art_tmp.FieldByName('COSTO_ULTIMO').AsFloat := IBDataSet2.FieldByName('COSTO').AsFloat;

}
ibqCont_Art_tmp.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency;
try
begin
if (ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency <> 0) then
ibqCont_Art_tmp.FieldByName('COSTO_GIACENZA_INIZIALE').AsCurrency := (ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency/ibqCont_Art_tmp.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat)/1 ;
end
except
end;
ibqCont_Art_tmp.FieldByName('QTA_ALTRE_ENTRATE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ALTRE_ENTRATE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_ENTRATE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency := dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency;
ibqCont_Art_tmp.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_USCITE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_ALTRE_USCITA').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_ALTRE_USCITA').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPOrTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_USCITE').AsCurrency;
ibqCont_Art_tmp.FieldByName('QTA_ORDINATO').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ORDINATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ORDINATO').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_ORDINATO').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_ORDINATO').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ORDINATO').AsCurrency;
ibqCont_Art_tmp.FieldByName('QTA_IMPEGNATO').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_IMPEGNATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_IMPEGNATO').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_IMPEGNATO').AsCurrency;
ibqCont_Art_tmp.FieldByName('QTA_EVASA_CLIENTE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_EVASA_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_CLIENTE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_EVASo_CLIENTE').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_EVASo_CLIENTE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_EVASo_CLIENTE').AsCurrency;
ibqCont_Art_tmp.FieldByName('QTA_EVASA_FORNITORE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_EVASA_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_FORNITORE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_EVASo_FORNITORE').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_EVASo_FORNITORE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_EVASo_FORNITORE').AsCurrency;
ibqCont_Art_tmp.FieldByName('QTA_RESO_CLIENTE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_RESO_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_CLIENTE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_RESO_CLIENTE').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_RESO_CLIENTE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_CLIENTE').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_RESO_FORNITORE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_RESO_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_FORNITORE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_RESO_FORNITORE').AsCurrency := ibqCont_Art_tmp.FieldByName('VAL_RESO_FORNITORE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_FORNITORE').AsCurrency;

 if dmodAz.Acc = 0 then
ibqCont_Art_tmp.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ACQUISTI').AsFloat +
    ibqCont_Art_tmp.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat
    -ibqCont_Art_tmp.FieldByName('QTA_RESO_FORNITORE').AsFloat
    +ibqCont_Art_tmp.FieldByName('QTA_RESO_CLIENTE').AsFloat +
    ibqCont_Art_tmp.FieldByName('qta_GIACENZA_INIZIALE').AsFloat+ibqCont_Art_tmp.FieldByName('QTA_EVASA_CLIENTE').AsFloat - ibqCont_Art_tmp.FieldByName('QTA_IMPEGNATO').AsFloat
else
 ibqCont_Art_tmp.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art_tmp.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat -
 ibqCont_Art_tmp.FieldByName('QTA_ALTRE_USCITE').AsFloat - ibqCont_Art_tmp.FieldByName('QTA_RESO_FORNITORE').AsFloat +
 ibqCont_Art_tmp.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art_tmp.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

ibqCont_Art_tmp.Post;
Except
ibqCont_Art_tmp.Post;
End;
End;
end;
IBDataSet2.Next;
  End;
 IBDataSet2.BlockReadSize:=0;
ibqCont_Art_tmp.Close;
end;

procedure TfBaseFormDoc3.Aggiornamento_Contabilita_TEMP2(bNormale: Boolean);
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
   Then iNormal := 1
   Else iNormal := -1;
 strCodCauMag:= strCodCauMag_TMP2;
 dsoCauMag.DataSet.Locate('CODICE_CAUSALE',strCodCauMag,[]);

 IBDataSet2.BlockReadSize:=1;
 IBDataSet2.First;
 ibqryDetDoc.Open;
 ibqCont_Art_tmp2.ParamByName('ID_DEP').AsString:=trim(dsoDocumento.DataSet.fieldbyname('CONTRO_DEPOSITO').AsString);
 ibqCont_Art_tmp2.Open;
 ibq_aggArt_tmp.Open;
// With (dmodAz) Do
  While Not(IBDataSet2.EoF) Do
  Begin
  if not varisnull(IBDataSet2.FieldByName('QUANTITA').AsVariant)  then
  begin

   If (IBDataSet2.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
{
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;
           ibqCont_Art.Open;
}
Try
If (ibqCont_Art_tmp2.IsEmpty)
Then Begin
ibqCont_Art_tmp2.Insert;
ibqCont_Art_tmp2CODICE_ARTICOLO.AsString:=IBDataSet2.fieldbyname('CODICE_ARTICOLO').AsString;
ibqCont_Art_tmp2DEPOSITO_ID.AsString:=trim(dsoDocumento.DataSet.fieldbyname('CONTRO_DEPOSITO').AsString);
End
Else ibqCont_Art_tmp2.Edit;

ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTI').AsFloat :=
 ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTI').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat *
 dsoCauMag.DataSet.FieldByName('QTA_ACQUISTI').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_ACQUISTI').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_ACQUISTI').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ACQUISTI').AsCurrency;
ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_VENDITA').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_VENDITA').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_VENDITA').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_VENDITA').AsCurrency;

Try
if (boolVendita) Then
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1) Then
begin
ibqCont_Art_tmp2.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
ibqCont_Art_tmp2.FieldByName('ULT_PREZZO_VEND').AsCurrency := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
If Not(ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art_tmp2.FieldByName('MED_PREZZO_VEND').AsCurrency := (ibqCont_Art_tmp2.FieldByName('VAL_VENDITA').AsCurrency / ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat)/1;
end
end
Else
begin
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1) Then
begin
If Not(ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTi').AsFloat=0)
Then
ibqCont_Art_tmp2.FieldByName('MEDIO_COSTO_ACQ').AsCurrency :=
((ibqCont_Art_tmp2.FieldByName('VAL_ACQUISTi').AsCurrency+ibqCont_Art_tmp2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency)
 / (ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTi').AsFloat+ibqCont_Art_tmp2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat))/1;


ibqCont_Art_tmp2.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
ibqCont_Art_tmp2.FieldByName('ULT_COSTO_ACQ').AsCurrency := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsCurrency=1)
Then ibqCont_Art_tmp2.FieldByName('COSTO_ULTIMO').AsCurrency := IBDataSet2.FieldByName('COSTO').AsCurrency;
//a1:= dsoDocumento.DataSet.FieldByName('TOT_SPESE').AsFloat*100/dsoDocumento.DataSet.FieldByName('TOTALE_MERCE').AsFloat;
//RxCalcEdit1.Value := a1;
//ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsFloat ;
if IBDataSet2.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt_tmp.Edit;
ibq_aggArt_tmp.FieldByName('COSTO_STANDART').AsCurrency :=(IBDataSet2.FieldByName('IMPORTO_SCONTO').AsCurrency/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
{
if ibq_aggArt.FieldByName('NON_STAMPA_REGISTRO').AsInteger = 1 then
begin
dPrezzo := ((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1) +
((dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1)*
 ibq_aggArt.FieldByName('RICARPREC').AsFloat/100;

ibq_aggArt.FieldByName('PREZZO_BASE').AsFloat := dPrezzo;

ibq_aggArt.FieldByName('PREZZO_IVATO').AsFloat := (dPrezzo*(1+ibq_aggArt.FieldByName('CODICE_IVA_ID').AsFloat/100));
end;
}
ibq_aggArt_tmp.Post;
end;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////

end
Except
End;

{
Try
if (boolVendita)
Then  ibqCont_Art_tmp2.FieldByName('ULT_PREZZO_VEND').AsFloat := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1
Else
begin
ibqCont_Art_tmp2.FieldByName('ULT_COSTO_ACQ').AsFloat := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
if IBDataSet2.FieldByName('OMAGGIO').AsInteger = 1 then
begin
ibq_aggArt_tmp.Edit;
ibq_aggArt_tmp.FieldByName('COSTO_STANDART').AsFloat :=(IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/IBDataSet2.FieldByName('QUANTITA').AsFloat)/1;
ibq_aggArt_tmp.post;
end;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////
end

except
End;
If Not(ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat=0)
Then  ibqCont_Art_tmp2.FieldByName('MED_PREZZO_VEND').AsFloat := (ibqCont_Art_tmp2.FieldByName('VAL_VENDITA').AsFloat / ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat)/1;
If Not(ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTi').AsFloat=0)
Then  ibqCont_Art_tmp2.FieldByName('MEDIO_COSTO_ACQ').AsFloat := (ibqCont_Art_tmp2.FieldByName('VAL_ACQUISTi').AsFloat / ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTi').AsFloat)/1;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMA_VENDITA').Value=1)
Then ibqCont_Art_tmp2.FieldByName('DATA_ULTIMA_VENDITA').Value := Date;
If (dsoCauMag.DataSet.FieldByName('DATA_ULTIMO_ACQUISTO').Value=1)
Then ibqCont_Art_tmp2.FieldByName('DATA_ULTIMO_ACQUISTO').Value := Date;
If (dsoCauMag.DataSet.FieldByName('COSTO_ULTIMO').AsFloat=1)
Then ibqCont_Art_tmp2.FieldByName('COSTO_ULTIMO').AsFloat := IBDataSet2.FieldByName('COSTO').AsFloat;
}

ibqCont_Art_tmp2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat;
try
begin
if (ibqCont_Art_tmp2.FieldByName('VAL_GIACENZA_INIZIALE').AsCurrency <> 0) then
ibqCont_Art_tmp2.FieldByName('COSTO_GIACENZA_INIZIALE').AsCurrency := (ibqCont_Art_tmp2.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat/ibqCont_Art_tmp2.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat)/1 ;
end
except
end;
ibqCont_Art_tmp2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_ENTRATE').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency := dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsCurrency;
ibqCont_Art_tmp2.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_USCITE').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_ALTRE_USCITA').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_ALTRE_USCITA').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPOrTO_SCONTO').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_USCITE').AsCurrency;
ibqCont_Art_tmp2.FieldByName('QTA_ORDINATO').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_ORDINATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ORDINATO').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_ORDINATO').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_ORDINATO').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_ORDINATO').AsCurrency;
ibqCont_Art_tmp2.FieldByName('QTA_IMPEGNATO').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_IMPEGNATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_IMPEGNATO').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_QTA_IMPEGNATO').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_IMPEGNATO').AsFloat;
ibqCont_Art_tmp2.FieldByName('QTA_EVASA_CLIENTE').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_EVASA_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_CLIENTE').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_EVASo_CLIENTE').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_EVASo_CLIENTE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_EVASo_CLIENTE').AsFloat;
ibqCont_Art_tmp2.FieldByName('QTA_EVASA_FORNITORE').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_EVASA_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_FORNITORE').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_EVASo_FORNITORE').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_EVASo_FORNITORE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_EVASo_FORNITORE').AsCurrency;
ibqCont_Art_tmp2.FieldByName('QTA_RESO_CLIENTE').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_RESO_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_CLIENTE').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_RESO_CLIENTE').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_RESO_CLIENTE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_CLIENTE').AsCurrency;
ibqCont_Art_tmp2.FieldByName('QTA_RESO_FORNITORE').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_RESO_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_FORNITORE').AsFloat;
ibqCont_Art_tmp2.FieldByName('VAL_RESO_FORNITORE').AsCurrency := ibqCont_Art_tmp2.FieldByName('VAL_RESO_FORNITORE').AsCurrency + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsCurrency * dsoCauMag.DataSet.FieldByName('VAL_RESO_FORNITORE').AsCurrency;

 if dmodAz.Acc = 0 then
ibqCont_Art_tmp2.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTI').AsFloat +
    ibqCont_Art_tmp2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat
    -ibqCont_Art_tmp2.FieldByName('QTA_RESO_FORNITORE').AsFloat
    +ibqCont_Art_tmp2.FieldByName('QTA_RESO_CLIENTE').AsFloat +
    ibqCont_Art_tmp2.FieldByName('qta_GIACENZA_INIZIALE').AsFloat+ibqCont_Art_tmp2.FieldByName('QTA_EVASA_CLIENTE').AsFloat- ibqCont_Art_tmp2.FieldByName('QTA_IMPEGNATO').AsFloat
else
 ibqCont_Art_tmp2.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art_tmp2.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art_tmp2.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art_tmp2.FieldByName('QTA_VENDITA').AsFloat -
 ibqCont_Art_tmp2.FieldByName('QTA_ALTRE_USCITE').AsFloat - ibqCont_Art_tmp2.FieldByName('QTA_RESO_FORNITORE').AsFloat +
 ibqCont_Art_tmp2.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art_tmp2.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;


ibqCont_Art_tmp2.Post;
Except
ibqCont_Art_tmp2.Post;
End;
End;
end;
IBDataSet2.Next;
  End;
 IBDataSet2.BlockReadSize:=0;
ibqCont_Art_tmp2.Close;
end;

procedure TfBaseFormDoc3.Calcola_Totali;
Var
 dTotColli, dtotqta: Double;
 dTotale,dTotSconto3: Currency;
 dTotImp,dSp,dSPIVA: Currency;
 dTotMerc,dTotServ,dTotAltre,dTotIVATO,dTotIVA,
 dTotSconti: Currency;
 bTipo_Serv: Byte;
begin
 TRY
  Calcola_Spese(dSp,dSpIVA);
  dTotMerc:=0;       dTotServ:=0;
  dTotAltre:=0;     dTotIVATO:=0;
  dtotimp:=0;       dTotColli:=0;
  dTotSconto3:=0;   dtotqta := 0;
  
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
          0: dTotAltre :=dTotAltre +FieldByName('IMPORTO_SConto').AsCurrency;
          1: dTotMerc  :=dTotMerc  +FieldByName('IMPORTO_SConto').AsCurrency;
          2: dTotServ  :=dTotServ  +FieldByName('IMPORTO_SConto').AsCurrency;
       End;
       dTotImp   := dTotImp   + FieldByName('importo').AsCurrency;
       dTotIVATO := dTotIVATO + FieldByName('IMPORTO_CON_IVA').AsCurrency;
        dTotqta := dTotqta + FieldByName('quantita').AsFloat;
       try
       dTotColli:= dTotColli+ FieldByName('TOTCOLLI').AsCurrency;
       except
       dTotColli:= dTotColli;
       end;

       try
       dTotSconto3:= dTotSconto3+ FieldByName('OP_VAL_GIACENZA').AsCurrency;
       except
       dTotSconto3:= dTotSconto3;
       end;
       Next;
     End;
     dTotale:=dTotAltre+dTotMerc+dTotServ;
     dTotIVA:=dTotIVATO-dTotale;
     dTotSconti:= dTotImp-dTotale;
     dbeTotMerc.field.AsCurrency:=dTotMerc+dTotAltre;
     dbeTotServ.field.AsCurrency:=dTotServ;
     dbeTotSconti.field.AsCurrency:=dTotSconti;
     dbeImponibile.field.AsCurrency:=dTotale+dSp;//+((dTotIvato+dSp+dSpIVA)*(dSc1+dSc2)-dScM);
     dbeImposta.field.AsCurrency:=dTotIva+dSpIVA;
     dbeTotale.field.AsCurrency:=dbeImponibile.field.AsCurrency+dbeImposta.field.AsCurrency;
     dbeDaPagare.field.AsCurrency:=dTotIvato+dSp+dSpIVA;
     dbeTotSpese.Field.AsCurrency:=dSp;
     DBEdit22.Field.AsFloat:=dtotqta;
     if (dTotColli <> 0) then
     dbeNrColl.Field.AsCurrency:=dTotColli;
     dsoDocumento.DataSet.FieldByName('TOTALE_EURO').AsCurrency:= dTotSconto3;
     EnableControls;
    GotoBookmark(SavePlace);
    FreeBookmark(SavePlace);
end;
  End;

 EXCEPT
 END;
end;


procedure TfBaseFormDoc3.tbtnPrintClick(Sender: TObject);
var
a : integer;
Scelta : string;
begin
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibqStampaDoc.ParamByName('parID_Doc').Value := dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
 dmodAz.ibqStampaDoc.Open;
 dmodAz.ibtStampaDetDoc.open;
 dmodAz.ibtSeriali.open;
 IBDataSet3.Close;
 IBDataSet3.ParamByName('ddd').Value := dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
 IBDataSet3.Open;
 
a:=0;
 if dmodAz.ibtStampaDetDoc.Locate('Sconto1','99',[]) then
a:=1;
scelta:=InputBox('Scegli il tipo di stampa','1) - 2) - 3)','1');
  With (dmodAz.rePRN) Do
  Begin
if scelta = '1' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'.frf');
if scelta = '2' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'2.frf');
if scelta = '3' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'3.frf');

     ShowReport;
  End;
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibtStampaDetDoc.Close;
end;

procedure TfBaseFormDoc3.Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
Var
 strCodIVA: String;
 iNormal: Integer;
 dAliVa: Integer;
begin
 If (boolNormale)
   Then iNormal :=  1
   Else iNormal := -1;

 strCodIVA:=dsoRigheDoc.DataSet.fieldbyname('CODICE_IVA_ID').AsString;
 dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
 dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsInteger;

With (dmodAz) Do
Begin
ibqTab_Doc.edit;
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
If (ibqTab_DocCODIVA1.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
Then Begin
ibqTab_DocIMPON1.AsFloat := ibqTab_DocIMPON1.AsCurrency +iNormal*
 ibtTabDet_DocIMPORTO_SCONTO.AsCurrency;
ibqTab_DocIMPOSTA1.AsCurrency := ibqTab_DocIMPOSTA1.AsCurrency+iNormal*
 (ibtTabDet_DocIMPORTO_CON_IVA.AsCurrency - ibtTabDet_DocIMPORTO_SCONTO.AsCurrency);
End;
If (ibqTab_DocCODIVA2.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
Then Begin
ibqTab_DocIMPON2.AsCurrency := ibqTab_DocIMPON2.AsCurrency +iNormal*
 ibtTabDet_DocIMPORTO_SCONTO.AsCurrency;
ibqTab_DocIMPOSTA2.AsCurrency := ibqTab_DocIMPOSTA2.AsCurrency+iNormal*
 (ibtTabDet_DocIMPORTO_CON_IVA.AsCurrency - ibtTabDet_DocIMPORTO_SCONTO.AsCurrency);
End;
If (ibqTab_DocCODIVA3.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
Then Begin
ibqTab_DocIMPON3.AsCurrency := ibqTab_DocIMPON3.AsCurrency +iNormal*
 ibtTabDet_DocIMPORTO_SCONTO.AsCurrency;
ibqTab_DocIMPOSTA3.AsCurrency := ibqTab_DocIMPOSTA3.AsCurrency+iNormal*
 (ibtTabDet_DocIMPORTO_CON_IVA.AsCurrency - ibtTabDet_DocIMPORTO_SCONTO.AsCurrency);
End;
If (ibqTab_DocCODIVA4.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
Then Begin
ibqTab_DocIMPON4.AsCurrency := ibqTab_DocIMPON4.AsCurrency +iNormal*
ibtTabDet_DocIMPORTO_SCONTO.AsCurrency;
ibqTab_DocIMPOSTA4.AsCurrency := ibqTab_DocIMPOSTA4.AsCurrency+iNormal*
(ibtTabDet_DocIMPORTO_CON_IVA.AsCurrency - ibtTabDet_DocIMPORTO_SCONTO.AsCurrency);
End;
If (ibqTab_DocCODIVA5.AsString =ibtTabDet_DocCODICE_IVA_ID.AsString)
Then Begin
ibqTab_DocIMPON5.AsCurrency := ibqTab_DocIMPON5.AsCurrency +iNormal*
 ibtTabDet_DocIMPORTO_SCONTO.AsCurrency;
ibqTab_DocIMPOSTA5.AsCurrency := ibqTab_DocIMPOSTA5.AsCurrency+iNormal*
 (ibtTabDet_DocIMPORTO_CON_IVA.AsCurrency - ibtTabDet_DocIMPORTO_SCONTO.AsCurrency);
End;
If (ibqTab_DocIMPON1.AsCurrency = 0)
Then Begin
 ibqTab_DocIMPOSTA1.AsCurrency := 0;
 ibqTab_DocCODIVA1.AsString := '';
 ibqTab_DocALIVA1.AsFloat := 0;
End;
If (ibqTab_DocIMPON2.AsCurrency = 0)
Then Begin
 ibqTab_DocIMPOSTA2.AsCurrency := 0;
 ibqTab_DocCODIVA2.AsString := '';
 ibqTab_DocALIVA2.AsFloat := 0;
End;
If (ibqTab_DocIMPON3.AsCurrency = 0)
Then Begin
 ibqTab_DocIMPOSTA3.AsFloat := 0;
 ibqTab_DocCODIVA3.AsString := '';
 ibqTab_DocALIVA3.AsFloat := 0;
End;
if (ibqTab_DocIMPON4.AsCurrency = 0)
Then Begin
 ibqTab_DocIMPOSTA4.AsFloat := 0;
 ibqTab_DocCODIVA4.AsString := '';
 ibqTab_DocALIVA4.AsFloat := 0;
End;
If (ibqTab_DocIMPON5.AsCurrency = 0)
Then Begin
 ibqTab_DocIMPOSTA5.AsFloat := 0;
 ibqTab_DocCODIVA5.AsString := '';
 ibqTab_DocALIVA5.AsFloat := 0;
End;
End;
End;


procedure TfBaseFormDoc3.Get_Val_From_PersAz;
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

procedure TfBaseFormDoc3.FormCreate(Sender: TObject);
begin
 Get_Val_From_PersAz;
end;

procedure TfBaseFormDoc3.Calcola_Spese(VAR dSpese: Currency;VAR dSpeseIVA: Currency);
Var
 dAliquota: Double;
 dValore : Currency;
begin
 Try
  dSpese:=0;
  dSpeseIVA:=0;
  // Bolli
   dValore:=dbeBolli.Field.AsCurrency;
   Get_Aliq_IVA(LookBolliCod.KeyValue,dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Incasso
   dValore:=dbeIncasso.Field.AsCurrency;
   Get_Aliq_IVA(LookIncassoCod.KeyValue,dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Imballo
   dValore:=dbeImballo.Field.AsCurrency;
   Get_Aliq_IVA(LookImballoCod.KeyValue,dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Contrassegno
   dValore:=dbeContras.Field.AsCurrency;
   Get_Aliq_IVA(LookContrsegnoCod.KeyValue,dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Accessorie
   dValore:=dbeAccessor.Field.AsCurrency;
   Get_Aliq_IVA(LookAccessorieCod.KeyValue,dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
  // Spedizione
   dValore:=dbeSpediz.Field.AsCurrency;
   Get_Aliq_IVA(LookSpedizioneCod.KeyValue,dAliquota);
   dSpese:=dSpese+dValore;
   dSpeseIVA:=dSpeseIVA+dValore*dAliquota/100;
 Except;
 End;
End;

procedure TfBaseFormDoc3.Get_Aliq_IVA(strCodIVA: String;
  var dAliq: Double);
Begin
  Try
    If (dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]))
      Then dAliq:=dsoCODICEIVA.DataSet.FieldByNAme('ALIQUOTA').AsFloat
      Else dAliq:=0;
  Except
    dAliq:=20;
  End;
End;

procedure TfBaseFormDoc3.dbeBolliExit(Sender: TObject);
begin
// Calcola_Totali;
end;


procedure TfBaseFormDoc3.LookVettoreCodExit(Sender: TObject);
begin
{dbeVettore_Ind.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('indirizzo').AsString;

dbeVettore_Ind2.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('citta').AsString+'-'+
  LookVettoreCod.ListSource.DataSet.FieldByName('cap').AsString+'('+
  LookVettoreCod.ListSource.DataSet.FieldByName('prov').AsString+')';}

end;

procedure TfBaseFormDoc3.tbtnDaPreventivoClick(Sender: TObject);
Var
 intAdd: Integer;
begin
PD:=0;
 If (tbtnEsci.Enabled)
   Then Exit;

 If (intTipoDoc>20) Then
  intAdd:=20
 Else intAdd:=10;

 Case (intTipoDoc) Of
  12: Pass_Doc(intAdd+1);
  13: Pass_Doc(intAdd+1);
  14: Pass_Doc(intAdd+1);
  17: Pass_Doc(intAdd+1);
  22: Pass_Doc(intAdd+1);
  23: Pass_Doc(intAdd+1);
  24: Pass_Doc(intAdd+1);
  27: Pass_Doc(intAdd+1);
  211: Pass_Doc(21);
  210: Pass_Doc(11);
 End;

end;

procedure TfBaseFormDoc3.tbtnDaOrdineClick(Sender: TObject);
Var
 intAdd: Integer;
begin
PD:=0;
 If (tbtnEsci.Enabled)
   Then Exit;
 If (intTipoDoc>20) Then 
  intAdd:=20  
 Else intAdd:=10;

 Case (intTipoDoc) Of
  13: Pass_Doc(intAdd+2); 
  14: Pass_Doc(intAdd+2); 
  17: Pass_Doc(intAdd+2); 
  23: Pass_Doc(intAdd+2); 
  24: Pass_Doc(intAdd+2); 
  27: Pass_Doc(intAdd+2);
  211: Pass_Doc(22);
  210: Pass_Doc(12);
 End;

end;

procedure TfBaseFormDoc3.tbtnDaDDTClick(Sender: TObject);
Var
 intAdd: Integer;
begin
PD:=0;
 If (tbtnEsci.Enabled)
   Then Exit;

 If (intTipoDoc>20) Then
  intAdd:=20
 Else intAdd:=10;

 Case (intTipoDoc) Of
  14: Pass_Doc(intAdd+3);
  24: Pass_Doc(intAdd+3);
  17: Pass_Doc(intAdd+3);
  27: Pass_Doc(intAdd+3);
  211: Pass_Doc(23);
  210: Pass_Doc(13);
  235: Pass_Doc(13);

 End;
end;

procedure TfBaseFormDoc3.Pass_Doc(intPassTipoDoc: Integer);
begin
if PD=1 then
else
begin
 If (LookCliForCod.KeyValue=null)
  Then Begin
         MessageDlg('Scegli '+laCliFor.Caption+'.',mtWarning,[mbOK],0);
         Exit;
       End;
end;
with dmodAz.ibqryPassDoc do begin
Close;
SelectSQL.Clear;
SelectSQL.Add('select * from TAB_DOCUMENTI');
SelectSQL.Add('WHERE TIPO_DOC=:parTipoDoc');
if PD=1 then
SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null)) and CAUSALE_MAGAZZINO=''DDTC''')
else
SelectSQL.Add('and CLIFOR_ID=:parCliForID');
SelectSQL.Add('and ID_DOCUMENTO In');
SelectSQL.Add('(Select DOC_ID from TAB_DET_DOC)');
SelectSQL.Add('AND DATA_DOC BETWEEN :parDataDa AND :parDataA');
if PD=1 then
SelectSQL.Add('Order By clifor_id,DATA_DOC, Num_DOC')
else
SelectSQL.Add('Order By DATA_DOC, Num_DOC');
ParamByName('parTipoDoc').AsInteger:=intPassTipoDoc;;

if PD=1 then
else
ParamByName('parCliForID').AsInteger:=LookCliForCod.KeyValue;

ParamByName('parDataDa').AsString:='01/01/2004';
ParamByName('parDataA').AsDateTime:=Now;
Open;
end;
 dmodAz.ibtblPassDocDet.Open;
 frmPassDoc:=TfrmPassDoc.Create(self);
 frmPassDoc.Caption:='Passare per '+Self.Caption;
if PD=1 then
else
begin
 frmPassDoc.intCliForID:=LookCliForCod.KeyValue;
 frmPassDoc.intDoc_ID:=dsoDocumento.DataSet['ID_DOCUMENTO'];
 frmPassDoc.a:= dsoDocumento.DataSet['DEPOSITO'];
end;
 frmPassDoc.iPassTipoDoc:=intPassTipoDoc;
 frmPassDoc.ShowModal;
 frmPassDoc.Free;
 //
End;


procedure TfBaseFormDoc3.Azzerare_IVA;
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

 dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsCurrency:=
   dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsCurrency-
   dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsCurrency;

 dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsInteger:=0;

 dsoDocumento.DataSet.FieldByName('TOTALE_EURO_IVATO').AsCurrency:=0;

end;

procedure TfBaseFormDoc3.Insert_Scadenza;
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
If (dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString='') then exit;
 If Not(dsoDocumento.DataSet.FieldByName('Tipo_Doc').AsInteger in [14,17,24,27])
   Then Exit;
 // se è stato selezionato

 If Not(dmodAz.ibTab_Pagamenti.Locate('ID_PAGAMENTO',
        dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString,[]))
   Then Exit;

 wNumRate:=dmodAz.ibTab_Pagamenti.FieldByName('NUMERO_RATE').AsInteger;
 wGiornoRata:=dmodAz.ibTab_Pagamenti.FieldByName('GIORNI_PRIMA_RATA').AsInteger;
 iFINE_MESE:=dmodAz.ibTab_Pagamenti.FieldByName('FINE_MESE').AsInteger;
dmodAz.ibqryScadenze.Open;
 TRY
   If (wNumRate=0)
    Then With (dmodAz.ibqryScadenze) Do
       BEgin
         Insert;
         FieldByName('DOCUMENTO_ID').AsInteger:=dsoDocumento.DataSet.FieldByName('ID_DOCUMENTO').AsInteger;
         FieldByName('PAGAMENTO_ID').AsString:=dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString;
         FieldByName('CLIFOR_ID').AsInteger:=dsoDocumento.DataSet.FieldByName('CLIFOR_ID').AsInteger;
         FieldByName('CLIFOR_TIPO').AsInteger:=intTipoCliFor;
         FieldByName('CLIFOR_DESCR').AsString:=LookCliForDescr.LookupSource.DataSet.FieldByName('DENOMINAZIONE').AsString;
         FieldByName('PAGATO').AsString:='N';
         FieldByName('IMPORTO').AsCurrency:=dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsCurrency;
         FieldByName('NUM_DOC').AsInteger:=dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger;
         FieldByName('DATA_DOC').AsDateTime:=dsoDocumento.DataSet.FieldByName('DATA_DOC').AsDateTime;
         FieldByName('DATA_SCADENZA').AsDateTime:=Date;
         FieldByName('DATO').AsCurrency:=0;
         FieldByName('DADARE').AsCurrency:=dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsCurrency;
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

//    Application.MessageBox(PCHAR(inttostr(wa)),'Attendere',MB_OK);
//    Application.MessageBox(PCHAR(inttostr(wm)),'Attendere',MB_OK);
//    Application.MessageBox(PCHAR(inttostr(wg)),'Attendere',MB_OK);

    wM:=wM-1+wRateCntr; // rata
    if wM>12 then
    begin
    wM:=wM-12;
    wA:=wA+1;
    end;
    //    Application.MessageBox(PCHAR(inttostr(wm)),'Attendere',MB_OK);


    Case (iFINE_MESE) Of
      1: begin
            dDataRata:=dsoDocumento.DataSet.FieldByName('DATA_DOC').AsDateTime
            +wGiornoRata;
            DecodeDate(dDataRata,wA,wM,wG);
            wM:=wM-1+wRateCntr; // rata
            if wM>12 then
            begin
             wM:=wM-12;
             wA:=wA+1;
             end;

          wGiorniFineMese:=Fine_Mese(wM,wA);
         end;
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
         FieldByName('IMPORTO').AsCurrency:=dImportoRata;
         FieldByName('NUM_DOC').AsInteger:=dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger;
         FieldByName('DATA_DOC').AsDateTime:=dsoDocumento.DataSet.FieldByName('DATA_DOC').AsDateTime;
         FieldByName('DATA_SCADENZA').AsDateTime:=dDataRata;
         FieldByName('DATO').AsCurrency:=0;
         FieldByName('DADARE').AsCurrency:=dImportoRata;

         Post;
       End;
  End;
  dmodAz.ibqryScadenze.Close;
  // OK !
End;

procedure TfBaseFormDoc3.Elimina_Scadenza;
var
 wRateCntr: Word;
begin

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

    With (dsoDocumento.DataSet) Do
   BEgin
   For wRateCntr:=1 To 5 Do begin
    Edit;
     FieldByName('RATA'+IntToStr(wRateCntr)+'_DATA').AsVariant:=null;
     FieldByName('RATA'+IntToStr(wRateCntr)+'_IMPORTO').AsFloat:=0;
    Post;
   End
end;
End;

procedure TfBaseFormDoc3.Rimetterescadenze1Click(Sender: TObject);
begin
 If (Application.MessageBox('Eliminare tutte le scadenze e'+#13+
                            'Rimettere di nuovo?','Attendere',
       MB_YesNo+MB_ICONQUESTION)=ID_No)
    Then Exit;
 If (Application.MessageBox('Dopo questa utilità informazioni su scadenze precedenti'+#13+
                         'non sono più disponibili.'+#13+#13+
                         'Vuoi procedere?','Attendere',
       MB_YesNo+MB_ICONQUESTION)=ID_No)
    Then Exit;
 // rimette scadenze
 // Scorre la tabella documenti
 // Elimina e rimette le scadenze
 dsoDocumento.DataSet.DisableControls;
 dsoDocumento.DataSet.First;
 While Not(dsoDocumento.DataSet.EoF) Do
 Begin
  Elimina_Scadenza;
  Insert_Scadenza;
  dsoDocumento.DataSet.Next;
 End;
 dsoDocumento.DataSet.EnableControls;
End;

procedure TfBaseFormDoc3.miDoc_Det_PianoContoClick(Sender: TObject);
VAR
 int_ID_Docum,cliforid,tipodoc: Integer;
begin
// due cicli passa doc e doc_det locate in art. e salvare piano conto
// solo dove non ce!!! <-/- importante
//
 ShowMessage('Aggiornamento: Contabilita...');
  If Not((intTipoDoc = 24) or (intTipoDoc = 27) or
         (intTipoDoc = 14) or (intTipoDoc = 17))
    Then Exit;


 dsoDocumento.DataSet.First;
 While Not(dsoDocumento.DataSet.EoF) Do
 Begin
  If ((intTipoDoc = 24) or (intTipoDoc = 27) or
        (intTipoDoc = 14) or (intTipoDoc = 17))
   Then Begin
       int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
       cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
       tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;
      elimina_Contab(int_ID_Docum);
         If (boolVendita)
          Then Insert_Contab_Vend(dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger)
          Else Insert_Contab_Acq(dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger);
        End;
  dsoDocumento.DataSet.Next;
 End;
end;

procedure TfBaseFormDoc3.Insert_Contab_Acq(i_ID_Doc: Integer);
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

   dmodAz.ibNum_Reg.Params[0].asdate:=Date;
   dmodAz.ibNum_Reg.ExecProc;
   NumReg := (dmodAz.ibNum_Reg.Params[1].AsInteger+1);

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
    IBQuery1.Close;
    IBQuery1.ParamByName('pariddoc').AsInteger :=i_ID_Doc;
    IBQuery1.Open;
    // inserire prima riga
    ibqryContab.Open;
    ibtblContab_Det.Open;

    // totale ivato
    ibqryContab.Insert;
    ibqryContabCON_DETT.AsInteger:=0;
    ibqryContabDATA_MOV.AsDateTime:=Date;
    ibqryContabNUM_REG.AsInteger:=NumReg;
    ibqryContabDATA_DOC.AsDateTime:=IBQuery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
    ibqryContabREG_IVA.AsInteger:=RxDBComboBox1.ItemIndex+2;
    ibqryContabMESE_COMP.AsString:=DBEdit20.Field.Value;

    if intTipoDoc = 28 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Credito';
    ibqryContabAVERE.AsFloat:=0;
    ibqryContabDARE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-15;
    end;
    if intTipoDoc = 25 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Debito';
    ibqryContabAVERE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
    ibqryContabDARE.AsFloat:=0;
    ibqryContabTIPO_MOV.AsInteger:=-16;
    end;

    if (intTipoDoc = 24) or (intTipoDoc = 27) then
    begin
    ibqryContabDESCR_MOV.AsString:='Fattura di Acquisto';
    ibqryContabAVERE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
    ibqryContabDARE.AsFloat:=0;
    ibqryContabTIPO_MOV.AsInteger:=-1;
    end;
    intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
    ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;

    ibqryContabDEPOSITO_CODICE.AsString := dsoDepositi.DataSet.FieldByName('codice').AsString;
    ibqryContabDEPOSITO_DESCR.AsString := dsoDepositi.DataSet.FieldByName('descr').AsString;
    ibqryContabSBILANCIO.AsFloat:=IBQuery1MESE_CONT.AsFloat;
    ibqryContab.Post;

    While Not(ibqRicerca.EoF) Do
    Begin

      ibqryContab.Insert;
      intPK_Contab:=ibqryContabPK_CODICE.AsInteger;
      ibqryContabCON_DETT.AsInteger:=1;
      ibqryContabDATA_MOV.AsDateTime:=Date;
      ibqryContabNUM_REG.AsInteger:=NumReg;
      ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
      ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
      ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
      ibqryContabREG_IVA.AsInteger:=RxDBComboBox1.ItemIndex+2;
      ibqryContabMESE_COMP.AsString:=DBEdit20.Field.Value;

      if intTipoDoc = 28 then
      begin
      ibqryContabDESCR_MOV.AsString:='Nota Credito';
      ibqryContabAVERE.AsCurrency:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
      ibqryContabDARE.AsFloat:=0;
    ibqryContabTIPO_MOV.AsInteger:=-15;
      end;
      if intTipoDoc = 25 then
      begin
      ibqryContabDESCR_MOV.AsString:='Nota Debito';
      ibqryContabAVERE.AsFloat:=0;
      ibqryContabDARE.AsCurrency:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-16;
      end;
      if (intTipoDoc = 24) or (intTipoDoc = 27) then
      begin
      ibqryContabDESCR_MOV.AsString:='Fattura di Acquisto';
      ibqryContabAVERE.AsFloat:=0;
      ibqryContabDARE.AsCurrency:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-1;
      end;

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
    ibqryContabDEPOSITO_CODICE.AsString := dsoDepositi.DataSet.FieldByName('codice').AsString;
    ibqryContabDEPOSITO_DESCR.AsString := dsoDepositi.DataSet.FieldByName('descr').AsString;
    ibqryContabSBILANCIO.AsFloat:=IBQuery1MESE_CONT.AsFloat;
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
       ibtblContab_DetIMPONIBILE.AsCurrency:=ibqRicerca2.fieldByName('importo').AsCurrency;
       ibtblContab_DetIVA_PERC.AsFloat:=ibqRicerca2.fieldByName('codice_iva_id').asfloat;
       ibtblContab_DetTOTALE.AsFloat:=ibqRicerca2.fieldByName('importo_con_iva').asfloat;
       ibtblContab_DetIMPOSTA.AsCurrency:=
         ibqRicerca2.fieldByName('importo_con_iva').AsCurrency-ibqRicerca2.fieldByName('importo').AsCurrency;
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
    ibqryContabNUM_REG.AsInteger:=NumReg;
    ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
    ibqryContabREG_IVA.AsInteger:=RxDBComboBox1.ItemIndex+2;
    ibqryContabMESE_COMP.AsString:=DBEdit20.Field.Value;

    if intTipoDoc = 28 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Credito';
    ibqryContabAVERE.AsCurrency:=ibquery1TOTALE_IVA.AsCurrency;
    ibqryContabDARE.AsFloat:=0;
    ibqryContabTIPO_MOV.AsInteger:=-15;
    end;
    if intTipoDoc = 25 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Debito';
    ibqryContabAVERE.AsFloat:=0;
    ibqryContabDARE.AsCurrency:=ibquery1TOTALE_IVA.AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-16;
    end;
    if (intTipoDoc = 24) or (intTipoDoc = 27) then
    begin
    ibqryContabDESCR_MOV.AsString:='Fattura di Acquisto';
    ibqryContabAVERE.AsFloat:=0;
    ibqryContabDARE.AsCurrency:=ibquery1TOTALE_IVA.AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-1;
    end;
     intID_PianoConto:=dmodAz.ibTabPersAzIVA_ACQ.asInteger;

     ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
     // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
     ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;

    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;
    ibqryContabDEPOSITO_CODICE.AsString := dsoDepositi.DataSet.FieldByName('codice').AsString;
    ibqryContabDEPOSITO_DESCR.AsString := dsoDepositi.DataSet.FieldByName('descr').AsString;
    ibqryContabSBILANCIO.AsFloat:=IBQuery1MESE_CONT.AsFloat;
   if dbcbIvaesente.Checked then
    begin
    ibqryContabCOD_ESENZ.AsInteger:=DBLookupComboBox25.KeyValue;
    ibqryContabDESCR_ESENZ.AsString:=DBLookupComboBox26.Text;
    end;
    ibqryContab.Post;

    // Spese

    // Bolli
    If (dbeBolli.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzBOLLI_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,dbeBolli.Field.AsCurrency,0);
end;
    //Access
    If (dbeAccessor.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzACCESSORIE_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,dbeAccessor.Field.AsCurrency,0);
end;
    //Incasso
    If (dbeIncasso.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzINCASSO_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,dbeIncasso.Field.AsCurrency,0);
end;

   // Imballo
    If (dbeImballo.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzIMBALLO_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,dbeImballo.Field.AsCurrency,0);
end;
    // spedizione
    If (dbeSpediz.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzSPEDIZIONE_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,dbeSpediz.Field.AsCurrency,0);
end;
    // contrass
    If (dbeContras.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzCONTRASEGNO_C.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,dbeContras.Field.AsCurrency,0);
end;

    ibqRicerca.Close;
    ibtblContab_Det.Close;
    ibqryContab.Close;
dmodAz.ibNum_RegD.Open;
dmodAz.ibNum_RegD.Insert;
dmodAz.ibNum_RegD.FieldByName('NUMERO').asinteger := NumReg;
dmodAz.ibNum_RegD.FieldByName('DATA').AsDateTime := Date;
dmodAz.ibNum_RegD.Post;
  Except
  End;
 End;
End;

procedure TfBaseFormDoc3.Insert_Contab_Vend(i_ID_Doc: Integer);
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

   dmodAz.ibNum_Reg.Params[0].asdate:=Date;
   dmodAz.ibNum_Reg.ExecProc;
   NumReg := (dmodAz.ibNum_Reg.Params[1].AsInteger+1);

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
    IBQuery1.ParamByName('pariddoc').AsInteger :=i_ID_Doc;
    IBQuery1.Open;

    // inserire prima riga
    ibqryContab.Open;
    ibtblContab_Det.Open;

    ibqryContab.Insert;
    ibqryContabCON_DETT.AsInteger:=0;
    ibqryContabDATA_MOV.AsDateTime:=Date;
    ibqryContabNUM_REG.AsInteger:=NumReg;
    ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
 // tipo 0 - da doc
     intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
     ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
     ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabDEPOSITO_CODICE.AsString := dsoDepositi.DataSet.FieldByName('codice').AsString;
    ibqryContabDEPOSITO_DESCR.AsString := dsoDepositi.DataSet.FieldByName('descr').AsString;
    ibqryContabREG_IVA.AsInteger:=RxDBComboBox1.ItemIndex+2;
    ibqryContabMESE_COMP.AsString:=DBEdit20.Field.Value;

    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;


    if intTipoDoc = 18 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Debito';
    ibqryContabAVERE.AsFloat:=0;
    ibqryContabDARE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-10;
    end;
    if intTipoDoc = 15 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Credito';
    ibqryContabAVERE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
    ibqryContabDARE.AsFloat:=0;
    ibqryContabTIPO_MOV.AsInteger:=-11;
    end;
    if (intTipoDoc = 14) or (intTipoDoc = 17) then
    begin
    ibqryContabDESCR_MOV.AsString:='Fattura di Vendita';
    ibqryContabAVERE.AsFloat:=0;
    ibqryContabDARE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=0;
    end;
    ibqryContabSBILANCIO.AsFloat:=IBQuery1MESE_CONT.AsFloat;
    ibqryContab.Post;

    While Not(ibqRicerca.EoF) Do
    Begin

      ibqryContab.Insert;
      intPK_Contab:=ibqryContabPK_CODICE.AsInteger;
      ibqryContabCON_DETT.AsInteger:=1;
      ibqryContabDATA_MOV.AsDateTime:=Date;
      ibqryContabNUM_REG.AsInteger:=NumReg;
      ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
      ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
      ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;

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
    ibqryContabREG_IVA.AsInteger:=RxDBComboBox1.ItemIndex+2;
    ibqryContabMESE_COMP.AsString:=DBEdit20.Field.Value;

    if intTipoDoc = 18 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Debito';
    ibqryContabAVERE.AsFloat:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
    ibqryContabDARE.AsCurrency:=0;
    ibqryContabTIPO_MOV.AsInteger:=-10;
    end;
    if intTipoDoc = 15 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Credito';
    ibqryContabAVERE.AsCurrency:=0;
    ibqryContabDARE.AsFloat:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-11;
    end;
    if (intTipoDoc = 14) or (intTipoDoc = 17) then
    begin
     ibqryContabDESCR_MOV.AsString:='Fattura di Vendita';
     ibqryContabAVERE.AsCurrency:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
     ibqryContabDARE.AsFloat:=0;
    ibqryContabTIPO_MOV.AsInteger:=0;
    end;


    ibqryContabDEPOSITO_CODICE.AsString := dsoDepositi.DataSet.FieldByName('codice').AsString;
    ibqryContabDEPOSITO_DESCR.AsString := dsoDepositi.DataSet.FieldByName('descr').AsString;
    ibqryContabSBILANCIO.AsFloat:=IBQuery1MESE_CONT.AsFloat;
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
       ibtblContab_DetIMPONIBILE.AsCurrency:=ibqRicerca2.fieldByName('importo').AsCurrency;
       ibtblContab_DetIVA_PERC.AsFloat:=ibqRicerca2.fieldByName('codice_iva_id').asfloat;
       ibtblContab_DetTOTALE.AsCurrency:=ibqRicerca2.fieldByName('importo_con_iva').AsCurrency;

       ibtblContab_DetIMPOSTA.AsCurrency:=
       ibqRicerca2.fieldByName('importo_con_iva').AsCurrency-ibqRicerca2.fieldByName('importo').AsCurrency;
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
    ibqryContabNUM_REG.AsInteger:=NumReg;
    ibqryContabDATA_DOC.AsDateTime:=ibquery1DATA_DOC.AsDateTime;
    ibqryContabNUM_DOC.AsInteger:=ibquery1NUM_DOC.AsInteger;
    ibqryContabDOC_ID.AsInteger:=ibquery1ID_DOCUMENTO.AsInteger;
    intID_PianoConto:=dmodAz.ibTabPersAzIVA_VEN.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);

     // intID_PianoConto:=ibquery1PIANOCONTO_ID.asinteger;
     ibqryContabPIANOCONTO_ID.AsInteger:=intID_PianoConto;
     ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
     ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
    ibqryContabCLIFOR_ID.AsInteger:=ibquery1CLIFOR_ID.AsInteger;
    ibqryContabTIPO_CLIFOR.AsInteger:=ibquery1TIPO_CLIFOR.asinteger;
    ibqryContabNUM_PROT.AsInteger:=intNumProt;

    ibqryContabDEPOSITO_CODICE.AsString := dsoDepositi.DataSet.FieldByName('codice').AsString;
    ibqryContabDEPOSITO_DESCR.AsString := dsoDepositi.DataSet.FieldByName('descr').AsString;
    ibqryContabREG_IVA.AsInteger:=RxDBComboBox1.ItemIndex+2;
    ibqryContabMESE_COMP.AsString:=DBEdit20.Field.Value;

        if intTipoDoc = 18 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Debito';
    ibqryContabAVERE.AsFloat:=ibquery1TOTALE_IVA.AsCurrency;
    ibqryContabDARE.AsCurrency:=0;
    ibqryContabTIPO_MOV.AsInteger:=-10;
    end;
    if intTipoDoc = 15 then
    begin
    ibqryContabDESCR_MOV.AsString:='Nota Credito';
    ibqryContabAVERE.AsCurrency:=0;
    ibqryContabDARE.AsFloat:=ibquery1TOTALE_IVA.AsCurrency;
    ibqryContabTIPO_MOV.AsInteger:=-11;
    end;
    if (intTipoDoc = 14) or (intTipoDoc = 17) then
    begin
     ibqryContabDESCR_MOV.AsString:='Fattura di Vendita';
     ibqryContabAVERE.AsCurrency:=ibquery1TOTALE_IVA.AsCurrency;
     ibqryContabDARE.AsFloat:=0;
    end;


    ibqryContabSBILANCIO.AsFloat:=IBQuery1MESE_CONT.AsFloat;
    if dbcbIvaesente.Checked then
    begin
    ibqryContabCOD_ESENZ.AsInteger:=DBLookupComboBox25.KeyValue;
    ibqryContabDESCR_ESENZ.AsString:=DBLookupComboBox26.Text;
    end;
    ibqryContab.Post;
// Spese
    // Bolli
    If (dbeBolli.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzBOLLI_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
//    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
//    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,0,dbeBolli.Field.AsFloat);
end;
     //Access
    If (dbeAccessor.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzACCESSORIE_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
//    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
//    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,0,dbeAccessor.Field.AsFloat);
end;
    //Incasso
    If (dbeIncasso.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzINCASSO_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
//    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
//    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,0,dbeIncasso.Field.AsFloat);
end;
    // Imballo
    If (dbeImballo.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzIMBALLO_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
//    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
//    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,0,dbeImballo.Field.AsFloat);
end;
    // spedizione
    If (dbeSpediz.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzSPEDIZIONE_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
//    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
//    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,0,dbeSpediz.Field.AsFloat);
end;
    // contrass
    If (dbeContras.Field.AsFloat>0)
     Then begin
    intID_PianoConto:=dmodAz.ibTabPersAzCONTRASEGNO_R.asInteger;
    ibTab_Piano_Conti.Locate('ID_PIANO_CONTO',intID_PianoConto,[]);
//    ibqryContabNOME_CONTO.AsString:=ibTab_Piano_ContiNOME_CONTO.AsString;
//    ibqryContabSOTTOCONTO_DESCR.AsString:=ibTab_Piano_ContiDESCR.AsString;
    Inserimento_di_riga_contab(intPK_Contab,0,
           ibquery1DATA_DOC.AsDateTime,Date,ibquery1NUM_DOC.AsInteger,
           ibquery1ID_DOCUMENTO.AsInteger,'Fattura di Vendita',0,
           intID_PianoConto, ibTab_Piano_ContiDESCR.AsString,ibTab_Piano_ContiNOME_CONTO.AsString,
           ibquery1CLIFOR_ID.AsInteger,ibquery1TIPO_CLIFOR.asinteger,
           intNumProt,0,dbeContras.Field.AsFloat);
end;
    ibqRicerca.Close;
    ibtblContab_Det.Close;
    ibqryContab.Close;
dmodAz.ibNum_RegD.Open;
dmodAz.ibNum_RegD.Insert;
dmodAz.ibNum_RegD.FieldByName('NUMERO').asinteger := NumReg;
dmodAz.ibNum_RegD.FieldByName('DATA').AsDateTime := Date;
dmodAz.ibNum_RegD.Post;
  Except
  End;
 End;
End;

procedure TfBaseFormDoc3.Elimina_Contab(i_ID_Doc: Integer);
begin
 With (dmodAz) Do
 Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('DELETE FROM CONTABILITA');
   ibqRicerca.SQL.Add('WHERE DOC_ID=:parID_Doc');
   ibqRicerca.ParamByName('parID_Doc').AsInteger:=i_ID_Doc;
   ibqRicerca.ExecSQL;
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
 End;
end;

procedure TfBaseFormDoc3.tbtnAggiornaIVAClick(Sender: TObject);
begin
  Aggiorna_IVA_Totale;
end;

procedure TfBaseFormDoc3.Aggiorna_Spese_IVA;
 // iva per Spese.

Procedure Update_iva(strCodIVA: String;dAliVa : Double;dImpon,dImposta: Currency);
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
                  ibqTab_DocIMPON1.AsCurrency := ibqTab_DocIMPON1.AsCurrency+dImpon;
                  ibqTab_DocIMPOSTA1.AsCurrency := ibqTab_DocIMPOSTA1.AsCurrency+dImposta;
                End;
          If (ibqTab_DocCODIVA2.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON2.AsCurrency :=ibqTab_DocIMPON2.AsCurrency+ dImpon;
                  ibqTab_DocIMPOSTA2.AsCurrency :=ibqTab_DocIMPOSTA2.AsCurrency+ dImposta;
                End;
          If (ibqTab_DocCODIVA3.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON3.AsCurrency :=ibqTab_DocIMPON3.AsCurrency+ dImpon;
                  ibqTab_DocIMPOSTA3.AsCurrency :=ibqTab_DocIMPOSTA3.AsCurrency+ dImposta;
                End;
          If (ibqTab_DocCODIVA4.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON4.AsCurrency :=ibqTab_DocIMPON4.AsCurrency+ dImpon;
                  ibqTab_DocIMPOSTA4.AsCurrency :=ibqTab_DocIMPOSTA4.AsCurrency+ dImposta;
                End;
          If (ibqTab_DocCODIVA5.AsString =strCodIVA)
           Then Begin
                  ibqTab_DocIMPON5.AsCurrency :=ibqTab_DocIMPON5.AsCurrency+ dImpon;
                  ibqTab_DocIMPOSTA5.AsCurrency :=ibqTab_DocIMPOSTA5.AsCurrency+ dImposta;
                End;
  End;
 End;


Var
 strCodIVA: String;
 dAliVa: Double;
 dImpon,dImposta : Currency;
begin
 //  Bolli
  strCodIVA:=LookBolliCod.KeyValue;
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=dbeBolli.Field.AsCurrency;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Accessor
  strCodIVA:=LookAccessorieCod.KeyValue;
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=dbeAccessor.Field.AsCurrency;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Incasso
  strCodIVA:=LookIncassoCod.KeyValue;
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=dbeIncasso.Field.AsCurrency;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Imballo
  strCodIVA:=LookImballoCod.KeyValue;
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=dbeImballo.Field.AsCurrency;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Spediz
  strCodIVA:=LookSpedizioneCod.KeyValue;
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=dbeSpediz.Field.AsCurrency;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);
 //  Contras
  strCodIVA:=LookContraSegnoDescr.KeyValue;
  dsoCODICEIVA.DataSet.Locate('CODICE',strCodIVA,[]);
  dAliVa:=dsoCODICEIVA.DataSet.FieldByName('Aliquota').AsFloat;
  dImpon:=dbeContras.Field.AsCurrency;
  dImposta:=dImpon*dAliVa/100;
  Update_iva(strCodIVA,dAliVa,dImpon,dImposta);

End;


function TfBaseFormDoc3.Inserimento_di_riga_contab(var iPK_Codice: Integer;
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
    ibqryContabNUM_REG.AsInteger:=NumReg;
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

    ibqryContabDEPOSITO_CODICE.AsString := dsoDepositi.DataSet.FieldByName('codice').AsString;
    ibqryContabDEPOSITO_DESCR.AsString := dsoDepositi.DataSet.FieldByName('descr').AsString;

    ibqryContabAVERE.AsCurrency:=dAvere;
    ibqryContabDARE.AsCurrency:=dDare;
    ibqryContab.Post;
    Result:=True;
   End;
  Except
   Result:=False;
  End
 End;
end;

procedure TfBaseFormDoc3.dbeNumeroExit(Sender: TObject);
begin
//dbeSerie.SetFocus;
 Try
  intNewNumDoc:=dbeNumero.Field.Asinteger;
 If (intTipoDoc=23) or (intTipoDoc=24) or (intTipoDoc=27)
        or (intTipoDoc=335) or (intTipoDoc=336)then
 begin
  If (Verifica_NumDoc2(dbeNumero.Field.Asinteger))
   Then Begin
          Application.MessageBox('Il numero già esiste!','Errore',mb_ok);
          dbeNumero.SetFocus;
        End;
 end
 else
 begin
  If (Verifica_NumDoc(dbeNumero.Field.Asinteger))
   Then Begin
          Application.MessageBox('Il numero già esiste!','Errore',mb_ok);
          dbeNumero.SetFocus;
        End;
 end
  Except
  End;

end;

function TfBaseFormDoc3.Verifica_NumDoc(
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

function TfBaseFormDoc3.Verifica_NumDoc2(
  iNumDoc_per_Verifica: Integer): Boolean;
Var
 strTabName: String;
begin
  // Lettura di Numero di Documento al base di tipo documento
//  Get_Tab_Name(intTipoDoc,strTabName);

 With (dmodAz.ibqRicerca) Do
 Begin
   Close;
   SQL.Clear;
   SQL.Add('Select NUM_DOC From tab_documenti');
   SQL.Add('Where tipo_doc = '+inttostr(intTipoDoc)+' and clifor_id='+ (LookCliForCod.Value));
   SQL.Add('and NUM_DOC = '+IntToStr(iNumDoc_per_Verifica));
   Open;
   If (IsEmpty)
     Then Result:=False
     Else Result:=True;
   Close
 End;
end;

Procedure TfBaseFormDoc3.Aggiorna_IVA_Totale;
Begin
 Try

  dsoRigheDoc.DataSet.DisableControls;
  dmodAz.ibtTabDet_Doc.First;
  Azzerare_IVA;
  Aggiorna_Spese_IVA;
  While Not(dsoRigheDoc.DataSet.EoF) Do
  Begin
  Aggiorna_IVA(True,dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').asinteger);
  dsoRigheDoc.DataSet.Next;
  End;
  dsoRigheDoc.DataSet.EnableControls;
  Calcola_Totali;
 Except
 End;

End;

procedure TfBaseFormDoc3.Scarico_Distinta(bNormale: Boolean);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
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
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
dmodAz.ibtTabDet_Doc.First;
 With (dmodAz) Do
  While Not(ibtTabDet_Doc.EoF) Do
  Begin
   If (ibtTabDet_Doc.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery2.close;
IBQuery2.ParamByName('a').AsString:= strCodArt;
IBQuery2.Open;
SCAT := IBQuery2.Fieldbyname('UN_MIS2_VAL').AsInteger;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;
           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;

         Try

          If (ibqCont_Art.IsEmpty)
               Then Begin
                       ibqCont_Art.Insert;
                       ibqCont_ArtCODICE_ARTICOLO.AsString:=a;
                       ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;

                    End
               Else ibqCont_Art.Edit;

          if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (ibtTabDet_Doc.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').AsFloat *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end;

         ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
        ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat -ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
        ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

           ibqCont_Art.Post;

         Except
         End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    ibtTabDet_Doc.Next;
  End;
 dmodAz.ibqCont_Art.Close;
end;

procedure TfBaseFormDoc3.Scarico_Distinta_R1(bNormale: Boolean);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
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
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
dmodAz.ibtTabDet_Doc.First;
 With (dmodAz) Do
  While Not(ibtTabDet_Doc.EoF) Do
  Begin
   If (ibtTabDet_Doc.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery2.close;
IBQuery2.ParamByName('a').AsString:= strCodArt;
IBQuery2.Open;

SCAT := IBQuery2.Fieldbyname('UN_MIS2_VAL').AsInteger;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

IBQuery3_R1.close;
IBQuery3_R1.ParamByName('a').AsString:= a;
IBQuery3_R1.Open;
if not IBQuery3_R1.IsEmpty then
begin

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;

         Try

          If (ibqCont_Art.IsEmpty)
               Then Begin
                       ibqCont_Art.Insert;
                       ibqCont_ArtCODICE_ARTICOLO.AsString:=a;
                       ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;

                    End
               Else ibqCont_Art.Edit;

          if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (ibtTabDet_Doc.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').AsFloat *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end;

         ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
        ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat -ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
        ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

           ibqCont_Art.Post;

         Except
         End;
end;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    ibtTabDet_Doc.Next;
  End;
 dmodAz.ibqCont_Art.Close;
end;

procedure TfBaseFormDoc3.Scarico_Distinta2(bNormale: Boolean);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
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
// IBDataSet2.First;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBDataSet2.First;
 With (dmodAz) Do
  While Not(IBDataSet2.EoF) Do
  Begin
   If (IBDataSet2.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=IBDataSet2.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=IBDataSet2.Fieldbyname('DEP').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery2.close;
IBQuery2.ParamByName('a').AsString:= strCodArt;
IBQuery2.Open;
SCAT := IBQuery2.Fieldbyname('UN_MIS2_VAL').AsInteger;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;
           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;

         Try

          If (ibqCont_Art.IsEmpty)
               Then Begin
                       ibqCont_Art.Insert;
                       ibqCont_ArtCODICE_ARTICOLO.AsString:=a;
                       ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;

                    End
               Else ibqCont_Art.Edit;

          if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (IBDataSet2.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    IBDataSet2.FieldByName('QUANTITA').AsFloat *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end;

         ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
        ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat -ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
        ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

           ibqCont_Art.Post;

         Except
         End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBDataSet2.Next;
  End;
 ibqCont_Art.Close;
end;

procedure TfBaseFormDoc3.Scarico_Distinta_R2(bNormale: Boolean);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
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
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
dmodAz.ibtTabDet_Doc.First;
 With (dmodAz) Do
  While Not(IBDataSet2.EoF) Do
  Begin
   If (IBDataSet2.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=IBDataSet2.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=IBDataSet2.Fieldbyname('DEP').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery2.close;
IBQuery2.ParamByName('a').AsString:= strCodArt;
IBQuery2.Open;

SCAT := IBQuery2.Fieldbyname('UN_MIS2_VAL').AsInteger;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

IBQuery3_R1.close;
IBQuery3_R1.ParamByName('a').AsString:= a;
IBQuery3_R1.Open;
if not IBQuery3_R1.IsEmpty then
begin

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;

         Try

          If (ibqCont_Art.IsEmpty)
               Then Begin
                       ibqCont_Art.Insert;
                       ibqCont_ArtCODICE_ARTICOLO.AsString:=a;
                       ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;

                    End
               Else ibqCont_Art.Edit;

          if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (IBDataSet2.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    IBDataSet2.FieldByName('QUANTITA').AsFloat *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end;

         ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
        ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat -ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
        ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

           ibqCont_Art.Post;

         Except
         End;
end;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBDataSet2.Next;
  End;
 dmodAz.ibqCont_Art.Close;
end;

procedure TfBaseFormDoc3.Scarico_Distinta_R3(bNormale: Boolean);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
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
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
dmodAz.ibtTabDet_Doc.First;
 With (dmodAz) Do
  While Not(ibtTabDet_Doc.EoF) Do
  Begin
   If (ibtTabDet_Doc.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=ibtTabDet_Doc.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=ibtTabDet_Doc.Fieldbyname('DEP').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery2.close;
IBQuery2.ParamByName('a').AsString:= strCodArt;
IBQuery2.Open;

SCAT := IBQuery2.Fieldbyname('UN_MIS2_VAL').AsInteger;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

IBQuery3_R3.close;
IBQuery3_R3.ParamByName('a').AsString:= a;
IBQuery3_R3.Open;
if not IBQuery3_R3.IsEmpty then
begin

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;

         Try

          If (ibqCont_Art.IsEmpty)
               Then Begin
                       ibqCont_Art.Insert;
                       ibqCont_ArtCODICE_ARTICOLO.AsString:=a;
                       ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;

                    End
               Else ibqCont_Art.Edit;

          if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (ibtTabDet_Doc.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    ibtTabDet_Doc.FieldByName('QUANTITA').AsFloat *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end;

         ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
        ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat -ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
        ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

           ibqCont_Art.Post;

         Except
         End;
end;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    ibtTabDet_Doc.Next;
  End;
 dmodAz.ibqCont_Art.Close;
end;

procedure TfBaseFormDoc3.Scarico_Distinta_R4(bNormale: Boolean);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
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
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
dmodAz.ibtTabDet_Doc.First;
 With (dmodAz) Do
  While Not(IBDataSet2.EoF) Do
  Begin
   If (IBDataSet2.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
           strCodArt:=IBDataSet2.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=IBDataSet2.Fieldbyname('DEP').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery2.close;
IBQuery2.ParamByName('a').AsString:= strCodArt;
IBQuery2.Open;

SCAT := IBQuery2.Fieldbyname('UN_MIS2_VAL').AsInteger;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

IBQuery3_R3.close;
IBQuery3_R3.ParamByName('a').AsString:= a;
IBQuery3_R3.Open;
if not IBQuery3_R3.IsEmpty then
begin

           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;

         Try

          If (ibqCont_Art.IsEmpty)
               Then Begin
                       ibqCont_Art.Insert;
                       ibqCont_ArtCODICE_ARTICOLO.AsString:=a;
                       ibqCont_ArtDEPOSITO_ID.AsString:=strCodDep;

                    End
               Else ibqCont_Art.Edit;

          if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (IBDataSet2.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    IBDataSet2.FieldByName('QUANTITA').AsFloat *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end;

         ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
        ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat -ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
        ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;

           ibqCont_Art.Post;

         Except
         End;
end;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBDataSet2.Next;
  End;
 dmodAz.ibqCont_Art.Close;
end;

procedure TfBaseFormDoc3.LookCliForDescrChange(Sender: TObject);
begin
If (dsoDocumento.DataSet.State in [dsInsert,dsEdit])
Then
Begin
LookAgCod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookAgDescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;

LookCACod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('CA').AsString;
LookCADescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('CA').AsString;

dsoDocumento.DataSet.FieldByName('SCONTO1').AsInteger:= LookCliForCod.LookupSource.DataSet.FieldByName('SCONTO_TESTATA1').AsInteger;
dsoDocumento.DataSet.FieldByName('SCONTO2').AsInteger:= LookCliForCod.LookupSource.DataSet.FieldByName('SCONTO_TESTATA2').AsInteger;

 If (LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').AsString='')
  Then  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=0
  Else
  begin
    dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=1;
    DBLookupComboBox25.KeyValue :=       LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').Asinteger;
    dsoDocumento.DataSet.FieldByName('IVA_ESENTE_ID').AsInteger:=
       LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').Asinteger;
  end;

if not dmodAz.ibqAltreSedi.IsEmpty then
begin
dsoDocumento.DataSet.FieldByName('PER_ALTRA_DEST').AsInteger:=1;
dmodAz.ibqAltreSedi.First;
RxDBLookupCombo3.KeyValue := dmodAz.ibqAltreSediPK_CODICE.AsInteger;
dsoDocumento.DataSet.FieldByName('ALTRA_DEST2').AsString:= dmodAz.ibqAltreSediPK_CODICE.AsString;
end;
dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
 LookCliForCod.LookupSource.DataSet.FieldByName('CONTROPARTITA_ID').AsInteger;
dbeIndirizzo_cli_for.Field.AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('indirizzo').AsString;
dbeIndirizzo_cli_for2.Field.AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('cap_descr').AsString+' '+
 LookCliForCod.LookupSource.DataSet.FieldByName('com_descr').AsString+' ('+
 LookCliForCod.LookupSource.DataSet.FieldByName('pr_descr').AsString+')';
DBEdit1.Field.Value:=
 LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Value;
dmodAz.ibqTab_DocTEL1.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL1').AsString;
dmodAz.ibqTab_DocTEL2.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL2').AsString;
dmodAz.ibqTab_DocTEL3.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('FAX').AsString;
dbeListino.Field.Value:='';
If (dmodAz.ibTab_Piano_Conti.Locate('Tipo',LookCliForCod.LookupSource.DataSet.FieldByName('ID_Cli_for').asinteger,[]))
Then
dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
  dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger
 Else  ;
If Not(LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value = null)
Then Begin
dbeListino.Field.Value:=
 LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value;
boolNonHaListino:=False;
{dsoAltreDest.DataSet.Close;
                 dmodAz.ibqAltreSedi.parambyname('parIDCLIFOR').asinteger:=
                    LookCliForCod.LookupSource.DataSet.FieldByName('ID_CLI_FOR').asinteger;
                 dsoAltreDest.DataSet.Open;}
End
Else boolNonHaListino:=True;
End;
end;

procedure TfBaseFormDoc3.LookCliForCodChange(Sender: TObject);
begin
If (dsoDocumento.DataSet.State in [dsInsert,dsEdit])
Then
Begin
LookAgCod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookAgDescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;

LookCACod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('CA').AsString;
LookCADescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('CA').AsString;

dsoDocumento.DataSet.FieldByName('SCONTO1').AsInteger:= LookCliForCod.LookupSource.DataSet.FieldByName('SCONTO_TESTATA1').AsInteger;
dsoDocumento.DataSet.FieldByName('SCONTO2').AsInteger:= LookCliForCod.LookupSource.DataSet.FieldByName('SCONTO_TESTATA2').AsInteger;

 If (LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').AsString='')
  Then  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=0
  Else
  begin
    dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=1;
    DBLookupComboBox25.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').Asinteger;
    dsoDocumento.DataSet.FieldByName('IVA_ESENTE_ID').AsInteger:=
       LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').Asinteger;
  end;
if not dmodAz.ibqAltreSedi.IsEmpty then
begin
dsoDocumento.DataSet.FieldByName('PER_ALTRA_DEST').AsInteger:=1;
dmodAz.ibqAltreSedi.First;
RxDBLookupCombo3.KeyValue := dmodAz.ibqAltreSediPK_CODICE.AsInteger;
dsoDocumento.DataSet.FieldByName('ALTRA_DEST2').AsString:= dmodAz.ibqAltreSediPK_CODICE.AsString;
//dsoDocumento.DataSet.FieldByName('ALTRA_DEST2').AsString:=RxDBLookupCombo3.Text;
//dsoDocumento.DataSet.FieldByName('ALTRA_DEST2').AsString:=RxDBLookupCombo3.Text;
end;

dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
dbeIndirizzo_cli_for.Field.AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('indirizzo').AsString;
dbeIndirizzo_cli_for2.Field.AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('cap_descr').AsString+' '+
 LookCliForCod.LookupSource.DataSet.FieldByName('com_descr').AsString+' ('+
 LookCliForCod.LookupSource.DataSet.FieldByName('pr_descr').AsString+')';
DBEdit1.Field.Value:=
 LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Value;
dmodAz.ibqTab_DocTEL1.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL1').AsString;
dmodAz.ibqTab_DocTEL2.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL2').AsString;
dmodAz.ibqTab_DocTEL3.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('FAX').AsString;
dbeListino.Field.Value:='';

If (dmodAz.ibTab_Piano_Conti.Locate('Tipo',LookCliForCod.LookupSource.DataSet.FieldByName('ID_Cli_for').asinteger,[]))
Then
dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
  dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger
 Else  ;

If Not(LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value = null)
Then Begin
dbeListino.Field.Value:=
 LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value;
boolNonHaListino:=False;
{dsoAltreDest.DataSet.Close;
                 dmodAz.ibqAltreSedi.parambyname('parIDCLIFOR').asinteger:=
                    LookCliForCod.LookupSource.DataSet.FieldByName('ID_CLI_FOR').asinteger;
                 dsoAltreDest.DataSet.Open;}
End
Else boolNonHaListino:=True;
End;
end;

procedure TfBaseFormDoc3.ToolButton5Click(Sender: TObject);
var
i:integer;
a:integer;
b:string;
begin
If Not(FileExists(ExtractFilePath(Application.ExeName)+'frBarCode.frf'))
Then  Begin
 MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
 Exit;
End;
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibqStampaDoc.Open;

 dmodAz.RxBarCode.Close;
 dmodAz.RxBarCode.Open;
 dmodAz.RxBarCode.EmptyTable;
 dsoRigheDoc.DataSet.DisableControls;
 dsoRigheDoc.DataSet.First;
 while not  dsoRigheDoc.DataSet.Eof do
 begin
 a:=dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsInteger;
 b:=dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 IBQuery2.Close;
 IBQuery2.ParamByName('a').Value := b;
 IBQuery2.Open;
 for i:=1 to a do
begin
 dmodAz.RxBarCode.Insert;
 dmodAz.RxBarCode.FieldByName('CODICE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 dmodAz.RxBarCode.FieldByName('DESCRIZIONE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('DESCR').AsString;
 dmodAz.RxBarCode.FieldByName('COLORE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('COL').AsString;
 dmodAz.RxBarCode.FieldByName('PREZZOEURO').AsCurrency:=
        dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency;
 dmodAz.RxBarCode.FieldByName('PREZZOLIRE').AsCurrency:=
        (dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency*1936.27);

 dmodAz.RxBarCode.FieldByName('PVEuro').AsCurrency:=
         (IBQuery2.FieldByName('PREZZO_IVATO').AsCurrency);
 dmodAz.RxBarCode.FieldByName('PVLire').AsCurrency:=
         (IBQuery2.FieldByName('PREZZO_IVATO').AsCurrency*1936.27);
end;
dsoRigheDoc.DataSet.Next;

 end;
dsoRigheDoc.DataSet.EnableControls;
fStBC:=TfStBC.Create(Self);
fStBC.ShowModal;
fStBC.Free;
With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frBarCode.frf');
     ShowReport;
  End;
 dmodAz.ibqStampaDoc.Close;
end;

procedure TfBaseFormDoc3.ToolButton8Click(Sender: TObject);
Var
 intAdd: Integer;
begin
PD:=0;
 If (tbtnEsci.Enabled)
   Then Exit;

 If (intTipoDoc>20) Then
  intAdd:=20
 Else intAdd:=10;

 Case (intTipoDoc) Of
  14: Pass_Doc(210);
  24: Pass_Doc(210);
  17: Pass_Doc(210);
  27: Pass_Doc(210);
  210: Pass_Doc(210);
 End;
end;


procedure TfBaseFormDoc3.ToolButton11Click(Sender: TObject);
begin
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'listaser'+'.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibqStampaDoc.ParamByName('parID_Doc').Value := dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
 dmodAz.ibqStampaDoc.Open;
 dmodAz.ibtStampaDetDoc.open;
 dmodAz.ibtSeriali.open;

 IBDataSet3.Close;
 IBDataSet3.ParamByName('ddd').Value := dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
 IBDataSet3.Open;

  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'listaser'+'.frf');
     ShowReport;
 end;
 dmodAz.ibtSeriali.Close;
end;

procedure TfBaseFormDoc3.ToolButton6Click(Sender: TObject);
var
a:integer;
begin
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;

 // Prepare report
while dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger <= STRTOINT(edit2.text) do
begin
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibqStampaDoc.Open;
a:=0;
 if dmodAz.ibtStampaDetDoc.Locate('Sconto1','99',[]) then
a:=1;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'.frf');
     PrintReport;
  End;
if  dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger = STRTOINT(edit2.text) then exit;
 dsoDocumento.DataSet.next;

end;
dmodAz.ibqStampaDoc.Close;
end;

procedure TfBaseFormDoc3.RxDBLookupCombo2Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo3.KeyValue := RxDBLookupCombo2.KeyValue;
RxDBLookupCombo4.KeyValue := RxDBLookupCombo2.KeyValue;
RxDBLookupCombo5.KeyValue := RxDBLookupCombo2.KeyValue;
end;

procedure TfBaseFormDoc3.RxDBLookupCombo3Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo2.KeyValue := RxDBLookupCombo3.KeyValue;
RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
RxDBLookupCombo5.KeyValue := RxDBLookupCombo3.KeyValue;

end;

procedure TfBaseFormDoc3.RxDBLookupCombo5Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo2.KeyValue := RxDBLookupCombo5.KeyValue;
RxDBLookupCombo3.KeyValue := RxDBLookupCombo5.KeyValue;
RxDBLookupCombo4.KeyValue := RxDBLookupCombo5.KeyValue;

end;

procedure TfBaseFormDoc3.dbcbAltraDestClick(Sender: TObject);
begin
if dbcbAltraDest.Checked then
begin
RxDBLookupCombo2.Enabled := True;
RxDBLookupCombo3.Enabled := True;
RxDBLookupCombo4.Enabled := True;
RxDBLookupCombo5.Enabled := True;
end
else
begin
RxDBLookupCombo2.Enabled := False;
RxDBLookupCombo3.Enabled := False;
RxDBLookupCombo4.Enabled := False;
RxDBLookupCombo5.Enabled := False;
end;
end;


procedure TfBaseFormDoc3.ToolButton2Click(Sender: TObject);
var
i:integer;
a:integer;
b:string;
begin

 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frBarCode2.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibqStampaDoc.Open;
// dmodAz.ibTab_Articoli_.Close;
// dmodAz.ibTab_Articoli_.Open;

// dmodAz.ibqStampaDoc.First;
 dmodAz.RxBarCode.Close;
 dmodAz.RxBarCode.Open;
 dmodAz.RxBarCode.EmptyTable;
dsoRigheDoc.DataSet.DisableControls;
dmodAz.RxBarCode.DisableControls;
dsoRigheDoc.DataSet.First;
 while not  dsoRigheDoc.DataSet.Eof do
 begin
// a:=dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsInteger;
 b:=dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 IBQuery2.Close;
 IBQuery2.ParamByName('a').Value := b;
 IBQuery2.Open;

 for i:=1 to 1 do
begin
 dmodAz.RxBarCode.Insert;
 dmodAz.RxBarCode.FieldByName('CODICE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 dmodAz.RxBarCode.FieldByName('DESCRIZIONE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('DESCR').AsString;
 dmodAz.RxBarCode.FieldByName('COLORE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('COL').AsString;
 dmodAz.RxBarCode.FieldByName('PREZZOEURO').AsCurrency:=
        dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency;
 dmodAz.RxBarCode.FieldByName('PREZZOLIRE').AsCurrency:=
        (dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency*1936.27);

 dmodAz.RxBarCode.FieldByName('PVEuro').AsCurrency:=
         (IBQuery2.FieldByName('PREZZO_IVATO').AsCurrency);
 dmodAz.RxBarCode.FieldByName('PVLire').AsCurrency:=
         (IBQuery2.FieldByName('PREZZO_IVATO').AsCurrency*1936.27);
end;
dsoRigheDoc.DataSet.Next;

 end;
dsoRigheDoc.DataSet.EnableControls;
dmodAz.RxBarCode.EnableControls;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frBarCode2.frf');
     ShowReport;
 End;
 dmodAz.ibqStampaDoc.Close;

end;




procedure TfBaseFormDoc3.LookAgDescrExit(Sender: TObject);
begin
DBEdit1.Field.Value:=
 LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;
if not varisnull(LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Value) then
RxDBLookupCombo6.KeyValue:=LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;
end;

procedure TfBaseFormDoc3.LookAgDescrCloseUp(Sender: TObject);
begin
DBEdit1.Field.Value:=
  LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;
if not varisnull(LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Value) then
RxDBLookupCombo6.KeyValue:=LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;
end;

procedure TfBaseFormDoc3.ToolButton14Click(Sender: TObject);
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,strCodiceListino,art: String;
 boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin

 If (tbtnEsci.Enabled)
   Then Exit;
 fLettBarcode:=TfLettBarcode.Create(self);
fLettBarcode.strCodiceListino:=dbeListino.Field.AsString;
 fLettBarcode.ShowModal;
 fLettBarcode.Free;

end;

procedure TfBaseFormDoc3.LookVettoreCodCloseUp(Sender: TObject);
begin
{dbeVettore_Ind.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('indirizzo').AsString;

dbeVettore_Ind2.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('citta').AsString+'-'+
  LookVettoreCod.ListSource.DataSet.FieldByName('cap').AsString+'('+
  LookVettoreCod.ListSource.DataSet.FieldByName('prov').AsString+')';}

end;

procedure TfBaseFormDoc3.LookAgCodChange(Sender: TObject);
begin
DBEdit1.Field.Value:=
  LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;
if not varisnull(LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Value) then
RxDBLookupCombo6.KeyValue:=LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;

end;

procedure TfBaseFormDoc3.LookAgDescrChange(Sender: TObject);
begin
DBEdit1.Field.Value:=
  LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;
if not varisnull(LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Value) then
RxDBLookupCombo6.KeyValue:=LookAgCod.LookupSource.DataSet.FieldByName('PROVVIGIONE').Text;

end;

procedure TfBaseFormDoc3.Apri;
begin
dmodAz.dsoqTabCli.DataSet.Open;
dmodAz.dsoqTabFor.DataSet.Open;
dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=intTipoDoc;
dsoDocumento.DataSet.Open;
dmodAz.tabSeriali.Open;
dsoRigheDoc.DataSet.Open;
dsAspetto.DataSet.Open;
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
tabSeriali.Open;
dmodAz.ibTabPersAz.Open;
end;

procedure TfBaseFormDoc3.SpeedButton1Click(Sender: TObject);
Var
 strTipo_Serv: String;
 iNRiga: Integer;
begin
If (tbtnEsci.Enabled)
   Then Exit;
If (LookNostrDepCod.KeyValue=null)
 Then Begin
  MessageDlg('Scegli un deposito!!',mtWarning,[mbOK],0);
  exit;
 End;
If (LookCliForCod.KeyValue=null)
 Then Begin
  MessageDlg('Scegli un '+laCliFor.Caption+'.',mtWarning,[mbOK],0);
  exit;
 End;
nuovissimo := True;
boolNuovo:=True;
boolModifica:=False;
boolDoc_Vendita:=boolVendita;
intID_Doc:=dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
iCliForID:=LookCliForCod.Field.AsInteger;
strCodDep:=LookNostrDepCod.KeyValue;
strTipo_Servizio:='ARTICOLO';
strCodiceListino:=dbeListino.Field.AsString;
dSc1:=dbeSconto1.Field.AsFloat;
dSc2:=dbeSconto2.Field.AsFloat;
dScM:=dbeImportoSconto.Field.AsFloat;
Aggiorna_IVA(True,iNRiga);
Calcola_Totali;
End;


procedure TfBaseFormDoc3.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then dbeCodice.SetFocus;
end;

procedure TfBaseFormDoc3.dbeQtaUMKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then RxDBCalcEdit5.SetFocus;
end;

procedure TfBaseFormDoc3.RxDBCalcEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then DBEdit16.SetFocus;
end;

procedure TfBaseFormDoc3.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then DBEdit17.SetFocus;
end;

procedure TfBaseFormDoc3.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then RxDBCalcEdit7.SetFocus;
end;

procedure TfBaseFormDoc3.RxDBCalcEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then SpeedButton1.Click;
end;

procedure TfBaseFormDoc3.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfBaseFormDoc3.ToolButton18Click(Sender: TObject);
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,strCodiceListino,art: String;
 boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin
boolDoc_Vendita:=boolVendita;
 If (tbtnEsci.Enabled)
   Then Exit;
 strCodDep:=LookNostrDepCod.KeyValue;
 RxMemoryData1.Open;
 RxMemoryData1.EmptyTable;
 RxMemoryData1.Open;
   FileData := TStringList.Create;
   try
      OpenDialog1.Title := 'Apertura file di documenti';
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
      if OpenDialog1.Execute then begin
      FileData.Clear;
      FileData.LoadFromFile(OpenDialog1.FileName);
      for i := 0 to FileData.Count - 1 do begin
if not RxMemoryData1.Locate('CODICE',(Trim(Copy(FileData.Strings[i], 1, 6))),[]) then
begin
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 6));

x:=length(FloatToStr((StrToFloat(RxMemoryData1.FieldByName('CODICE').AsString))));
if x =8 then
RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 7));

try
begin
RxMemoryData1.FieldByName('QTA').AsFloat := StrToFloat(trim(Copy(FileData.Strings[i], 8, 5)));
end
except
RxMemoryData1.FieldByName('QTA').AsFloat :=0;
end;
end
else begin
         RxMemoryData1.Edit;
x:=length(FloatToStr((StrToFloat(RxMemoryData1.FieldByName('CODICE').AsString))));
if x =8 then
RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 7));
try
begin
RxMemoryData1.FieldByName('QTA').AsFloat := RxMemoryData1.FieldByName('QTA').AsFloat+
        StrToFloat(trim(Copy(FileData.Strings[i], 8, 5)));
end
except
RxMemoryData1.FieldByName('QTA').AsInteger :=RxMemoryData1.FieldByName('QTA').AsInteger;
end;
end;
         RxMemoryData1.Post;
      end;
      end;
   finally
      FileData.Free;
   end;
if RxMemoryData1.IsEmpty then exit;

iNRiga:=1;
RxMemoryData1.DisableControls;
RxMemoryData1.Last;
dsoRigheDoc.DataSet.DisableControls;

  If (dsoRigheDoc.DataSet.IsEmpty)
   Then iNRiga:=1
   Else Begin
         dsoRigheDoc.DataSet.Last;
         iNRiga:=dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
        End;
intID_Doc:=dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
while not RxMemoryData1.Bof do
begin
nuovissimo := True;
strTipo_Serv:='ARTICOLO';
nuovissimo := True;
iNRiga:=1+dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
imb:=1;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := RxMemoryData1.fieldbyname('CODICE').AsString;
IBQuery2.open;

if IBQuery2.IsEmpty then
begin
IBQuery5.Close;
IBQuery5.ParamByName('a').AsString := RxMemoryData1.fieldbyname('CODICE').AsString;
IBQuery5.Open;
if not IBQuery5.IsEmpty then
begin
art :=IBQuery5.fieldbyname('codice_articolo').AsString;
imb := IBQuery5.fieldbyname('quantita').AsFloat;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := art;
IBQuery2.open;
end;
end;

if not (IBQuery2.IsEmpty) then
begin
With IBQuery2 do
Begin
dsoRigheDoc.DataSet.Insert;
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:= fieldbyname('CODICE_ARTICOLO').AsString;
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=fieldbyname('DESCR').AsString;
If (boolDoc_Vendita) then
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('PREZZO_BASE').AsFloat
Else
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('COSTO_STANDART').AsFloat;
if not VarIsNull(fieldbyname('PROVVIGIONE').AsFloat) then
dsoRigheDoc.DataSet.FieldByName('PERC_PROVV').AsFloat:=fieldbyname('PROVVIGIONE').AsFloat;

dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString:=strTipo_Serv;
dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=dbeSconto1.Field.AsInteger;
dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=dbeSconto2.Field.AsInteger;
dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('DOC_ID').AsInteger:= intID_Doc;
dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger:=iNRiga;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=strCodDep;
dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;

dsoRigheDoc.DataSet.FieldByName('PREZZOLIST').AsFloat:=fieldbyname('PREZZO_BASE').AsFloat;

  if (strCodiceListino = '1') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP2').AsString;
  if (strCodiceListino = '2') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP3').AsString;
  if (strCodiceListino = '3') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP4').AsString;
  if (strCodiceListino = '4') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP5').AsString;

if dmodAz.Tipo = 1 then
begin
  if strCodiceListino = '1' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC21').AsString;
  if strCodiceListino = '2' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC31').AsString;
  if strCodiceListino = '3' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC41').AsString;
  if strCodiceListino = '4' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC51').AsString;
end;
   If (boolDoc_Vendita)
     Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_VENDITA').AsInteger
     Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_ACQUISTO').AsInteger;
dsoRigheDoc.dataset.FieldByName('CODICE_IVA_ID').asinteger := fieldByname('CODICE_IVA_ID').AsInteger;
Try
dsoRigheDoc.DataSet.fieldByName('UNITA_MISURA').AsString:=
 FieldByName('UNITA_DI_MISURA1_ID').AsString;
Except
End;
dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat :=(RxMemoryData1.fieldbyname('QTA').AsFloat/1000);
dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;

dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=(RxMemoryData1.fieldbyname('QTA').AsFloat/1000)*imb;


try
  dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsCurrency:=
      dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency;
//      dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat;

 Except
   dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsCurrency:=0;
 End;

 Try
   dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
   dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsCurrency;

   dSC1 := dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency*dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100;
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency-dSC1;
   dSC2 := dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency*dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat/100;
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency-dSC2;
   dSC  := dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat;
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency-dSC;
 Except
   dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=0;
   dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=0;
   dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
   dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
   dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsCurrency;
 End;
  Try
     Begin
      dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsCurrency:=
         dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency +
         dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency * fieldByname('CODICE_IVA_ID').AsInteger
                /100;
     End;
  Except
   dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsCurrency:=dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency;
   Beep;
  End;

end;
end;
RxMemoryData1.Prior;
end;
//end;
RxMemoryData1.EnableControls;
dsoRigheDoc.DataSet.EnableControls;
Aggiorna_IVA_Totale;
Calcola_Totali;
end;




procedure TfBaseFormDoc3.ToolButton20Click(Sender: TObject);
var
i:integer;
a:integer;
b:string;
begin

 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibqStampaDoc.Open;

 dmodAz.RxBarCode.Close;
 dmodAz.RxBarCode.Open;
 dmodAz.RxBarCode.EmptyTable;
 dsoRigheDoc.DataSet.DisableControls;
 dsoRigheDoc.DataSet.First;
 while not  dsoRigheDoc.DataSet.Eof do
 begin
 a:=dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsInteger;
 b:=dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 IBQuery2.Close;
 IBQuery2.ParamByName('a').Value := b;
 IBQuery2.Open;

 dmodAz.RxBarCode.Insert;
 dmodAz.RxBarCode.FieldByName('CODICE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 dmodAz.RxBarCode.FieldByName('DESCRIZIONE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('DESCR').AsString;
 dmodAz.RxBarCode.FieldByName('COLORE').AsString:=
        dsoRigheDoc.DataSet.FieldByName('COL').AsString;
 dmodAz.RxBarCode.Post;
dsoRigheDoc.DataSet.Next;

 end;
dsoRigheDoc.DataSet.EnableControls;
 dmodAz.RxBarCode.First;
fStBC:=TfStBC.Create(Self);
fStBC.ShowModal;
fStBC.Free;
If Not(FileExists(ExtractFilePath(Application.ExeName)+'frSTSERSEL.frf'))
Then  Begin
 MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
 Exit;
End;
With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSTSERSEL.frf');
     ShowReport;
  End;
 dmodAz.ibqStampaDoc.Close;
end;


procedure TfBaseFormDoc3.ToolButton22Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k, m1,m2,m3 : Integer;
A, b, c, x,S1,S2,S3, P2,P3,P4,P5,Scelta, Scelta2 : String;
UserFTP,PassFTP,HostFTP,DirFTP, PortFTP:string;
g, h, l, m : real;
Year, Month, Day : Word;
begin
 x:=ExtractFilePath(Application.Exename)+LookCliForDescr.Text+'_'+dbeNumero.Text+'.dat';

  AssignFile(F, x);
  Rewrite(F);

  dsoRigheDoc.DataSet.first;
  while not dsoRigheDoc.DataSet.Eof do
  begin
  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := dsoRigheDoc.DataSet.Fieldbyname('CODICE_ARTICOLO').asstring;
  S1:='                    ';
  m1:=Length(b);
  if m1>=13 then
  b:=leftstr(b,13)
  else
  begin
  m1:=13-m1;
  b:=b+leftstr(S1,m1);
  end;

  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('QUANTITA').AsFloat) then
  x := FormatFloat('0.00',dsoRigheDoc.DataSet.Fieldbyname('QUANTITA').AsFloat)
else
x := '0';
  S1:='                    ';
  m1:=Length(x);
  if m1>=13 then
  x:=leftstr(x,13)
  else
  begin
  m1:=13-m1;
  x:=x+leftstr(S1,m1);
  end;

  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('COSTO').AsCurrency) then
  P5:= FormatFloat('0.000',dsoRigheDoc.DataSet.Fieldbyname('COSTO').AsCurrency)
else
  P5 := '0';
  S1:='                    ';
  m1:=Length(P5);
  if m1>=7 then
  P5:=leftstr(P5,7)
  else
  begin
  m1:=7-m1;
  P5:=P5+leftstr(S1,m1);
  end;

  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('A').asstring) then
  P2 := dsoRigheDoc.DataSet.Fieldbyname('A').asstring;
  S1:='                             ';
  m1:=Length(P2);
  if m1>=30 then
  P2:=leftstr(P2,30)
  else
  begin
  m1:=30-m1;
  P2:=P2+leftstr(S1,m1);
  end;

  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('B').asstring) then
  P3 := dsoRigheDoc.DataSet.Fieldbyname('B').asstring;
  S1:='                             ';
  m1:=Length(P3);
  if m1>=30 then
  P3:=leftstr(P3,30)
  else
  begin
  m1:=30-m1;
  P3:=P3+leftstr(S1,m1);
  end;

  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('C').asstring) then
  P4 := dsoRigheDoc.DataSet.Fieldbyname('C').asstring;
  S1:='                             ';
  m1:=Length(P4);
  if m1>=30 then
  P4:=leftstr(P4,30)
  else
  begin
  m1:=30-m1;
  P4:=P4+leftstr(S1,m1);
  end;

  Writeln(F, b + x + P5 + P2 + P3 + P4);
dsoRigheDoc.DataSet.Next;
end;
  CloseFile(F);
end;

procedure TfBaseFormDoc3.DBCheckBox1Click(Sender: TObject);
begin
if DBCheckBox1.Checked then
begin
Label22.Enabled := True;
RxDBLookupCombo7.Enabled := True;
RxDBLookupCombo8.Enabled := True;
Label24.Enabled := True;
RxDBLookupCombo10.Enabled := True;
RxDBLookupCombo11.Enabled := True;
end
else
begin
Label22.Enabled := False;
RxDBLookupCombo7.Enabled := False;
RxDBLookupCombo8.Enabled := False;
Label24.Enabled := False;
RxDBLookupCombo10.Enabled := false;
RxDBLookupCombo11.Enabled := false;
end;

end;

procedure TfBaseFormDoc3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
case key of
 VK_F5 : begin
         tbtnaInsert.Click;
         end;
 VK_F6 : begin
         tbtnaEdit.Click;
         end;
 VK_F8 : begin
         tbtnaDel.Click;
         end;
 VK_F12 : begin
         if tbtnElimina.Enabled then
         tbtnElimina.Click;
         end;
//    else fDocArt.KeyPreview := False;
end;

end;

procedure TfBaseFormDoc3.dbeNumeroMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
{
  If (dbeNumero.Text<>'')
Then  dbeNumeroExit(sender);}
end;

procedure TfBaseFormDoc3.laCliForDblClick(Sender: TObject);
begin
If (boolVendita) Then
Begin
fClienti:=TfClienti.Create(Self);
fClienti.ShowModal;
fClienti.Free;
end
else
begin
fForn:=TfForn.Create(Self);
fForn.ShowModal;
fForn.Free;
end;

end;

procedure TfBaseFormDoc3.ToolButton24Click(Sender: TObject);
Var
 intAdd: Integer;
begin
PD:=1;
 If (intTipoDoc>20) Then
  intAdd:=20
 Else intAdd:=10;

 Case (intTipoDoc) Of
  14: Pass_Doc(intAdd+3);
  24: Pass_Doc(intAdd+3);
  17: Pass_Doc(intAdd+3);
  27: Pass_Doc(intAdd+3);
  211: Pass_Doc(23);
  210: Pass_Doc(13);
  235: Pass_Doc(13);
 End;
TERMINA;
end;

procedure TfBaseFormDoc3.SpeedButton4Click(Sender: TObject);
begin
If (boolVendita) Then
Begin
fClienti:=TfClienti.Create(Self);

fClienti.ShowModal;
fClienti.Free;
end
else
begin
fForn:=TfForn.Create(Self);

fForn.ShowModal;
fForn.Free;
end;

end;

procedure TfBaseFormDoc3.PassaTutte;
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
 saveplace2 : TBookmark;
begin
If (dsoRigheDoc.dataset.isEmpty)
Then Exit;
If (LookCauMagCod.KeyValue=Null)
Then Begin
MessageDlg('La Causale magazzino non è stata scelta!',mtWarning,[mbRetry],0);
Exit;
End;
If (dbeNumero.Text='')
Then Begin
MessageDlg('Immettere un numero di documento!!!',mtWarning,[mbRetry],0);
Exit;
End;


Edit2.SetFocus;

If (dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString='')
Then
IF (MessageDlg('Pagamento non selezionato, Continuare ?!',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
then Exit;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
Try
SavePlace2 :=  dsoDocumento.DataSet.GetBookmark;
If (boolInsert) = false then //dsoDocumento.DataSet.State in [dsInsert])
begin
Elimina_Scadenza;
elimina_Contab(int_ID_Docum);
Aggiornamento_Contabilita_TEMP( False);
{
If ((intTipoDoc = 13) or (intTipoDoc = 350) or
   (intTipoDoc = 14) or (intTipoDoc = 210) or (intTipoDoc = 135)) then
Scarico_Distinta2(False);
}
If ((intTipoDoc = 13) or (intTipoDoc = 14)) then
Scarico_Distinta_R4(False);

If ((intTipoDoc = 235)) then
Scarico_Distinta_R2(False);

if DBCheckBox1.Checked then
Aggiornamento_Contabilita_TEMP2( False);
IbqDel.ExecSQL;
IBDataSet1.Close;
IBDataSet2.Close;
end;
dsoDocumento.DataSet.Edit;
////////
if LookVettoreCod.Text <> '' then
begin
dbeVettore_Ind.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('indirizzo').AsString;

dbeVettore_Ind2.Field.AsString:=
  LookVettoreCod.ListSource.DataSet.FieldByName('citta').AsString+'-'+
  LookVettoreCod.ListSource.DataSet.FieldByName('cap').AsString+'('+
  LookVettoreCod.ListSource.DataSet.FieldByName('prov').AsString+')';
end;
////////
Aggiorna_IVA_Totale;
Calcola_Totali;
If (dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger=1)
Then Azzerare_IVA;
cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;
if dbcbAltraDest.Checked then
dsoDocumento.DataSet.FieldByName('ALTRA_DEST').AsString :=
   RxDBLookupCombo2.Text+' '+RxDBLookupCombo3.Text+' '+
   RxDBLookupCombo4.Text+' '+RxDBLookupCombo5.Text;

If ((boolInsert) and (intTipoDoc<>23)and (intTipoDoc<>24) and (intTipoDoc<>27) and (intTipoDoc<>31) and (intTipoDoc<>336)
        and (intTipoDoc<>335)) THEN
begin
Set_Num_Doc;
if (boolVendita or (intTipoDoc = 135)) then
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;
end;
dsoDocumento.DataSet.Post ;

//Elimina_Scadenza;
 If (dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString<>'')
  Then
Insert_Scadenza;
If ((intTipoDoc = 24) or (intTipoDoc = 27) or
   (intTipoDoc = 14) or (intTipoDoc = 17) or (intTipoDoc = 25) or (intTipoDoc = 28) or
   (intTipoDoc = 15) or (intTipoDoc = 15))
Then
If (boolVendita)
Then Insert_Contab_Vend(int_ID_Docum)
Else
if Conta_acq='S' then
 Insert_Contab_Acq(int_ID_Docum);

//END
Aggiornamento_Contabilita( True );

{If ((intTipoDoc = 13) or (intTipoDoc = 350) or
   (intTipoDoc = 14) or (intTipoDoc = 210) or (intTipoDoc = 135)) then
Scarico_Distinta(True); }

If ((intTipoDoc = 13) or (intTipoDoc = 14)) then
Scarico_Distinta_R3(True);

If ((intTipoDoc = 235)) then
Scarico_Distinta_R1(True);

if DBCheckBox1.Checked then
Aggiornamento_Contabilita2( True );

if tipodoc = 151 then
Scarico_Distinta(True);

 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
inherited;
Disable_Panels(True);
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace2);
dsoDocumento.DataSet.FreeBookmark(SavePlace2);

dsoDocumento.DataSet.Locate('ID_DOCUMENTO',int_ID_Docum,[]);
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
 ToolButton6.Enabled:=True;
 ToolButton5.Enabled:=True;
 ToolButton11.Enabled:=True;
 ToolButton2.Enabled:=True;
ToolButton20.Enabled:=True;
ToolButton22.Enabled:=True;

Panel2.Enabled := False;
end;

procedure TfBaseFormDoc3.TERMINA;
begin
Disable_Panels(True);
tbtnNumDoc.Enabled:=True;
Panel2.Enabled := False;
tbtnPrint.Enabled:=True;
ToolButton6.Enabled:=True;
ToolButton5.Enabled:=True;
ToolButton11.Enabled:=True;
ToolButton2.Enabled:=True;
ToolButton20.Enabled:=True;
ToolButton22.Enabled:=True;

tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
end;

procedure TfBaseFormDoc3.ToolButton25Click(Sender: TObject);
Var
 intAdd: Integer;
begin
PD:=0;
 If (tbtnEsci.Enabled)
   Then Exit;

 If (intTipoDoc>20) Then
  intAdd:=20
 Else intAdd:=10;

 Case (intTipoDoc) Of
  14: Pass_Doc(210);
  24: Pass_Doc(210);
  17: Pass_Doc(210);
  27: Pass_Doc(210);
  210: Pass_Doc(210);
  350: Pass_Doc(13);
 End;
end;

procedure TfBaseFormDoc3.ToolButton26Click(Sender: TObject);
Var
 intAdd: Integer;
begin
PD:=0;
 If (tbtnEsci.Enabled)
   Then Exit;

 If (intTipoDoc>20) Then
  intAdd:=20
 Else intAdd:=10;

 Case (intTipoDoc) Of
  14: Pass_Doc(350);
  17: Pass_Doc(350);
 End;
end;

procedure TfBaseFormDoc3.dbeNumeroKeyPress(Sender: TObject; var Key: Char);
begin

If (Key=#13) Then dbeDataDoc.SetFocus;
end;

procedure TfBaseFormDoc3.dbeDataDocKeyPress(Sender: TObject;
  var Key: Char);
begin

If (Key=#13) Then LookCliForDescr.SetFocus;
end;

end.

