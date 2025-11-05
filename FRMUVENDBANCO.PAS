unit frmuVendBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, Mask, ToolEdit,
  DBCtrls, Db, RxLookup, IBCustomDataSet, IBQuery, Placemnt, RxMemDS, ADODB, Variants,
  IBSQL, CurrEdit, RXDBCtrl, OleCtrls, COECRCOMLib_TLB, STRUTILS, OoMisc,
  AdPort,INIFiles, Menus,shellapi;

type
  TfVendBanco = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label7: TLabel;
    Panel2: TPanel;
    Label9: TLabel;
    Panel3: TPanel;
    Label10: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Panel4: TPanel;
    Label11: TLabel;
    Panel5: TPanel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    LookCliDescr: TRxDBLookupCombo;
    LookCliForCod: TRxDBLookupCombo;
    dsoCli: TDataSource;
    dsoFor: TDataSource;
    dsoRigheDoc: TDataSource;
    LookListinoCod: TDBLookupComboBox;
    LookListinoDescr: TDBLookupComboBox;
    dsoListino: TDataSource;
    dsoDepositi: TDataSource;
    LookNostrDepCod: TRxDBLookupCombo;
    LookNostrDepDescr: TRxDBLookupCombo;
    LookCauMagCod: TDBLookupComboBox;
    LookCauMagDescr: TDBLookupComboBox;
    dsoCauMag: TDataSource;
    dsoContArt: TDataSource;
    DBEdit7: TDBEdit;
    dsoArticoli: TDataSource;
    DBEdit10: TDBEdit;
    dsoDocumento: TDataSource;
    Button4: TButton;
    DBNavigator1: TDBNavigator;
    IBQuery1: TIBQuery;
    BitBtn9: TBitBtn;
    DBNavigator2: TDBNavigator;
    FormStorage1: TFormStorage;
    BitBtn12: TBitBtn;
    DBEdit6: TDBEdit;
    OpenDialog1: TOpenDialog;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CODICE: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1C2: TStringField;
    ADOQuery1SumOfC3: TFloatField;
    ADOQuery1SumOfC4: TFloatField;
    IBQuery2: TIBQuery;
    dsoDati: TDataSource;
    RxMemoryData1QTA: TFloatField;
    RxMemoryData1IMPORTO: TFloatField;
    Label8: TLabel;
    Panel6: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn13: TBitBtn;
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
    DataSource2: TDataSource;
    ibq_aggArt_tmp: TIBDataSet;
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
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    FloatField60: TFloatField;
    FloatField61: TFloatField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    FloatField64: TFloatField;
    IntegerField21: TIntegerField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
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
    IbqUpdoc: TIBSQL;
    Ibqupdet: TIBSQL;
    IbqDel: TIBQuery;
    dsoCODICEIVA: TDataSource;
    IBQuery3: TIBQuery;
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
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button3: TButton;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit5: TDBEdit;
    IBQuery4: TIBQuery;
    IBQuery3COSTO: TFloatField;
    IBQuery3SCONTO1: TFloatField;
    IBQuery3SCONTO2: TFloatField;
    IBQuery3SCONTO_EQ: TFloatField;
    IBQuery3DATA_DOC: TDateTimeField;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    RxDBCalcEdit3: TRxDBCalcEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    IBQuery5: TIBQuery;
    DataSource3: TDataSource;
    IBQuery5ID_DOC_DET: TIntegerField;
    IBQuery5TIPO_RIGA: TIntegerField;
    IBQuery5CODICE_ARTICOLO: TIBStringField;
    IBQuery5DESCR: TIBStringField;
    IBQuery5COSTO: TFloatField;
    IBQuery5COSTOINVALUTA: TFloatField;
    IBQuery5UNITA_MISURA: TIBStringField;
    IBQuery5FATTCONV: TFloatField;
    IBQuery5QTA_UM: TFloatField;
    IBQuery5QUANTITA: TFloatField;
    IBQuery5SCONTO1: TFloatField;
    IBQuery5SCONTO2: TFloatField;
    IBQuery5SCONTO3: TFloatField;
    IBQuery5SCONTO4: TFloatField;
    IBQuery5IMPORTO_SCONTO: TFloatField;
    IBQuery5IMPORTO: TFloatField;
    IBQuery5IMPORTOINVALUTA: TFloatField;
    IBQuery5OMAGGIO: TSmallintField;
    IBQuery5DEP: TIBStringField;
    IBQuery5SCONTO_EQ: TFloatField;
    IBQuery5PERC_PROVV: TFloatField;
    IBQuery5TIPO_SERVIZIO: TIBStringField;
    IBQuery5IVATO: TFloatField;
    IBQuery5IMPORTO_CON_IVA: TFloatField;
    IBQuery5CODICE_IVA_ID: TIBStringField;
    IBQuery5DATA_REG: TDateTimeField;
    IBQuery5RIF_A: TSmallintField;
    IBQuery5RIF_A_PRE: TSmallintField;
    IBQuery5RIF_A_ORD: TSmallintField;
    IBQuery5RIF_A_DDT: TSmallintField;
    IBQuery5RIF_ID_DOC_DET: TIntegerField;
    IBQuery5RIF_DDT_ID_DOC: TIntegerField;
    IBQuery5RIF_DDT_DATA_DOC: TDateTimeField;
    IBQuery5RIF_ORD_ID_DOC: TIntegerField;
    IBQuery5RIF_ORD_DATA_DOC: TDateTimeField;
    IBQuery5RIF_PRE_ID_DOC: TIntegerField;
    IBQuery5RIF_PRE_DATA_DOC: TDateTimeField;
    IBQuery5PIANOCONTO_ID: TIntegerField;
    IBQuery5RIF_PRE_NUM_DOC: TIntegerField;
    IBQuery5RIF_ORD_NUM_DOC: TIntegerField;
    IBQuery5RIF_DDT_NUM_DOC: TIntegerField;
    IBQuery5OP_QTA_DISPONIBILE: TFloatField;
    IBQuery5OP_VAL_DISPONIBILE: TFloatField;
    IBQuery5OP_QTA_GIACENZA: TFloatField;
    IBQuery5OP_VAL_GIACENZA: TFloatField;
    IBQuery5DOC_ID: TIntegerField;
    IBQuery5TOTCOLLI: TIBStringField;
    IBQuery5TOTSCAT: TFloatField;
    IBQuery5PREZZOLIST: TFloatField;
    IBQuery5SCHEDA: TFloatField;
    IBQuery5PASSATA: TIBStringField;
    IBQuery5COL: TIBStringField;
    IBQuery5A: TIBStringField;
    IBQuery5B: TIBStringField;
    IBQuery5C: TIBStringField;
    IBQuery5NUM_RIGA_ID: TIntegerField;
    CoEcrCom1: TCoEcrCom;
    Label14: TLabel;
    Label16: TLabel;
    IBQuery6: TIBQuery;
    Edit1: TEdit;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    edimballo: TDBEdit;
    IBQuery7: TIBQuery;
    IBStringField22: TIBStringField;
    IBQuery5CLI_FOR_ID: TIntegerField;
    IBQuery5CODICE_AGGIUNTIVO: TIBStringField;
    IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField;
    FloatField71: TFloatField;
    IBStringField23: TIBStringField;
    IBQuery8: TIBQuery;
    IBStringField24: TIBStringField;
    IntegerField22: TIntegerField;
    IBStringField25: TIBStringField;
    SmallintField14: TSmallintField;
    FloatField72: TFloatField;
    IBStringField26: TIBStringField;
    DBEdit11: TDBEdit;
    IBQuery2CODICE_ARTICOLO2: TIBStringField;
    IBQuery2DESCR3: TIBStringField;
    IBQuery2DESCR22: TIBStringField;
    IBQuery2CODICE_IVA_ID2: TIBStringField;
    IBQuery2UNITA_DI_MISURA1_ID2: TIBStringField;
    IBQuery2UNITA_DI_MISURA2_ID2: TIBStringField;
    IBQuery2UNITA_DI_MISURA3_ID2: TIBStringField;
    IBQuery2SCONTO12: TFloatField;
    IBQuery2SCONTO22: TFloatField;
    IBQuery2SCONTO32: TFloatField;
    IBQuery2PROVVIGIONE2: TFloatField;
    IBQuery2PESO_NETTO_KG2: TFloatField;
    IBQuery2PESO_LORDO_KG2: TFloatField;
    IBQuery2SCORTA_MIN2: TFloatField;
    IBQuery2SCORTA_MAX2: TFloatField;
    IBQuery2LOTTO_RIORDINO2: TFloatField;
    IBQuery2GG_APPROVVIGIONAMENTO2: TIntegerField;
    IBQuery2QTA_X_CONFEZIONE2: TIntegerField;
    IBQuery2ANNO2: TIntegerField;
    IBQuery2DESCR_AGGIUNTIVA_ID2: TIBStringField;
    IBQuery2PREZZO_BASE2: TFloatField;
    IBQuery2COSTO_STANDART2: TFloatField;
    IBQuery2TIPO_ARTICOLO_ID2: TSmallintField;
    IBQuery2FATT_CONV12: TFloatField;
    IBQuery2FATT_CONV22: TFloatField;
    IBQuery2COSTO_ID2: TIntegerField;
    IBQuery2RICAVO_ID2: TIntegerField;
    IBQuery2GIORNI_MAX_INVENDUTO2: TIntegerField;
    IBQuery2ASPETTO_ID2: TIBStringField;
    IBQuery2RIORDINO_MESE_DA2: TSmallintField;
    IBQuery2RIORDINO_MESE_A2: TSmallintField;
    IBQuery2RIORDINO_GIORNO_DA2: TSmallintField;
    IBQuery2RIORDINO_GIORNO_A2: TSmallintField;
    IBQuery2STAGIONE_ID2: TIBStringField;
    IBQuery2GRUPPO_ALTERNATIVO2: TIBStringField;
    IBQuery2PRODUTTORE_ID2: TIBStringField;
    IBQuery2CATEGORIA_ARTICOLO_ID2: TIBStringField;
    IBQuery2CATEGORIA_MERCEOLOGICA_ID2: TIntegerField;
    IBQuery2CODICE_BASE2: TIBStringField;
    IBQuery2DERIVATO2: TSmallintField;
    IBQuery2VARIANTE1_ID2: TIBStringField;
    IBQuery2VARIANTE2_ID2: TIBStringField;
    IBQuery2VARIANTE3_ID2: TIBStringField;
    IBQuery2NUM_VARIANTI2: TIntegerField;
    IBQuery2TIPO_COSTO_ID2: TSmallintField;
    IBQuery2TIPO_RICAVO_ID2: TSmallintField;
    IBQuery2OMAGGIO2: TSmallintField;
    IBQuery2TIPO_CLI_FOR_ID2: TSmallintField;
    IBQuery2CLI_FOR_ID2: TIntegerField;
    IBQuery2CODE_BAR2: TIBStringField;
    IBQuery2DESCR_CODE_BAR2: TIBStringField;
    IBQuery2NON_STAMPA_INVENTARIO2: TSmallintField;
    IBQuery2NON_STAMPA_REGISTRO2: TSmallintField;
    IBQuery2NOMENCLATURA2: TIntegerField;
    IBQuery2FATT_CONV1_NOMENCLATURA2: TFloatField;
    IBQuery2FATT_CONV2_NOMENCLATURA2: TFloatField;
    IBQuery2PROV_ORDINE2: TIntegerField;
    IBQuery2COSTO_ULTIMO2: TFloatField;
    IBQuery2DATA_COSTO_ULTIMO2: TDateTimeField;
    IBQuery2NUM_REPARTO2: TIntegerField;
    IBQuery2TIPO_CODE_BAR_ID2: TSmallintField;
    IBQuery2CONTO_ACQUISTO2: TIntegerField;
    IBQuery2CONTO_VENDITA2: TIntegerField;
    IBQuery2UN_MIS2_VAL2: TIntegerField;
    IBQuery2UN_MIS3_VAL2: TIntegerField;
    IBQuery2CAT_ART_FAMIGLIA_ID2: TIntegerField;
    IBQuery2CAT_ART_GRUPPO_ID2: TIntegerField;
    IBQuery2CAT_ART_MARCA_ID2: TIntegerField;
    IBQuery2FOTO_PERCORSO2: TIBStringField;
    IBQuery2CAT_ART_TIPO_ID2: TIntegerField;
    IBQuery2FLAG_ACCESSORIE2: TIBStringField;
    IBQuery2DATAMOD2: TDateTimeField;
    IBQuery2SCONTO42: TFloatField;
    IBQuery2PREZZO_IVATO2: TFloatField;
    IBQuery2P2IVATO2: TFloatField;
    IBQuery2P3IVATO2: TFloatField;
    IBQuery2P4IVATO2: TFloatField;
    IBQuery2P5IVATO2: TFloatField;
    IBQuery2SC212: TFloatField;
    IBQuery2SC222: TFloatField;
    IBQuery2SC232: TFloatField;
    IBQuery2SC312: TFloatField;
    IBQuery2SC322: TFloatField;
    IBQuery2SC332: TFloatField;
    IBQuery2SC412: TFloatField;
    IBQuery2SC422: TFloatField;
    IBQuery2SC432: TFloatField;
    IBQuery2SC512: TFloatField;
    IBQuery2SC522: TFloatField;
    IBQuery2SC532: TFloatField;
    IBQuery2R22: TFloatField;
    IBQuery2R32: TFloatField;
    IBQuery2R42: TFloatField;
    IBQuery2R52: TFloatField;
    IBQuery2IMP22: TFloatField;
    IBQuery2IMP32: TFloatField;
    IBQuery2IMP42: TFloatField;
    IBQuery2IMP52: TFloatField;
    IBQuery2RICARPREC2: TFloatField;
    IBQuery2P6IVATO2: TFloatField;
    IBQuery2IMP62: TFloatField;
    IBQuery2STRUTT2: TFloatField;
    IBQuery2CA7: TFloatField;
    IBQuery2CG7: TFloatField;
    IBQuery2AG7: TFloatField;
    IBQuery2CA22: TFloatField;
    IBQuery2CG22: TFloatField;
    IBQuery2AG22: TFloatField;
    IBQuery2CA32: TFloatField;
    IBQuery2CG32: TFloatField;
    IBQuery2AG32: TFloatField;
    IBQuery2CA42: TFloatField;
    IBQuery2CG42: TFloatField;
    IBQuery2AG42: TFloatField;
    IBQuery2CA52: TFloatField;
    IBQuery2CG52: TFloatField;
    IBQuery2AG52: TFloatField;
    IBQuery2CA62: TFloatField;
    IBQuery2CG62: TFloatField;
    IBQuery2AG62: TFloatField;
    IBQuery2ID_OFFERTA2: TIntegerField;
    IBQuery2CR7: TFloatField;
    IBQuery2CR22: TFloatField;
    IBQuery2CR32: TFloatField;
    IBQuery2CR42: TFloatField;
    IBQuery2CR52: TFloatField;
    IBQuery2CR62: TFloatField;
    ApdComPort1: TApdComPort;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    BitBtn10: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    Label13: TLabel;
    RxCalcEdit2: TRxCalcEdit;
    rxcalcedit1: TEdit;
    BitBtn24: TBitBtn;
    Edit2: TEdit;
    Edit4: TEdit;
    BitBtn25: TBitBtn;
    RadioGroup3: TRadioGroup;
    edit3: TDBEdit;
    Edit5: TEdit;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19Exit(Sender: TObject);
    procedure LookCliForCodChange(Sender: TObject);
    procedure LookCliDescrChange(Sender: TObject);
    procedure LookListinoCodClick(Sender: TObject);
    procedure LookListinoDescrClick(Sender: TObject);
    procedure LookNostrDepCodChange(Sender: TObject);
    procedure LookNostrDepDescrChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure RxCalcEdit2Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure rxcalcedit1Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);

  private
    { Private declarations }
 casella : integer;
 nuovissimo,salvato : bool;
 cassax,deposito,contesto,TIPOREGIS : string;
