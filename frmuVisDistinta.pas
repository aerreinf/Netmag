Unit frmuVisDistinta;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, 
  Forms, Dialogs, ToolWin, ComCtrls, ActnList, SConnect, ExtCtrls, Db,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, DBCGrids, RxLookup, ToolEdit,
  RXDBCtrl, IBCustomDataSet, IBStoredProc, CurrEdit,Variants, Buttons,INIFiles,
  IBQuery, IBUpdateSQL;

Type
  TfrmVisDistinta = Class(TForm)
    tbCtrl: TToolBar;
    tbtnEsci: TToolButton;
    sep1: TToolButton;
    tbtnNuovo: TToolButton;
    tbtnModifica: TToolButton;
    sep2: TToolButton;
    tbtnElimina: TToolButton;
    sep3: TToolButton;
    tbtnSalva: TToolButton;
    tbtnAnnulla: TToolButton;
    sep4: TToolButton;
    alVisDistinte: TActionList;
    actEsci: TAction;
    actNuovo: TAction;
    actModifica: TAction;
    actElimina: TAction;
    actSalva: TAction;
    actAnnulla: TAction;
    dsDistinte: TDataSource;
    dsDistinte_Det: TDataSource;
    pnlTagliaColori: TPanel;
    pnlDati: TPanel;
    pnlMain: TPanel;
    lblCodArt: TLabel;
    Label2: TLabel;
    dbgDett: TDBGrid;
    dsTaglia: TDataSource;
    dbcgTaglia: TDBCtrlGrid;
    dbeTaglia: TDBEdit;
    Label3: TLabel;
    dbeManodopera: TDBEdit;
    Label4: TLabel;
    dbeRicamo: TDBEdit;
    Label5: TLabel;
    dbeFasonista: TDBEdit;
    Label6: TLabel;
    dbeSituazione: TDBEdit;
    Label7: TLabel;
    dbeCoppe: TDBEdit;
    Label8: TLabel;
    dbeAccessori: TDBEdit;
    Label9: TLabel;
    dbeAltro1: TDBEdit;
    Label10: TLabel;
    dbeAltro2: TDBEdit;
    Label11: TLabel;
    dbeAltro3: TDBEdit;
    Label16: TLabel;
    dbeAltro4: TDBEdit;
    dbnDist_Dett: TDBNavigator;
    lblSubtotaleCosto: TLabel;
    dbeSubtotaleCosto: TDBEdit;
    rxdblcDistDett_CodArt: TRxDBLookupCombo;
    rxdblcDistDett_DescrArt: TRxDBLookupCombo;
    dbeDett_Qta: TDBEdit;
    dbeDett_Costo: TDBEdit;
    dsArticoli_Acc: TDataSource;
    dsArticoli_Vend: TDataSource;
    dbeDist_CodArt: TDBEdit;
    dbeDist_Descr: TDBEdit;
    dbeDett_Prezzo: TDBEdit;
    tbtnStampa: TToolButton;
    actStampa_corrente: TAction;
    ToolButton1: TToolButton;
    acrRicercaDistinta: TAction;
    dbchbxSc: TDBComboBox;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    dbeRicar1perc: TDBEdit;
    dbeRicar2perc: TDBEdit;
    dbeRicarLire: TDBEdit;
    dbeCosto: TDBEdit;
    dbePrezzoVendita: TDBEdit;
    IBDataSet1: TIBDataSet;
    IBDataSet1CODICE_ARTICOLO: TIBStringField;
    IBDataSet1PREZZO_BASE: TFloatField;
    StatusBar1: TStatusBar;
    DBEdit2: TDBEdit;
    IBStoredProc1: TIBStoredProc;
    IBStoredProc1CODICE: TIntegerField;
    IBDataSet1COSTO_STANDART: TFloatField;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    LookCliForDescr: TRxDBLookupCombo;
    Label19: TLabel;
    dbeRicarLire2: TDBEdit;
    CheckBox1: TCheckBox;
    RxCalcEdit1: TRxCalcEdit;
    DBEdit4: TDBEdit;
    Label20: TLabel;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    BitBtn1: TBitBtn;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    IBDocumenti: TIBQuery;
    IBDocumentiCODICE_ARTICOLO: TIBStringField;
    IBDocumentiQUANTITA: TFloatField;
    IBDocumentiCAUSALE_MAGAZZINO: TIBStringField;
    IBDocumentiDEP: TIBStringField;
    IBDocumentiTIPO_SERVIZIO: TIBStringField;
    IBDocumentiID_DOC_DET: TIntegerField;
    IBDocumentiNUM_RIGA_ID: TIntegerField;
    IBDocumentiTIPO_RIGA: TIntegerField;
    IBDocumentiDESCR: TIBStringField;
    IBDocumentiCOSTO: TFloatField;
    IBDocumentiCOSTOINVALUTA: TFloatField;
    IBDocumentiUNITA_MISURA: TIBStringField;
    IBDocumentiFATTCONV: TFloatField;
    IBDocumentiQTA_UM: TFloatField;
    IBDocumentiSCONTO1: TFloatField;
    IBDocumentiSCONTO2: TFloatField;
    IBDocumentiSCONTO3: TFloatField;
    IBDocumentiSCONTO4: TFloatField;
    IBDocumentiIMPORTO_SCONTO: TFloatField;
    IBDocumentiIMPORTO: TFloatField;
    IBDocumentiIMPORTOINVALUTA: TFloatField;
    IBDocumentiOMAGGIO: TSmallintField;
    IBDocumentiSCONTO_EQ: TFloatField;
    IBDocumentiPERC_PROVV: TFloatField;
    IBDocumentiIVATO: TFloatField;
    IBDocumentiIMPORTO_CON_IVA: TFloatField;
    IBDocumentiCODICE_IVA_ID: TIBStringField;
    IBDocumentiDATA_REG: TDateTimeField;
    IBDocumentiRIF_A: TSmallintField;
    IBDocumentiRIF_A_PRE: TSmallintField;
    IBDocumentiRIF_A_ORD: TSmallintField;
    IBDocumentiRIF_A_DDT: TSmallintField;
    IBDocumentiRIF_ID_DOC_DET: TIntegerField;
    IBDocumentiRIF_DDT_ID_DOC: TIntegerField;
    IBDocumentiRIF_DDT_DATA_DOC: TDateTimeField;
    IBDocumentiRIF_ORD_ID_DOC: TIntegerField;
    IBDocumentiRIF_ORD_DATA_DOC: TDateTimeField;
    IBDocumentiRIF_PRE_ID_DOC: TIntegerField;
    IBDocumentiRIF_PRE_DATA_DOC: TDateTimeField;
    IBDocumentiPIANOCONTO_ID: TIntegerField;
    IBDocumentiRIF_PRE_NUM_DOC: TIntegerField;
    IBDocumentiRIF_ORD_NUM_DOC: TIntegerField;
    IBDocumentiRIF_DDT_NUM_DOC: TIntegerField;
    IBDocumentiOP_QTA_DISPONIBILE: TFloatField;
    IBDocumentiOP_VAL_DISPONIBILE: TFloatField;
    IBDocumentiOP_QTA_GIACENZA: TFloatField;
    IBDocumentiOP_VAL_GIACENZA: TFloatField;
    IBDocumentiDOC_ID: TIntegerField;
    IBDocumentiTOTCOLLI: TIBStringField;
    IBDocumentiTOTSCAT: TFloatField;
    IBDocumentiPREZZOLIST: TFloatField;
    IBDocumentiSCHEDA: TFloatField;
    IBDocumentiPASSATA: TIBStringField;
    IBDocumentiCOL: TIBStringField;
    IBDocumentiDATA_DOC: TDateTimeField;
    IBDocumentiTIPO_CLIFOR: TSmallintField;
    IBDocumentiA: TIBStringField;
    IBDocumentiB: TIBStringField;
    IBDocumentiC: TIBStringField;
    IBDocumentiCODICE_BOLL: TIBStringField;
    IBDocumentiCONTRO_DEPOSITO: TIBStringField;
    IBDocumentiTIPO_DOC: TIntegerField;
    IBDocumentiCONTRO_CAUS_MAG: TIBStringField;
    ibqryDistinte: TIBDataSet;
    ibqryDistinteCODICE_ARTICOLO: TIBStringField;
    ibqryDistinteDESCR_ARTICOLO: TIBStringField;
    ibqryDistinteMANODOPERA: TFloatField;
    ibqryDistinteRICAMO: TFloatField;
    ibqryDistinteFASONISTA: TFloatField;
    ibqryDistinteSITUAZIONE: TFloatField;
    ibqryDistinteCOPPE: TFloatField;
    ibqryDistinteACCESSORI: TFloatField;
    ibqryDistinteALTRO1: TFloatField;
    ibqryDistinteALTRO2: TFloatField;
    ibqryDistinteALTRO3: TFloatField;
    ibqryDistinteALTRO4: TFloatField;
    ibqryDistinteCOSTO: TFloatField;
    ibqryDistinteRICAR1PERC: TFloatField;
    ibqryDistintePK_CODICE: TIntegerField;
    ibqryDistinteRICAR2PERC: TFloatField;
    ibqryDistinteRICAR_LIRE: TFloatField;
    ibqryDistintePREZZO_VENDITA: TFloatField;
    ibqryDistinteCOSTO_ACCESS_TOTALE: TFloatField;
    ibqryDistinteCOSTO_TOTALE: TFloatField;
    ibqryDistinteDATA_CREAZIONE: TDateTimeField;
    ibqryDistinteCODCLI: TIntegerField;
    ibqryDistinteRICAR_LIRE2: TFloatField;
    ibtblDistinte_Dett: TIBDataSet;
    ibtblDistinte_DettFK_DISTINTE: TIntegerField;
    ibtblDistinte_DettCODICE_ARTICOLO: TIBStringField;
    ibtblDistinte_DettDESCR_ARTICOLO: TIBStringField;
    ibtblDistinte_DettQTA: TFloatField;
    ibtblDistinte_DettCOSTO: TFloatField;
    ibtblDistinte_DettPREZZO: TFloatField;
    ibtblDistinte_DettFLAG_SCATOLO: TIBStringField;
    ibtblDistinte_DettPK_CODICE: TIntegerField;
    dsDistinte_dm: TDataSource;
    IBQuery22: TIBQuery;
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
    ibqCont_Art: TIBQuery;
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
    IBUpdateSQL1: TIBUpdateSQL;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    IBDocumenti2: TIBQuery;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField5: TIBStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IBStringField6: TIBStringField;
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
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    IBStringField7: TIBStringField;
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
    IBStringField8: TIBStringField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    DateTimeField5: TDateTimeField;
    SmallintField6: TSmallintField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IntegerField13: TIntegerField;
    IBStringField16: TIBStringField;
    IBDocumenti3: TIBQuery;
    IBStringField17: TIBStringField;
    FloatField24: TFloatField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IBStringField21: TIBStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    IBStringField22: TIBStringField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    SmallintField7: TSmallintField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    IBStringField23: TIBStringField;
    DateTimeField6: TDateTimeField;
    SmallintField8: TSmallintField;
    SmallintField9: TSmallintField;
    SmallintField10: TSmallintField;
    SmallintField11: TSmallintField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    DateTimeField7: TDateTimeField;
    IntegerField19: TIntegerField;
    DateTimeField8: TDateTimeField;
    IntegerField20: TIntegerField;
    DateTimeField9: TDateTimeField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    IntegerField25: TIntegerField;
    IBStringField24: TIBStringField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    IBStringField25: TIBStringField;
    IBStringField26: TIBStringField;
    DateTimeField10: TDateTimeField;
    SmallintField12: TSmallintField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IntegerField26: TIntegerField;
    IBStringField32: TIBStringField;
    IBQuery23: TIBQuery;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    IBStringField39: TIBStringField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    IBStringField40: TIBStringField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    SmallintField13: TSmallintField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    IBStringField41: TIBStringField;
    SmallintField14: TSmallintField;
    SmallintField15: TSmallintField;
    SmallintField16: TSmallintField;
    SmallintField17: TSmallintField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IntegerField33: TIntegerField;
    IBStringField46: TIBStringField;
    SmallintField18: TSmallintField;
    IBStringField47: TIBStringField;
    IBStringField48: TIBStringField;
    IBStringField49: TIBStringField;
    IntegerField34: TIntegerField;
    SmallintField19: TSmallintField;
    SmallintField20: TSmallintField;
    SmallintField21: TSmallintField;
    SmallintField22: TSmallintField;
    IntegerField35: TIntegerField;
    IBStringField50: TIBStringField;
    IBStringField51: TIBStringField;
    SmallintField23: TSmallintField;
    SmallintField24: TSmallintField;
    IntegerField36: TIntegerField;
    FloatField60: TFloatField;
    FloatField61: TFloatField;
    IntegerField37: TIntegerField;
    FloatField62: TFloatField;
    DateTimeField11: TDateTimeField;
    IntegerField38: TIntegerField;
    SmallintField25: TSmallintField;
    IntegerField39: TIntegerField;
    IntegerField40: TIntegerField;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    IntegerField45: TIntegerField;
    IBStringField52: TIBStringField;
    IntegerField46: TIntegerField;
    IBStringField53: TIBStringField;
    DateTimeField12: TDateTimeField;
    FloatField63: TFloatField;
    FloatField64: TFloatField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    FloatField72: TFloatField;
    FloatField73: TFloatField;
    FloatField74: TFloatField;
    FloatField75: TFloatField;
    FloatField76: TFloatField;
    FloatField77: TFloatField;
    FloatField78: TFloatField;
    FloatField79: TFloatField;
    FloatField80: TFloatField;
    FloatField81: TFloatField;
    FloatField82: TFloatField;
    FloatField83: TFloatField;
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
    IntegerField47: TIntegerField;
    FloatField111: TFloatField;
    FloatField112: TFloatField;
    FloatField113: TFloatField;
    FloatField114: TFloatField;
    FloatField115: TFloatField;
    FloatField116: TFloatField;
    IBQuery24: TIBQuery;
    IBStringField54: TIBStringField;
    IBStringField55: TIBStringField;
    IBStringField56: TIBStringField;
    IBStringField57: TIBStringField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    FloatField117: TFloatField;
    FloatField118: TFloatField;
    FloatField119: TFloatField;
    FloatField120: TFloatField;
    FloatField121: TFloatField;
    FloatField122: TFloatField;
    FloatField123: TFloatField;
    FloatField124: TFloatField;
    FloatField125: TFloatField;
    IntegerField48: TIntegerField;
    IntegerField49: TIntegerField;
    IntegerField50: TIntegerField;
    IBStringField61: TIBStringField;
    FloatField126: TFloatField;
    FloatField127: TFloatField;
    SmallintField26: TSmallintField;
    FloatField128: TFloatField;
    FloatField129: TFloatField;
    IntegerField51: TIntegerField;
    IntegerField52: TIntegerField;
    IntegerField53: TIntegerField;
    IBStringField62: TIBStringField;
    SmallintField27: TSmallintField;
    SmallintField28: TSmallintField;
    SmallintField29: TSmallintField;
    SmallintField30: TSmallintField;
    IBStringField63: TIBStringField;
    IBStringField64: TIBStringField;
    IBStringField65: TIBStringField;
    IBStringField66: TIBStringField;
    IntegerField54: TIntegerField;
    IBStringField67: TIBStringField;
    SmallintField31: TSmallintField;
    IBStringField68: TIBStringField;
    IBStringField69: TIBStringField;
    IBStringField70: TIBStringField;
    IntegerField55: TIntegerField;
    SmallintField32: TSmallintField;
    SmallintField33: TSmallintField;
    SmallintField34: TSmallintField;
    SmallintField35: TSmallintField;
    IntegerField56: TIntegerField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    SmallintField36: TSmallintField;
    SmallintField37: TSmallintField;
    IntegerField57: TIntegerField;
    FloatField130: TFloatField;
    FloatField131: TFloatField;
    IntegerField58: TIntegerField;
    FloatField132: TFloatField;
    DateTimeField13: TDateTimeField;
    IntegerField59: TIntegerField;
    SmallintField38: TSmallintField;
    IntegerField60: TIntegerField;
    IntegerField61: TIntegerField;
    IntegerField62: TIntegerField;
    IntegerField63: TIntegerField;
    IntegerField64: TIntegerField;
    IntegerField65: TIntegerField;
    IntegerField66: TIntegerField;
    IBStringField73: TIBStringField;
    IntegerField67: TIntegerField;
    IBStringField74: TIBStringField;
    DateTimeField14: TDateTimeField;
    FloatField133: TFloatField;
    FloatField134: TFloatField;
    FloatField135: TFloatField;
    FloatField136: TFloatField;
    FloatField137: TFloatField;
    FloatField138: TFloatField;
    FloatField139: TFloatField;
    FloatField140: TFloatField;
    FloatField141: TFloatField;
    FloatField142: TFloatField;
    FloatField143: TFloatField;
    FloatField144: TFloatField;
    FloatField145: TFloatField;
    FloatField146: TFloatField;
    FloatField147: TFloatField;
    FloatField148: TFloatField;
    FloatField149: TFloatField;
    FloatField150: TFloatField;
    FloatField151: TFloatField;
    FloatField152: TFloatField;
    FloatField153: TFloatField;
    FloatField154: TFloatField;
    FloatField155: TFloatField;
    FloatField156: TFloatField;
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
    IntegerField68: TIntegerField;
    FloatField181: TFloatField;
    FloatField182: TFloatField;
    FloatField183: TFloatField;
    FloatField184: TFloatField;
    FloatField185: TFloatField;
    FloatField186: TFloatField;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    procedure actEsciExecute(Sender: TObject);
    procedure actNuovoExecute(Sender: TObject);
    procedure dbnDist_DettBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure dbeRicarLireExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbeDett_QtaExit(Sender: TObject);
    procedure actEliminaExecute(Sender: TObject);
    procedure actSalvaExecute(Sender: TObject);
    procedure actModificaExecute(Sender: TObject);
    procedure actAnnullaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actStampa_correnteExecute(Sender: TObject);
    procedure dbeDett_QtaClick(Sender: TObject);
    procedure dbeDett_QtaEnter(Sender: TObject);
    procedure dbeDett_CostoClick(Sender: TObject);
    procedure dbeDett_CostoEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeDist_CodArtChange(Sender: TObject);
    procedure dbnDist_DettClick(Sender: TObject; Button: TNavigateBtn);
    procedure ToolButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure rxdblcDistDett_CodArtChange(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
   Private
     strCodArt, strDescr : String;
     boolIns: boolean;
     dist_F:integer;
     Procedure Calc_Totali;
     Procedure Browse_Mode(boolMode: Boolean);
   Public

  End;

Var
  frmVisDistinta: TfrmVisDistinta;

Implementation

uses uPubDM, uAzDM, frmuInsDistinte, uPrnForm, frmuPrincipale, uCopiaDist,
  uPrnBrogl;

{$R *.DFM}

procedure TfrmVisDistinta.actEsciExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisDistinta.actNuovoExecute(Sender: TObject);
Var
 ddata : TDate;
 intPK_Distinta: Integer;
 // wAnno,wMese,wGiorno,wOra,wMin,wSec,wMSec: Word;
 begin
 Try
  With (dmodAz) Do
  Begin
     ibqRicerca.Close;
     ibqRicerca.SQL.Clear;
     ibqRicerca.SQL.Add('select CODICE_ARTICOLO,Descr,PREZZO_BASE from TAB_Articoli');
     ibqRicerca.SQL.Add('Where FLAG_ACCESSORIE=''N''');
     ibqRicerca.SQL.Add(' AND CODICE_ARTICOLO not in  ');
     ibqRicerca.SQL.Add('(SELECT CODICE_ARTICOLO FROM DISTINTE)');
     ibqRicerca.SQL.Add('Order By CODICE_ARTICOLO');
     ibqRicerca.Open;
     If (ibqRicerca.IsEmpty)
      Then Begin
             ibqRicerca.Close;
             Application.MessageBox('Impossibile Procedere! Non ci sono articoli da inserire.','Avviso',
                MB_OK+MB_ICONINFORMATION);
             Exit;
           End;
  End;
  // crea e visualizza la form
  frmInsDistinte:=TfrmInsDistinte.Create(Self);
  frmInsDistinte.Caption := 'Scegli Articolo per creare una nuova Distinta';
  frmInsDistinte.ShowModal;
  // Se premuto OK --> inserisci!
  If (frmInsDistinte.boolConfermato)
   Then Begin
boolIns:=True;
strCodArt:=frmInsDistinte.strCodiceArticolo_selezionato;
strDescr:=frmInsDistinte.strDescrArt_selezionato;
RxCalcEdit1.Value := frmInsDistinte.dsArticoli_Vend.DataSet.fieldByName('PREZZO_BASE').Asfloat;
frmInsDistinte.Free;
/////////////////////////////////
{
With (dmodAz) Do
Begin
ibqRicerca.Close;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('select CODICE_ARTICOLO,Descr from TAB_Articoli');
ibqRicerca.SQL.Add('Where FLAG_ACCESSORIE=''N'' ');
     ibqRicerca.SQL.Add('Where FLAG_ACCESSORIE=''N'' AND ');
     ibqRicerca.SQL.Add('CODICE_ARTICOLO not in  ');
     ibqRicerca.SQL.Add('(SELECT CODICE_ARTICOLO FROM DISTINTE)');
     ibqRicerca.SQL.Add('Order By CODICE_ARTICOLO');
     ibqRicerca.Open;
     If (ibqRicerca.IsEmpty)
      Then Begin}
///////////////////////////////////////////////////

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsDistinte.DataSet.Insert;
dsDistinte.DataSet.FieldByName('CODICE_Articolo').AsString:=strCodArt;
dsDistinte.DataSet.FieldByName('DESCR_ARTICOLO').AsString:=strDescr;
dsDistinte.DataSet.FieldByName('DATA_CREAZIONE').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
dsDistinte.DataSet.Post;
dsDistinte.DataSet.Edit;
Browse_Mode(False);
boolIns:=False;
dmodAz.ibqRicerca.Close;
        End
   Else Begin
          frmInsDistinte.Free;
        End;
 Except
  Browse_Mode(True);
 End;
End;

procedure TfrmVisDistinta.dbnDist_DettBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
Var
 dPrezzoTotale,a,b:Currency;
Begin
 Try
  If (Button=nbRefresh)
   Then Begin
         dsDistinte_Det.DataSet.Last;
         dPrezzoTotale:=0;
         While Not(dsDistinte_Det.DataSet.BoF) DO
         Begin
           dPrezzoTotale:=dPrezzoTotale+dsDistinte_Det.DataSet.FieldByName('PREZZO').asfloat;
           dsDistinte_Det.DataSet.Prior;
         End;
         Try
          dbeSubtotaleCosto.Field.AsFloat:=dPrezzoTotale;
         Except
         End;
        End;

  If (Button=nbInsert)
   Then Begin
         rxdblcDistDett_DescrArt.Enabled:=True;
         rxdblcDistDett_CodArt.Enabled:=True;
         dbeDett_Qta.Enabled:=True;
         dbeDett_Costo.Enabled:=True;
         dbchbxSc.Enabled:=True;
        End;

  If (Button=nbDelete)
   Then Begin
         rxdblcDistDett_DescrArt.Enabled:=True;
         rxdblcDistDett_CodArt.Enabled:=True;
         dbeDett_Qta.Enabled:=True;
         dbeDett_Costo.Enabled:=True;
         dbchbxSc.Enabled:=True;

          b:= dsDistinte_Det.DataSet.fieldByname('COSTO').AsFloat*
             dsDistinte_Det.DataSet.fieldByname('QTA').AsFloat;

          dbeSubtotaleCosto.Field.AsFloat:=
             dbeSubtotaleCosto.Field.AsFloat-b;
        End;

  If (Button=nbEdit)
   Then Begin
         rxdblcDistDett_DescrArt.Enabled:=True;
         rxdblcDistDett_CodArt.Enabled:=True;
         dbeDett_Qta.Enabled:=True;
         dbeDett_Costo.Enabled:=True;
         dbchbxSc.Enabled:=True;

          b:= dsDistinte_Det.DataSet.fieldByname('COSTO').AsFloat*
             dsDistinte_Det.DataSet.fieldByname('QTA').AsFloat;

          dbeSubtotaleCosto.Field.AsFloat:=
             dbeSubtotaleCosto.Field.AsFloat-b;
        End;

  If (Button=nbPost)Or(Button=nbCancel)
   Then Begin
         rxdblcDistDett_DescrArt.Enabled:=False;
         rxdblcDistDett_CodArt.Enabled:=False;
         dbeDett_Qta.Enabled:=False;
         dbeDett_Costo.Enabled:=False;
         dbchbxSc.Enabled:=False;
         dsDistinte_Det.DataSet.fieldByname('PREZZO').AsFloat:=
           dsDistinte_Det.DataSet.fieldByname('COSTO').AsFloat*
           dsDistinte_Det.DataSet.fieldByname('QTA').AsFloat;
  dsDistinte_Det.DataSet.FieldByName('DESCR_ARTICOLO').AsString:=
  dsArticoli_Acc.DataSet.fieldByName('DESCR').AsString;

 {          Try
   dsDistinte_Det.DataSet.FieldByName('DESCR_ARTICOLO').AsString:=
  dsArticoli_Acc.DataSet.fieldByName('DESCR').AsString;
  dbeDett_Costo.Field.AsFloat:=
     dsArticoli_Acc.DataSet.fieldByName('COSTO_STANDART').AsFloat;
 Except
  dsDistinte_Det.DataSet.FieldByName('DESCR_ARTICOLO').AsString:='';
  dbeDett_Costo.Field.AsFloat:=0;
 End;}

        End;

 Except
 End;
End;

procedure TfrmVisDistinta.Calc_Totali;
Var
 dRicarico: Double;
 dSomma,dSTot_1,dSTot_2: currency;
begin
 Try
  dSomma:=dbeManodopera.Field.AsCurrency+
          dbeRicamo.Field.AsCurrency+
          dbeFasonista.Field.AsCurrency+
          dbeSituazione.Field.AsCurrency+
          dbeCoppe.Field.AsCurrency+
          dbeAccessori.Field.AsCurrency+
          dbeAltro1.Field.AsCurrency+
          dbeAltro2.Field.AsCurrency+
          dbeAltro3.Field.AsCurrency+
          dbeAltro4.Field.AsCurrency;
  dsDistinte.DataSet.fieldByName('COSTO_TOTALE').AsCurrency:=dSomma;
  dSomma:=dSomma+dbeSubtotaleCosto.Field.AsCurrency;
  dbeCosto.Field.AsCurrency:=dSomma;


  dSTot_1:=dSomma*dbeRicar1perc.Field.AsFloat/100;
  dSTot_2:=(dSomma+dSTot_1)*dbeRicar2perc.Field.AsFloat/100;


{  dRicarico:=dbeRicarLire.Field.AsFloat+dbeRicarLire2.Field.AsFloat+dSomma+dSTot_1+dSTot_2;

  dSTot_1:=Int(dRicarico/(0.25));
  dSTot_2:=dRicarico/(0.25);
  If (dSTot_1=dSTot_2)
   Then dbePrezzoVendita.Field.AsFloat:=(Int(dRicarico/(0.25)))*(0.25)
   Else dbePrezzoVendita.Field.AsFloat:=(1+Int(dRicarico/(0.25)))*(0.25);}

dRicarico:=dbeRicarLire.Field.AsCurrency+dSomma+dSTot_1+dSTot_2;

  dSTot_1:=Int(dRicarico/(0.25));
  dSTot_2:=dRicarico/(0.25);
  If (dSTot_1=dSTot_2)
   Then dbePrezzoVendita.Field.AsCurrency:=(Int(dRicarico/(0.25)))*(0.25)+dbeRicarLire2.Field.AsCurrency
   Else dbePrezzoVendita.Field.AsCurrency:=(1+Int(dRicarico/(0.25)))*(0.25)+dbeRicarLire2.Field.AsCurrency;

 Except
 End;
End;

procedure TfrmVisDistinta.dbeRicarLireExit(Sender: TObject);
begin
 Calc_Totali;
end;

procedure TfrmVisDistinta.Browse_Mode(boolMode: Boolean);
begin
 // Panels
 pnlMain.Enabled:=Not(boolMode);
 pnlTagliaColori.Enabled:=Not(boolMode);
 // btns
 tbtnEsci.Enabled:=boolMode;
 tbtnNuovo.Enabled:=boolMode;
 ToolButton3.Enabled := boolMode;
 tbtnModifica.Enabled:=boolMode;
 tbtnElimina.Enabled:=(boolMode);
 tbtnSalva.Enabled:=Not(boolMode);
 tbtnAnnulla.Enabled:=Not(boolMode);
 //
end;

procedure TfrmVisDistinta.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 If Not(tbtnEsci.Enabled)
  Then Begin
        ShowMessage('Bisogna prima salvare le modifiche!');
       End;
 CanClose:=tbtnEsci.Enabled;
end;

procedure TfrmVisDistinta.dbeDett_QtaExit(Sender: TObject);
begin
 Try

  dsDistinte_Det.DataSet.fieldByname('PREZZO').AsCurrency:=
     dsDistinte_Det.DataSet.fieldByname('COSTO').AsCurrency*
     dsDistinte_Det.DataSet.fieldByname('QTA').AsFloat;
 Except
 End;
end;

procedure TfrmVisDistinta.actEliminaExecute(Sender: TObject);
begin
If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
boolIns:=False;
dsDistinte.DataSet.Delete;
Browse_Mode(True);
dmodAz.ibtrDef.Commit;
dsDistinte.DataSet.Open;
dsArticoli_Acc.DataSet.Open;
dmodAz.ibtblDistinte_Dett.Open;
dmodAz.dsoqTabCli.DataSet.Open;
end;

procedure TfrmVisDistinta.actSalvaExecute(Sender: TObject);
var
a : double;
SAVEP : TBookmark;
pk : integer;
begin
boolIns:=False;
Calc_Totali;
Browse_Mode(True);
SAVEP := dsDistinte.DataSet.GetBookmark;
pk:=dsDistinte.DataSet.FieldByName('pk_codice').AsInteger;
if (varisnull(dsDistinte.DataSet.FieldByName('CODCLI').AsVariant))or
   ((dsDistinte.DataSet.FieldByName('CODCLI').AsVariant)=0) then
begin
dsDistinte.DataSet.FieldByName('CODCLI').AsVariant :=0;
if dist_F=1 then begin
IBDataSet1.Close;
IBDataSet1.ParamByName('parcodart').AsString := dbeDist_CodArt.Field.AsString;
IBDataSet1.Open;
IBDataSet1.Edit;
IBDataSet1.FieldByName('COSTO_STANDART').AsCurrency := dbeCosto.Field.AsCurrency;
IBDataSet1.FieldByName('PREZZO_BASE').AsCurrency := dbePrezzoVendita.Field.AsCurrency;
IBDataSet1.Post;
end;
end;
try
 begin
dsDistinte.DataSet.Post;
dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;

dsDistinte.DataSet.Open;
dsArticoli_Acc.DataSet.Open;
dmodAz.ibtblDistinte_Dett.Open;
dmodAz.dsoqTabCli.DataSet.Open;
dsDistinte.DataSet.GotoBookmark(SAVEP);
dsDistinte.DataSet.FreeBookmark(SAVEP);
dsDistinte.DataSet.Locate('pk_codice',pk,[]);
end;

procedure TfrmVisDistinta.actModificaExecute(Sender: TObject);
begin
 Try
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
boolIns:=False;
dsDistinte.DataSet.Edit;
Browse_Mode(False);
strCodArt := dbeDist_CodArt.Field.AsString;
 Except
 End;
end;

procedure TfrmVisDistinta.actAnnullaExecute(Sender: TObject);
begin
 dsDistinte.DataSet.Cancel;
 Browse_Mode(True);
 boolIns:=False;
 dmodAz.ibtrDef.Rollback;
 dsDistinte.DataSet.Open;
 dsArticoli_Acc.DataSet.Open;
 dmodAz.ibtblDistinte_Dett.Open;
 dmodAz.dsoqTabCli.DataSet.Open;
end;

procedure TfrmVisDistinta.FormShow(Sender: TObject);
begin
 boolIns:=False;
frmPrincipale.IBTable1.Active := True;
if frmPrincipale.IBTable1.FieldByName('UNITA_MISURA').AsString = '0'
then
Panel1.Visible := False;
frmPrincipale.IBTable1.Active := false;
dmodAz.dsoqTabCli.DataSet.Open;

With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
begin
dist_F := strtoint(ReadString('INFO','DIST','.'));
end;
end;

procedure TfrmVisDistinta.actStampa_correnteExecute(Sender: TObject);
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDist_DettUno.frf');
     ShowReport;
 End;
end;

procedure TfrmVisDistinta.dbeDett_QtaClick(Sender: TObject);
begin
dbeDett_Qta.SelectAll;
end;

procedure TfrmVisDistinta.dbeDett_QtaEnter(Sender: TObject);
begin
dbeDett_Qta.SelectAll;
end;

procedure TfrmVisDistinta.dbeDett_CostoClick(Sender: TObject);
begin
dbeDett_Costo.SelectAll;
end;

procedure TfrmVisDistinta.dbeDett_CostoEnter(Sender: TObject);
begin
dbeDett_Costo.SelectAll;
end;

procedure TfrmVisDistinta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case key of
 VK_F9 : begin
         if tbtnNuovo.Enabled then
         tbtnNuovo.Click;
         end;
 VK_F10 : begin
         if tbtnModifica.Enabled then
         tbtnModifica.Click;
         end;
 VK_F11 : begin
         if tbtnSalva.Enabled then
         tbtnSalva.Click;
         end;
 VK_F12 : begin
         if tbtnElimina.Enabled then
         tbtnElimina.Click;
         end;
 VK_ESCAPE : begin
         if tbtnEsci.Enabled then
         tbtnEsci.Click;
         end;
    else frmVisDistinta.KeyPreview := False;
end;

end;

procedure TfrmVisDistinta.dbeDist_CodArtChange(Sender: TObject);
begin
//ShowMessage(dbeDist_CodArt.Text);
 Try
 begin
   With (dmodAz) Do
   Begin
     ibqRicerca2.Close;
     ibqRicerca2.SQL.Clear;
     ibqRicerca2.SQL.Add('select * from TAGLIA');
     ibqRicerca2.SQL.Add('Where CODICE_ARTICOLO=:parCodiceArticolo');
     ibqRicerca2.SQL.Add('Order By CODICE_ARTICOLO');
     ibqRicerca2.ParamByName('parCodiceArticolo').AsString:=
     dbeDist_CodArt.Text;
     //.dataset.fieldByname('Codice_Articolo').asstring;
     ibqRicerca2.Open;

   End;
{
dmodAz.ibtblDistinte_Dett.Close;
dmodAz.ibtblDistinte_Dett.ParamByName('parcodart').AsInteger :=
       StrToInt(DBEdit2.Text);
       //dmodAz.ibqryDistinte.FieldByName('PK_CODICE').AsInteger;
dmodAz.ibtblDistinte_Dett.Open;
}
 end
 Except
 End;


end;

procedure TfrmVisDistinta.dbnDist_DettClick(Sender: TObject;
  Button: TNavigateBtn);
var
a:currency;
begin
  If (Button=nbInsert) Then
begin
 dmodAz.ibtblDistinte_DettQTA.AsInteger:=0;
 dmodAz.ibtblDistinte_DettCOSTO.AsInteger:=0;
 dmodAz.ibtblDistinte_DettPREZZO.AsInteger:=0;
 dmodAz.ibtblDistinte_DettFLAG_SCATOLO.AsString:='N';

 dmodAz.ibtblDistinte_Dett.FieldByName('FK_DISTINTE').AsInteger :=
           StrToInt(DBEdit2.text);
 IBStoredProc1.ExecProc;
 dmodAz.ibtblDistinte_Dett.FieldByName('PK_CODICE').AsInteger :=
           IBStoredProc1.ParamByName('CODICE').Asinteger;


 end;
  If (Button=nbpost) Then
  begin
a:=0;
dbeSubtotaleCosto.Field.AsCurrency:=0;
dsDistinte_Det.DataSet.First;
while not dsDistinte_Det.DataSet.Eof do begin
a:= a + dsDistinte_Det.DataSet.fieldByname('PREZZO').AsCurrency;
dsDistinte_Det.DataSet.Next;
end;
//         dsDistinte_Det.DataSet.edit;
dbeSubtotaleCosto.Field.AsCurrency:=a;
  Calc_Totali;
end;
end;

procedure TfrmVisDistinta.ToolButton3Click(Sender: TObject);
Var
 ddata : TDate;
 intPK_Distinta: Integer;
begin
 Try
  With (dmodAz) Do
  Begin
     ibqRicerca.Close;
     ibqRicerca.SQL.Clear;
     ibqRicerca.SQL.Add('select CODICE_ARTICOLO,Descr,PREZZO_BASE from TAB_Articoli');
     ibqRicerca.SQL.Add('Where FLAG_ACCESSORIE=''N''');
//     ibqRicerca.SQL.Add('CODICE_ARTICOLO in  ');
//     ibqRicerca.SQL.Add('(SELECT CODICE_ARTICOLO FROM DISTINTE)');
     ibqRicerca.SQL.Add('Order By CODICE_ARTICOLO');
     ibqRicerca.Open;
     If (ibqRicerca.IsEmpty)
      Then Begin
             ibqRicerca.Close;
             Application.MessageBox('Impossibile Procedere! Non ci sono articoli da inserire.','Avviso',
                MB_OK+MB_ICONINFORMATION);
             Exit;
           End;
  End;
  // crea e visualizza la form
  frmInsDistinte:=TfrmInsDistinte.Create(Self);
  frmInsDistinte.Caption := 'Scegli Articolo per creare una nuova Distinta di uno stesso Articolo';
  frmInsDistinte.ShowModal;
  // Se premuto OK --> inserisci!
  If (frmInsDistinte.boolConfermato)
   Then Begin
boolIns:=True;
strCodArt:=frmInsDistinte.strCodiceArticolo_selezionato;
strDescr:=frmInsDistinte.strDescrArt_selezionato;
RxCalcEdit1.Value := frmInsDistinte.dsArticoli_Vend.DataSet.fieldByName('PREZZO_BASE').AsCurrency;
frmInsDistinte.Free;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsDistinte.DataSet.Insert;
dsDistinte.DataSet.FieldByName('CODICE_Articolo').AsString:=strCodArt;
dsDistinte.DataSet.FieldByName('DESCR_ARTICOLO').AsString:=strDescr;
dsDistinte.DataSet.FieldByName('DATA_CREAZIONE').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
dsDistinte.DataSet.Post;
dsDistinte.DataSet.Edit;
Browse_Mode(False);
boolIns:=False;
dmodAz.ibqRicerca.Close;
        End
   Else Begin
          frmInsDistinte.Free;
        End;
 Except
  Browse_Mode(True);
 End;
End;

procedure TfrmVisDistinta.CheckBox1Click(Sender: TObject);
begin
With (dmodAz.ibqryArt_Acc_per_Distinte) Do
Begin
   if CheckBox1.Checked then
   begin
     Close;
     SQL.Clear;
     SQL.Add('select CODICE_ARTICOLO, DESCR, COSTO_STANDART from TAB_ARTICOLI');
     SQL.Add('Order By CODICE_ARTICOLO');
     Open;
   end
   else
   begin
     Close;
     SQL.Clear;
     SQL.Add('select CODICE_ARTICOLO, DESCR, COSTO_STANDART from TAB_ARTICOLI');
     SQL.Add('Where FLAG_ACCESSORIE like ''S''');
     SQL.Add('Order By CODICE_ARTICOLO');
     Open;
   end;
End;



end;

procedure TfrmVisDistinta.rxdblcDistDett_CodArtChange(Sender: TObject);
begin
with  dmodAz.ibqCont_Art do
begin
Close;
ParamByName('parCod_Art').asstring:=rxdblcDistDett_CodArt.KeyValue;
ParamByName('parCod_Dep').asstring:='1';
Open;
end;
dbeDett_Costo.Field.AsCurrency :=dmodAz.ibqCont_Art.fieldbyname('MEDIO_COSTO_ACQ').AsCurrency;
//dbeDett_Costo.Field.AsFloat :=dsArticoli_Acc.DataSet.fieldByname('COSTO_STANDART').AsFloat;
end;

procedure TfrmVisDistinta.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  If (Button=nbNext)Or(Button=nbPrior) Or(Button=nbFirst) Or(Button=nbLast)
   Then Begin

IBDataSet1.Close;
IBDataSet1.ParamByName('parcodart').AsString := dbeDist_CodArt.Field.AsString;
IBDataSet1.Open;
RxCalcEdit1.Value := IBDataSet1.fieldByName('PREZZO_BASE').AsCurrency;
end;
end;

procedure TfrmVisDistinta.BitBtn1Click(Sender: TObject);
begin
  fCopiaDist:=TfCopiaDist.Create(Self);
  fCopiaDist.ShowModal;

{
 Try
  With (dmodAz) Do
  Begin
     ibqRicerca.Close;
     ibqRicerca.SQL.Clear;
     ibqRicerca.SQL.Add('select * from distinte');
     ibqRicerca.SQL.Add('Order By CODICE_ARTICOLO');
     ibqRicerca.Open;
     If (ibqRicerca.IsEmpty)
      Then Begin
             ibqRicerca.Close;
             Application.MessageBox('Impossibile Procedere! Non ci sono articoli da inserire.','Avviso',
                MB_OK+MB_ICONINFORMATION);
             Exit;
           End;
  End;
  // crea e visualizza la form

  // Se premuto OK --> inserisci!
  If (frmInsDistinte.boolConfermato)
   Then Begin
boolIns:=True;
strCodArt:=frmInsDistinte.strCodiceArticolo_selezionato;
strDescr:=frmInsDistinte.strDescrArt_selezionato;
frmInsDistinte.Free;
end;
 Except
 End;
}

end;

procedure TfrmVisDistinta.ToolButton8Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag,ar : string;
iNormal,scat,TIPO_ART: Integer;
b,c,d,e:Double;
SAVEP : TBookmark;
begin
 // Aggiornamento da Distinta degli Accessori.
dmodAz.ibTab_Cau_Mag.Open;



IBDocumenti.Close;
IBDocumenti.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
IBDocumenti.Open;
IBDocumenti.BlockReadSize:=1;
IBDocumenti.First;

if not dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.StartTransaction;

 iNormal := 1;

IBDocumenti.First;
ibqryDistinte.Close;
ibqryDistinte.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
ibqryDistinte.Open;
ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBDocumenti.First;

  While Not(IBDocumenti.EoF) Do
  Begin
   If (IBDocumenti.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
 strCodCauMag:=IBDocumenti.FieldValues['causale_magazzino'];
 dmodAz.ibTab_Cau_Mag.Locate('CODICE_CAUSALE',strCodCauMag,[]);
           strCodArt:=IBDocumenti.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=IBDocumenti.Fieldbyname('DEP').AsString;
if ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery22.close;
IBQuery22.ParamByName('a').AsString:= strCodArt;
IBQuery22.Open;

//TIPO_ART :=IBQuery22.Fieldbyname('TIPO_ARTICOLO_ID').AsInteger;
SCAT := IBQuery22.Fieldbyname('UN_MIS2_VAL').AsInteger;
ibtblDistinte_Dett.First;
while not ibtblDistinte_Dett.eof do
begin
a:=ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

{IBQuery3_R1.close;
IBQuery3_R1.ParamByName('a').AsString:= a;
IBQuery3_R1.Open;
if not IBQuery3_R1.IsEmpty then }
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

          if ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (IBDocumenti.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    IBDocumenti.FieldByName('QUANTITA').AsFloat *b;
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
         ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBDocumenti.Next;
  End;
 ibqCont_Art.Close;
 IBDocumenti.BlockReadSize:=0;
 dmodAz.ibtrDef.Commit;

dsDistinte.DataSet.Open;
dsArticoli_Acc.DataSet.Open;
dmodAz.ibtblDistinte_Dett.Open;
dmodAz.dsoqTabCli.DataSet.Open;
dsDistinte.DataSet.GotoBookmark(SAVEP);
dsDistinte.DataSet.FreeBookmark(SAVEP);
ibtblDistinte_Dett.Open;
ibtblDistinte_Dett.First;

/////////////////////////////////////////////////////////////////

dmodAz.ibTab_Cau_Mag.Open;



IBDocumenti2.Close;
IBDocumenti2.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
IBDocumenti2.Open;
IBDocumenti2.BlockReadSize:=1;
IBDocumenti2.First;

if not dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.StartTransaction;

 iNormal := 1;

IBDocumenti2.First;
ibqryDistinte.Close;
ibqryDistinte.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
ibqryDistinte.Open;
ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBDocumenti2.First;

  While Not(IBDocumenti2.EoF) Do
  Begin
   If (IBDocumenti2.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
 strCodCauMag:=IBDocumenti2.FieldValues['causale_magazzino'];
 dmodAz.ibTab_Cau_Mag.Locate('CODICE_CAUSALE',strCodCauMag,[]);
           strCodArt:=IBDocumenti2.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=IBDocumenti2.Fieldbyname('DEP').AsString;
if ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery23.close;
IBQuery23.ParamByName('a').AsString:= strCodArt;
IBQuery23.Open;

//TIPO_ART :=IBQuery22.Fieldbyname('TIPO_ARTICOLO_ID').AsInteger;
SCAT := IBQuery23.Fieldbyname('UN_MIS2_VAL').AsInteger;
ibtblDistinte_Dett.First;
while not ibtblDistinte_Dett.eof do
begin
a:=ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

{IBQuery3_R1.close;
IBQuery3_R1.ParamByName('a').AsString:= a;
IBQuery3_R1.Open;
if not IBQuery3_R1.IsEmpty then }
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

          if ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (IBDocumenti2.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    IBDocumenti2.FieldByName('QUANTITA').AsFloat *b;
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
         ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBDocumenti2.Next;
  End;
 ibqCont_Art.Close;
 IBDocumenti2.BlockReadSize:=0;
 dmodAz.ibtrDef.Commit;

dsDistinte.DataSet.Open;
dsArticoli_Acc.DataSet.Open;
dmodAz.ibtblDistinte_Dett.Open;
dmodAz.dsoqTabCli.DataSet.Open;
dsDistinte.DataSet.GotoBookmark(SAVEP);
dsDistinte.DataSet.FreeBookmark(SAVEP);
ibtblDistinte_Dett.Open;
ibtblDistinte_Dett.First;

//////////////////////////////////////////////////////////

dmodAz.ibTab_Cau_Mag.Open;



IBDocumenti3.Close;
IBDocumenti3.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
IBDocumenti3.Open;
IBDocumenti3.BlockReadSize:=1;
IBDocumenti3.First;

if not dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.StartTransaction;

 iNormal := 1;

IBDocumenti3.First;
ibqryDistinte.Close;
ibqryDistinte.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
ibqryDistinte.Open;
ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBDocumenti3.First;

  While Not(IBDocumenti3.EoF) Do
  Begin
   If (IBDocumenti3.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
 strCodCauMag:=IBDocumenti3.FieldValues['causale_magazzino'];
 dmodAz.ibTab_Cau_Mag.Locate('CODICE_CAUSALE',strCodCauMag,[]);
           strCodArt:=IBDocumenti3.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=IBDocumenti3.Fieldbyname('DEP').AsString;
if ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery24.close;
IBQuery24.ParamByName('a').AsString:= strCodArt;
IBQuery24.Open;

//TIPO_ART :=IBQuery22.Fieldbyname('TIPO_ARTICOLO_ID').AsInteger;
SCAT := IBQuery24.Fieldbyname('UN_MIS2_VAL').AsInteger;
ibtblDistinte_Dett.First;
while not ibtblDistinte_Dett.eof do
begin
a:=ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

{IBQuery3_R1.close;
IBQuery3_R1.ParamByName('a').AsString:= a;
IBQuery3_R1.Open;
if not IBQuery3_R1.IsEmpty then }
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

          if ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (IBDocumenti3.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    IBDocumenti3.FieldByName('QUANTITA').AsFloat *b;
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
         ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBDocumenti3.Next;
  End;
 ibqCont_Art.Close;
 IBDocumenti3.BlockReadSize:=0;
 dmodAz.ibtrDef.Commit;

dsDistinte.DataSet.Open;
dsArticoli_Acc.DataSet.Open;
dmodAz.ibtblDistinte_Dett.Open;
dmodAz.dsoqTabCli.DataSet.Open;
dsDistinte.DataSet.GotoBookmark(SAVEP);
dsDistinte.DataSet.FreeBookmark(SAVEP);
ibtblDistinte_Dett.Open;
ibtblDistinte_Dett.First;


{
while not ibtblDistinte_Dett.eof do
begin
ar := ibtblDistinte_DettCODICE_ARTICOLO.AsString;
With (TfPrnBroglMag.Create(Self)) Do
Begin
rabArtDaA.Checked := True;
rxdblcDaArtCodice.KeyValue :=ar;
rxdblcAdArtCodice.KeyValue :=ar;
ShowModal;

Free;
End;
ibtblDistinte_Dett.Next;
end; }
end;




procedure TfrmVisDistinta.ToolButton10Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,scat: Integer;
b,c,d,e:Double;
SAVEP : TBookmark;
begin
 // Aggiornamento da Distinta degli Accessori.
dmodAz.ibTab_Cau_Mag.Open;



IBDocumenti.Close;
IBDocumenti.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
IBDocumenti.Open;
IBDocumenti.BlockReadSize:=1;
IBDocumenti.First;

if not dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.StartTransaction;

 iNormal := -1;

IBDocumenti.First;
ibqryDistinte.Close;
ibqryDistinte.ParamByName('cdart').AsString := dsDistinte.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
ibqryDistinte.Open;
ibtblDistinte_Dett.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBDocumenti.First;

  While Not(IBDocumenti.EoF) Do
  Begin
   If (IBDocumenti.Fieldbyname('TIPO_SERVIZIO').AsString='ARTICOLO')
    Then
       Begin
 strCodCauMag:=IBDocumenti.FieldValues['causale_magazzino'];
 dmodAz.ibTab_Cau_Mag.Locate('CODICE_CAUSALE',strCodCauMag,[]);
           strCodArt:=IBDocumenti.Fieldbyname('CODICE_ARTICOLO').AsString;
           strCodDep:=IBDocumenti.Fieldbyname('DEP').AsString;
if ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
IBQuery22.close;
IBQuery22.ParamByName('a').AsString:= strCodArt;
IBQuery22.Open;

SCAT := IBQuery22.Fieldbyname('UN_MIS2_VAL').AsInteger;
ibtblDistinte_Dett.First;
while not ibtblDistinte_Dett.eof do
begin
a:=ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

{IBQuery3_R1.close;
IBQuery3_R1.ParamByName('a').AsString:= a;
IBQuery3_R1.Open;
if not IBQuery3_R1.IsEmpty then }
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

          if ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
          begin
           ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    (IBDocumenti.FieldByName('QUANTITA').AsFloat/SCAT) *b;
//           ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
//                    ibtTabDet_Doc.FieldByName('IMPOrTO_SCONTO').AsFloat * ibTab_Cau_Mag.FieldByName('VAL_ALTRE_USCITE').AsFloat;
          end
          else
          begin
          ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
                    IBDocumenti.FieldByName('QUANTITA').AsFloat *b;
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
         ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBDocumenti.Next;
  End;
 ibqCont_Art.Close;
 IBDocumenti.BlockReadSize:=0;
 dmodAz.ibtrDef.Commit;

dsDistinte.DataSet.Open;
dsArticoli_Acc.DataSet.Open;
dmodAz.ibtblDistinte_Dett.Open;
dmodAz.dsoqTabCli.DataSet.Open;
dsDistinte.DataSet.GotoBookmark(SAVEP);
dsDistinte.DataSet.FreeBookmark(SAVEP);

end;

END.