Procedure Get_Num_Doc;
procedure IntestDoc;
procedure Nuovo;
Procedure Aggiorna_Qta(bNormale: Boolean);
procedure Totale;
procedure salva;
procedure Set_Num_Doc;
procedure ESCIPREZZO;
procedure CASSA1;
procedure CASSA2;
Procedure Get_Val_From_PersAz;
procedure Apri;
Procedure Aggiornamento_Contabilita_TEMP(bNormale: Boolean);
Procedure Aggiorna_IVA_Totale;
Procedure Azzerare_IVA;
Procedure Calcola_Totali;
Procedure Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
  public
    { Public declarations }
 boolAdditionalWhere, boolDoc_Vendita,boolModifica : Boolean;
 c,numeroRiga ,iID_Doc_New: integer;
 intTipoDoc, Id_docum,intTipoCliFor,intNewNumDoc,intOldNumDoc: Integer;
 boolVendita: Boolean;
 boolNonHaListino: Boolean;
 boolInsert: Boolean;
 strCAU_MAG,CodArt: String;
 strCodIvaSp_Boll,strCodIvaSp_Inc,strCodIvaSp_Imb,
 strCodIvaSp_ContrSegn,strCodIvaSp_Access,strCodIvaSp_Sped: String;
 qt,pr,sc1,sc2,scm : double;
  end;

var
  fVendBanco: TfVendBanco;

implementation

uses uAzDM, uRicercaVeloceAZ, uPrnForm, FR_Class;

{$R *.DFM}

procedure TfVendBanco.FormShow(Sender: TObject);
begin
//contesto := rxcalcedit1.Name;
Casella := 0;
Apri;
BitBtn3.Enabled := True;
Button4.Enabled := True;
BitBtn12.Enabled := True;

BitBtn1.Enabled := false;
BitBtn2.Enabled := false;
BitBtn8.Enabled := false;
BitBtn4.Enabled := false;
BitBtn13.Enabled := false;


boolVendita:=True;
boolDoc_Vendita:=boolVendita;
c:=0;
Panel2.Enabled := False;
Panel3.Enabled := False;
Panel4.Enabled := False;

With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
Try
begin
deposito := ReadString('INFO','DEP','.');
cassax := ReadString('INFO','REG','.');
TIPOREGIS := ReadString('INFO','TIPOREG','.');
end;
Finally
Free;
End;
edit1.text := 'Port='+cassax+',CURDIR='+''''+ExtractFilePath(Application.Exename)+'''';

end;

procedure TfVendBanco.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
begin
LookCliDescr.KeyValue := 29999;
LookCliForCod.KeyValue := 29999;
LookCliDescr.Enabled := false;
LookCliForCod.Enabled := false;
boolDoc_Vendita := True;
end
else
begin
LookCliDescr.Enabled := True;
LookCliForCod.Enabled := True;
end;
if RadioGroup1.ItemIndex = 0 then
boolDoc_Vendita := True;
if RadioGroup1.ItemIndex = 1 then
boolDoc_Vendita := True;
if RadioGroup1.ItemIndex = 2 then
boolDoc_Vendita := False;

end;

procedure TfVendBanco.FormCreate(Sender: TObject);
begin
 Get_Val_From_PersAz;
end;

procedure TfVendBanco.Button1Click(Sender: TObject);
var
strcodart : string;
begin
With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='CODICE_ARTICOLO';
    strCampo2:='DESCR';
    strCampo3:='PREZZO_BASE';
    intRichieste:=3;
    strResCampoCodice:='CODICE_ARTICOLO';
    strValore:=DBEdit1.Field.AsString;

   ShowModal;
strCodArt:=VarToStr(vaResValore);
If (dsoRigheDoc.DataSet.State in [dsbrowse]) then
 dsoRigheDoc.DataSet.Insert;
DBEdit1.Field.AsString:=strCodArt;
DBEdit2.Field.AsString:=VarToStr(vaResValore2);
Free;
End;
 DBEdit3.SetFocus;
{
  if RadioGroup2.ItemIndex = 0 then
begin
 DBEdit3.SetFocus;
 Button3.Click;
 DBEdit1.SetFocus;
end;
if RadioGroup2.ItemIndex = 1 then
 DBEdit3.SetFocus;}
end;

procedure TfVendBanco.BitBtn1Click(Sender: TObject);
begin
 If (dsoRigheDoc.dataset.isEmpty)
   Then Exit;
salvato:=true;
Salva;
numeroRiga := 0;
BitBtn3.Enabled := True;
Button4.Enabled := True;
BitBtn12.Enabled := True;
BitBtn9.Enabled := True;
BitBtn6.Enabled := True;
BitBtn11.Enabled := True;

BitBtn1.Enabled := false;
BitBtn2.Enabled := false;
BitBtn8.Enabled := false;
BitBtn4.Enabled := false;
BitBtn13.Enabled := false;

BitBtn10.Enabled := False;
BitBtn14.Enabled := False;
BitBtn15.Enabled := False;
BitBtn16.Enabled := False;
BitBtn17.Enabled := False;
BitBtn18.Enabled := False;
BitBtn19.Enabled := False;
BitBtn20.Enabled := False;
BitBtn21.Enabled := False;
BitBtn22.Enabled := False;
BitBtn23.Enabled := False;
BitBtn24.Enabled := False;
BitBtn25.Enabled := False;

Panel7.Enabled := False;
Panel4.Enabled := False;
BitBtn3.SetFocus;
if RadioGroup3.ItemIndex = 0 then
BitBtn3.Click;
end;

procedure TfVendBanco.IntestDoc;
begin
end;

procedure TfVendBanco.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEdit9.SetFocus;
DBEdit9.SelectAll;
end;
end;

procedure TfVendBanco.DBEdit1Exit(Sender: TObject);
var
strcodart : string;
begin
Casella := 1;
If (salvato)
  Then Exit;
If (DBEdit1.Text='')
  Then Exit;
//If (boolModifica= True) and (DBEdit1.Field.AsString = CodArt)
If (DBEdit1.Field.AsString = CodArt)
  Then begin
  dsoRigheDoc.DataSet.Edit;
  Exit;
  end;
edImballo.Text:='1';
dsoRigheDoc.dataset.FieldByName('FATTCONV').AsFloat := 1;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := DBEdit1.Field.AsString;
IBQuery2.open;

if IBQuery2.IsEmpty then
begin
IBQuery7.Close;
IBQuery7.ParamByName('a').AsString := DBEdit1.Field.AsString;
IBQuery7.Open;
if IBQuery7.IsEmpty then
begin
dsoRigheDoc.DataSet.Cancel;
dsoRigheDoc.DataSet.Insert;
DBEdit1.SetFocus;
Exit;
End
else
begin
DBEdit1.Field.AsString :=IBQuery7.fieldbyname('codice_articolo').AsString;
edImballo.Text := IBQuery7.fieldbyname('quantita').AsString;
dsoRigheDoc.dataset.FieldByName('FATTCONV').AsFloat := IBQuery7.fieldbyname('quantita').AsFloat;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := DBEdit1.Field.AsString;
IBQuery2.open;
end;
end;

With IBQuery2 do
Begin
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=fieldbyname('DESCR').AsString;
If (boolDoc_Vendita) then
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('PREZZO_BASE').AsFloat
Else
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('COSTO_STANDART').AsFloat;
dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString := 'ARTICOLO';
dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:= 1;

dsoRigheDoc.DataSet.FieldByName('Quantita').AsFloat:= dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat
        *dsoRigheDoc.dataset.FieldByName('FATTCONV').AsFloat;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=LookNostrDepCod.keyvalue;
dsoRigheDoc.DataSet.FieldByName('PREZZOLIST').AsFloat:=fieldbyname('PREZZO_BASE').AsFloat;
if not VarIsNull(fieldbyname('PROVVIGIONE').AsFloat) then
dsoRigheDoc.DataSet.FieldByName('PERC_PROVV').AsFloat:=fieldbyname('PROVVIGIONE').AsFloat;

dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      dsoDati.DataSet.FieldByName('PREZZO_BASE').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      dsoDati.DataSet.FieldByName('PREZZO_IVATO').AsFloat;

if (LookListinoCod.KeyValue = 1) and (dmodAz.Tipo <> 1)then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP2').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P2IVATO').AsFloat;
end;
if (LookListinoCod.KeyValue = 2) and (dmodAz.Tipo <> 1) then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP3').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P3IVATO').AsFloat;
end;
if (LookListinoCod.KeyValue = 3) and (dmodAz.Tipo <> 1) then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP4').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P4IVATO').AsFloat;
end;
if (LookListinoCod.KeyValue = 4) and (dmodAz.Tipo <> 1) then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP5').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P5IVATO').AsFloat;
end;

if dmodAz.Tipo = 1 then
begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SCONTO1').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SCONTO2').AsFloat;
  if LookListinoCod.KeyValue = 1 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC21').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC22').AsFloat;
  end;
  if LookListinoCod.KeyValue = 2 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC31').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC32').AsFloat;
  end;
  if LookListinoCod.KeyValue = 3 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC41').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC42').AsFloat;
  end;
  if LookListinoCod.KeyValue = 4 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC51').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC52').AsFloat;
  end;
end;

   dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=
   Now;

if (boolDoc_Vendita)
Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
       FieldByName('CONTO_VENDITA').AsInteger
Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
       FieldByName('CONTO_ACQUISTO').AsInteger;

dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger:=
  FieldByName('Codice_IVA_ID').AsInteger;
dsoRigheDoc.dataset.FieldByName('UNITA_MISURA').AsString:=
  FieldByName('UNITA_DI_MISURA1_ID').AsString;
dsoRigheDoc.DataSet.FieldByName('COSTOINVALUTA').AsFloat:= 0;
dsoRigheDoc.DataSet.FieldByName('IMPORTOINVALUTA').AsFloat:= 0;
dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
  dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
  dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
  dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;

with IBQuery4 do
begin
close;
ParamByName('parcodart').AsString := DBEdit1.Field.AsString;
ParamByName('parcliforid').Asinteger := LookCliForCod.KeyValue;
open;
end;

//dsoRigheDoc.DataSet.Last;
//numeroRiga:=1+dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;

numeroRiga := numeroRiga+1;
dsoRigheDoc.dataset.FieldByName('Num_riga_ID').asinteger:=
  numeroRiga;
dsoRigheDoc.dataset.FieldByName('DOC_ID').AsFloat:=
        dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;

  if RadioGroup2.ItemIndex = 0 then
begin
 Button3.Click;
 DBEdit1.SetFocus;
end;
if RadioGroup2.ItemIndex = 1 then
 DBEdit9.SetFocus;
if RadioGroup2.ItemIndex = 2 then
 DBEdit20.SetFocus;
end;
end;

procedure TfVendBanco.Button4Click(Sender: TObject);
begin
c:=1;
Close();
dmodAz.ibtTabDet_Doc.Open;
Label14.Visible := false;
end;

procedure TfVendBanco.RadioGroup2Click(Sender: TObject);
begin
//FormStorage1.StoredValues['0'].Value :=  inttostr(radiogroup2.ItemIndex);
if (dsoRigheDoc.State in [dsInsert, dsEdit]) then
begin
DBEdit1.SetFocus;
DBEdit1.SelectAll;
end;
end;

procedure TfVendBanco.Nuovo;
var
 wAnno,wMese,wGiorno,wOra,wMin,wSec,wMSec: Word;
 zz: Integer;
begin
 DecodeDate(Date,wAnno,wMese,wGiorno);
 DecodeTime(Time,wOra,wMin,wSec,wMSec);

If (dsoDocumento.DataSet.State in [dsInsert, dsEdit])
then exit
 else
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsoDocumento.DataSet.Insert;
numeroRiga := 0;
boolInsert:=True;
boolModifica := False;
LookCliDescr.KeyValue := 29999;
LookCliForCod.KeyValue := 29999;
//LookNostrDepCod.KeyValue := 1;
//LookNostrDepDescr.KeyValue := 1;
LookCauMagCod.keyValue :='VEND';
LookCauMagDescr.keyValue :='VEND';

DateEdit1.Date := Now;

dsoDocumento.DataSet.fieldByName('ORA').AsString:=IntToStr(wOra)+'.'+IntToStr(wMin);
dsoDocumento.DataSet.fieldByName('DATA_DOC').AsDateTime:=Date;
dsoDocumento.DataSet.fieldByName('DATA_CONSEGNA').AsDateTime:=Date;
dsoDocumento.DataSet.fieldByName('MESE_Cont').AsInteger:=wMese;
dsoDocumento.DataSet.fieldByName('CAUSALE_MAGAZZINO').AsString:=
       VarToStr(LookCauMagCod.keyvalue);

 dsoDocumento.DataSet.FieldByName('Tipo_Doc').AsInteger:=350; // Vendita al Banco

 dsoDocumento.DataSet.FieldByName('PER_ALTRA_DEST').AsInteger:=0;
if RadioGroup1.ItemIndex <> 2 then
 dsoDocumento.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=1
 else
 dsoDocumento.DataSet.FieldByName('TIPO_CLIFOR').AsInteger:=2;

 dsoDocumento.DataSet.fieldByName('SPESE_SPEDIZIONE').AsFloat:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_BOLLI').AsFloat:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_INCASSO').AsFloat:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_ACCESSORIE').AsFloat:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_IMBALLO').AsFloat:=0;
 dsoDocumento.DataSet.fieldByName('SPESE_CONTRASS').AsFloat:=0;
 if not varisnull(deposito) then
 LookNostrDepCod.KeyValue := deposito;

 dsoDocumento.dataset.Post;
 dsoDocumento.dataset.Edit;

 If (intTipoDoc=23) or (intTipoDoc=24)
  Then Exit;

 Get_Num_Doc;
 intOldNumDoc:=intNewNumDoc-1;
 // Num doc
 dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;

 if not varisnull(deposito) then
 LookNostrDepCod.KeyValue := deposito;
// dsoDocumento.dataset.Post;
// dsoDocumento.dataset.Edit;

DBEdit1.SetFocus;
end;

procedure TfVendBanco.BitBtn2Click(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
 saveplace : TBookmark;
begin
BitBtn3.Enabled := True;
Button4.Enabled := True;
BitBtn12.Enabled := True;
BitBtn6.Enabled := True;
BitBtn11.Enabled := True;
BitBtn9.Enabled := True;

BitBtn1.Enabled := false;
BitBtn2.Enabled := false;
BitBtn8.Enabled := false;
BitBtn4.Enabled := false;
BitBtn13.Enabled := false;
Panel7.Enabled := False;

BitBtn10.Enabled := False;
BitBtn14.Enabled := False;
BitBtn15.Enabled := False;
BitBtn16.Enabled := False;
BitBtn17.Enabled := False;
BitBtn18.Enabled := False;
BitBtn19.Enabled := False;
BitBtn20.Enabled := False;
BitBtn21.Enabled := False;
BitBtn22.Enabled := False;
BitBtn23.Enabled := False;
BitBtn24.Enabled := False;
BitBtn25.Enabled := False;

SavePlace := dsoDocumento.DataSet.GetBookmark;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
If ( dsoRigheDoc.DataSet.State in [dsInsert,dsEdit])
Then dsoRigheDoc.DataSet.Cancel;
If ( dsoDocumento.DataSet.State in [dsEdit])And Not(boolInsert)
Then
dsoDocumento.DataSet.Cancel;
dmodAz.ibtrDef.Rollback;
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace);
dsoDocumento.DataSet.FreeBookmark(SavePlace);
end;

procedure TfVendBanco.Button3Click(Sender: TObject);
begin
{dsoRigheDoc.DataSet.FieldByName('IMPORTOINVALUTA').AsFloat:=
 (dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat*
 dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*1936.27);}

dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat-
 (dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat*
 dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100);
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat-
 (dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat*
 dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat/100);
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat-
 (dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat);

dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat/
 (1+dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger/100);
dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;

dsoRigheDoc.dataset.Post;
Totale;
dsoRigheDoc.dataset.Insert;
DBEdit1.SetFocus;
end;

procedure TfVendBanco.BitBtn3Click(Sender: TObject);
begin


salvato:=False;
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn8.Enabled := True;
BitBtn4.Enabled := True;
BitBtn13.Enabled := True;
BitBtn9.Enabled := False;
Button4.Enabled := False;
BitBtn12.Enabled := False;
BitBtn3.Enabled := False;
BitBtn6.Enabled := False;
BitBtn11.Enabled := False;

BitBtn10.Enabled := True;
BitBtn14.Enabled := True;
BitBtn15.Enabled := True;
BitBtn16.Enabled := True;
BitBtn17.Enabled := True;
BitBtn18.Enabled := True;
BitBtn19.Enabled := True;
BitBtn20.Enabled := True;
BitBtn21.Enabled := True;
BitBtn22.Enabled := True;
BitBtn23.Enabled := True;
BitBtn24.Enabled := True;
BitBtn25.Enabled := True;
rxcalcedit1.Text := '';


Panel2.Enabled := True;
Panel3.Enabled := True;
Panel4.Enabled := True;
Panel7.Enabled := True;
//
numeroRiga := 0;
Nuovo;
end;

procedure TfVendBanco.DBEdit4Exit(Sender: TObject);
begin
//Casella := 3;
//ESCIPREZZO;
if dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat = pr then exit;
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
 (dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat/
 (1+dsoRigheDoc.DataSet.FieldByName('Codice_IVA_ID').AsInteger/100));

{dsoRigheDoc.DataSet.FieldByName('IMPORTOINVALUTA').AsFloat:=
      (dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat*
      dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*1936.27);}

dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;

dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;

dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;

if RadioGroup2.ItemIndex = 1 then
begin
DBEdit18.SetFocus;
DBEdit18.SelectAll
end
else
begin
dsoRigheDoc.dataset.Post;
Totale;
DBEdit1.SetFocus;
end;

end;

procedure TfVendBanco.Aggiorna_Qta(bNormale: Boolean);
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

 dsoRigheDoc.DataSet.BlockReadSize:=1;
 dsoRigheDoc.DataSet.First;
 ibqryDetDoc.Open;
 ibqCont_Art.Open;
 ibq_aggArt.Open;
// With (dmodAz) Do
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
       dsoRigheDoc.DataSet.fieldbyname('QTA').AsFloat;
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
ibqCont_Art.FieldByName('VAL_ACQUISTI').AsFloat := ibqCont_Art.FieldByName('VAL_ACQUISTI').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ACQUISTI').AsFloat;
ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat := ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_VENDITA').AsFloat;
ibqCont_Art.FieldByName('VAL_VENDITA').AsFloat := ibqCont_Art.FieldByName('VAL_VENDITA').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_VENDITA').AsFloat;
Try
if (boolVendita)
Then ibqCont_Art.FieldByName('ULT_PREZZO_VEND').AsFloat := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1
Else
begin
ibqCont_Art.FieldByName('ULT_COSTO_ACQ').AsFloat := (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
ibq_aggArt.Edit;
ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
ibq_aggArt.Post;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////
end
Except
End;
ibqCont_Art.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat := ibqCont_Art.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat;
ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat := ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat;
try
begin
if (ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat <> 0) then
ibqCont_Art.FieldByName('COSTO_GIACENZA_INIZIALE').AsFloat := (ibqCont_Art.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat/ibqCont_Art.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat)/1 ;
end
except
end;
ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_ENTRATE').AsFloat;
ibqCont_Art.FieldByName('VAL_ALTRE_ENTRATE').AsFloat := dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsFloat;
ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_USCITE').AsFloat;
ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPOrTO_SCONTO').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_USCITE').AsFloat;
ibqCont_Art.FieldByName('QTA_ORDINATO').AsFloat := ibqCont_Art.FieldByName('QTA_ORDINATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ORDINATO').AsFloat;
ibqCont_Art.FieldByName('VAL_ORDINATO').AsFloat := ibqCont_Art.FieldByName('VAL_ORDINATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ORDINATO').AsFloat;
ibqCont_Art.FieldByName('QTA_IMPEGNATO').AsFloat := ibqCont_Art.FieldByName('QTA_IMPEGNATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_IMPEGNATO').AsFloat;
ibqCont_Art.FieldByName('VAL_QTA_IMPEGNATO').AsFloat := ibqCont_Art.FieldByName('VAL_QTA_IMPEGNATO').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_IMPEGNATO').AsFloat;
ibqCont_Art.FieldByName('QTA_EVASA_CLIENTE').AsFloat := ibqCont_Art.FieldByName('QTA_EVASA_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_CLIENTE').AsFloat;
ibqCont_Art.FieldByName('VAL_EVASo_CLIENTE').AsFloat := ibqCont_Art.FieldByName('VAL_EVASo_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_EVASo_CLIENTE').AsFloat;
ibqCont_Art.FieldByName('QTA_EVASA_FORNITORE').AsFloat := ibqCont_Art.FieldByName('QTA_EVASA_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_FORNITORE').AsFloat;
ibqCont_Art.FieldByName('VAL_EVASo_FORNITORE').AsFloat := ibqCont_Art.FieldByName('VAL_EVASo_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_EVASo_FORNITORE').AsFloat;
ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat := ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_CLIENTE').AsFloat;
ibqCont_Art.FieldByName('VAL_RESO_CLIENTE').AsFloat := ibqCont_Art.FieldByName('VAL_RESO_CLIENTE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_RESO_CLIENTE').AsFloat;
ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat := ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_FORNITORE').AsFloat;
ibqCont_Art.FieldByName('VAL_RESO_FORNITORE').AsFloat := ibqCont_Art.FieldByName('VAL_RESO_FORNITORE').AsFloat + iNormal *
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_RESO_FORNITORE').AsFloat;
ibqCont_Art.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art.FieldByName('QTA_VENDITA').AsFloat -
 ibqCont_Art.FieldByName('QTA_ALTRE_USCITE').AsFloat - ibqCont_Art.FieldByName('QTA_RESO_FORNITORE').AsFloat +
 ibqCont_Art.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;
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


procedure TfVendBanco.BitBtn5Click(Sender: TObject);
begin
//boolVendita:=False;
end;

procedure TfVendBanco.Totale;
Var
// dSc1,dSc2,dScM: Double;
 SavePlaceTot : TBookmark;
 dSp,dSPIVA: currency;
 dTotale: Currency;
 dTotImp: Currency;
 dTotMerc,dTotServ,dTotAltre,dTotIVATO,dTotIVA,
  dTotSconti: Currency;
 bTipo_Serv: Byte;
// strTipo_Serv: String;
begin
dsoRigheDoc.DataSet.Cancel;
 TRY

  dTotMerc:=0;       dTotServ:=0;
  dTotAltre:=0;     dTotIVATO:=0;
  dtotimp:=0;

  With (dsoRigheDoc.DataSet) Do
  Begin
  if not IsEmpty then
  begin
  SavePlaceTot := GetBookmark;
  DisableControls;
  First;

     While Not(Eof) Do
     Begin
  bTipo_Serv:=1;
       Case (bTipo_Serv) Of
          0: dTotAltre :=dTotAltre +FieldByName('IMPORTO_SConto').AsFloat;
          1: dTotMerc  :=dTotMerc  +FieldByName('IMPORTO_SConto').AsFloat;
          2: dTotServ  :=dTotServ  +FieldByName('IMPORTO_SConto').AsFloat;
       End;
       dTotImp   := dTotImp   + FieldByName('IMPORTO_SConto').AsFloat;
       dTotIVATO := dTotIVATO + FieldByName('IMPORTO_CON_IVA').AsFloat;
       Next;
     End;

     dTotale:=dTotAltre+dTotMerc+dTotServ;
     dTotIVA:=dTotIVATO-dTotale;
     dTotSconti:= dTotImp-dTotale;

     dsoDocumento.DataSet.Edit;

dsoDocumento.DataSet.FieldByName('Totale_merce').AsFloat:=dTotMerc+dTotAltre;
dsoDocumento.DataSet.FieldByName('TOTALE_SERVIZI').AsFloat:=dTotServ;
dsoDocumento.DataSet.FieldByName('TOTALE_SCONTI').AsFloat:=dTotSconti;
dsoDocumento.DataSet.FieldByName('TOTALE').AsFloat:=dTotMerc;//+((dTotIvato+dSp+dSpIVA)*(dSc1+dSc2)-dScM);
dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsFloat:=(dTotIvato+dSp+dSpIVA)-dTotMerc;
dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat:=dTotIvato+dSp+dSpIVA;
dsoDocumento.DataSet.FieldByName('TOT_SPESE').AsFloat:=dSp;
EnableControls;
GotoBookmark(SavePlaceTot);
FreeBookmark(SavePlaceTot);
end;
End;

 EXCEPT
 END;
end;

procedure TfVendBanco.salva;
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
 saveplace2 : TBookmark;
begin
dsoRigheDoc.dataset.Cancel;
 If (dsoRigheDoc.dataset.isEmpty)
   Then Exit;
 If (LookCauMagCod.KeyValue=Null)
   Then Begin
           MessageDlg('La Causale magazzino non è stata scelta!',mtWarning,[mbRetry],0);
           Exit;
        End;
 If (MessageDlg('Conferma il salvataggio!',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
        Then Exit;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
Try
SavePlace2 :=  dsoDocumento.DataSet.GetBookmark;
If (boolInsert) = false then //dsoDocumento.DataSet.State in [dsInsert])
begin
Aggiornamento_Contabilita_TEMP( False);
IbqDel.ExecSQL;
IBDataSet1.Close;
IBDataSet2.Close;
end;
dsoDocumento.DataSet.Edit;
Aggiorna_IVA_Totale;
If (dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger=1)
Then Azzerare_IVA;
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger := intNewNumDoc;

cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;
Calcola_Totali;
If (boolInsert) THEN Set_Num_Doc;
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger := intNewNumDoc;
dsoDocumento.DataSet.Post ;
//Elimina_Scadenza;
{If (dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString<>'')
  Then  begin
Insert_Scadenza;}
{If ((intTipoDoc = 24) or (intTipoDoc = 27) or
   (intTipoDoc = 14) or (intTipoDoc = 17))
Then
If (boolVendita)
Then Insert_Contab_Vend(int_ID_Docum)
Else Insert_Contab_Acq(int_ID_Docum);
end;}
Aggiorna_Qta( True );
{if tipodoc = 151 then
Scarico_Distinta(True);}
 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
inherited;
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace2);
dsoDocumento.DataSet.FreeBookmark(SavePlace2);
dsoDocumento.DataSet.Locate('ID_DOCUMENTO',int_ID_Docum,[]);
end;

procedure TfVendBanco.Set_Num_Doc;
Var
  strTabName: String;
begin
// Get_Tab_Name(intTipoDoc,strTabName);
With (dmodAz.ibqRicerca) Do
Begin
Close;
SQL.Clear;
SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_DOC_VEN_BANCO');
Open;
if not IsEmpty then intNewNumDoc := 1+FieldByName('NUMERO').AsInteger;
Close;
SQL.Clear;
End;


 With (dmodAz.ibqRicerca) Do
 Begin
  Close;
  SQL.Clear;
  SQL.Add('INSERT INTO NUM_DOC_VEN_BANCO (NUMERO) Values ('+IntTostr(intNewNumDoc)+')');
  ExecSQL;
  Close;
  SQL.Clear;
 End;
end;

procedure TfVendBanco.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit18.SetFocus;
end;

procedure TfVendBanco.BitBtn6Click(Sender: TObject);
begin
if dsoRigheDoc.DataSet.IsEmpty then exit;
strCAU_MAG:=LookCauMagCod.KeyValue;
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibqStampaDoc.Open;
 dmodAz.ibtStampaDetDoc.open;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDoc'+strCAU_MAG+'.frf');
//     ShowReport;
PrintReport;
  End;
 dmodAz.ibqStampaDoc.Close;
 dmodAz.ibtStampaDetDoc.Close;
end;

procedure TfVendBanco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
CanClose :=  Button4.Enabled;
if c<>1 then
Button4.Click;
end;

procedure TfVendBanco.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEdit4.SetFocus;
DBEdit4.SelectAll;
end;
end;

procedure TfVendBanco.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Button3.Click;
end;

procedure TfVendBanco.DBEdit18Exit(Sender: TObject);
begin
if dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat = sc1 then exit;
if dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat = 0 then exit;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat-
 (dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat*
 dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100);

dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat/
 (1+dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger/100);
end;

procedure TfVendBanco.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBEdit19.SetFocus;
DBEdit19.SelectAll;
end;
end;

procedure TfVendBanco.DBEdit19Exit(Sender: TObject);
begin
if dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat = scm then exit;
if dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat = 0 then exit;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat-
 dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat;

dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat/
 (1+dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger/100);

end;

procedure TfVendBanco.LookCliForCodChange(Sender: TObject);
begin
 LookCliDescr.KeyValue := LookCliForCod.KeyValue;
If (dsoDocumento.DataSet.State in [dsInsert,dsEdit])
Then
Begin
If (LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').AsString='')
Then  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=0
Else  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=1;
dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
 LookCliForCod.LookupSource.DataSet.FieldByName('CONTROPARTITA_ID').AsInteger;
dmodAz.ibqTab_DocTEL1.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL1').AsString;
dmodAz.ibqTab_DocTEL2.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL2').AsString;
dmodAz.ibqTab_DocTEL3.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('FAX').AsString;
If (dmodAz.ibTab_Piano_Conti.Locate('Tipo',LookCliForCod.LookupSource.DataSet.FieldByName('ID_Cli_for').asinteger,[]))
Then
dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
  dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger
 Else  ;

If Not(LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value = null)
Then Begin
dsoDocumento.DataSet.FieldByName('LISTINO').Value:=
 LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value;
boolNonHaListino:=False;
End
Else boolNonHaListino:=True;
End;
end;

procedure TfVendBanco.LookCliDescrChange(Sender: TObject);
begin
 LookCliForCod.KeyValue := LookCliDescr.KeyValue;
 If Not(LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value = null)
Then
begin
LookListinoCod.DataSource.dataSet.FieldByName('LISTINO').Value:=
 LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_LISTINO').Value;
 LookListinoDescr.KeyValue := LookListinoCod.KeyValue;
 end;
end;

procedure TfVendBanco.LookListinoCodClick(Sender: TObject);
begin
 LookListinoDescr.KeyValue := LookListinoCod.KeyValue;

end;

procedure TfVendBanco.LookListinoDescrClick(Sender: TObject);
begin
LookListinoCod.KeyValue := LookListinoDescr.KeyValue;
end;

procedure TfVendBanco.LookNostrDepCodChange(Sender: TObject);
begin
LookNostrDepDescr.KeyValue := LookNostrDepCod.KeyValue;
end;

procedure TfVendBanco.LookNostrDepDescrChange(Sender: TObject);
begin
LookNostrDepCod.KeyValue := LookNostrDepDescr.KeyValue;
end;

procedure TfVendBanco.Button2Click(Sender: TObject);
var
strcodart : string;
begin
With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE_ARTICOLO';
    strCampo3:='PREZZO_BASE';
    intRichieste:=3;
    strResCampoCodice:='DESCR';
    strValore:=DBEdit2.Field.AsString;

ShowModal;
strCodArt:=VarToStr(vaResValore2);
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=VarToStr(vaResValore2);
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=VarToStr(vaResValore);
Free;
End;
DBEdit1Exit(sender);
end;

procedure TfVendBanco.ESCIPREZZO;
begin
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
 (dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat/
 (1+dsoRigheDoc.DataSet.FieldByName('Codice_IVA_ID').AsInteger/100));

dsoRigheDoc.DataSet.FieldByName('IMPORTOINVALUTA').AsFloat:=
      (dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat*
      dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*1936.27);

dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;

dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;

dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;

if RadioGroup2.ItemIndex<>2 then
begin
dsoRigheDoc.dataset.Post;
dsoRigheDoc.dataset.Append;
DBEdit1.SetFocus;
end
else
begin
DBEdit18.SetFocus;
DBEdit18.SelectAll
end;
end;

procedure TfVendBanco.Button5Click(Sender: TObject);
begin
if dsoRigheDoc.DataSet.IsEmpty then exit;
 dsoRigheDoc.DataSet.Cancel;
end;

procedure TfVendBanco.CASSA1;
var
x : integer;
strcodart : string;
imb : Double;
ris,ris2,ris3 :integer;
nmfile, result, errfile :string;
risultato,risultato2,risultato3: widestring;
begin
//ShellExecute(application.handle,'open','del dati.dat' , '',nil,sw_show);
////////////////////////////// ECR   1
 ADOQuery1.Close;
 Datetimetostring(result,'yyyymmddhhddss', Time);
 nmfile:=ExtractFilePath(Application.ExeName)+'dati.dat';
 errfile:=ExtractFilePath(Application.ExeName)+'DMerr_'+result+'.txt';
 CoEcrCom1.Open('PORT=1');
 CoEcrCom1.EventMask:=255;
 CoEcrCom1.EnableTradDC:=true;
 screen.Cursor:=crHourGlass;
 CoEcrCom1.OperatingMode:=0;
 ris2:=CoEcrCom1.EcrCmd('selez ecr=1',risultato2);
ris:=CoEcrCom1.EcrCmd('em_link cmd=''DM'', FILE='''+nmfile+''', ERR='''+errfile+'''', risultato);
// APPEND ris:=CoEcrCom1.EcrCmd('em_link cmd=''DM'', FILE='''+nmfile+''', ERR='''+errfile+''', APPEND', risultato);

 screen.Cursor:=crDefault;
 if ris=0 then
  begin
fVendBanco.Caption :=fVendBanco.Caption+'  -  Download Eseguito Correttamente Cassa 1!';

//   memo1.Lines.Add('Download Eseguito Correttamente');
//   memo1.Lines.Add('I movimenti sono stati scaricati nel file:'+nmfile);
//   memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)

ShellExecute(application.handle,'open','passa.exe' , '',nil,sw_show);


ADOQuery1.Active := True;
if ADOQuery1.IsEmpty then exit;

RadioGroup2.ItemIndex := 0;
Panel7.Enabled := False;
dsoRigheDoc.DataSet.DisableControls;
ADOQuery1.DisableControls;
If (dsoRigheDoc.DataSet.IsEmpty)
Then numeroRiga:=0
Else Begin
 dsoRigheDoc.DataSet.Last;
 numeroRiga:=dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
End;
iID_Doc_New:=dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
Panel6.Enabled := False;
ADOQuery1.First;

while not ADOQuery1.Eof do
begin
strcodart :=floattostr(strtofloat(ADOQuery1.fieldbyname('C2').AsString));
x:= length((((strcodart))));
if x =10 then
strcodart :=  '0'+(strcodart)
else
strcodart :=(strcodart);
imb:=1;
IBQuery2.Close;
IBQuery2.ParamByName('a').AsString :=strcodart;
IBQuery2.Open;

if IBQuery2.IsEmpty then
begin
IBQuery8.Close;
IBQuery8.ParamByName('a').AsString := strcodart;
IBQuery8.Open;
if not IBQuery8.IsEmpty then
begin
strcodart :=IBQuery8.fieldbyname('codice_articolo').AsString;
imb := IBQuery8.fieldbyname('quantita').AsFloat;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := strcodart;
IBQuery2.open;
end;
end;


if not IBQuery2.IsEmpty then
begin
dsoRigheDoc.DataSet.Insert;
numeroRiga := numeroRiga+1;
dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString := 'ARTICOLO';
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:= strcodart;
dsoRigheDoc.dataset.FieldByName('DOC_ID').AsFloat:= iID_Doc_New;
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=IBQuery2.FieldByName('DESCR').AsString;
dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;
dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat:=
   (StrToFloat(ADOQuery1.fieldbyname('SumOfC4').AsString));
dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat*imb;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:= LookNostrDepCod.keyvalue;
dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat :=
 ((StrToFloat(ADOQuery1.fieldbyname('SumOfC3').AsString)/
 (StrToFloat(ADOQuery1.fieldbyname('SumOfC4').AsString))/100));
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
 ((StrToFloat(ADOQuery1.fieldbyname('SumOfC3').AsString)/
 (StrToFloat(ADOQuery1.fieldbyname('SumOfC4').AsString))/100))/(1+
 IBQuery2.FieldByName('Codice_IVA_ID').AsInteger/100);
dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;
If (boolDoc_Vendita)
Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
     IBQuery2.FieldByName('CONTO_VENDITA').AsInteger
Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
     IBQuery2.FieldByName('CONTO_ACQUISTO').AsInteger;
dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger:=
           IBQuery2.FieldByName('Codice_IVA_ID').AsInteger;
dsoRigheDoc.dataset.FieldByName('UNITA_MISURA').AsString:=
           IBQuery2.FieldByName('UNITA_DI_MISURA1_ID').AsString;
dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
   dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
   dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;
dsoRigheDoc.dataset.FieldByName('Num_riga_ID').asinteger:= numeroRiga;
dsoRigheDoc.dataset.Post;
end;
ADOQuery1.Next;
end;

ADOQuery1.EnableControls;
dsoRigheDoc.DataSet.EnableControls;
Totale;


ris3:=CoEcrCom1.EcrCmd('em_link cmd=''RM''', risultato3);
  end
 else
  begin
  fVendBanco.Caption :=fVendBanco.Caption+'  -  Errore Nel Download Cassa 1!';
  //   memo1.Lines.Add('Errore Nel Download');
//   memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
  MessageDlg('Errore Nel Download Cassa 1!',mtError,[mbok],0);
  end;

 CoEcrCom1.Close;

//////////////////////////////





Panel7.Enabled := True;
Panel6.Enabled := True;
BitBtn1.SetFocus;
BitBtn4.Enabled := False;

end;



procedure TfVendBanco.CASSA2;
var
x : integer;
strcodart : string;
imb : Double;
ris,ris2,ris3 :integer;
nmfile, result, errfile :string;
risultato,risultato2,risultato3: widestring;
begin


////////////////////////////// ECR   2
ADOQuery1.Close;
 Datetimetostring(result,'yyyymmddhhddss', Time);
 nmfile:=ExtractFilePath(Application.ExeName)+'dati.dat';
 errfile:=ExtractFilePath(Application.ExeName)+'DMerr_'+result+'.txt';
 CoEcrCom1.Open('PORT=1');
 CoEcrCom1.EventMask:=255;
 CoEcrCom1.EnableTradDC:=true;
 screen.Cursor:=crHourGlass;
 CoEcrCom1.OperatingMode:=0;
 ris2:=CoEcrCom1.EcrCmd('selez ecr=2',risultato2);

ris:=CoEcrCom1.EcrCmd('em_link cmd=''DM'', FILE='''+nmfile+''', ERR='''+errfile+'''', risultato);
// APPEND ris:=CoEcrCom1.EcrCmd('em_link cmd=''DM'', FILE='''+nmfile+''', ERR='''+errfile+''', APPEND', risultato);
 screen.Cursor:=crDefault;
 if ris=0 then
  begin
fVendBanco.Caption :=fVendBanco.Caption+'  -  Download Eseguito Correttamente Cassa 2!';
//   memo1.Lines.Add('Download Eseguito Correttamente');
//   memo1.Lines.Add('I movimenti sono stati scaricati nel file:'+nmfile);
//   memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)

ShellExecute(application.handle,'open','passa.exe' , '',nil,sw_show);


ADOQuery1.Active := True;
if ADOQuery1.IsEmpty then exit;

RadioGroup2.ItemIndex := 0;
Panel7.Enabled := False;
dsoRigheDoc.DataSet.DisableControls;
ADOQuery1.DisableControls;
If (dsoRigheDoc.DataSet.IsEmpty)
Then numeroRiga:=0
Else Begin
 dsoRigheDoc.DataSet.Last;
 numeroRiga:=dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
End;
iID_Doc_New:=dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
Panel6.Enabled := False;
ADOQuery1.First;

while not ADOQuery1.Eof do
begin
strcodart :=floattostr(strtofloat(ADOQuery1.fieldbyname('C2').AsString));
x:= length((((strcodart))));
if x =10 then
strcodart :=  '0'+(strcodart)
else
strcodart :=(strcodart);
imb:=1;
IBQuery2.Close;
IBQuery2.ParamByName('a').AsString :=strcodart;
IBQuery2.Open;

if IBQuery2.IsEmpty then
begin
IBQuery8.Close;
IBQuery8.ParamByName('a').AsString := strcodart;
IBQuery8.Open;
if not IBQuery8.IsEmpty then
begin
strcodart :=IBQuery8.fieldbyname('codice_articolo').AsString;
imb := IBQuery8.fieldbyname('quantita').AsFloat;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := strcodart;
IBQuery2.open;
end;
end;


if not IBQuery2.IsEmpty then
begin
dsoRigheDoc.DataSet.Insert;
numeroRiga := numeroRiga+1;
dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString := 'ARTICOLO';
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:= strcodart;
dsoRigheDoc.dataset.FieldByName('DOC_ID').AsFloat:= iID_Doc_New;
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=IBQuery2.FieldByName('DESCR').AsString;
dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;
dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat:=
   (StrToFloat(ADOQuery1.fieldbyname('SumOfC4').AsString));
dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat*imb;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:= LookNostrDepCod.keyvalue;
dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat :=
 ((StrToFloat(ADOQuery1.fieldbyname('SumOfC3').AsString)/
 (StrToFloat(ADOQuery1.fieldbyname('SumOfC4').AsString))/100));
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
 ((StrToFloat(ADOQuery1.fieldbyname('SumOfC3').AsString)/
 (StrToFloat(ADOQuery1.fieldbyname('SumOfC4').AsString))/100))/(1+
 IBQuery2.FieldByName('Codice_IVA_ID').AsInteger/100);
dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;
If (boolDoc_Vendita)
Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
     IBQuery2.FieldByName('CONTO_VENDITA').AsInteger
Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
     IBQuery2.FieldByName('CONTO_ACQUISTO').AsInteger;
dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger:=
           IBQuery2.FieldByName('Codice_IVA_ID').AsInteger;
dsoRigheDoc.dataset.FieldByName('UNITA_MISURA').AsString:=
           IBQuery2.FieldByName('UNITA_DI_MISURA1_ID').AsString;
dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
   dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
   dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;
dsoRigheDoc.dataset.FieldByName('Num_riga_ID').asinteger:= numeroRiga;
dsoRigheDoc.dataset.Post;
end;
ADOQuery1.Next;
end;

ADOQuery1.EnableControls;
dsoRigheDoc.DataSet.EnableControls;
Totale;
ris3:=CoEcrCom1.EcrCmd('em_link cmd=''RM''', risultato3);


  end
 else
  begin
  fVendBanco.Caption :=fVendBanco.Caption+'  -  Errore Nel Download Cassa 2!';
  //   memo1.Lines.Add('Errore Nel Download');
//   memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
  MessageDlg('Errore Nel Download Cassa 2!',mtError,[mbok],0);
  end;

 CoEcrCom1.Close;

//////////////////////////////

Panel7.Enabled := True;
Panel6.Enabled := True;
BitBtn1.SetFocus;
BitBtn4.Enabled := False;

end;






procedure TfVendBanco.BitBtn4Click(Sender: TObject);
var
Scelta : string;
begin
fVendBanco.Caption :=fVendBanco.Caption+'  -  Attendere il caricamento dei dati!';
//fVendBanco.AlphaBlend := True;
scelta:=InputBox('Preleva dati da Cassa','Cassa 1 - Cassa 2','1');

if scelta = '1' then
CASSA1;
if scelta = '2' then
CASSA2;
//fVendBanco.AlphaBlend := False;
fVendBanco.Caption :='Vendita al Banco';
end;

procedure TfVendBanco.Get_Val_From_PersAz;
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

procedure TfVendBanco.BitBtn9Click(Sender: TObject);
var
 int_ID_Docum,cliforid,tipodoc: Integer;
begin
if dsoRigheDoc.DataSet.IsEmpty then exit;
BitBtn3.Enabled := True;
Button4.Enabled := True;
BitBtn12.Enabled := True;

BitBtn1.Enabled := false;
BitBtn2.Enabled := false;
BitBtn8.Enabled := false;
BitBtn4.Enabled := false;
BitBtn13.Enabled := false;
//BitBtn9.Enabled := false;

 boolInsert:=False;
 If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
   Then Exit;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

 Try
 Aggiorna_Qta( False);
   While Not(dsoRigheDoc.DataSet.IsEmpty) Do dsoRigheDoc.DataSet.Delete;
     dsoDocumento.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
 End;
Apri;
end;

procedure TfVendBanco.BitBtn12Click(Sender: TObject);
var
tipodoc : Integer;
begin
if dsoRigheDoc.DataSet.IsEmpty then exit;
salvato:=False;
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
IBDataSet1.Open;
IBDataSet2.Open;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsoDocumento.DataSet.Edit;
boolInsert:=False;
boolModifica := True;
tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;

Button4.Enabled := False;
BitBtn9.Enabled := False;
BitBtn2.Enabled := True;
BitBtn3.Enabled := false;
BitBtn1.Enabled := True;
BitBtn12.Enabled := True;
BitBtn8.Enabled := True;
BitBtn4.Enabled := False;
BitBtn13.Enabled := false;
BitBtn12.Enabled := false;
BitBtn6.Enabled := False;
BitBtn11.Enabled := False;
Panel7.Enabled := True;
Panel4.Enabled := True;
dsoRigheDoc.DataSet.Last;
numeroRiga:=dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;

end;

procedure TfVendBanco.Get_Num_Doc;
Var
 strTabName: String;
begin
strTabName := 'NUM_DOC_VEN_BANCO';
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



procedure TfVendBanco.BitBtn13Click(Sender: TObject);
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,strCodiceListino: String;
// boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC: Double;
begin
 strCodDep:=LookNostrDepCod.KeyValue;
 FileData := TStringList.Create;
   try
//      OpenDialog1.Title := 'Apertura file di documenti';
//      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
 //     if OpenDialog1.Execute then begin
      FileData.Clear;
      FileData.LoadFromFile(ExtractFilePath(Application.ExeName)+'TOTALI.DAT');
      for i := 0 to FileData.Count - 1 do
begin
dsoRigheDoc.DataSet.Insert;
//x:= length(FloatToStr((StrToFloat(dmodAz.TabCassa.fieldbyname('C2').AsString))));
x:= length((((ADOQuery1.fieldbyname('C2').AsString))));
if x =10 then
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString :=
 '0'+Copy(FileData.Strings[i], 1, 12)
else
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString :=
 Copy(FileData.Strings[i], 1, 12);

dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString := 'ARTICOLO';

IBQuery2.Close;
IBQuery2.ParamByName('a').AsString :=DBEdit1.Field.AsString;
IBQuery2.Open;

    if not dsoDati.DataSet.IsEmpty then
    begin
 If (dsoRigheDoc.DataSet.State in [dsEdit]) then
 dsoRigheDoc.DataSet.Insert;

   dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=
        dsoDati.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString := 'ARTICOLO';

   dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=
        dsoDati.DataSet.FieldByName('DESCR').AsString;
   dsoRigheDoc.DataSet.FieldByName('Quantita').AsFloat:=
   (StrToFloat(Copy(FileData.Strings[i], 14, 7)));
   dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=
   VarToStr(LookNostrDepCod.keyvalue);

dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat :=
((StrToFloat(Copy(FileData.Strings[i], 25, 10)))/
(StrToFloat(Copy(FileData.Strings[i], 14, 7)))/100);

dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
((StrToFloat(Copy(FileData.Strings[i], 25, 10))/
(StrToFloat(Copy(FileData.Strings[i], 14, 7)))/100))/(1+
dsoDati.DataSet.FieldByName('Codice_IVA_ID').AsInteger/100);


   dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=
   Now;


   If (boolDoc_Vendita)
     Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 dsoDati.DataSet.FieldByName('CONTO_VENDITA').AsInteger
     Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 dsoDati.DataSet.FieldByName('CONTO_ACQUISTO').AsInteger;

        dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger:=
           dsoDati.DataSet.FieldByName('Codice_IVA_ID').AsInteger;

        dsoRigheDoc.dataset.FieldByName('UNITA_MISURA').AsString:=
           dsoDati.DataSet.FieldByName('UNITA_DI_MISURA1_ID').AsString;


   dsoRigheDoc.DataSet.FieldByName('COSTOINVALUTA').AsFloat:=
      (dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat*1936.27);

   dsoRigheDoc.DataSet.FieldByName('IMPORTOINVALUTA').AsFloat:=
      (StrToFloat(Copy(FileData.Strings[i], 25, 10))*1936.27);

        dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
           dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;


        dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
         dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;

        dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
           StrToFloat(Copy(FileData.Strings[i], 25, 10))/100;


numeroRiga := numeroRiga+1;
dsoRigheDoc.dataset.FieldByName('Num_riga_ID').asinteger:=
           numeroRiga;

        dsoRigheDoc.dataset.FieldByName('DOC_ID').AsFloat:= iID_Doc_New;
//   Free;

  // Immissione prezzo dal listino
  if RadioGroup2.ItemIndex = 0 then
begin
  dsoRigheDoc.dataset.Post;
  dsoRigheDoc.dataset.Insert;
  DBEdit1.SetFocus;
  end;

  if RadioGroup2.ItemIndex = 1 then
  DBEdit3.SetFocus;
  if RadioGroup2.ItemIndex = 2 then
  DBEdit20.SetFocus
end
else
    dsoRigheDoc.DataSet.Cancel;

 end;

finally
 FileData.Free;
 end;

BitBtn1.SetFocus;

end;

procedure TfVendBanco.Apri;
begin
dmodAz.dsoqTabCli.DataSet.Open;
dmodAz.dsoqTabFor.DataSet.Open;
dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=intTipoDoc;
dsoDocumento.DataSet.Open;
dsoRigheDoc.DataSet.Open;
dsoListino.DataSet.Open;
dsoDocumento.DataSet.Open;
dsoRigheDoc.DataSet.Open;
dsoDepositi.DataSet.Open;
dsoCauMag.DataSet.Open;
dsoDepositi.DataSet.Open;
dsoListino.DataSet.Open;
dsoCODICEIVA.DataSet.Open;
//IBQuery5.Open;
//dsAspetto.DataSet.Open;
//dsEsenteIVA.DataSet.Open;
//dsoAgenti.DataSet.Open;
//dsoAltreDest.DataSet.Open;
//dsoAttivita.DataSet.Open;
//dsoBanca.DataSet.Open;
//dsoCausSped.DataSet.Open;
//dsoCauTrasp.DataSet.Open;
//dsoMoneta.DataSet.Open;
//dsoPagamenti.DataSet.Open;
//dsoPorto.DataSet.Open;
//dsoVettori.DataSet.Open;
//dsProvv.DataSet.Open;
//dsPianoConto.DataSet.Open;
end;

procedure TfVendBanco.Aggiornamento_Contabilita_TEMP(bNormale: Boolean);
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
ibqCont_Art_tmp.FieldByName('VAL_ACQUISTI').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_ACQUISTI').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ACQUISTI').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_VENDITA').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_VENDITA').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_VENDITA').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_VENDITA').AsFloat;
Try
if (boolVendita)
Then  ibqCont_Art_tmp.FieldByName('ULT_PREZZO_VEND').AsFloat := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1
Else
begin
ibqCont_Art_tmp.FieldByName('ULT_COSTO_ACQ').AsFloat := (IBDataSet2.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
ibq_aggArt_tmp.Edit;
ibq_aggArt_tmp.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
ibq_aggArt_tmp.post;
////////// qui posso aggiornare il prezzo di vendita
//ibq_aggArt.FieldByName('COSTO_STANDART').AsFloat :=(dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat/dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat)/1;
//////////////
end

except
End;
ibqCont_Art_tmp.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat;
try
begin
if (ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat <> 0) then
ibqCont_Art_tmp.FieldByName('COSTO_GIACENZA_INIZIALE').AsFloat := (ibqCont_Art_tmp.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat/ibqCont_Art_tmp.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat)/1 ;
end
except
end;
ibqCont_Art_tmp.FieldByName('QTA_ALTRE_ENTRATE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ALTRE_ENTRATE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_ENTRATE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_ALTRE_ENTRATE').AsFloat := dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_ENTRATE').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_ALTRE_USCITE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ALTRE_USCITE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ALTRE_USCITE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_ALTRE_USCITA').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_ALTRE_USCITA').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPOrTO_SCONTO').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ALTRE_USCITE').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_ORDINATO').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ORDINATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_ORDINATO').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_ORDINATO').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_ORDINATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_ORDINATO').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_IMPEGNATO').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_IMPEGNATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_IMPEGNATO').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_QTA_IMPEGNATO').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_QTA_IMPEGNATO').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_IMPEGNATO').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_EVASA_CLIENTE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_EVASA_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_CLIENTE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_EVASo_CLIENTE').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_EVASo_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_EVASo_CLIENTE').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_EVASA_FORNITORE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_EVASA_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_EVASA_FORNITORE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_EVASo_FORNITORE').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_EVASo_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_EVASo_FORNITORE').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_RESO_CLIENTE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_RESO_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_CLIENTE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_RESO_CLIENTE').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_RESO_CLIENTE').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_RESO_CLIENTE').AsFloat;
ibqCont_Art_tmp.FieldByName('QTA_RESO_FORNITORE').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_RESO_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('QUANTITA').AsFloat * dsoCauMag.DataSet.FieldByName('QTA_RESO_FORNITORE').AsFloat;
ibqCont_Art_tmp.FieldByName('VAL_RESO_FORNITORE').AsFloat := ibqCont_Art_tmp.FieldByName('VAL_RESO_FORNITORE').AsFloat + iNormal *
 IBDataSet2.FieldByName('IMPORTO_SConto').AsFloat * dsoCauMag.DataSet.FieldByName('VAL_RESO_FORNITORE').AsFloat;
ibqCont_Art_tmp.FieldByName('GIACENZA_attuale').AsFloat := ibqCont_Art_tmp.FieldByName('QTA_ACQUISTI').AsFloat +ibqCont_Art_tmp.FieldByName('QTA_ALTRE_ENTRATE').AsFloat -  ibqCont_Art_tmp.FieldByName('QTA_VENDITA').AsFloat -
 ibqCont_Art_tmp.FieldByName('QTA_ALTRE_USCITE').AsFloat - ibqCont_Art_tmp.FieldByName('QTA_RESO_FORNITORE').AsFloat +
 ibqCont_Art_tmp.FieldByName('QTA_RESO_CLIENTE').AsFloat + ibqCont_Art_tmp.FieldByName('qta_GIACENZA_INIZIALE').AsFloat;
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

Procedure TfVendBanco.Aggiorna_IVA_Totale;
Begin
 Try

  dsoRigheDoc.DataSet.DisableControls;
  dmodAz.ibtTabDet_Doc.First;
  Azzerare_IVA;
//  Aggiorna_Spese_IVA;
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

procedure TfVendBanco.Azzerare_IVA;
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

 dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat:=
 dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsFloat-
 dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsFloat;

 dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsInteger:=0;

 dsoDocumento.DataSet.FieldByName('TOTALE_EURO_IVATO').AsFloat:=0;

end;


procedure TfVendBanco.Calcola_Totali;
Var
 dSp,dSPIVA: Currency;
 dTotale: Currency;
 dTotImp: Currency;
 dTotMerc,dTotServ,dTotAltre,dTotIVATO,dTotIVA,
 dTotSconti: Currency;
 bTipo_Serv: Byte;
 saveplace : TBookmark;
begin
 TRY
//  Calcola_Spese(dSp,dSpIVA);
  dTotMerc:=0;       dTotServ:=0;
  dTotAltre:=0;     dTotIVATO:=0;
  dtotimp:=0;
dsp:=0;
dSpIVA:=0;
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
       dTotImp   := dTotImp   + FieldByName('importo').AsFloat;
       dTotIVATO := dTotIVATO + FieldByName('IMPORTO_CON_IVA').AsFloat;
       Next;
     End;
     dTotale:=dTotAltre+dTotMerc+dTotServ;
     dTotIVA:=dTotIVATO-dTotale;
     dTotSconti:= dTotImp-dTotale;
     dmodAz.ibqTab_DocTOTALE_MERCE.AsFloat:=dTotMerc+dTotAltre;
     dmodAz.ibqTab_DocTOTALE_SERVIZI.AsFloat:=dTotServ;
     dmodAz.ibqTab_DocTOTALE_SCONTI.AsFloat:=dTotSconti;
     dmodAz.ibqTab_DocTOTALE.AsFloat:=dTotale+dSp;//+((dTotIvato+dSp+dSpIVA)*(dSc1+dSc2)-dScM);
     dmodAz.ibqTab_DocTOTALE_IVA.AsFloat:=dTotIva+dSpIVA;
     dmodAz.ibqTab_DocTOTALE_IVATO.AsFloat:=dmodAz.ibqTab_DocTOTALE.AsFloat+dmodAz.ibqTab_DocTOTALE_IVA.AsFloat;
     dmodAz.ibqTab_DocTOTALE_IVATO.AsFloat:=dTotIvato+dSp+dSpIVA;
     dmodAz.ibqTab_DocTOT_SPESE.AsFloat:=dSp;

     EnableControls;
  GotoBookmark(SavePlace);
  FreeBookmark(SavePlace);
end;
end;
EXCEPT
END;
end;

procedure TfVendBanco.Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
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

// dsoRigheDoc.DataSet.Locate('NUM_RIGA_ID',intNumRiga,[]);
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
if (ibqTab_DocIMPON4.AsFloat = 0)
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


procedure TfVendBanco.DBEdit1Enter(Sender: TObject);
begin
CodArt := DBEdit1.Field.AsString;
end;

procedure TfVendBanco.DBEdit5Exit(Sender: TObject);
begin
if dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat = sc2 then exit;
if dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat = 0 then exit;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat-
 (dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat*
 dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat/100);

dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('IMPORTO_CON_IVA').AsFloat/
 (1+dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger/100);
end;

procedure TfVendBanco.SpeedButton2Click(Sender: TObject);
begin
if dsoRigheDoc.DataSet.IsEmpty then exit;
dsoRigheDoc.DataSet.edit;
end;

procedure TfVendBanco.SpeedButton3Click(Sender: TObject);
begin
if dsoRigheDoc.DataSet.IsEmpty then exit;
 If (MessageDlg('Eliminare riga?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
   Then  Begin
            dsoRigheDoc.DataSet.Delete;
         End;
 Totale;


end;

procedure TfVendBanco.SpeedButton4Click(Sender: TObject);
begin
if dsoRigheDoc.DataSet.IsEmpty then exit;
 dsoRigheDoc.DataSet.Cancel;
 DBEdit1.SetFocus;
 DBEdit1.SelectAll;
end;

procedure TfVendBanco.SpeedButton1Click(Sender: TObject);
begin
//dsoRigheDoc.DataSet.Last;
//iNRiga_Nuovo:=1+dsoDet_Doc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;

dsoRigheDoc.DataSet.insert;
DBEdit1.SetFocus;
end;

procedure TfVendBanco.DBEdit4Enter(Sender: TObject);
begin
Casella := 3;
pr:= dsoRigheDoc.dataset.FieldByName('IVATO').AsFloat;
if casella=20 then
edit5.SetFocus;
end;

procedure TfVendBanco.DBEdit18Enter(Sender: TObject);
begin
sc1:= dsoRigheDoc.dataset.FieldByName('SCONTO1').AsFloat;
end;

procedure TfVendBanco.DBEdit5Enter(Sender: TObject);
begin
sc2:= dsoRigheDoc.dataset.FieldByName('SCONTO2').AsFloat;
end;

procedure TfVendBanco.DBEdit19Enter(Sender: TObject);
begin
scm:= dsoRigheDoc.dataset.FieldByName('SCONTO_EQ').AsFloat;
end;

procedure TfVendBanco.BitBtn8Click(Sender: TObject);
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,strCodiceListino,art: String;
// boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin
//boolDoc_Vendita:=boolVendita;
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
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 12));

x:=length(FloatToStr((StrToFloat(RxMemoryData1.FieldByName('CODICE').AsString))));
if x =8 then
RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 7));

         RxMemoryData1.FieldByName('QTA').AsFloat := StrToFloat(Copy(FileData.Strings[i], 14, 5));
         RxMemoryData1.Post;
      end;
      end;
   finally
      FileData.Free;
   end;
if RxMemoryData1.IsEmpty then exit;

iNRiga:=1;
RxMemoryData1.First;
RxMemoryData1.DisableControls;
dsoRigheDoc.DataSet.DisableControls;

  If (dsoRigheDoc.DataSet.IsEmpty)
   Then iNRiga:=1
   Else Begin
         dsoRigheDoc.DataSet.Last;
         iNRiga:=dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
        End;
intID_Doc:=dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
while not RxMemoryData1.Eof do
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
IBQuery8.Close;
IBQuery8.ParamByName('a').AsString := RxMemoryData1.fieldbyname('CODICE').AsString;
IBQuery8.Open;
if not IBQuery8.IsEmpty then
begin
art :=IBQuery8.fieldbyname('codice_articolo').AsString;
imb := IBQuery8.fieldbyname('quantita').AsFloat;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := art;
IBQuery2.open;
end;
end;

if not (IBQuery2.IsEmpty) then
begin
dsoRigheDoc.DataSet.Insert;
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=IBQuery2.fieldbyname('CODICE_ARTICOLO').AsString;
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=IBQuery2.fieldbyname('DESCR').AsString;
If (boolDoc_Vendita) then
begin
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=IBQuery2.fieldbyname('PREZZO_BASE').AsFloat;
dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:= IBQuery2.FieldByName('PREZZO_IVATO').AsFloat;
end
Else
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=IBQuery2.fieldbyname('COSTO_STANDART').AsFloat;

if not VarIsNull(IBQuery2.fieldbyname('PROVVIGIONE').AsFloat) then
dsoRigheDoc.DataSet.FieldByName('PERC_PROVV').AsFloat:=IBQuery2.fieldbyname('PROVVIGIONE').AsFloat;

dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString:='ARTICOLO';
//dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=dbeSconto1.Field.AsInteger;
//dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=dbeSconto2.Field.AsInteger;
//dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('DOC_ID').AsInteger:= intID_Doc;
dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger:=iNRiga;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=strCodDep;
dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;

dsoRigheDoc.DataSet.FieldByName('PREZZOLIST').AsFloat:=IBQuery2.fieldbyname('PREZZO_BASE').AsFloat;

  if (strCodiceListino = '1') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
     IBQuery2.fieldByname('IMP2').AsFloat;
  if (strCodiceListino = '2') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
     IBQuery2.fieldByname('IMP3').AsFloat;
  if (strCodiceListino = '3') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
     IBQuery2.fieldByname('IMP4').AsFloat;
  if (strCodiceListino = '4') and (dmodAz.Tipo <> 1) then
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
     IBQuery2.fieldByname('IMP5').AsFloat;

if dmodAz.Tipo = 1 then
begin
  if strCodiceListino = '1' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     IBQuery2.fieldByname('SC21').AsFloat;
  if strCodiceListino = '2' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     IBQuery2.fieldByname('SC31').AsFloat;
  if strCodiceListino = '3' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     IBQuery2.fieldByname('SC41').AsFloat;
  if strCodiceListino = '4' then
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     IBQuery2.fieldByname('SC51').AsFloat;
end;
   If (boolDoc_Vendita)
     Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 IBQuery2.FieldByName('CONTO_VENDITA').AsInteger
     Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 IBQuery2.FieldByName('CONTO_ACQUISTO').AsInteger;
dsoRigheDoc.dataset.FieldByName('CODICE_IVA_ID').asinteger := IBQuery2.fieldByname('CODICE_IVA_ID').AsInteger;
Try
dsoRigheDoc.DataSet.fieldByName('UNITA_MISURA').AsString:=
 IBQuery2.FieldByName('UNITA_DI_MISURA1_ID').AsString;
Except
End;
dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat :=RxMemoryData1.fieldbyname('QTA').AsFloat;
dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;

dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=RxMemoryData1.fieldbyname('QTA').AsFloat*imb;

try
  dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat:=
      dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
  dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
//      dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat;

 Except
   dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat:=0;
 End;

 Try
   dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
   dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat;

   dSC1 := dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100;
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC1;
   dSC2 := dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat/100;
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC2;
   dSC  := dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat;
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC;
 Except
   dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=0;
   dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=0;
   dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
   dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
   dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat;
 End;
  Try
     Begin
      dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsFloat:=
         dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat +
         dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat * IBQuery2.fieldByname('CODICE_IVA_ID').AsInteger
                /100;
     End;
  Except
   dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsFloat:=dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat;
   Beep;
  End;

end;
RxMemoryData1.Next;
end;
//end;
RxMemoryData1.EnableControls;
dsoRigheDoc.DataSet.EnableControls;
Aggiorna_IVA_Totale;
Calcola_Totali;
end;


procedure TfVendBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
 VK_F2 : begin
         if DBEdit1.Focused then
         Button1.Click;
         end;
 VK_F3 : begin
         if DBEdit2.Focused then
         Button2.Click;
         end;
 VK_F6 : begin
         if SpeedButton4.Enabled then
         SpeedButton4.Click;
         end;
 VK_F7 : begin
         if Button3.Enabled then
         Button3.Click;
         end;
{ VK_F8 : begin
         if tbtnAnulla.Enabled then
         tbtnAnulla.Click;
         end;}
 VK_F9 : begin
         if BitBtn3.Enabled then
         BitBtn3.Click;
         end;
 VK_F10 : begin
         if BitBtn12.Enabled then
         BitBtn12.Click;
         end;
 VK_F11 : begin
         if BitBtn1.Enabled then
         BitBtn1.Click;
         end;
 VK_F12 : begin
         if BitBtn9.Enabled then
         BitBtn9.Click;
         end;
 VK_ESCAPE : begin
         if Button4.Enabled then
         Button4.Click;
         end;
end;

end;

procedure TfVendBanco.DBEdit1DblClick(Sender: TObject);
begin
Button1.Click;
end;

procedure TfVendBanco.BitBtn11Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k,m1 : Integer;
A, b, c, x,e1,e2,e3,e4,s1 : String;
result : WideString;
g, h, l, m : real;
begin
//IF (MessageDlg('Stampare Scontrino Fiscale ?!',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
//then Exit;

if TIPOREGIS = 'DITRON' then
begin
ApdComPort1.open := true;
ApdComPort1.open := false;
CoEcrCom1.OperatingMode := 1;
if (CoEcrCom1.Open(Edit1.Text)) = 0 then
begin
Label14.Visible := True;
label14.Caption := 'Connessione ECR Aperta'
end
else
begin
Label14.Visible := True;
label14.Caption := 'E R R O R E  connessione ECR';
ShowMessage('E R R O R E  connessione ECR!!');
Label14.Visible := False;
Exit;
end;
label16.Caption := CoEcrCom1.EcrConfStr(1);

//////////////////////////////////////////////////////////// SCONTRINO
x:=ExtractFilePath(Application.Exename)+'Scontrino.ecr';
AssignFile(F, x);
Rewrite(F);
IBQuery6.Open;
dsoRigheDoc.DataSet.First;
  Writeln(F, 'CLEAR');
  Writeln(F, 'CHIAVE REG');
  while not dsoRigheDoc.DataSet.Eof do
  begin

  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := dsoRigheDoc.DataSet.Fieldbyname('CODICE_ARTICOLO').asstring
  else
  b := '-';
  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('DESCR').asstring) then
  c := dsoRigheDoc.DataSet.Fieldbyname('DESCR').asstring
  else
  c := '-';
  if not VarIsNull(dsoRigheDoc.DataSet.FieldValues['quantita']) then
  E1 := (dsoRigheDoc.DataSet.FieldValues['quantita'])
  else
  E1 := '0';
  if not VarIsNull(IBQuery6.Fieldbyname('NUM_REPARTO').AsInteger) then
  E3 := IntToStr(IBQuery6.Fieldbyname('NUM_REPARTO').AsInteger)
  else
  E3 := '1';
//if (DataMod.MagazzT.FieldValues['IVA'] <> '0') then
//and (DataMod.MagazzT.FieldValues['IVA'] <> '') then
if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('IVATO').AsCurrency) then
BEGIN
  E4 := FloatToStr(StrToFloat(FormatFloat('0.00',dsoRigheDoc.DataSet.Fieldbyname('IVATO').AsCurrency)));
 DecimalSeparator := '.';
 E4:=FloatToStrF(dsoRigheDoc.DataSet.Fieldbyname('IVATO').AsCurrency, ffFixed, 10, 2);

end
        else
        E4 := '0';

//  begin
{if  (dsoRigheDoc.DataSet.Fieldbyname('ID_OFFERTA').AsInteger>0) then
  E2 := dsoRigheDoc.DataSet.Fieldbyname('ID_OFFERTA').AsString
  else
  E2 := '0'
  end;}

  Writeln(F, 'VEND REP='+E3+ ',QTY='+e1+',PREZZO='+ e4 + ',DES=' +''''+ c+'''');
  dsoRigheDoc.DataSet.Next;
  end;
  Writeln(F, 'CHIUS T=1');
  CloseFile(F);
CoEcrCom1.EcrCmd(('@scontrino.ecr'),result);
CoEcrCom1.Close();
label14.Caption := 'Fine Connessione ECR' ;
Label16.Visible := True;
label16.Caption := result;
//////////////////////////////////////////////////////////// FINE SCONTRINO
IBQuery6.Close;
end;

///////////////////////////  RCH

if TIPOREGIS = 'RCH' then
begin
ApdComPort1.open := true;
ApdComPort1.open := false;
//CoEcrCom1.OperatingMode := 1;
{
if (CoEcrCom1.Open(Edit1.Text)) = 0 then
begin
Label14.Visible := True;
label14.Caption := 'Connessione ECR Aperta'
end
else
begin
Label14.Visible := True;
label14.Caption := 'E R R O R E  connessione ECR';
ShowMessage('E R R O R E  connessione ECR!!');
Label14.Visible := False;
Exit;
end;
label16.Caption := CoEcrCom1.EcrConfStr(1);
}
//////////////////////////////////////////////////////////// SCONTRINO
x:=ExtractFilePath(Application.Exename)+'ScontRCH.ecr';
AssignFile(F, x);
Rewrite(F);
IBQuery6.Open;
dsoRigheDoc.DataSet.First;
  Writeln(F, '>001');
  Writeln(F, '>100');
  while not dsoRigheDoc.DataSet.Eof do
  begin

  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := dsoRigheDoc.DataSet.Fieldbyname('CODICE_ARTICOLO').asstring
  else
  b := '-';
  if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('DESCR').asstring) then
  begin
  c := leftstr(dsoRigheDoc.DataSet.Fieldbyname('DESCR').asstring,20);
  S1:='                    ';
  m1:=Length(c);
  if m1>=20 then
  c:=leftstr(c,20)
  else
  begin
  m1:=20-m1;
  c:=c+leftstr(S1,m1);
  end;

  end
  else
  c := '--------------------';
  if not VarIsNull(dsoRigheDoc.DataSet.FieldValues['quantita']) then
  E1 := (dsoRigheDoc.DataSet.FieldValues['quantita'])
  else
  E1 := '0';
  if not VarIsNull(IBQuery6.Fieldbyname('NUM_REPARTO').AsInteger) then
  E3 := IntToStr(IBQuery6.Fieldbyname('NUM_REPARTO').AsInteger)
  else
  E3 := '01';
  S1:='00';
  m1:=Length(E3);
  if m1>=2 then
  E3:=leftstr(E3,2)
  else
  begin
  m1:=2-m1;
  E3:=leftstr(S1,m1)+E3;
  end;

//if (DataMod.MagazzT.FieldValues['IVA'] <> '0') then
//and (DataMod.MagazzT.FieldValues['IVA'] <> '') then
if not VarIsNull(dsoRigheDoc.DataSet.Fieldbyname('IMPORTO_CON_IVA').AsCurrency) then
//BEGIN
  E4 := FloatToStr(StrToFloat(FormatFloat('0.00',dsoRigheDoc.DataSet.Fieldbyname('IMPORTO_CON_IVA').AsCurrency*100)))
//end
        else
        E4 := '0';
  S1:='00000000';
  m1:=Length(E4);
  if m1>=8 then
  E4:=leftstr(E4,8)
  else
  begin
  m1:=8-m1;
  E4:=leftstr(S1,m1)+E4;
  end;

//  begin
{if  (dsoRigheDoc.DataSet.Fieldbyname('ID_OFFERTA').AsInteger>0) then
  E2 := dsoRigheDoc.DataSet.Fieldbyname('ID_OFFERTA').AsString
  else
  E2 := '0'
  end;}

  Writeln(F, '#'+c+e4+' '+E3);
  dsoRigheDoc.DataSet.Next;
  end;
  Writeln(F, '>100');
  Writeln(F, '1001');
  Writeln(F, '>002');
  Writeln(F, '>eof');
  CloseFile(F);
ShellExecute(application.handle,'open','CMD900.exe' , '100,ScontRCH.ecr',nil,sw_show);
//////////////////////////////////////////////////////////// FINE SCONTRINO
IBQuery6.Close;
end;

////////////////////////////////////////////////
end;

procedure TfVendBanco.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit4.SetFocus;

end;

procedure TfVendBanco.DBEdit9Enter(Sender: TObject);
begin
qt:= dsoRigheDoc.dataset.FieldByName('QUANTITA').AsFloat;
//cc := dbedit9 ;
//CC.SetFocus;
end;

procedure TfVendBanco.DBEdit9Exit(Sender: TObject);
begin
//Casella := 2;
if dsoRigheDoc.DataSet.FieldByName('qta_um').AsFloat = qt then exit;

dsoRigheDoc.dataset.FieldByName('quantita').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('qta_um').AsFloat*dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat;

dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;

dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
 dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
if casella<>20 then
DBEdit4.SetFocus;
end;

procedure TfVendBanco.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfVendBanco.BitBtn10Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '1';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '1';
if Casella = 1 then
begin
dsoRigheDoc.DataSet.Edit;
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '1';
end;
//DBEdit1.Text := DBEdit1.Text + '1';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '1';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '1';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '1';
end;

procedure TfVendBanco.BitBtn14Click(Sender: TObject);
begin
//dsoRigheDoc.DataSet.Edit;
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '2';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '2';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '2';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '2';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '2';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '2';
end;

procedure TfVendBanco.BitBtn15Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '3';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '3';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '3';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '3';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '3';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '3';
end;

procedure TfVendBanco.BitBtn16Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '4';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '4';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '4';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '4';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '4';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '4';

end;

procedure TfVendBanco.BitBtn17Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '5';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '5';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '5';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '5';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '5';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '5';

end;

procedure TfVendBanco.BitBtn18Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '6';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '6';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '6';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '6';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '6';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '6';

end;

procedure TfVendBanco.BitBtn19Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '7';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '7';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '7';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '7';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '7';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '7';
end;

procedure TfVendBanco.BitBtn20Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '8';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '8';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '8';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '8';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '8';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '8';
end;

procedure TfVendBanco.BitBtn21Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '9';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '9';
if Casella = 1 then
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '9';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '9';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '9';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '9';
end;

procedure TfVendBanco.BitBtn22Click(Sender: TObject);
begin
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + '0';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + '0';
if Casella = 1 then
begin
dsoRigheDoc.DataSet.Edit;
DBEdit1.Field.AsString := DBEdit1.Field.AsString + '0';
//DBEdit1.Text := DBEdit1.Text + '0';
end;
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + '0';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + '0';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + '0';
if Casella = 9 then
edit5.Text := edit5.Text + '0';

end;

procedure TfVendBanco.BitBtn23Click(Sender: TObject);
begin
//dsoRigheDoc.DataSet.Edit;
if Casella = 0 then
RxCalcEdit1.Text := RxCalcEdit1.Text + ',';
if (Casella = 20) or (Casella = 21) then
edit5.Text := edit5.Text + ',';
//if Casella = 1 then
//DBEdit1.Text := DBEdit1.Text + ',';
if Casella = 2 then
DBEdit9.Field.AsString := DBEdit9.Field.AsString + ',';
if Casella = 3 then
DBEdit4.Field.AsString := DBEdit4.Field.AsString + ',';
if Casella = 4 then
edit3.Field.AsString := edit3.Field.AsString + ',';
if Casella = 9 then
edit5.Text := edit5.Text + ',';
end;

procedure TfVendBanco.RxCalcEdit2Click(Sender: TObject);
begin
RxCalcEdit2.Value:= StrToFloat( rxcalcedit1.text) - RxDBCalcEdit1.Value;
end;

procedure TfVendBanco.BitBtn24Click(Sender: TObject);
begin
if Casella = 0 then
rxcalcedit1.Text := '';

if Casella = 1 then
DBEdit1.Field.AsString :='';

if Casella = 2 then
DBEdit9.Field.AsString :='';

if Casella = 3 then
DBEdit4.Field.AsString :='';
end;

procedure TfVendBanco.rxcalcedit1Exit(Sender: TObject);
begin
Casella := 0;
end;

procedure TfVendBanco.Edit3Exit(Sender: TObject);
begin
Casella := 4;
end;

procedure TfVendBanco.BitBtn25Click(Sender: TObject);
var
strcodart : string;
begin
if Casella = 1 then
begin



If (salvato)
  Then Exit;
If (DBEdit1.Text='')
  Then Exit;
{
If (DBEdit1.Field.AsString = CodArt)
  Then begin
  dsoRigheDoc.DataSet.Edit;
  Exit;
  end;
}
edImballo.Text:='1';
dsoRigheDoc.DataSet.Edit;
dsoRigheDoc.dataset.FieldByName('FATTCONV').AsFloat := 1;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := DBEdit1.Field.AsString;
IBQuery2.open;

if IBQuery2.IsEmpty then
begin
IBQuery7.Close;
IBQuery7.ParamByName('a').AsString := DBEdit1.Field.AsString;
IBQuery7.Open;
if IBQuery7.IsEmpty then
begin
dsoRigheDoc.DataSet.Cancel;
dsoRigheDoc.DataSet.Insert;
DBEdit1.SetFocus;
Exit;
End
else
begin
DBEdit1.Field.AsString :=IBQuery7.fieldbyname('codice_articolo').AsString;
edImballo.Text := IBQuery7.fieldbyname('quantita').AsString;
dsoRigheDoc.dataset.FieldByName('FATTCONV').AsFloat := IBQuery7.fieldbyname('quantita').AsFloat;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := DBEdit1.Field.AsString;
IBQuery2.open;
end;
end;

With IBQuery2 do
Begin
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=fieldbyname('DESCR').AsString;
If (boolDoc_Vendita) then
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('PREZZO_BASE').AsFloat
Else
dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('COSTO_STANDART').AsFloat;
dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString := 'ARTICOLO';
dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:= 1;

dsoRigheDoc.DataSet.FieldByName('Quantita').AsFloat:= dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat
        *dsoRigheDoc.dataset.FieldByName('FATTCONV').AsFloat;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=LookNostrDepCod.keyvalue;
dsoRigheDoc.DataSet.FieldByName('PREZZOLIST').AsFloat:=fieldbyname('PREZZO_BASE').AsFloat;
if not VarIsNull(fieldbyname('PROVVIGIONE').AsFloat) then
dsoRigheDoc.DataSet.FieldByName('PERC_PROVV').AsFloat:=fieldbyname('PROVVIGIONE').AsFloat;

dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      dsoDati.DataSet.FieldByName('PREZZO_BASE').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      dsoDati.DataSet.FieldByName('PREZZO_IVATO').AsFloat;

if (LookListinoCod.KeyValue = 1) and (dmodAz.Tipo <> 1)then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP2').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P2IVATO').AsFloat;
end;
if (LookListinoCod.KeyValue = 2) and (dmodAz.Tipo <> 1) then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP3').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P3IVATO').AsFloat;
end;
if (LookListinoCod.KeyValue = 3) and (dmodAz.Tipo <> 1) then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP4').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P4IVATO').AsFloat;
end;
if (LookListinoCod.KeyValue = 4) and (dmodAz.Tipo <> 1) then
begin
   dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat:=
      FieldByName('IMP5').AsFloat;
   dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat:=
      FieldByName('P5IVATO').AsFloat;
end;

if dmodAz.Tipo = 1 then
begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SCONTO1').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SCONTO2').AsFloat;
  if LookListinoCod.KeyValue = 1 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC21').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC22').AsFloat;
  end;
  if LookListinoCod.KeyValue = 2 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC31').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC32').AsFloat;
  end;
  if LookListinoCod.KeyValue = 3 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC41').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC42').AsFloat;
  end;
  if LookListinoCod.KeyValue = 4 then
  begin
  dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC51').AsFloat;
  dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=
     fieldByname('SC52').AsFloat;
  end;
end;

   dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=
   Now;

if (boolDoc_Vendita)
Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
       FieldByName('CONTO_VENDITA').AsInteger
Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
       FieldByName('CONTO_ACQUISTO').AsInteger;

dsoRigheDoc.dataset.FieldByName('Codice_IVA_ID').asinteger:=
  FieldByName('Codice_IVA_ID').AsInteger;
dsoRigheDoc.dataset.FieldByName('UNITA_MISURA').AsString:=
  FieldByName('UNITA_DI_MISURA1_ID').AsString;
dsoRigheDoc.DataSet.FieldByName('COSTOINVALUTA').AsFloat:= 0;
dsoRigheDoc.DataSet.FieldByName('IMPORTOINVALUTA').AsFloat:= 0;
dsoRigheDoc.dataset.FieldByName('qta_um').AsFloat:=
  dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_SCONTO').AsFloat:=
  dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
dsoRigheDoc.dataset.FieldByName('IMPORTO_CON_IVA').AsFloat:=
  dsoRigheDoc.DataSet.FieldByName('quantita').AsFloat*dsoRigheDoc.DataSet.FieldByName('IVATO').AsFloat;

with IBQuery4 do
begin
close;
ParamByName('parcodart').AsString := DBEdit1.Field.AsString;
ParamByName('parcliforid').Asinteger := LookCliForCod.KeyValue;
open;
end;

//dsoRigheDoc.DataSet.Last;
//numeroRiga:=1+dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;

numeroRiga := numeroRiga+1;
dsoRigheDoc.dataset.FieldByName('Num_riga_ID').asinteger:=
  numeroRiga;
dsoRigheDoc.dataset.FieldByName('DOC_ID').AsFloat:=
        dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;

  if RadioGroup2.ItemIndex = 0 then
begin
 Button3.Click;
 DBEdit1.SetFocus;
end;
if RadioGroup2.ItemIndex = 1 then
begin

 Edit5.SetFocus;
 edit5.text:='1';
 casella:=20;
 exit;
end;
 if RadioGroup2.ItemIndex = 2 then
 DBEdit20.SetFocus;

 end;


end;



if Casella = 2 then
edit5.SetFocus;

if Casella = 3 then
Button3.Click;
//DBEdit4.SetFocus;

if Casella = 20 then
begin
DBEdit9.Field.AsString := edit5.Text;
DBEdit9.SetFocus;
//DBEdit4.SetFocus;
edit5.Text := '';
edit5.SetFocus;
casella:=21;
exit;
end;

if Casella = 21 then
begin
DBEdit4.Field.AsString := edit5.Text;
DBEdit4.SetFocus;

//DBEdit4.SetFocus;
//edit5.Text := '';
//edit5.SetFocus;
//casella:=21;
end;

end;

procedure TfVendBanco.Edit5Exit(Sender: TObject);
begin
//casella := 9;
end;

procedure TfVendBanco.Edit5Enter(Sender: TObject);
begin
edit5.text:='';
end;

end.
