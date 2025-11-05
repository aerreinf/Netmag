unit uVisCapiB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Grids, DBGrids, ExtCtrls, Buttons,
  RxLookup, ComCtrls, DB, IBCustomDataSet, IBSQL, IBQuery, MXGRID, Mxstore,
  MXDB, MXPIVSRC, DBSumLst, CurrEdit, Menus;

type
  TVisCapiB = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    DBGrid5: TDBGrid;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    RadioGroup5: TRadioGroup;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    dsArticoli: TDataSource;
    dsoCauInt: TDataSource;
    dsFasonista: TDataSource;
    CheckBox1: TCheckBox;
    ibdArrRac: TIBDataSet;
    ibdInvConto: TIBDataSet;
    ibdRient: TIBDataSet;
    ibdCP: TIBDataSet;
    ibdPart: TIBDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ibdArrRacID_DOC_DET: TIntegerField;
    ibdArrRacTIPO_RIGA: TIntegerField;
    ibdArrRacCODICE_ARTICOLO: TIBStringField;
    ibdArrRacDESCR: TIBStringField;
    ibdArrRacCOSTO: TFloatField;
    ibdArrRacCOSTOINVALUTA: TFloatField;
    ibdArrRacUNITA_MISURA: TIBStringField;
    ibdArrRacFATTCONV: TFloatField;
    ibdArrRacQTA_UM: TFloatField;
    ibdArrRacQUANTITA: TFloatField;
    ibdArrRacSCONTO1: TFloatField;
    ibdArrRacSCONTO2: TFloatField;
    ibdArrRacSCONTO3: TFloatField;
    ibdArrRacSCONTO4: TFloatField;
    ibdArrRacIMPORTO_SCONTO: TFloatField;
    ibdArrRacIMPORTO: TFloatField;
    ibdArrRacIMPORTOINVALUTA: TFloatField;
    ibdArrRacOMAGGIO: TSmallintField;
    ibdArrRacDEP: TIBStringField;
    ibdArrRacSCONTO_EQ: TFloatField;
    ibdArrRacPERC_PROVV: TFloatField;
    ibdArrRacTIPO_SERVIZIO: TIBStringField;
    ibdArrRacIVATO: TFloatField;
    ibdArrRacIMPORTO_CON_IVA: TFloatField;
    ibdArrRacCODICE_IVA_ID: TIBStringField;
    ibdArrRacDATA_REG: TDateTimeField;
    ibdArrRacRIF_A: TSmallintField;
    ibdArrRacRIF_A_PRE: TSmallintField;
    ibdArrRacRIF_A_ORD: TSmallintField;
    ibdArrRacRIF_A_DDT: TSmallintField;
    ibdArrRacRIF_ID_DOC_DET: TIntegerField;
    ibdArrRacRIF_DDT_ID_DOC: TIntegerField;
    ibdArrRacRIF_DDT_DATA_DOC: TDateTimeField;
    ibdArrRacRIF_ORD_ID_DOC: TIntegerField;
    ibdArrRacRIF_ORD_DATA_DOC: TDateTimeField;
    ibdArrRacRIF_PRE_ID_DOC: TIntegerField;
    ibdArrRacRIF_PRE_DATA_DOC: TDateTimeField;
    ibdArrRacPIANOCONTO_ID: TIntegerField;
    ibdArrRacRIF_PRE_NUM_DOC: TIntegerField;
    ibdArrRacRIF_ORD_NUM_DOC: TIntegerField;
    ibdArrRacRIF_DDT_NUM_DOC: TIntegerField;
    ibdArrRacOP_QTA_DISPONIBILE: TFloatField;
    ibdArrRacOP_VAL_DISPONIBILE: TFloatField;
    ibdArrRacOP_QTA_GIACENZA: TFloatField;
    ibdArrRacOP_VAL_GIACENZA: TFloatField;
    ibdArrRacDOC_ID: TIntegerField;
    ibdArrRacTOTCOLLI: TIBStringField;
    ibdArrRacTOTSCAT: TFloatField;
    ibdArrRacPREZZOLIST: TFloatField;
    ibdArrRacSCHEDA: TFloatField;
    ibdArrRacPASSATA: TIBStringField;
    ibdArrRacCOL: TIBStringField;
    ibdArrRacA: TIBStringField;
    ibdArrRacB: TIBStringField;
    ibdArrRacC: TIBStringField;
    ibdArrRacNUM_RIGA_ID: TIntegerField;
    ibdArrRacID_DOCUMENTO: TIntegerField;
    ibdArrRacTESTATA_PN_ID: TIntegerField;
    ibdArrRacCAUSALE_DOC: TIBStringField;
    ibdArrRacTIPO_DOC: TIntegerField;
    ibdArrRacDA_FATTURARE: TSmallintField;
    ibdArrRacCLIFOR_ID: TIntegerField;
    ibdArrRacTIPO_CLIFOR: TSmallintField;
    ibdArrRacDEPOSITO: TIBStringField;
    ibdArrRacCONTRO_CLIFOR_ID: TIntegerField;
    ibdArrRacCONTRO_TIPO_CLIFOR: TSmallintField;
    ibdArrRacCONTRO_DEPOSITO: TIBStringField;
    ibdArrRacCAUSALE_MAGAZZINO: TIBStringField;
    ibdArrRacCONTRO_CAUS_MAG: TIBStringField;
    ibdArrRacATTIVITA: TIBStringField;
    ibdArrRacSUBATTIVITA: TIBStringField;
    ibdArrRacDATA_REGISTRAZIONE: TDateTimeField;
    ibdArrRacDATA_DOC: TDateTimeField;
    ibdArrRacDATA_CONFERMA: TDateTimeField;
    ibdArrRacDATA_EVASIONE: TDateTimeField;
    ibdArrRacSTATO_DOCUMENTO: TIntegerField;
    ibdArrRacSTATO_CONTABILITA: TIntegerField;
    ibdArrRacMONETA_ID: TIBStringField;
    ibdArrRacCAMBIO: TFloatField;
    ibdArrRacKINGUA_ID: TIBStringField;
    ibdArrRacLISTINO: TIBStringField;
    ibdArrRacNS_RIFERIMENTO: TIBStringField;
    ibdArrRacVS_RIFERIMENTO: TIBStringField;
    ibdArrRacCAUSALE_CONTABILE: TIBStringField;
    ibdArrRacCODICE_BOLL: TIBStringField;
    ibdArrRacPAGAMENTO_ID: TIBStringField;
    ibdArrRacBANCA_CLIFOR: TIBStringField;
    ibdArrRacBANCA_AZIENDA: TIBStringField;
    ibdArrRacVETTORE1: TIBStringField;
    ibdArrRacVETTORE2: TIBStringField;
    ibdArrRacVETTORE3: TIBStringField;
    ibdArrRacPORTO: TIBStringField;
    ibdArrRacASPETTO: TIBStringField;
    ibdArrRacSPEDIZIONE: TIBStringField;
    ibdArrRacPESO_NETTO: TFloatField;
    ibdArrRacPESO_LORDO: TFloatField;
    ibdArrRacCUBAGGIO: TFloatField;
    ibdArrRacDESTINARIO: TIBStringField;
    ibdArrRacIMBALLO: TIBStringField;
    ibdArrRacSCONTO11: TFloatField;
    ibdArrRacAGENTE_ID: TIBStringField;
    ibdArrRacDATA_CONSEGNA: TDateTimeField;
    ibdArrRacNUM_DOC: TIntegerField;
    ibdArrRacNRCOLLI: TFloatField;
    ibdArrRacSCONTO21: TFloatField;
    ibdArrRacIMPORTO_SCONTO1: TFloatField;
    ibdArrRacNOTA: TIBStringField;
    ibdArrRacSOSPESO: TSmallintField;
    ibdArrRacIVA_SOSPESA: TSmallintField;
    ibdArrRacCOD_IVA_ESENTE: TIBStringField;
    ibdArrRacCOD_IVA_SPESE_BOLLI: TIBStringField;
    ibdArrRacCOD_IVA_SPESE_INCASSO: TIBStringField;
    ibdArrRacCOD_IVA_SPESE_IMVALLO: TIBStringField;
    ibdArrRacCOD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    ibdArrRacCOD_IVA_SPESE_ACCESSIONE: TIBStringField;
    ibdArrRacCOD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    ibdArrRacACCORPA_RIGHE: TSmallintField;
    ibdArrRacATTIVITA2: TIBStringField;
    ibdArrRacSUBATTIVITA2: TIBStringField;
    ibdArrRacSOGGETTO_CEE: TSmallintField;
    ibdArrRacREPORT: TIBStringField;
    ibdArrRacRILEVA_ACCONTO: TSmallintField;
    ibdArrRacORA: TIBStringField;
    ibdArrRacFATT_ACCOMP: TSmallintField;
    ibdArrRacTIPO_FATT: TSmallintField;
    ibdArrRacST_NOTE_CLIFOR: TSmallintField;
    ibdArrRacIVATO1: TSmallintField;
    ibdArrRacSTAMPATO: TSmallintField;
    ibdArrRacDATA_COMPETENZA_IVA: TDateTimeField;
    ibdArrRacMEZZO_TRASPORTO: TSmallintField;
    ibdArrRacTOT_PROVVIGIONE: TFloatField;
    ibdArrRacTIPO_PROVVIGIONE: TSmallintField;
    ibdArrRacTOT_IMP_PROVVIGIONE: TFloatField;
    ibdArrRacCAST_MANUALE: TSmallintField;
    ibdArrRacNUM_DOC2: TIntegerField;
    ibdArrRacSERIE_DOC2: TIBStringField;
    ibdArrRacMESE_CONT: TIntegerField;
    ibdArrRacALTRE_DERT_SI_NO: TSmallintField;
    ibdArrRacSPESE_IMBALLO: TFloatField;
    ibdArrRacSPESE_BOLLI: TFloatField;
    ibdArrRacSPESE_ACCESSORIE: TFloatField;
    ibdArrRacSPESE_INCASSO: TFloatField;
    ibdArrRacSPESE_SPEDIZIONE: TFloatField;
    ibdArrRacSPESE_CONTRASS: TFloatField;
    ibdArrRacCAU_TRASP_ID: TIBStringField;
    ibdArrRacPER_ALTRA_DEST: TSmallintField;
    ibdArrRacIMPORTO_CON_IVA1: TFloatField;
    ibdArrRacTOTALE_MERCE: TFloatField;
    ibdArrRacTOTALE_SERVIZI: TFloatField;
    ibdArrRacTOTALE: TFloatField;
    ibdArrRacTOTALE_IVA: TFloatField;
    ibdArrRacTOTALE_IVATO: TFloatField;
    ibdArrRacTOTALE_SCONTI: TFloatField;
    ibdArrRacTOTALE_EURO: TFloatField;
    ibdArrRacTOTALE_EURO_IVATO: TFloatField;
    ibdArrRacCODIVA1: TIBStringField;
    ibdArrRacALIVA1: TFloatField;
    ibdArrRacIMPON1: TFloatField;
    ibdArrRacIMPOSTA1: TFloatField;
    ibdArrRacCODIVA2: TIBStringField;
    ibdArrRacALIVA2: TFloatField;
    ibdArrRacIMPON2: TFloatField;
    ibdArrRacIMPOSTA2: TFloatField;
    ibdArrRacCODIVA3: TIBStringField;
    ibdArrRacALIVA3: TFloatField;
    ibdArrRacIMPON3: TFloatField;
    ibdArrRacIMPOSTA3: TFloatField;
    ibdArrRacCODIVA4: TIBStringField;
    ibdArrRacALIVA4: TFloatField;
    ibdArrRacIMPON4: TFloatField;
    ibdArrRacIMPOSTA4: TFloatField;
    ibdArrRacCODIVA5: TIBStringField;
    ibdArrRacALIVA5: TFloatField;
    ibdArrRacIMPON5: TFloatField;
    ibdArrRacIMPOSTA5: TFloatField;
    ibdArrRacTOT_SPESE: TFloatField;
    ibdArrRacALTRA_DEST: TIBStringField;
    ibdArrRacSERIE_DOC: TIBStringField;
    ibdArrRacCLI_FOR_IND: TIBStringField;
    ibdArrRacACCONTO: TFloatField;
    ibdArrRacRATA1_IMPORTO: TFloatField;
    ibdArrRacRATA2_IMPORTO: TFloatField;
    ibdArrRacRATA3_IMPORTO: TFloatField;
    ibdArrRacRATA4_IMPORTO: TFloatField;
    ibdArrRacRATA5_IMPORTO: TFloatField;
    ibdArrRacRATA6_IMPORTO: TFloatField;
    ibdArrRacTEL1: TIBStringField;
    ibdArrRacTEL2: TIBStringField;
    ibdArrRacTEL3: TIBStringField;
    ibdArrRacIVA_ESENTE: TSmallintField;
    ibdArrRacIVA_ESENTE_ID: TIntegerField;
    ibdArrRacVETTORE_IND: TIBStringField;
    ibdArrRacVETTORE_IND2: TIBStringField;
    ibdArrRacCLI_FOR_IND2: TIBStringField;
    ibdArrRacRATA1_DATA: TDateField;
    ibdArrRacRATA2_DATA: TDateField;
    ibdArrRacRATA3_DATA: TDateField;
    ibdArrRacRATA4_DATA: TDateField;
    ibdArrRacRATA5_DATA: TDateField;
    ibdArrRacRATA6_DATA: TDateField;
    ibdArrRacPIANOCONTO_ID1: TIntegerField;
    ibdArrRacALTRA_DEST2: TIBStringField;
    ibdArrRacCA_ID: TIBStringField;
    ibdArrRacID_CLI_FOR: TIntegerField;
    ibdArrRacTIPO: TSmallintField;
    ibdArrRacDENOMINAZIONE: TIBStringField;
    ibdArrRacCOGNOME: TIBStringField;
    ibdArrRacNOME: TIBStringField;
    ibdArrRacNOME_ALTRO: TIBStringField;
    ibdArrRacFULL_NAME: TIBStringField;
    ibdArrRacINDIRIZZO: TIBStringField;
    ibdArrRacCOMUNE_ID: TIntegerField;
    ibdArrRacPARTITA_IVA: TIBStringField;
    ibdArrRacCODICE_FISCALE: TIBStringField;
    ibdArrRacPERSONA_FISICA: TSmallintField;
    ibdArrRacPIANO_CONTI_ID: TIntegerField;
    ibdArrRacCONTO_CORRENTE: TIBStringField;
    ibdArrRacMONETA_ID1: TIBStringField;
    ibdArrRacPAGAMENTO_ID1: TIBStringField;
    ibdArrRacCODICE_ZONA_ID: TIBStringField;
    ibdArrRacCODICE_SOTTO_ZONA_ID: TIBStringField;
    ibdArrRacCATEGORIA_CLIENTE_ID: TIBStringField;
    ibdArrRacAGENTE_ID1: TIBStringField;
    ibdArrRacPROVVIGIONE: TFloatField;
    ibdArrRacLINGUA_ID: TIBStringField;
    ibdArrRacCODICE_LISTINO: TIBStringField;
    ibdArrRacSCONTO_TESTATA1: TFloatField;
    ibdArrRacSCONTO_TESTATA2: TFloatField;
    ibdArrRacTEL11: TIBStringField;
    ibdArrRacTEL21: TIBStringField;
    ibdArrRacFAX: TIBStringField;
    ibdArrRacEMAIL: TIBStringField;
    ibdArrRacINTERNET: TIBStringField;
    ibdArrRacDATA_DI_NASCITA: TDateTimeField;
    ibdArrRacSESSO: TIntegerField;
    ibdArrRacTITOLO_ID: TIntegerField;
    ibdArrRacPORTO_ID: TIBStringField;
    ibdArrRacFIDO: TFloatField;
    ibdArrRacABILITA_PARTITA: TSmallintField;
    ibdArrRacFATTURA_RIEPILOGATIVA: TIntegerField;
    ibdArrRacACCORPA_ARTICOLI: TSmallintField;
    ibdArrRacIVA_SOSPESA1: TSmallintField;
    ibdArrRacPOS_RIF_BOLLE: TSmallintField;
    ibdArrRacCODICE_IVA_ESENTE: TIBStringField;
    ibdArrRacRIP_RIF_BOLLE: TIntegerField;
    ibdArrRacESCLUDI_MESE1: TIntegerField;
    ibdArrRacRIP_RIF_ORDINI: TIntegerField;
    ibdArrRacESCLUDI_MESE2: TIntegerField;
    ibdArrRacTIPO_CONTO_ID: TSmallintField;
    ibdArrRacNAZIONE_ID: TIntegerField;
    ibdArrRacNAZIONE_DI_NASCITA_ID: TIntegerField;
    ibdArrRacRAGGRUPPAMENTO_ID: TIBStringField;
    ibdArrRacRISCHIO: TFloatField;
    ibdArrRacGG_SCADENZA1: TIntegerField;
    ibdArrRacGG_SCADENZA2: TIntegerField;
    ibdArrRacCONTROPARTITA_ID: TIntegerField;
    ibdArrRacTIPO_CONTROPARTITA: TSmallintField;
    ibdArrRacCERTIFICATO: TSmallintField;
    ibdArrRacDENOMINAZIONE2: TIBStringField;
    ibdArrRacINDIRIZZO2: TIBStringField;
    ibdArrRacLOCALITA: TIBStringField;
    ibdArrRacCOMUNE_DI_NASCITA_ID: TIntegerField;
    ibdArrRacCAB_ID: TIBStringField;
    ibdArrRacABI_ID: TIBStringField;
    ibdArrRacTITOLO_DESCR: TIBStringField;
    ibdArrRacCOMNASC_DESCR: TIBStringField;
    ibdArrRacCAPNASC_DESCR: TIBStringField;
    ibdArrRacNAZNASC_DESCR: TIBStringField;
    ibdArrRacCOM_DESCR: TIBStringField;
    ibdArrRacCAP_DESCR: TIBStringField;
    ibdArrRacPR_DESCR: TIBStringField;
    ibdArrRacCAB_DESCR: TIBStringField;
    ibdArrRacABI_DESCR: TIBStringField;
    ibdArrRacNAZ_DESCR: TIBStringField;
    ibdArrRacFASON: TIBStringField;
    ibdArrRacNOTE: TIBStringField;
    ibdArrRacCG: TIBStringField;
    ibdArrRacCA: TIBStringField;
    ibdArrRacCOD2: TIBStringField;
    ibdArrRacCR: TIBStringField;
    SpeedButton5: TSpeedButton;
    TabSheet2: TTabSheet;
    DBGrid6: TDBGrid;
    ibdInvContoID_DOC_DET: TIntegerField;
    ibdInvContoTIPO_RIGA: TIntegerField;
    ibdInvContoCODICE_ARTICOLO: TIBStringField;
    ibdInvContoDESCR: TIBStringField;
    ibdInvContoCOSTO: TFloatField;
    ibdInvContoCOSTOINVALUTA: TFloatField;
    ibdInvContoUNITA_MISURA: TIBStringField;
    ibdInvContoFATTCONV: TFloatField;
    ibdInvContoQTA_UM: TFloatField;
    ibdInvContoQUANTITA: TFloatField;
    ibdInvContoSCONTO1: TFloatField;
    ibdInvContoSCONTO2: TFloatField;
    ibdInvContoSCONTO3: TFloatField;
    ibdInvContoSCONTO4: TFloatField;
    ibdInvContoIMPORTO_SCONTO: TFloatField;
    ibdInvContoIMPORTO: TFloatField;
    ibdInvContoIMPORTOINVALUTA: TFloatField;
    ibdInvContoOMAGGIO: TSmallintField;
    ibdInvContoDEP: TIBStringField;
    ibdInvContoSCONTO_EQ: TFloatField;
    ibdInvContoPERC_PROVV: TFloatField;
    ibdInvContoTIPO_SERVIZIO: TIBStringField;
    ibdInvContoIVATO: TFloatField;
    ibdInvContoIMPORTO_CON_IVA: TFloatField;
    ibdInvContoCODICE_IVA_ID: TIBStringField;
    ibdInvContoDATA_REG: TDateTimeField;
    ibdInvContoDOC_ID: TIntegerField;
    ibdInvContoTOTCOLLI: TIBStringField;
    ibdInvContoTOTSCAT: TFloatField;
    ibdInvContoPREZZOLIST: TFloatField;
    ibdInvContoSCHEDA: TFloatField;
    ibdInvContoPASSATA: TIBStringField;
    ibdInvContoCOL: TIBStringField;
    ibdInvContoA: TIBStringField;
    ibdInvContoB: TIBStringField;
    ibdInvContoC: TIBStringField;
    ibdInvContoNUM_RIGA_ID: TIntegerField;
    ibdInvContoID_DOCUMENTO: TIntegerField;
    ibdInvContoTESTATA_PN_ID: TIntegerField;
    ibdInvContoCAUSALE_DOC: TIBStringField;
    ibdInvContoTIPO_DOC: TIntegerField;
    ibdInvContoDA_FATTURARE: TSmallintField;
    ibdInvContoCLIFOR_ID: TIntegerField;
    ibdInvContoTIPO_CLIFOR: TSmallintField;
    ibdInvContoDEPOSITO: TIBStringField;
    ibdInvContoCONTRO_CLIFOR_ID: TIntegerField;
    ibdInvContoCONTRO_TIPO_CLIFOR: TSmallintField;
    ibdInvContoCONTRO_DEPOSITO: TIBStringField;
    ibdInvContoCAUSALE_MAGAZZINO: TIBStringField;
    ibdInvContoCONTRO_CAUS_MAG: TIBStringField;
    ibdInvContoATTIVITA: TIBStringField;
    ibdInvContoSUBATTIVITA: TIBStringField;
    ibdInvContoDATA_REGISTRAZIONE: TDateTimeField;
    ibdInvContoDATA_DOC: TDateTimeField;
    ibdInvContoDATA_CONFERMA: TDateTimeField;
    ibdInvContoDATA_EVASIONE: TDateTimeField;
    ibdInvContoSTATO_DOCUMENTO: TIntegerField;
    ibdInvContoSTATO_CONTABILITA: TIntegerField;
    ibdInvContoMONETA_ID: TIBStringField;
    ibdInvContoCAMBIO: TFloatField;
    ibdInvContoKINGUA_ID: TIBStringField;
    ibdInvContoLISTINO: TIBStringField;
    ibdInvContoNS_RIFERIMENTO: TIBStringField;
    ibdInvContoVS_RIFERIMENTO: TIBStringField;
    ibdInvContoCAUSALE_CONTABILE: TIBStringField;
    ibdInvContoCODICE_BOLL: TIBStringField;
    ibdInvContoPAGAMENTO_ID: TIBStringField;
    ibdInvContoBANCA_CLIFOR: TIBStringField;
    ibdInvContoBANCA_AZIENDA: TIBStringField;
    ibdInvContoVETTORE1: TIBStringField;
    ibdInvContoVETTORE2: TIBStringField;
    ibdInvContoVETTORE3: TIBStringField;
    ibdInvContoPORTO: TIBStringField;
    ibdInvContoASPETTO: TIBStringField;
    ibdInvContoSPEDIZIONE: TIBStringField;
    ibdInvContoPESO_NETTO: TFloatField;
    ibdInvContoPESO_LORDO: TFloatField;
    ibdInvContoCUBAGGIO: TFloatField;
    ibdInvContoDESTINARIO: TIBStringField;
    ibdInvContoIMBALLO: TIBStringField;
    ibdInvContoSCONTO11: TFloatField;
    ibdInvContoAGENTE_ID: TIBStringField;
    ibdInvContoDATA_CONSEGNA: TDateTimeField;
    ibdInvContoNUM_DOC: TIntegerField;
    ibdInvContoNRCOLLI: TFloatField;
    ibdInvContoSCONTO21: TFloatField;
    ibdInvContoIMPORTO_SCONTO1: TFloatField;
    ibdInvContoNOTA: TIBStringField;
    ibdInvContoSOSPESO: TSmallintField;
    ibdInvContoIVA_SOSPESA: TSmallintField;
    ibdInvContoCOD_IVA_ESENTE: TIBStringField;
    ibdInvContoCOD_IVA_SPESE_BOLLI: TIBStringField;
    ibdInvContoCOD_IVA_SPESE_INCASSO: TIBStringField;
    ibdInvContoCOD_IVA_SPESE_IMVALLO: TIBStringField;
    ibdInvContoCOD_IVA_SPESE_CONTRASSEGNO: TIBStringField;
    ibdInvContoCOD_IVA_SPESE_ACCESSIONE: TIBStringField;
    ibdInvContoCOD_IVA_SPESE_SPEDIZIONE: TIBStringField;
    ibdInvContoACCORPA_RIGHE: TSmallintField;
    ibdInvContoATTIVITA2: TIBStringField;
    ibdInvContoSUBATTIVITA2: TIBStringField;
    ibdInvContoSOGGETTO_CEE: TSmallintField;
    ibdInvContoREPORT: TIBStringField;
    ibdInvContoRILEVA_ACCONTO: TSmallintField;
    ibdInvContoORA: TIBStringField;
    ibdInvContoFATT_ACCOMP: TSmallintField;
    ibdInvContoTIPO_FATT: TSmallintField;
    ibdInvContoST_NOTE_CLIFOR: TSmallintField;
    ibdInvContoIVATO1: TSmallintField;
    ibdInvContoSTAMPATO: TSmallintField;
    ibdInvContoDATA_COMPETENZA_IVA: TDateTimeField;
    ibdInvContoMEZZO_TRASPORTO: TSmallintField;
    ibdInvContoTOT_PROVVIGIONE: TFloatField;
    ibdInvContoTIPO_PROVVIGIONE: TSmallintField;
    ibdInvContoTOT_IMP_PROVVIGIONE: TFloatField;
    ibdInvContoCAST_MANUALE: TSmallintField;
    ibdInvContoNUM_DOC2: TIntegerField;
    ibdInvContoSERIE_DOC2: TIBStringField;
    ibdInvContoMESE_CONT: TIntegerField;
    ibdInvContoALTRE_DERT_SI_NO: TSmallintField;
    ibdInvContoSPESE_IMBALLO: TFloatField;
    ibdInvContoSPESE_BOLLI: TFloatField;
    ibdInvContoSPESE_ACCESSORIE: TFloatField;
    ibdInvContoSPESE_INCASSO: TFloatField;
    ibdInvContoSPESE_SPEDIZIONE: TFloatField;
    ibdInvContoSPESE_CONTRASS: TFloatField;
    ibdInvContoCAU_TRASP_ID: TIBStringField;
    ibdInvContoPER_ALTRA_DEST: TSmallintField;
    ibdInvContoIMPORTO_CON_IVA1: TFloatField;
    ibdInvContoTOTALE_MERCE: TFloatField;
    ibdInvContoTOTALE_SERVIZI: TFloatField;
    ibdInvContoTOTALE: TFloatField;
    ibdInvContoTOTALE_IVA: TFloatField;
    ibdInvContoTOTALE_IVATO: TFloatField;
    ibdInvContoTOTALE_SCONTI: TFloatField;
    ibdInvContoTOTALE_EURO: TFloatField;
    ibdInvContoTOTALE_EURO_IVATO: TFloatField;
    ibdInvContoTOT_SPESE: TFloatField;
    ibdInvContoALTRA_DEST: TIBStringField;
    ibdInvContoSERIE_DOC: TIBStringField;
    ibdInvContoCLI_FOR_IND: TIBStringField;
    ibdInvContoACCONTO: TFloatField;
    ibdInvContoRATA1_IMPORTO: TFloatField;
    ibdInvContoRATA2_IMPORTO: TFloatField;
    ibdInvContoRATA3_IMPORTO: TFloatField;
    ibdInvContoRATA4_IMPORTO: TFloatField;
    ibdInvContoRATA5_IMPORTO: TFloatField;
    ibdInvContoRATA6_IMPORTO: TFloatField;
    ibdInvContoTEL1: TIBStringField;
    ibdInvContoTEL2: TIBStringField;
    ibdInvContoTEL3: TIBStringField;
    ibdInvContoIVA_ESENTE: TSmallintField;
    ibdInvContoIVA_ESENTE_ID: TIntegerField;
    ibdInvContoVETTORE_IND: TIBStringField;
    ibdInvContoVETTORE_IND2: TIBStringField;
    ibdInvContoCLI_FOR_IND2: TIBStringField;
    ibdInvContoPIANOCONTO_ID1: TIntegerField;
    ibdInvContoALTRA_DEST2: TIBStringField;
    ibdInvContoCA_ID: TIBStringField;
    ibdInvContoID_CLI_FOR: TIntegerField;
    ibdInvContoTIPO: TSmallintField;
    ibdInvContoDENOMINAZIONE: TIBStringField;
    TabSheet3: TTabSheet;
    DBGrid7: TDBGrid;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    ibdRientID_DOC_DET: TIntegerField;
    ibdRientTIPO_RIGA: TIntegerField;
    ibdRientCODICE_ARTICOLO: TIBStringField;
    ibdRientDESCR: TIBStringField;
    ibdRientCOSTO: TFloatField;
    ibdRientCOSTOINVALUTA: TFloatField;
    ibdRientUNITA_MISURA: TIBStringField;
    ibdRientFATTCONV: TFloatField;
    ibdRientQTA_UM: TFloatField;
    ibdRientQUANTITA: TFloatField;
    ibdRientSCONTO1: TFloatField;
    ibdRientSCONTO2: TFloatField;
    ibdRientSCONTO3: TFloatField;
    ibdRientSCONTO4: TFloatField;
    ibdRientIMPORTO_SCONTO: TFloatField;
    ibdRientIMPORTO: TFloatField;
    ibdRientIMPORTOINVALUTA: TFloatField;
    ibdRientOMAGGIO: TSmallintField;
    ibdRientDEP: TIBStringField;
    ibdRientSCONTO_EQ: TFloatField;
    ibdRientPERC_PROVV: TFloatField;
    ibdRientTIPO_SERVIZIO: TIBStringField;
    ibdRientIVATO: TFloatField;
    ibdRientIMPORTO_CON_IVA: TFloatField;
    ibdRientCODICE_IVA_ID: TIBStringField;
    ibdRientDATA_REG: TDateTimeField;
    ibdRientRIF_A: TSmallintField;
    ibdRientDOC_ID: TIntegerField;
    ibdRientTOTCOLLI: TIBStringField;
    ibdRientTOTSCAT: TFloatField;
    ibdRientPREZZOLIST: TFloatField;
    ibdRientSCHEDA: TFloatField;
    ibdRientPASSATA: TIBStringField;
    ibdRientCOL: TIBStringField;
    ibdRientA: TIBStringField;
    ibdRientB: TIBStringField;
    ibdRientC: TIBStringField;
    ibdRientNUM_RIGA_ID: TIntegerField;
    ibdRientID_DOCUMENTO: TIntegerField;
    ibdRientTESTATA_PN_ID: TIntegerField;
    ibdRientCAUSALE_DOC: TIBStringField;
    ibdRientTIPO_DOC: TIntegerField;
    ibdRientDA_FATTURARE: TSmallintField;
    ibdRientCLIFOR_ID: TIntegerField;
    ibdRientTIPO_CLIFOR: TSmallintField;
    ibdRientDEPOSITO: TIBStringField;
    ibdRientCAUSALE_MAGAZZINO: TIBStringField;
    ibdRientCONTRO_CAUS_MAG: TIBStringField;
    ibdRientATTIVITA: TIBStringField;
    ibdRientSUBATTIVITA: TIBStringField;
    ibdRientDATA_REGISTRAZIONE: TDateTimeField;
    ibdRientDATA_DOC: TDateTimeField;
    ibdRientDATA_CONFERMA: TDateTimeField;
    ibdRientDATA_EVASIONE: TDateTimeField;
    ibdRientSTATO_DOCUMENTO: TIntegerField;
    ibdRientSTATO_CONTABILITA: TIntegerField;
    ibdRientMONETA_ID: TIBStringField;
    ibdRientCAMBIO: TFloatField;
    ibdRientKINGUA_ID: TIBStringField;
    ibdRientLISTINO: TIBStringField;
    ibdRientNS_RIFERIMENTO: TIBStringField;
    ibdRientVS_RIFERIMENTO: TIBStringField;
    ibdRientCAUSALE_CONTABILE: TIBStringField;
    ibdRientCODICE_BOLL: TIBStringField;
    ibdRientPAGAMENTO_ID: TIBStringField;
    ibdRientBANCA_CLIFOR: TIBStringField;
    ibdRientBANCA_AZIENDA: TIBStringField;
    ibdRientVETTORE1: TIBStringField;
    ibdRientVETTORE2: TIBStringField;
    ibdRientVETTORE3: TIBStringField;
    ibdRientPORTO: TIBStringField;
    ibdRientASPETTO: TIBStringField;
    ibdRientSPEDIZIONE: TIBStringField;
    ibdRientPESO_NETTO: TFloatField;
    ibdRientPESO_LORDO: TFloatField;
    ibdRientCUBAGGIO: TFloatField;
    ibdRientDESTINARIO: TIBStringField;
    ibdRientIMBALLO: TIBStringField;
    ibdRientSCONTO11: TFloatField;
    ibdRientAGENTE_ID: TIBStringField;
    ibdRientDATA_CONSEGNA: TDateTimeField;
    ibdRientNUM_DOC: TIntegerField;
    ibdRientNRCOLLI: TFloatField;
    ibdRientSCONTO21: TFloatField;
    ibdRientIMPORTO_SCONTO1: TFloatField;
    ibdRientNOTA: TIBStringField;
    ibdRientSOSPESO: TSmallintField;
    ibdRientIVA_SOSPESA: TSmallintField;
    ibdRientACCORPA_RIGHE: TSmallintField;
    ibdRientATTIVITA2: TIBStringField;
    ibdRientSUBATTIVITA2: TIBStringField;
    ibdRientSOGGETTO_CEE: TSmallintField;
    ibdRientREPORT: TIBStringField;
    ibdRientRILEVA_ACCONTO: TSmallintField;
    ibdRientORA: TIBStringField;
    ibdRientFATT_ACCOMP: TSmallintField;
    ibdRientTIPO_FATT: TSmallintField;
    ibdRientST_NOTE_CLIFOR: TSmallintField;
    ibdRientIVATO1: TSmallintField;
    ibdRientSTAMPATO: TSmallintField;
    ibdRientDATA_COMPETENZA_IVA: TDateTimeField;
    ibdRientMEZZO_TRASPORTO: TSmallintField;
    ibdRientTOT_PROVVIGIONE: TFloatField;
    ibdRientTIPO_PROVVIGIONE: TSmallintField;
    ibdRientTOT_IMP_PROVVIGIONE: TFloatField;
    ibdRientCAST_MANUALE: TSmallintField;
    ibdRientNUM_DOC2: TIntegerField;
    ibdRientSERIE_DOC2: TIBStringField;
    ibdRientMESE_CONT: TIntegerField;
    ibdRientALTRE_DERT_SI_NO: TSmallintField;
    ibdRientCAU_TRASP_ID: TIBStringField;
    ibdRientPER_ALTRA_DEST: TSmallintField;
    ibdRientIMPORTO_CON_IVA1: TFloatField;
    ibdRientTOTALE_MERCE: TFloatField;
    ibdRientTOTALE_SERVIZI: TFloatField;
    ibdRientTOTALE: TFloatField;
    ibdRientTOTALE_IVA: TFloatField;
    ibdRientTOTALE_IVATO: TFloatField;
    ibdRientTOTALE_SCONTI: TFloatField;
    ibdRientTOTALE_EURO: TFloatField;
    ibdRientTOTALE_EURO_IVATO: TFloatField;
    ibdRientTOT_SPESE: TFloatField;
    ibdRientALTRA_DEST: TIBStringField;
    ibdRientSERIE_DOC: TIBStringField;
    ibdRientCLI_FOR_IND: TIBStringField;
    ibdRientACCONTO: TFloatField;
    ibdRientTEL1: TIBStringField;
    ibdRientTEL2: TIBStringField;
    ibdRientTEL3: TIBStringField;
    ibdRientIVA_ESENTE: TSmallintField;
    ibdRientIVA_ESENTE_ID: TIntegerField;
    ibdRientVETTORE_IND: TIBStringField;
    ibdRientVETTORE_IND2: TIBStringField;
    ibdRientCLI_FOR_IND2: TIBStringField;
    ibdRientPIANOCONTO_ID1: TIntegerField;
    ibdRientALTRA_DEST2: TIBStringField;
    ibdRientCA_ID: TIBStringField;
    ibdRientID_CLI_FOR: TIntegerField;
    ibdRientTIPO: TSmallintField;
    ibdRientDENOMINAZIONE: TIBStringField;
    DBGrid8: TDBGrid;
    ibdCPID_DOC_DET: TIntegerField;
    ibdCPTIPO_RIGA: TIntegerField;
    ibdCPCODICE_ARTICOLO: TIBStringField;
    ibdCPDESCR: TIBStringField;
    ibdCPCOSTO: TFloatField;
    ibdCPCOSTOINVALUTA: TFloatField;
    ibdCPUNITA_MISURA: TIBStringField;
    ibdCPFATTCONV: TFloatField;
    ibdCPQTA_UM: TFloatField;
    ibdCPQUANTITA: TFloatField;
    ibdCPSCONTO1: TFloatField;
    ibdCPSCONTO2: TFloatField;
    ibdCPSCONTO3: TFloatField;
    ibdCPSCONTO4: TFloatField;
    ibdCPIMPORTO_SCONTO: TFloatField;
    ibdCPIMPORTO: TFloatField;
    ibdCPIMPORTOINVALUTA: TFloatField;
    ibdCPOMAGGIO: TSmallintField;
    ibdCPDEP: TIBStringField;
    ibdCPSCONTO_EQ: TFloatField;
    ibdCPPERC_PROVV: TFloatField;
    ibdCPTIPO_SERVIZIO: TIBStringField;
    ibdCPIVATO: TFloatField;
    ibdCPIMPORTO_CON_IVA: TFloatField;
    ibdCPCODICE_IVA_ID: TIBStringField;
    ibdCPDATA_REG: TDateTimeField;
    ibdCPDOC_ID: TIntegerField;
    ibdCPTOTCOLLI: TIBStringField;
    ibdCPTOTSCAT: TFloatField;
    ibdCPPREZZOLIST: TFloatField;
    ibdCPSCHEDA: TFloatField;
    ibdCPPASSATA: TIBStringField;
    ibdCPCOL: TIBStringField;
    ibdCPA: TIBStringField;
    ibdCPB: TIBStringField;
    ibdCPC: TIBStringField;
    ibdCPNUM_RIGA_ID: TIntegerField;
    ibdCPID_DOCUMENTO: TIntegerField;
    ibdCPTESTATA_PN_ID: TIntegerField;
    ibdCPCAUSALE_DOC: TIBStringField;
    ibdCPTIPO_DOC: TIntegerField;
    ibdCPDA_FATTURARE: TSmallintField;
    ibdCPCLIFOR_ID: TIntegerField;
    ibdCPTIPO_CLIFOR: TSmallintField;
    ibdCPDEPOSITO: TIBStringField;
    ibdCPCAUSALE_MAGAZZINO: TIBStringField;
    ibdCPCONTRO_CAUS_MAG: TIBStringField;
    ibdCPATTIVITA: TIBStringField;
    ibdCPSUBATTIVITA: TIBStringField;
    ibdCPDATA_REGISTRAZIONE: TDateTimeField;
    ibdCPDATA_DOC: TDateTimeField;
    ibdCPDATA_CONFERMA: TDateTimeField;
    ibdCPDATA_EVASIONE: TDateTimeField;
    ibdCPSTATO_DOCUMENTO: TIntegerField;
    ibdCPSTATO_CONTABILITA: TIntegerField;
    ibdCPMONETA_ID: TIBStringField;
    ibdCPCAMBIO: TFloatField;
    ibdCPKINGUA_ID: TIBStringField;
    ibdCPLISTINO: TIBStringField;
    ibdCPNS_RIFERIMENTO: TIBStringField;
    ibdCPVS_RIFERIMENTO: TIBStringField;
    ibdCPCAUSALE_CONTABILE: TIBStringField;
    ibdCPCODICE_BOLL: TIBStringField;
    ibdCPPAGAMENTO_ID: TIBStringField;
    ibdCPBANCA_CLIFOR: TIBStringField;
    ibdCPBANCA_AZIENDA: TIBStringField;
    ibdCPVETTORE1: TIBStringField;
    ibdCPVETTORE2: TIBStringField;
    ibdCPVETTORE3: TIBStringField;
    ibdCPPORTO: TIBStringField;
    ibdCPASPETTO: TIBStringField;
    ibdCPSPEDIZIONE: TIBStringField;
    ibdCPPESO_NETTO: TFloatField;
    ibdCPPESO_LORDO: TFloatField;
    ibdCPCUBAGGIO: TFloatField;
    ibdCPDESTINARIO: TIBStringField;
    ibdCPIMBALLO: TIBStringField;
    ibdCPSCONTO11: TFloatField;
    ibdCPAGENTE_ID: TIBStringField;
    ibdCPDATA_CONSEGNA: TDateTimeField;
    ibdCPNUM_DOC: TIntegerField;
    ibdCPNRCOLLI: TFloatField;
    ibdCPSCONTO21: TFloatField;
    ibdCPIMPORTO_SCONTO1: TFloatField;
    ibdCPNOTA: TIBStringField;
    ibdCPSOSPESO: TSmallintField;
    ibdCPIVA_SOSPESA: TSmallintField;
    ibdCPIVATO1: TSmallintField;
    ibdCPSTAMPATO: TSmallintField;
    ibdCPDATA_COMPETENZA_IVA: TDateTimeField;
    ibdCPMEZZO_TRASPORTO: TSmallintField;
    ibdCPTOT_PROVVIGIONE: TFloatField;
    ibdCPTIPO_PROVVIGIONE: TSmallintField;
    ibdCPTOT_IMP_PROVVIGIONE: TFloatField;
    ibdCPCAST_MANUALE: TSmallintField;
    ibdCPNUM_DOC2: TIntegerField;
    ibdCPSERIE_DOC2: TIBStringField;
    ibdCPMESE_CONT: TIntegerField;
    ibdCPCAU_TRASP_ID: TIBStringField;
    ibdCPPER_ALTRA_DEST: TSmallintField;
    ibdCPIMPORTO_CON_IVA1: TFloatField;
    ibdCPTOTALE_MERCE: TFloatField;
    ibdCPTOTALE_SERVIZI: TFloatField;
    ibdCPTOTALE: TFloatField;
    ibdCPTOTALE_IVA: TFloatField;
    ibdCPTOTALE_IVATO: TFloatField;
    ibdCPTOTALE_SCONTI: TFloatField;
    ibdCPTOTALE_EURO: TFloatField;
    ibdCPTOTALE_EURO_IVATO: TFloatField;
    ibdCPSERIE_DOC: TIBStringField;
    ibdCPCLI_FOR_IND: TIBStringField;
    ibdCPACCONTO: TFloatField;
    ibdCPTEL1: TIBStringField;
    ibdCPTEL2: TIBStringField;
    ibdCPTEL3: TIBStringField;
    ibdCPIVA_ESENTE: TSmallintField;
    ibdCPIVA_ESENTE_ID: TIntegerField;
    ibdCPVETTORE_IND: TIBStringField;
    ibdCPVETTORE_IND2: TIBStringField;
    ibdCPCLI_FOR_IND2: TIBStringField;
    ibdCPPIANOCONTO_ID1: TIntegerField;
    ibdCPALTRA_DEST2: TIBStringField;
    ibdCPCA_ID: TIBStringField;
    ibdCPID_CLI_FOR: TIntegerField;
    ibdCPTIPO: TSmallintField;
    ibdCPDENOMINAZIONE: TIBStringField;
    ibdPartID_DOC_DET: TIntegerField;
    ibdPartTIPO_RIGA: TIntegerField;
    ibdPartCODICE_ARTICOLO: TIBStringField;
    ibdPartDESCR: TIBStringField;
    ibdPartCOSTO: TFloatField;
    ibdPartCOSTOINVALUTA: TFloatField;
    ibdPartUNITA_MISURA: TIBStringField;
    ibdPartFATTCONV: TFloatField;
    ibdPartQTA_UM: TFloatField;
    ibdPartQUANTITA: TFloatField;
    ibdPartSCONTO1: TFloatField;
    ibdPartSCONTO2: TFloatField;
    ibdPartSCONTO3: TFloatField;
    ibdPartSCONTO4: TFloatField;
    ibdPartIMPORTO_SCONTO: TFloatField;
    ibdPartIMPORTO: TFloatField;
    ibdPartIMPORTOINVALUTA: TFloatField;
    ibdPartOMAGGIO: TSmallintField;
    ibdPartDEP: TIBStringField;
    ibdPartSCONTO_EQ: TFloatField;
    ibdPartPERC_PROVV: TFloatField;
    ibdPartTIPO_SERVIZIO: TIBStringField;
    ibdPartIVATO: TFloatField;
    ibdPartIMPORTO_CON_IVA: TFloatField;
    ibdPartCODICE_IVA_ID: TIBStringField;
    ibdPartDATA_REG: TDateTimeField;
    ibdPartDOC_ID: TIntegerField;
    ibdPartTOTCOLLI: TIBStringField;
    ibdPartTOTSCAT: TFloatField;
    ibdPartPREZZOLIST: TFloatField;
    ibdPartSCHEDA: TFloatField;
    ibdPartPASSATA: TIBStringField;
    ibdPartCOL: TIBStringField;
    ibdPartA: TIBStringField;
    ibdPartB: TIBStringField;
    ibdPartC: TIBStringField;
    ibdPartNUM_RIGA_ID: TIntegerField;
    ibdPartID_DOCUMENTO: TIntegerField;
    ibdPartTESTATA_PN_ID: TIntegerField;
    ibdPartCAUSALE_DOC: TIBStringField;
    ibdPartTIPO_DOC: TIntegerField;
    ibdPartDA_FATTURARE: TSmallintField;
    ibdPartCLIFOR_ID: TIntegerField;
    ibdPartTIPO_CLIFOR: TSmallintField;
    ibdPartDEPOSITO: TIBStringField;
    ibdPartCAUSALE_MAGAZZINO: TIBStringField;
    ibdPartCONTRO_CAUS_MAG: TIBStringField;
    ibdPartATTIVITA: TIBStringField;
    ibdPartSUBATTIVITA: TIBStringField;
    ibdPartDATA_REGISTRAZIONE: TDateTimeField;
    ibdPartDATA_DOC: TDateTimeField;
    ibdPartDATA_CONFERMA: TDateTimeField;
    ibdPartLISTINO: TIBStringField;
    ibdPartNS_RIFERIMENTO: TIBStringField;
    ibdPartVS_RIFERIMENTO: TIBStringField;
    ibdPartCAUSALE_CONTABILE: TIBStringField;
    ibdPartCODICE_BOLL: TIBStringField;
    ibdPartPAGAMENTO_ID: TIBStringField;
    ibdPartBANCA_CLIFOR: TIBStringField;
    ibdPartBANCA_AZIENDA: TIBStringField;
    ibdPartVETTORE1: TIBStringField;
    ibdPartVETTORE2: TIBStringField;
    ibdPartVETTORE3: TIBStringField;
    ibdPartPORTO: TIBStringField;
    ibdPartASPETTO: TIBStringField;
    ibdPartSPEDIZIONE: TIBStringField;
    ibdPartPESO_NETTO: TFloatField;
    ibdPartPESO_LORDO: TFloatField;
    ibdPartCUBAGGIO: TFloatField;
    ibdPartDESTINARIO: TIBStringField;
    ibdPartIMBALLO: TIBStringField;
    ibdPartSCONTO11: TFloatField;
    ibdPartAGENTE_ID: TIBStringField;
    ibdPartDATA_CONSEGNA: TDateTimeField;
    ibdPartNUM_DOC: TIntegerField;
    ibdPartNRCOLLI: TFloatField;
    ibdPartSCONTO21: TFloatField;
    ibdPartIMPORTO_SCONTO1: TFloatField;
    ibdPartNOTA: TIBStringField;
    ibdPartSOSPESO: TSmallintField;
    ibdPartIVA_SOSPESA: TSmallintField;
    ibdPartATTIVITA2: TIBStringField;
    ibdPartSUBATTIVITA2: TIBStringField;
    ibdPartSOGGETTO_CEE: TSmallintField;
    ibdPartREPORT: TIBStringField;
    ibdPartRILEVA_ACCONTO: TSmallintField;
    ibdPartORA: TIBStringField;
    ibdPartFATT_ACCOMP: TSmallintField;
    ibdPartTIPO_FATT: TSmallintField;
    ibdPartST_NOTE_CLIFOR: TSmallintField;
    ibdPartIVATO1: TSmallintField;
    ibdPartSTAMPATO: TSmallintField;
    ibdPartDATA_COMPETENZA_IVA: TDateTimeField;
    ibdPartMEZZO_TRASPORTO: TSmallintField;
    ibdPartTOT_PROVVIGIONE: TFloatField;
    ibdPartTIPO_PROVVIGIONE: TSmallintField;
    ibdPartTOT_IMP_PROVVIGIONE: TFloatField;
    ibdPartCAST_MANUALE: TSmallintField;
    ibdPartNUM_DOC2: TIntegerField;
    ibdPartSERIE_DOC2: TIBStringField;
    ibdPartMESE_CONT: TIntegerField;
    ibdPartCAU_TRASP_ID: TIBStringField;
    ibdPartPER_ALTRA_DEST: TSmallintField;
    ibdPartIMPORTO_CON_IVA1: TFloatField;
    ibdPartTOTALE_MERCE: TFloatField;
    ibdPartTOTALE_SERVIZI: TFloatField;
    ibdPartTOTALE: TFloatField;
    ibdPartTOTALE_IVA: TFloatField;
    ibdPartTOTALE_IVATO: TFloatField;
    ibdPartTOTALE_SCONTI: TFloatField;
    ibdPartTOT_SPESE: TFloatField;
    ibdPartALTRA_DEST: TIBStringField;
    ibdPartSERIE_DOC: TIBStringField;
    ibdPartCLI_FOR_IND: TIBStringField;
    ibdPartACCONTO: TFloatField;
    ibdPartTEL1: TIBStringField;
    ibdPartTEL2: TIBStringField;
    ibdPartTEL3: TIBStringField;
    ibdPartIVA_ESENTE: TSmallintField;
    ibdPartIVA_ESENTE_ID: TIntegerField;
    ibdPartVETTORE_IND: TIBStringField;
    ibdPartVETTORE_IND2: TIBStringField;
    ibdPartCLI_FOR_IND2: TIBStringField;
    ibdPartPIANOCONTO_ID1: TIntegerField;
    ibdPartALTRA_DEST2: TIBStringField;
    ibdPartCA_ID: TIBStringField;
    ibdPartID_CLI_FOR: TIntegerField;
    ibdPartTIPO: TSmallintField;
    ibdPartDENOMINAZIONE: TIBStringField;
    DBGrid9: TDBGrid;
    DBGrid11: TDBGrid;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    DBGrid10: TDBGrid;
    DBGrid12: TDBGrid;
    DBGrid13: TDBGrid;
    DBGrid14: TDBGrid;
    DBGrid15: TDBGrid;
    ibdArrRac1: TIBDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
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
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateTimeField2: TDateTimeField;
    IntegerField5: TIntegerField;
    DateTimeField3: TDateTimeField;
    IntegerField6: TIntegerField;
    DateTimeField4: TDateTimeField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    IntegerField11: TIntegerField;
    IBStringField7: TIBStringField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IBStringField13: TIBStringField;
    IntegerField15: TIntegerField;
    SmallintField6: TSmallintField;
    IntegerField16: TIntegerField;
    SmallintField7: TSmallintField;
    IBStringField14: TIBStringField;
    IntegerField17: TIntegerField;
    SmallintField8: TSmallintField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IBStringField20: TIBStringField;
    FloatField24: TFloatField;
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
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    FloatField28: TFloatField;
    IBStringField38: TIBStringField;
    DateTimeField9: TDateTimeField;
    IntegerField20: TIntegerField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    IBStringField39: TIBStringField;
    SmallintField9: TSmallintField;
    SmallintField10: TSmallintField;
    IBStringField40: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    SmallintField11: TSmallintField;
    IBStringField47: TIBStringField;
    IBStringField48: TIBStringField;
    SmallintField12: TSmallintField;
    IBStringField49: TIBStringField;
    SmallintField13: TSmallintField;
    IBStringField50: TIBStringField;
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
    IBStringField51: TIBStringField;
    IntegerField22: TIntegerField;
    SmallintField22: TSmallintField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    IBStringField52: TIBStringField;
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
    IBStringField53: TIBStringField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    IBStringField54: TIBStringField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    IBStringField55: TIBStringField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    IBStringField56: TIBStringField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    FloatField60: TFloatField;
    IBStringField57: TIBStringField;
    FloatField61: TFloatField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    FloatField64: TFloatField;
    IBStringField58: TIBStringField;
    IBStringField59: TIBStringField;
    IBStringField60: TIBStringField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    IBStringField61: TIBStringField;
    IBStringField62: TIBStringField;
    IBStringField63: TIBStringField;
    SmallintField24: TSmallintField;
    IntegerField23: TIntegerField;
    IBStringField64: TIBStringField;
    IBStringField65: TIBStringField;
    IBStringField66: TIBStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    DateField4: TDateField;
    DateField5: TDateField;
    DateField6: TDateField;
    IntegerField24: TIntegerField;
    IBStringField67: TIBStringField;
    IBStringField68: TIBStringField;
    IntegerField25: TIntegerField;
    SmallintField25: TSmallintField;
    IBStringField69: TIBStringField;
    IBStringField70: TIBStringField;
    IBStringField71: TIBStringField;
    IBStringField72: TIBStringField;
    IBStringField73: TIBStringField;
    IBStringField74: TIBStringField;
    IntegerField26: TIntegerField;
    IBStringField75: TIBStringField;
    IBStringField76: TIBStringField;
    SmallintField26: TSmallintField;
    IntegerField27: TIntegerField;
    IBStringField77: TIBStringField;
    IBStringField78: TIBStringField;
    IBStringField79: TIBStringField;
    IBStringField80: TIBStringField;
    IBStringField81: TIBStringField;
    IBStringField82: TIBStringField;
    IBStringField83: TIBStringField;
    FloatField72: TFloatField;
    IBStringField84: TIBStringField;
    IBStringField85: TIBStringField;
    FloatField73: TFloatField;
    FloatField74: TFloatField;
    IBStringField86: TIBStringField;
    IBStringField87: TIBStringField;
    IBStringField88: TIBStringField;
    IBStringField89: TIBStringField;
    IBStringField90: TIBStringField;
    DateTimeField11: TDateTimeField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    IBStringField91: TIBStringField;
    FloatField75: TFloatField;
    SmallintField27: TSmallintField;
    IntegerField30: TIntegerField;
    SmallintField28: TSmallintField;
    SmallintField29: TSmallintField;
    SmallintField30: TSmallintField;
    IBStringField92: TIBStringField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    IntegerField34: TIntegerField;
    SmallintField31: TSmallintField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    IBStringField93: TIBStringField;
    FloatField76: TFloatField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    SmallintField32: TSmallintField;
    SmallintField33: TSmallintField;
    IBStringField94: TIBStringField;
    IBStringField95: TIBStringField;
    IBStringField96: TIBStringField;
    IntegerField40: TIntegerField;
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
    DataSource6: TDataSource;
    ibdArrRac2: TIBDataSet;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    IBStringField115: TIBStringField;
    IBStringField116: TIBStringField;
    FloatField77: TFloatField;
    FloatField78: TFloatField;
    IBStringField117: TIBStringField;
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
    SmallintField34: TSmallintField;
    IBStringField118: TIBStringField;
    FloatField89: TFloatField;
    FloatField90: TFloatField;
    IBStringField119: TIBStringField;
    FloatField91: TFloatField;
    FloatField92: TFloatField;
    IBStringField120: TIBStringField;
    DateTimeField12: TDateTimeField;
    SmallintField35: TSmallintField;
    SmallintField36: TSmallintField;
    SmallintField37: TSmallintField;
    SmallintField38: TSmallintField;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    DateTimeField13: TDateTimeField;
    IntegerField45: TIntegerField;
    DateTimeField14: TDateTimeField;
    IntegerField46: TIntegerField;
    DateTimeField15: TDateTimeField;
    IntegerField47: TIntegerField;
    IntegerField48: TIntegerField;
    IntegerField49: TIntegerField;
    IntegerField50: TIntegerField;
    FloatField93: TFloatField;
    FloatField94: TFloatField;
    FloatField95: TFloatField;
    FloatField96: TFloatField;
    IntegerField51: TIntegerField;
    IBStringField121: TIBStringField;
    FloatField97: TFloatField;
    FloatField98: TFloatField;
    FloatField99: TFloatField;
    IBStringField122: TIBStringField;
    IBStringField123: TIBStringField;
    IBStringField124: TIBStringField;
    IBStringField125: TIBStringField;
    IBStringField126: TIBStringField;
    IntegerField52: TIntegerField;
    IntegerField53: TIntegerField;
    IntegerField54: TIntegerField;
    IBStringField127: TIBStringField;
    IntegerField55: TIntegerField;
    SmallintField39: TSmallintField;
    IntegerField56: TIntegerField;
    SmallintField40: TSmallintField;
    IBStringField128: TIBStringField;
    IntegerField57: TIntegerField;
    SmallintField41: TSmallintField;
    IBStringField129: TIBStringField;
    IBStringField130: TIBStringField;
    IBStringField131: TIBStringField;
    IBStringField132: TIBStringField;
    IBStringField133: TIBStringField;
    DateTimeField16: TDateTimeField;
    DateTimeField17: TDateTimeField;
    DateTimeField18: TDateTimeField;
    DateTimeField19: TDateTimeField;
    IntegerField58: TIntegerField;
    IntegerField59: TIntegerField;
    IBStringField134: TIBStringField;
    FloatField100: TFloatField;
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
    FloatField101: TFloatField;
    FloatField102: TFloatField;
    FloatField103: TFloatField;
    IBStringField150: TIBStringField;
    IBStringField151: TIBStringField;
    FloatField104: TFloatField;
    IBStringField152: TIBStringField;
    DateTimeField20: TDateTimeField;
    IntegerField60: TIntegerField;
    FloatField105: TFloatField;
    FloatField106: TFloatField;
    FloatField107: TFloatField;
    IBStringField153: TIBStringField;
    SmallintField42: TSmallintField;
    SmallintField43: TSmallintField;
    IBStringField154: TIBStringField;
    IBStringField155: TIBStringField;
    IBStringField156: TIBStringField;
    IBStringField157: TIBStringField;
    IBStringField158: TIBStringField;
    IBStringField159: TIBStringField;
    IBStringField160: TIBStringField;
    SmallintField44: TSmallintField;
    IBStringField161: TIBStringField;
    IBStringField162: TIBStringField;
    SmallintField45: TSmallintField;
    IBStringField163: TIBStringField;
    SmallintField46: TSmallintField;
    IBStringField164: TIBStringField;
    SmallintField47: TSmallintField;
    SmallintField48: TSmallintField;
    SmallintField49: TSmallintField;
    SmallintField50: TSmallintField;
    SmallintField51: TSmallintField;
    DateTimeField21: TDateTimeField;
    SmallintField52: TSmallintField;
    FloatField108: TFloatField;
    SmallintField53: TSmallintField;
    FloatField109: TFloatField;
    SmallintField54: TSmallintField;
    IntegerField61: TIntegerField;
    IBStringField165: TIBStringField;
    IntegerField62: TIntegerField;
    SmallintField55: TSmallintField;
    FloatField110: TFloatField;
    FloatField111: TFloatField;
    FloatField112: TFloatField;
    FloatField113: TFloatField;
    FloatField114: TFloatField;
    FloatField115: TFloatField;
    IBStringField166: TIBStringField;
    SmallintField56: TSmallintField;
    FloatField116: TFloatField;
    FloatField117: TFloatField;
    FloatField118: TFloatField;
    FloatField119: TFloatField;
    FloatField120: TFloatField;
    FloatField121: TFloatField;
    FloatField122: TFloatField;
    FloatField123: TFloatField;
    FloatField124: TFloatField;
    IBStringField167: TIBStringField;
    FloatField125: TFloatField;
    FloatField126: TFloatField;
    FloatField127: TFloatField;
    IBStringField168: TIBStringField;
    FloatField128: TFloatField;
    FloatField129: TFloatField;
    FloatField130: TFloatField;
    IBStringField169: TIBStringField;
    FloatField131: TFloatField;
    FloatField132: TFloatField;
    FloatField133: TFloatField;
    IBStringField170: TIBStringField;
    FloatField134: TFloatField;
    FloatField135: TFloatField;
    FloatField136: TFloatField;
    IBStringField171: TIBStringField;
    FloatField137: TFloatField;
    FloatField138: TFloatField;
    FloatField139: TFloatField;
    FloatField140: TFloatField;
    IBStringField172: TIBStringField;
    IBStringField173: TIBStringField;
    IBStringField174: TIBStringField;
    FloatField141: TFloatField;
    FloatField142: TFloatField;
    FloatField143: TFloatField;
    FloatField144: TFloatField;
    FloatField145: TFloatField;
    FloatField146: TFloatField;
    FloatField147: TFloatField;
    IBStringField175: TIBStringField;
    IBStringField176: TIBStringField;
    IBStringField177: TIBStringField;
    SmallintField57: TSmallintField;
    IntegerField63: TIntegerField;
    IBStringField178: TIBStringField;
    IBStringField179: TIBStringField;
    IBStringField180: TIBStringField;
    DateField7: TDateField;
    DateField8: TDateField;
    DateField9: TDateField;
    DateField10: TDateField;
    DateField11: TDateField;
    DateField12: TDateField;
    IntegerField64: TIntegerField;
    IBStringField181: TIBStringField;
    IBStringField182: TIBStringField;
    IntegerField65: TIntegerField;
    SmallintField58: TSmallintField;
    IBStringField183: TIBStringField;
    IBStringField184: TIBStringField;
    IBStringField185: TIBStringField;
    IBStringField186: TIBStringField;
    IBStringField187: TIBStringField;
    IBStringField188: TIBStringField;
    IntegerField66: TIntegerField;
    IBStringField189: TIBStringField;
    IBStringField190: TIBStringField;
    SmallintField59: TSmallintField;
    IntegerField67: TIntegerField;
    IBStringField191: TIBStringField;
    IBStringField192: TIBStringField;
    IBStringField193: TIBStringField;
    IBStringField194: TIBStringField;
    IBStringField195: TIBStringField;
    IBStringField196: TIBStringField;
    IBStringField197: TIBStringField;
    FloatField148: TFloatField;
    IBStringField198: TIBStringField;
    IBStringField199: TIBStringField;
    FloatField149: TFloatField;
    FloatField150: TFloatField;
    IBStringField200: TIBStringField;
    IBStringField201: TIBStringField;
    IBStringField202: TIBStringField;
    IBStringField203: TIBStringField;
    IBStringField204: TIBStringField;
    DateTimeField22: TDateTimeField;
    IntegerField68: TIntegerField;
    IntegerField69: TIntegerField;
    IBStringField205: TIBStringField;
    FloatField151: TFloatField;
    SmallintField60: TSmallintField;
    IntegerField70: TIntegerField;
    SmallintField61: TSmallintField;
    SmallintField62: TSmallintField;
    SmallintField63: TSmallintField;
    IBStringField206: TIBStringField;
    IntegerField71: TIntegerField;
    IntegerField72: TIntegerField;
    IntegerField73: TIntegerField;
    IntegerField74: TIntegerField;
    SmallintField64: TSmallintField;
    IntegerField75: TIntegerField;
    IntegerField76: TIntegerField;
    IBStringField207: TIBStringField;
    FloatField152: TFloatField;
    IntegerField77: TIntegerField;
    IntegerField78: TIntegerField;
    IntegerField79: TIntegerField;
    SmallintField65: TSmallintField;
    SmallintField66: TSmallintField;
    IBStringField208: TIBStringField;
    IBStringField209: TIBStringField;
    IBStringField210: TIBStringField;
    IntegerField80: TIntegerField;
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
    DataSource7: TDataSource;
    ibdInvConto1: TIBDataSet;
    IntegerField81: TIntegerField;
    IntegerField82: TIntegerField;
    IBStringField229: TIBStringField;
    IBStringField230: TIBStringField;
    IBStringField231: TIBStringField;
    FloatField153: TFloatField;
    FloatField154: TFloatField;
    IBStringField232: TIBStringField;
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
    SmallintField67: TSmallintField;
    IBStringField233: TIBStringField;
    FloatField165: TFloatField;
    FloatField166: TFloatField;
    IBStringField234: TIBStringField;
    FloatField167: TFloatField;
    FloatField168: TFloatField;
    IBStringField235: TIBStringField;
    DateTimeField23: TDateTimeField;
    IntegerField83: TIntegerField;
    IBStringField236: TIBStringField;
    FloatField169: TFloatField;
    FloatField170: TFloatField;
    FloatField171: TFloatField;
    IBStringField237: TIBStringField;
    IBStringField238: TIBStringField;
    IBStringField239: TIBStringField;
    IBStringField240: TIBStringField;
    IBStringField241: TIBStringField;
    IntegerField84: TIntegerField;
    IntegerField85: TIntegerField;
    IntegerField86: TIntegerField;
    IBStringField242: TIBStringField;
    IntegerField87: TIntegerField;
    SmallintField68: TSmallintField;
    IntegerField88: TIntegerField;
    SmallintField69: TSmallintField;
    IBStringField243: TIBStringField;
    IntegerField89: TIntegerField;
    SmallintField70: TSmallintField;
    IBStringField244: TIBStringField;
    IBStringField245: TIBStringField;
    IBStringField246: TIBStringField;
    IBStringField247: TIBStringField;
    IBStringField248: TIBStringField;
    DateTimeField24: TDateTimeField;
    DateTimeField25: TDateTimeField;
    DateTimeField26: TDateTimeField;
    DateTimeField27: TDateTimeField;
    IntegerField90: TIntegerField;
    IntegerField91: TIntegerField;
    IBStringField249: TIBStringField;
    FloatField172: TFloatField;
    IBStringField250: TIBStringField;
    IBStringField251: TIBStringField;
    IBStringField252: TIBStringField;
    IBStringField253: TIBStringField;
    IBStringField254: TIBStringField;
    IBStringField255: TIBStringField;
    IBStringField256: TIBStringField;
    IBStringField257: TIBStringField;
    IBStringField258: TIBStringField;
    IBStringField259: TIBStringField;
    IBStringField260: TIBStringField;
    IBStringField261: TIBStringField;
    IBStringField262: TIBStringField;
    IBStringField263: TIBStringField;
    IBStringField264: TIBStringField;
    FloatField173: TFloatField;
    FloatField174: TFloatField;
    FloatField175: TFloatField;
    IBStringField265: TIBStringField;
    IBStringField266: TIBStringField;
    FloatField176: TFloatField;
    IBStringField267: TIBStringField;
    DateTimeField28: TDateTimeField;
    IntegerField92: TIntegerField;
    FloatField177: TFloatField;
    FloatField178: TFloatField;
    FloatField179: TFloatField;
    IBStringField268: TIBStringField;
    SmallintField71: TSmallintField;
    SmallintField72: TSmallintField;
    IBStringField269: TIBStringField;
    IBStringField270: TIBStringField;
    IBStringField271: TIBStringField;
    IBStringField272: TIBStringField;
    IBStringField273: TIBStringField;
    IBStringField274: TIBStringField;
    IBStringField275: TIBStringField;
    SmallintField73: TSmallintField;
    IBStringField276: TIBStringField;
    IBStringField277: TIBStringField;
    SmallintField74: TSmallintField;
    IBStringField278: TIBStringField;
    SmallintField75: TSmallintField;
    IBStringField279: TIBStringField;
    SmallintField76: TSmallintField;
    SmallintField77: TSmallintField;
    SmallintField78: TSmallintField;
    SmallintField79: TSmallintField;
    SmallintField80: TSmallintField;
    DateTimeField29: TDateTimeField;
    SmallintField81: TSmallintField;
    FloatField180: TFloatField;
    SmallintField82: TSmallintField;
    FloatField181: TFloatField;
    SmallintField83: TSmallintField;
    IntegerField93: TIntegerField;
    IBStringField280: TIBStringField;
    IntegerField94: TIntegerField;
    SmallintField84: TSmallintField;
    FloatField182: TFloatField;
    FloatField183: TFloatField;
    FloatField184: TFloatField;
    FloatField185: TFloatField;
    FloatField186: TFloatField;
    FloatField187: TFloatField;
    IBStringField281: TIBStringField;
    SmallintField85: TSmallintField;
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
    IBStringField282: TIBStringField;
    IBStringField283: TIBStringField;
    IBStringField284: TIBStringField;
    FloatField198: TFloatField;
    FloatField199: TFloatField;
    FloatField200: TFloatField;
    FloatField201: TFloatField;
    FloatField202: TFloatField;
    FloatField203: TFloatField;
    FloatField204: TFloatField;
    IBStringField285: TIBStringField;
    IBStringField286: TIBStringField;
    IBStringField287: TIBStringField;
    SmallintField86: TSmallintField;
    IntegerField95: TIntegerField;
    IBStringField288: TIBStringField;
    IBStringField289: TIBStringField;
    IBStringField290: TIBStringField;
    IntegerField96: TIntegerField;
    IBStringField291: TIBStringField;
    IBStringField292: TIBStringField;
    IntegerField97: TIntegerField;
    SmallintField87: TSmallintField;
    DataSource8: TDataSource;
    ibdInvConto2: TIBDataSet;
    IntegerField98: TIntegerField;
    IntegerField99: TIntegerField;
    IBStringField293: TIBStringField;
    IBStringField294: TIBStringField;
    IBStringField295: TIBStringField;
    FloatField205: TFloatField;
    FloatField206: TFloatField;
    IBStringField296: TIBStringField;
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
    SmallintField88: TSmallintField;
    IBStringField297: TIBStringField;
    FloatField217: TFloatField;
    FloatField218: TFloatField;
    IBStringField298: TIBStringField;
    FloatField219: TFloatField;
    FloatField220: TFloatField;
    IBStringField299: TIBStringField;
    DateTimeField30: TDateTimeField;
    IntegerField100: TIntegerField;
    IBStringField300: TIBStringField;
    FloatField221: TFloatField;
    FloatField222: TFloatField;
    FloatField223: TFloatField;
    IBStringField301: TIBStringField;
    IBStringField302: TIBStringField;
    IBStringField303: TIBStringField;
    IBStringField304: TIBStringField;
    IBStringField305: TIBStringField;
    IntegerField101: TIntegerField;
    IntegerField102: TIntegerField;
    IntegerField103: TIntegerField;
    IBStringField306: TIBStringField;
    IntegerField104: TIntegerField;
    SmallintField89: TSmallintField;
    IntegerField105: TIntegerField;
    SmallintField90: TSmallintField;
    IBStringField307: TIBStringField;
    IntegerField106: TIntegerField;
    SmallintField91: TSmallintField;
    IBStringField308: TIBStringField;
    IBStringField309: TIBStringField;
    IBStringField310: TIBStringField;
    IBStringField311: TIBStringField;
    IBStringField312: TIBStringField;
    DateTimeField31: TDateTimeField;
    DateTimeField32: TDateTimeField;
    DateTimeField33: TDateTimeField;
    DateTimeField34: TDateTimeField;
    IntegerField107: TIntegerField;
    IntegerField108: TIntegerField;
    IBStringField313: TIBStringField;
    FloatField224: TFloatField;
    IBStringField314: TIBStringField;
    IBStringField315: TIBStringField;
    IBStringField316: TIBStringField;
    IBStringField317: TIBStringField;
    IBStringField318: TIBStringField;
    IBStringField319: TIBStringField;
    IBStringField320: TIBStringField;
    IBStringField321: TIBStringField;
    IBStringField322: TIBStringField;
    IBStringField323: TIBStringField;
    IBStringField324: TIBStringField;
    IBStringField325: TIBStringField;
    IBStringField326: TIBStringField;
    IBStringField327: TIBStringField;
    IBStringField328: TIBStringField;
    FloatField225: TFloatField;
    FloatField226: TFloatField;
    FloatField227: TFloatField;
    IBStringField329: TIBStringField;
    IBStringField330: TIBStringField;
    FloatField228: TFloatField;
    IBStringField331: TIBStringField;
    DateTimeField35: TDateTimeField;
    IntegerField109: TIntegerField;
    FloatField229: TFloatField;
    FloatField230: TFloatField;
    FloatField231: TFloatField;
    IBStringField332: TIBStringField;
    SmallintField92: TSmallintField;
    SmallintField93: TSmallintField;
    IBStringField333: TIBStringField;
    IBStringField334: TIBStringField;
    IBStringField335: TIBStringField;
    IBStringField336: TIBStringField;
    IBStringField337: TIBStringField;
    IBStringField338: TIBStringField;
    IBStringField339: TIBStringField;
    SmallintField94: TSmallintField;
    IBStringField340: TIBStringField;
    IBStringField341: TIBStringField;
    SmallintField95: TSmallintField;
    IBStringField342: TIBStringField;
    SmallintField96: TSmallintField;
    IBStringField343: TIBStringField;
    SmallintField97: TSmallintField;
    SmallintField98: TSmallintField;
    SmallintField99: TSmallintField;
    SmallintField100: TSmallintField;
    SmallintField101: TSmallintField;
    DateTimeField36: TDateTimeField;
    SmallintField102: TSmallintField;
    FloatField232: TFloatField;
    SmallintField103: TSmallintField;
    FloatField233: TFloatField;
    SmallintField104: TSmallintField;
    IntegerField110: TIntegerField;
    IBStringField344: TIBStringField;
    IntegerField111: TIntegerField;
    SmallintField105: TSmallintField;
    FloatField234: TFloatField;
    FloatField235: TFloatField;
    FloatField236: TFloatField;
    FloatField237: TFloatField;
    FloatField238: TFloatField;
    FloatField239: TFloatField;
    IBStringField345: TIBStringField;
    SmallintField106: TSmallintField;
    FloatField240: TFloatField;
    FloatField241: TFloatField;
    FloatField242: TFloatField;
    FloatField243: TFloatField;
    FloatField244: TFloatField;
    FloatField245: TFloatField;
    FloatField246: TFloatField;
    FloatField247: TFloatField;
    FloatField248: TFloatField;
    FloatField249: TFloatField;
    IBStringField346: TIBStringField;
    IBStringField347: TIBStringField;
    IBStringField348: TIBStringField;
    FloatField250: TFloatField;
    FloatField251: TFloatField;
    FloatField252: TFloatField;
    FloatField253: TFloatField;
    FloatField254: TFloatField;
    FloatField255: TFloatField;
    FloatField256: TFloatField;
    IBStringField349: TIBStringField;
    IBStringField350: TIBStringField;
    IBStringField351: TIBStringField;
    SmallintField107: TSmallintField;
    IntegerField112: TIntegerField;
    IBStringField352: TIBStringField;
    IBStringField353: TIBStringField;
    IBStringField354: TIBStringField;
    IntegerField113: TIntegerField;
    IBStringField355: TIBStringField;
    IBStringField356: TIBStringField;
    IntegerField114: TIntegerField;
    SmallintField108: TSmallintField;
    DataSource9: TDataSource;
    ibdRient1: TIBDataSet;
    IntegerField115: TIntegerField;
    IntegerField116: TIntegerField;
    IBStringField357: TIBStringField;
    IBStringField358: TIBStringField;
    FloatField257: TFloatField;
    FloatField258: TFloatField;
    IBStringField359: TIBStringField;
    FloatField259: TFloatField;
    FloatField260: TFloatField;
    FloatField261: TFloatField;
    FloatField262: TFloatField;
    FloatField263: TFloatField;
    FloatField264: TFloatField;
    FloatField265: TFloatField;
    FloatField266: TFloatField;
    FloatField267: TFloatField;
    FloatField268: TFloatField;
    SmallintField109: TSmallintField;
    IBStringField360: TIBStringField;
    FloatField269: TFloatField;
    FloatField270: TFloatField;
    IBStringField361: TIBStringField;
    FloatField271: TFloatField;
    FloatField272: TFloatField;
    IBStringField362: TIBStringField;
    DateTimeField37: TDateTimeField;
    SmallintField110: TSmallintField;
    IntegerField117: TIntegerField;
    IBStringField363: TIBStringField;
    FloatField273: TFloatField;
    FloatField274: TFloatField;
    FloatField275: TFloatField;
    IBStringField364: TIBStringField;
    IBStringField365: TIBStringField;
    IBStringField366: TIBStringField;
    IBStringField367: TIBStringField;
    IBStringField368: TIBStringField;
    IntegerField118: TIntegerField;
    IntegerField119: TIntegerField;
    IntegerField120: TIntegerField;
    IBStringField369: TIBStringField;
    IntegerField121: TIntegerField;
    SmallintField111: TSmallintField;
    IntegerField122: TIntegerField;
    SmallintField112: TSmallintField;
    IBStringField370: TIBStringField;
    IBStringField371: TIBStringField;
    IBStringField372: TIBStringField;
    IBStringField373: TIBStringField;
    IBStringField374: TIBStringField;
    DateTimeField38: TDateTimeField;
    DateTimeField39: TDateTimeField;
    DateTimeField40: TDateTimeField;
    DateTimeField41: TDateTimeField;
    IntegerField123: TIntegerField;
    IntegerField124: TIntegerField;
    IBStringField375: TIBStringField;
    FloatField276: TFloatField;
    IBStringField376: TIBStringField;
    IBStringField377: TIBStringField;
    IBStringField378: TIBStringField;
    IBStringField379: TIBStringField;
    IBStringField380: TIBStringField;
    IBStringField381: TIBStringField;
    IBStringField382: TIBStringField;
    IBStringField383: TIBStringField;
    IBStringField384: TIBStringField;
    IBStringField385: TIBStringField;
    IBStringField386: TIBStringField;
    IBStringField387: TIBStringField;
    IBStringField388: TIBStringField;
    IBStringField389: TIBStringField;
    IBStringField390: TIBStringField;
    FloatField277: TFloatField;
    FloatField278: TFloatField;
    FloatField279: TFloatField;
    IBStringField391: TIBStringField;
    IBStringField392: TIBStringField;
    FloatField280: TFloatField;
    IBStringField393: TIBStringField;
    DateTimeField42: TDateTimeField;
    IntegerField125: TIntegerField;
    FloatField281: TFloatField;
    FloatField282: TFloatField;
    FloatField283: TFloatField;
    IBStringField394: TIBStringField;
    SmallintField113: TSmallintField;
    SmallintField114: TSmallintField;
    SmallintField115: TSmallintField;
    IBStringField395: TIBStringField;
    IBStringField396: TIBStringField;
    SmallintField116: TSmallintField;
    IBStringField397: TIBStringField;
    SmallintField117: TSmallintField;
    IBStringField398: TIBStringField;
    SmallintField118: TSmallintField;
    SmallintField119: TSmallintField;
    SmallintField120: TSmallintField;
    SmallintField121: TSmallintField;
    SmallintField122: TSmallintField;
    DateTimeField43: TDateTimeField;
    SmallintField123: TSmallintField;
    FloatField284: TFloatField;
    SmallintField124: TSmallintField;
    FloatField285: TFloatField;
    SmallintField125: TSmallintField;
    IntegerField126: TIntegerField;
    IBStringField399: TIBStringField;
    IntegerField127: TIntegerField;
    SmallintField126: TSmallintField;
    IBStringField400: TIBStringField;
    SmallintField127: TSmallintField;
    FloatField286: TFloatField;
    FloatField287: TFloatField;
    FloatField288: TFloatField;
    FloatField289: TFloatField;
    FloatField290: TFloatField;
    FloatField291: TFloatField;
    FloatField292: TFloatField;
    FloatField293: TFloatField;
    FloatField294: TFloatField;
    FloatField295: TFloatField;
    IBStringField401: TIBStringField;
    IBStringField402: TIBStringField;
    IBStringField403: TIBStringField;
    FloatField296: TFloatField;
    IBStringField404: TIBStringField;
    IBStringField405: TIBStringField;
    IBStringField406: TIBStringField;
    SmallintField128: TSmallintField;
    IntegerField128: TIntegerField;
    IBStringField407: TIBStringField;
    IBStringField408: TIBStringField;
    IBStringField409: TIBStringField;
    IntegerField129: TIntegerField;
    IBStringField410: TIBStringField;
    IBStringField411: TIBStringField;
    IntegerField130: TIntegerField;
    SmallintField129: TSmallintField;
    IBStringField412: TIBStringField;
    DataSource10: TDataSource;
    ibdRient2: TIBDataSet;
    IntegerField131: TIntegerField;
    IntegerField132: TIntegerField;
    IBStringField413: TIBStringField;
    IBStringField414: TIBStringField;
    FloatField297: TFloatField;
    FloatField298: TFloatField;
    IBStringField415: TIBStringField;
    FloatField299: TFloatField;
    FloatField300: TFloatField;
    FloatField301: TFloatField;
    FloatField302: TFloatField;
    FloatField303: TFloatField;
    FloatField304: TFloatField;
    FloatField305: TFloatField;
    FloatField306: TFloatField;
    FloatField307: TFloatField;
    FloatField308: TFloatField;
    SmallintField130: TSmallintField;
    IBStringField416: TIBStringField;
    FloatField309: TFloatField;
    FloatField310: TFloatField;
    IBStringField417: TIBStringField;
    FloatField311: TFloatField;
    FloatField312: TFloatField;
    IBStringField418: TIBStringField;
    DateTimeField44: TDateTimeField;
    SmallintField131: TSmallintField;
    IntegerField133: TIntegerField;
    IBStringField419: TIBStringField;
    FloatField313: TFloatField;
    FloatField314: TFloatField;
    FloatField315: TFloatField;
    IBStringField420: TIBStringField;
    IBStringField421: TIBStringField;
    IBStringField422: TIBStringField;
    IBStringField423: TIBStringField;
    IBStringField424: TIBStringField;
    IntegerField134: TIntegerField;
    IntegerField135: TIntegerField;
    IntegerField136: TIntegerField;
    IBStringField425: TIBStringField;
    IntegerField137: TIntegerField;
    SmallintField132: TSmallintField;
    IntegerField138: TIntegerField;
    SmallintField133: TSmallintField;
    IBStringField426: TIBStringField;
    IBStringField427: TIBStringField;
    IBStringField428: TIBStringField;
    IBStringField429: TIBStringField;
    IBStringField430: TIBStringField;
    DateTimeField45: TDateTimeField;
    DateTimeField46: TDateTimeField;
    DateTimeField47: TDateTimeField;
    DateTimeField48: TDateTimeField;
    IntegerField139: TIntegerField;
    IntegerField140: TIntegerField;
    IBStringField431: TIBStringField;
    FloatField316: TFloatField;
    IBStringField432: TIBStringField;
    IBStringField433: TIBStringField;
    IBStringField434: TIBStringField;
    IBStringField435: TIBStringField;
    IBStringField436: TIBStringField;
    IBStringField437: TIBStringField;
    IBStringField438: TIBStringField;
    IBStringField439: TIBStringField;
    IBStringField440: TIBStringField;
    IBStringField441: TIBStringField;
    IBStringField442: TIBStringField;
    IBStringField443: TIBStringField;
    IBStringField444: TIBStringField;
    IBStringField445: TIBStringField;
    IBStringField446: TIBStringField;
    FloatField317: TFloatField;
    FloatField318: TFloatField;
    FloatField319: TFloatField;
    IBStringField447: TIBStringField;
    IBStringField448: TIBStringField;
    FloatField320: TFloatField;
    IBStringField449: TIBStringField;
    DateTimeField49: TDateTimeField;
    IntegerField141: TIntegerField;
    FloatField321: TFloatField;
    FloatField322: TFloatField;
    FloatField323: TFloatField;
    IBStringField450: TIBStringField;
    SmallintField134: TSmallintField;
    SmallintField135: TSmallintField;
    SmallintField136: TSmallintField;
    IBStringField451: TIBStringField;
    IBStringField452: TIBStringField;
    SmallintField137: TSmallintField;
    IBStringField453: TIBStringField;
    SmallintField138: TSmallintField;
    IBStringField454: TIBStringField;
    SmallintField139: TSmallintField;
    SmallintField140: TSmallintField;
    SmallintField141: TSmallintField;
    SmallintField142: TSmallintField;
    SmallintField143: TSmallintField;
    DateTimeField50: TDateTimeField;
    SmallintField144: TSmallintField;
    FloatField324: TFloatField;
    SmallintField145: TSmallintField;
    FloatField325: TFloatField;
    SmallintField146: TSmallintField;
    IntegerField142: TIntegerField;
    IBStringField455: TIBStringField;
    IntegerField143: TIntegerField;
    SmallintField147: TSmallintField;
    IBStringField456: TIBStringField;
    SmallintField148: TSmallintField;
    FloatField326: TFloatField;
    FloatField327: TFloatField;
    FloatField328: TFloatField;
    FloatField329: TFloatField;
    FloatField330: TFloatField;
    FloatField331: TFloatField;
    FloatField332: TFloatField;
    FloatField333: TFloatField;
    FloatField334: TFloatField;
    FloatField335: TFloatField;
    IBStringField457: TIBStringField;
    IBStringField458: TIBStringField;
    IBStringField459: TIBStringField;
    FloatField336: TFloatField;
    IBStringField460: TIBStringField;
    IBStringField461: TIBStringField;
    IBStringField462: TIBStringField;
    SmallintField149: TSmallintField;
    IntegerField144: TIntegerField;
    IBStringField463: TIBStringField;
    IBStringField464: TIBStringField;
    IBStringField465: TIBStringField;
    IntegerField145: TIntegerField;
    IBStringField466: TIBStringField;
    IBStringField467: TIBStringField;
    IntegerField146: TIntegerField;
    SmallintField150: TSmallintField;
    IBStringField468: TIBStringField;
    DataSource11: TDataSource;
    ibdCP1: TIBDataSet;
    IntegerField147: TIntegerField;
    IntegerField148: TIntegerField;
    IBStringField469: TIBStringField;
    IBStringField470: TIBStringField;
    FloatField337: TFloatField;
    FloatField338: TFloatField;
    IBStringField471: TIBStringField;
    FloatField339: TFloatField;
    FloatField340: TFloatField;
    FloatField341: TFloatField;
    FloatField342: TFloatField;
    FloatField343: TFloatField;
    FloatField344: TFloatField;
    FloatField345: TFloatField;
    FloatField346: TFloatField;
    FloatField347: TFloatField;
    FloatField348: TFloatField;
    SmallintField151: TSmallintField;
    IBStringField472: TIBStringField;
    FloatField349: TFloatField;
    FloatField350: TFloatField;
    IBStringField473: TIBStringField;
    FloatField351: TFloatField;
    FloatField352: TFloatField;
    IBStringField474: TIBStringField;
    DateTimeField51: TDateTimeField;
    IntegerField149: TIntegerField;
    IBStringField475: TIBStringField;
    FloatField353: TFloatField;
    FloatField354: TFloatField;
    FloatField355: TFloatField;
    IBStringField476: TIBStringField;
    IBStringField477: TIBStringField;
    IBStringField478: TIBStringField;
    IBStringField479: TIBStringField;
    IBStringField480: TIBStringField;
    IntegerField150: TIntegerField;
    IntegerField151: TIntegerField;
    IntegerField152: TIntegerField;
    IBStringField481: TIBStringField;
    IntegerField153: TIntegerField;
    SmallintField152: TSmallintField;
    IntegerField154: TIntegerField;
    SmallintField153: TSmallintField;
    IBStringField482: TIBStringField;
    IBStringField483: TIBStringField;
    IBStringField484: TIBStringField;
    IBStringField485: TIBStringField;
    IBStringField486: TIBStringField;
    DateTimeField52: TDateTimeField;
    DateTimeField53: TDateTimeField;
    DateTimeField54: TDateTimeField;
    DateTimeField55: TDateTimeField;
    IntegerField155: TIntegerField;
    IntegerField156: TIntegerField;
    IBStringField487: TIBStringField;
    FloatField356: TFloatField;
    IBStringField488: TIBStringField;
    IBStringField489: TIBStringField;
    IBStringField490: TIBStringField;
    IBStringField491: TIBStringField;
    IBStringField492: TIBStringField;
    IBStringField493: TIBStringField;
    IBStringField494: TIBStringField;
    IBStringField495: TIBStringField;
    IBStringField496: TIBStringField;
    IBStringField497: TIBStringField;
    IBStringField498: TIBStringField;
    IBStringField499: TIBStringField;
    IBStringField500: TIBStringField;
    IBStringField501: TIBStringField;
    IBStringField502: TIBStringField;
    FloatField357: TFloatField;
    FloatField358: TFloatField;
    FloatField359: TFloatField;
    IBStringField503: TIBStringField;
    IBStringField504: TIBStringField;
    FloatField360: TFloatField;
    IBStringField505: TIBStringField;
    DateTimeField56: TDateTimeField;
    IntegerField157: TIntegerField;
    FloatField361: TFloatField;
    FloatField362: TFloatField;
    FloatField363: TFloatField;
    IBStringField506: TIBStringField;
    SmallintField154: TSmallintField;
    SmallintField155: TSmallintField;
    SmallintField156: TSmallintField;
    SmallintField157: TSmallintField;
    DateTimeField57: TDateTimeField;
    SmallintField158: TSmallintField;
    FloatField364: TFloatField;
    SmallintField159: TSmallintField;
    FloatField365: TFloatField;
    SmallintField160: TSmallintField;
    IntegerField158: TIntegerField;
    IBStringField507: TIBStringField;
    IntegerField159: TIntegerField;
    IBStringField508: TIBStringField;
    SmallintField161: TSmallintField;
    FloatField366: TFloatField;
    FloatField367: TFloatField;
    FloatField368: TFloatField;
    FloatField369: TFloatField;
    FloatField370: TFloatField;
    FloatField371: TFloatField;
    FloatField372: TFloatField;
    FloatField373: TFloatField;
    FloatField374: TFloatField;
    IBStringField509: TIBStringField;
    IBStringField510: TIBStringField;
    FloatField375: TFloatField;
    IBStringField511: TIBStringField;
    IBStringField512: TIBStringField;
    IBStringField513: TIBStringField;
    SmallintField162: TSmallintField;
    IntegerField160: TIntegerField;
    IBStringField514: TIBStringField;
    IBStringField515: TIBStringField;
    IBStringField516: TIBStringField;
    IntegerField161: TIntegerField;
    IBStringField517: TIBStringField;
    IBStringField518: TIBStringField;
    IntegerField162: TIntegerField;
    SmallintField163: TSmallintField;
    IBStringField519: TIBStringField;
    DataSource12: TDataSource;
    ibdCP2: TIBDataSet;
    IntegerField163: TIntegerField;
    IntegerField164: TIntegerField;
    IBStringField520: TIBStringField;
    IBStringField521: TIBStringField;
    FloatField376: TFloatField;
    FloatField377: TFloatField;
    IBStringField522: TIBStringField;
    FloatField378: TFloatField;
    FloatField379: TFloatField;
    FloatField380: TFloatField;
    FloatField381: TFloatField;
    FloatField382: TFloatField;
    FloatField383: TFloatField;
    FloatField384: TFloatField;
    FloatField385: TFloatField;
    FloatField386: TFloatField;
    FloatField387: TFloatField;
    SmallintField164: TSmallintField;
    IBStringField523: TIBStringField;
    FloatField388: TFloatField;
    FloatField389: TFloatField;
    IBStringField524: TIBStringField;
    FloatField390: TFloatField;
    FloatField391: TFloatField;
    IBStringField525: TIBStringField;
    DateTimeField58: TDateTimeField;
    IntegerField165: TIntegerField;
    IBStringField526: TIBStringField;
    FloatField392: TFloatField;
    FloatField393: TFloatField;
    FloatField394: TFloatField;
    IBStringField527: TIBStringField;
    IBStringField528: TIBStringField;
    IBStringField529: TIBStringField;
    IBStringField530: TIBStringField;
    IBStringField531: TIBStringField;
    IntegerField166: TIntegerField;
    IntegerField167: TIntegerField;
    IntegerField168: TIntegerField;
    IBStringField532: TIBStringField;
    IntegerField169: TIntegerField;
    SmallintField165: TSmallintField;
    IntegerField170: TIntegerField;
    SmallintField166: TSmallintField;
    IBStringField533: TIBStringField;
    IBStringField534: TIBStringField;
    IBStringField535: TIBStringField;
    IBStringField536: TIBStringField;
    IBStringField537: TIBStringField;
    DateTimeField59: TDateTimeField;
    DateTimeField60: TDateTimeField;
    DateTimeField61: TDateTimeField;
    DateTimeField62: TDateTimeField;
    IntegerField171: TIntegerField;
    IntegerField172: TIntegerField;
    IBStringField538: TIBStringField;
    FloatField395: TFloatField;
    IBStringField539: TIBStringField;
    IBStringField540: TIBStringField;
    IBStringField541: TIBStringField;
    IBStringField542: TIBStringField;
    IBStringField543: TIBStringField;
    IBStringField544: TIBStringField;
    IBStringField545: TIBStringField;
    IBStringField546: TIBStringField;
    IBStringField547: TIBStringField;
    IBStringField548: TIBStringField;
    IBStringField549: TIBStringField;
    IBStringField550: TIBStringField;
    IBStringField551: TIBStringField;
    IBStringField552: TIBStringField;
    IBStringField553: TIBStringField;
    FloatField396: TFloatField;
    FloatField397: TFloatField;
    FloatField398: TFloatField;
    IBStringField554: TIBStringField;
    IBStringField555: TIBStringField;
    FloatField399: TFloatField;
    IBStringField556: TIBStringField;
    DateTimeField63: TDateTimeField;
    IntegerField173: TIntegerField;
    FloatField400: TFloatField;
    FloatField401: TFloatField;
    FloatField402: TFloatField;
    IBStringField557: TIBStringField;
    SmallintField167: TSmallintField;
    SmallintField168: TSmallintField;
    SmallintField169: TSmallintField;
    SmallintField170: TSmallintField;
    DateTimeField64: TDateTimeField;
    SmallintField171: TSmallintField;
    FloatField403: TFloatField;
    SmallintField172: TSmallintField;
    FloatField404: TFloatField;
    SmallintField173: TSmallintField;
    IntegerField174: TIntegerField;
    IBStringField558: TIBStringField;
    IntegerField175: TIntegerField;
    IBStringField559: TIBStringField;
    SmallintField174: TSmallintField;
    FloatField405: TFloatField;
    FloatField406: TFloatField;
    FloatField407: TFloatField;
    FloatField408: TFloatField;
    FloatField409: TFloatField;
    FloatField410: TFloatField;
    FloatField411: TFloatField;
    FloatField412: TFloatField;
    FloatField413: TFloatField;
    IBStringField560: TIBStringField;
    IBStringField561: TIBStringField;
    FloatField414: TFloatField;
    IBStringField562: TIBStringField;
    IBStringField563: TIBStringField;
    IBStringField564: TIBStringField;
    SmallintField175: TSmallintField;
    IntegerField176: TIntegerField;
    IBStringField565: TIBStringField;
    IBStringField566: TIBStringField;
    IBStringField567: TIBStringField;
    IntegerField177: TIntegerField;
    IBStringField568: TIBStringField;
    IBStringField569: TIBStringField;
    IntegerField178: TIntegerField;
    SmallintField176: TSmallintField;
    IBStringField570: TIBStringField;
    DataSource13: TDataSource;
    ibdPart1: TIBDataSet;
    IntegerField179: TIntegerField;
    IntegerField180: TIntegerField;
    IBStringField571: TIBStringField;
    IBStringField572: TIBStringField;
    FloatField415: TFloatField;
    FloatField416: TFloatField;
    IBStringField573: TIBStringField;
    FloatField417: TFloatField;
    FloatField418: TFloatField;
    FloatField419: TFloatField;
    FloatField420: TFloatField;
    FloatField421: TFloatField;
    FloatField422: TFloatField;
    FloatField423: TFloatField;
    FloatField424: TFloatField;
    FloatField425: TFloatField;
    FloatField426: TFloatField;
    SmallintField177: TSmallintField;
    IBStringField574: TIBStringField;
    FloatField427: TFloatField;
    FloatField428: TFloatField;
    IBStringField575: TIBStringField;
    FloatField429: TFloatField;
    FloatField430: TFloatField;
    IBStringField576: TIBStringField;
    DateTimeField65: TDateTimeField;
    IntegerField181: TIntegerField;
    IBStringField577: TIBStringField;
    FloatField431: TFloatField;
    FloatField432: TFloatField;
    FloatField433: TFloatField;
    IBStringField578: TIBStringField;
    IBStringField579: TIBStringField;
    IBStringField580: TIBStringField;
    IBStringField581: TIBStringField;
    IBStringField582: TIBStringField;
    IntegerField182: TIntegerField;
    IntegerField183: TIntegerField;
    IntegerField184: TIntegerField;
    IBStringField583: TIBStringField;
    IntegerField185: TIntegerField;
    SmallintField178: TSmallintField;
    IntegerField186: TIntegerField;
    SmallintField179: TSmallintField;
    IBStringField584: TIBStringField;
    IBStringField585: TIBStringField;
    IBStringField586: TIBStringField;
    IBStringField587: TIBStringField;
    IBStringField588: TIBStringField;
    DateTimeField66: TDateTimeField;
    DateTimeField67: TDateTimeField;
    DateTimeField68: TDateTimeField;
    IBStringField589: TIBStringField;
    IBStringField590: TIBStringField;
    IBStringField591: TIBStringField;
    IBStringField592: TIBStringField;
    IBStringField593: TIBStringField;
    IBStringField594: TIBStringField;
    IBStringField595: TIBStringField;
    IBStringField596: TIBStringField;
    IBStringField597: TIBStringField;
    IBStringField598: TIBStringField;
    IBStringField599: TIBStringField;
    IBStringField600: TIBStringField;
    IBStringField601: TIBStringField;
    IBStringField602: TIBStringField;
    FloatField434: TFloatField;
    FloatField435: TFloatField;
    FloatField436: TFloatField;
    IBStringField603: TIBStringField;
    IBStringField604: TIBStringField;
    FloatField437: TFloatField;
    IBStringField605: TIBStringField;
    DateTimeField69: TDateTimeField;
    IntegerField187: TIntegerField;
    FloatField438: TFloatField;
    FloatField439: TFloatField;
    FloatField440: TFloatField;
    IBStringField606: TIBStringField;
    SmallintField180: TSmallintField;
    SmallintField181: TSmallintField;
    IBStringField607: TIBStringField;
    IBStringField608: TIBStringField;
    SmallintField182: TSmallintField;
    IBStringField609: TIBStringField;
    SmallintField183: TSmallintField;
    IBStringField610: TIBStringField;
    SmallintField184: TSmallintField;
    SmallintField185: TSmallintField;
    SmallintField186: TSmallintField;
    SmallintField187: TSmallintField;
    SmallintField188: TSmallintField;
    DateTimeField70: TDateTimeField;
    SmallintField189: TSmallintField;
    FloatField441: TFloatField;
    SmallintField190: TSmallintField;
    FloatField442: TFloatField;
    SmallintField191: TSmallintField;
    IntegerField188: TIntegerField;
    IBStringField611: TIBStringField;
    IntegerField189: TIntegerField;
    IBStringField612: TIBStringField;
    SmallintField192: TSmallintField;
    FloatField443: TFloatField;
    FloatField444: TFloatField;
    FloatField445: TFloatField;
    FloatField446: TFloatField;
    FloatField447: TFloatField;
    FloatField448: TFloatField;
    FloatField449: TFloatField;
    FloatField450: TFloatField;
    IBStringField613: TIBStringField;
    IBStringField614: TIBStringField;
    IBStringField615: TIBStringField;
    FloatField451: TFloatField;
    IBStringField616: TIBStringField;
    IBStringField617: TIBStringField;
    IBStringField618: TIBStringField;
    SmallintField193: TSmallintField;
    IntegerField190: TIntegerField;
    IBStringField619: TIBStringField;
    IBStringField620: TIBStringField;
    IBStringField621: TIBStringField;
    IntegerField191: TIntegerField;
    IBStringField622: TIBStringField;
    IBStringField623: TIBStringField;
    IntegerField192: TIntegerField;
    SmallintField194: TSmallintField;
    IBStringField624: TIBStringField;
    DataSource14: TDataSource;
    ibdPart2: TIBDataSet;
    IntegerField193: TIntegerField;
    IntegerField194: TIntegerField;
    IBStringField625: TIBStringField;
    IBStringField626: TIBStringField;
    FloatField452: TFloatField;
    FloatField453: TFloatField;
    IBStringField627: TIBStringField;
    FloatField454: TFloatField;
    FloatField455: TFloatField;
    FloatField456: TFloatField;
    FloatField457: TFloatField;
    FloatField458: TFloatField;
    FloatField459: TFloatField;
    FloatField460: TFloatField;
    FloatField461: TFloatField;
    FloatField462: TFloatField;
    FloatField463: TFloatField;
    SmallintField195: TSmallintField;
    IBStringField628: TIBStringField;
    FloatField464: TFloatField;
    FloatField465: TFloatField;
    IBStringField629: TIBStringField;
    FloatField466: TFloatField;
    FloatField467: TFloatField;
    IBStringField630: TIBStringField;
    DateTimeField71: TDateTimeField;
    IntegerField195: TIntegerField;
    IBStringField631: TIBStringField;
    FloatField468: TFloatField;
    FloatField469: TFloatField;
    FloatField470: TFloatField;
    IBStringField632: TIBStringField;
    IBStringField633: TIBStringField;
    IBStringField634: TIBStringField;
    IBStringField635: TIBStringField;
    IBStringField636: TIBStringField;
    IntegerField196: TIntegerField;
    IntegerField197: TIntegerField;
    IntegerField198: TIntegerField;
    IBStringField637: TIBStringField;
    IntegerField199: TIntegerField;
    SmallintField196: TSmallintField;
    IntegerField200: TIntegerField;
    SmallintField197: TSmallintField;
    IBStringField638: TIBStringField;
    IBStringField639: TIBStringField;
    IBStringField640: TIBStringField;
    IBStringField641: TIBStringField;
    IBStringField642: TIBStringField;
    DateTimeField72: TDateTimeField;
    DateTimeField73: TDateTimeField;
    DateTimeField74: TDateTimeField;
    IBStringField643: TIBStringField;
    IBStringField644: TIBStringField;
    IBStringField645: TIBStringField;
    IBStringField646: TIBStringField;
    IBStringField647: TIBStringField;
    IBStringField648: TIBStringField;
    IBStringField649: TIBStringField;
    IBStringField650: TIBStringField;
    IBStringField651: TIBStringField;
    IBStringField652: TIBStringField;
    IBStringField653: TIBStringField;
    IBStringField654: TIBStringField;
    IBStringField655: TIBStringField;
    IBStringField656: TIBStringField;
    FloatField471: TFloatField;
    FloatField472: TFloatField;
    FloatField473: TFloatField;
    IBStringField657: TIBStringField;
    IBStringField658: TIBStringField;
    FloatField474: TFloatField;
    IBStringField659: TIBStringField;
    DateTimeField75: TDateTimeField;
    IntegerField201: TIntegerField;
    FloatField475: TFloatField;
    FloatField476: TFloatField;
    FloatField477: TFloatField;
    IBStringField660: TIBStringField;
    SmallintField198: TSmallintField;
    SmallintField199: TSmallintField;
    IBStringField661: TIBStringField;
    IBStringField662: TIBStringField;
    SmallintField200: TSmallintField;
    IBStringField663: TIBStringField;
    SmallintField201: TSmallintField;
    IBStringField664: TIBStringField;
    SmallintField202: TSmallintField;
    SmallintField203: TSmallintField;
    SmallintField204: TSmallintField;
    SmallintField205: TSmallintField;
    SmallintField206: TSmallintField;
    DateTimeField76: TDateTimeField;
    SmallintField207: TSmallintField;
    FloatField478: TFloatField;
    SmallintField208: TSmallintField;
    FloatField479: TFloatField;
    SmallintField209: TSmallintField;
    IntegerField202: TIntegerField;
    IBStringField665: TIBStringField;
    IntegerField203: TIntegerField;
    IBStringField666: TIBStringField;
    SmallintField210: TSmallintField;
    FloatField480: TFloatField;
    FloatField481: TFloatField;
    FloatField482: TFloatField;
    FloatField483: TFloatField;
    FloatField484: TFloatField;
    FloatField485: TFloatField;
    FloatField486: TFloatField;
    FloatField487: TFloatField;
    IBStringField667: TIBStringField;
    IBStringField668: TIBStringField;
    IBStringField669: TIBStringField;
    FloatField488: TFloatField;
    IBStringField670: TIBStringField;
    IBStringField671: TIBStringField;
    IBStringField672: TIBStringField;
    SmallintField211: TSmallintField;
    IntegerField204: TIntegerField;
    IBStringField673: TIBStringField;
    IBStringField674: TIBStringField;
    IBStringField675: TIBStringField;
    IntegerField205: TIntegerField;
    IBStringField676: TIBStringField;
    IBStringField677: TIBStringField;
    IntegerField206: TIntegerField;
    SmallintField212: TSmallintField;
    IBStringField678: TIBStringField;
    DataSource15: TDataSource;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    IBSQL1: TIBSQL;
    DataSource16: TDataSource;
    DBGrid17: TDBGrid;
    IBSQL2: TIBSQL;
    IBSQL3: TIBSQL;
    IBSQL4: TIBSQL;
    DataSource17: TDataSource;
    IBSQL5: TIBSQL;
    IBSQL6: TIBSQL;
    IBSQL7: TIBSQL;
    IBSQL8: TIBSQL;
    ibqSitSc2: TIBQuery;
    ibqSitSc2SCHEDA: TFloatField;
    ibqSitSc2CODICE_ARTICOLO: TIBStringField;
    ibqSitSc2ARR: TFloatField;
    ibqSitSc: TIBDataSet;
    ibqSitScSCHEDA: TFloatField;
    ibqSitScCODICE_ARTICOLO: TIBStringField;
    ibqSitScARR: TFloatField;
    ibqSitScINCL: TFloatField;
    ibqSitScRIENT: TFloatField;
    ibqSitScCP: TFloatField;
    ibqSitScSC: TFloatField;
    ibqSitScDESCR: TIBStringField;
    ibqSitScRIMASTI: TFloatField;
    ibqSitSc2INCL: TFloatField;
    ibqSitSc2RIENT: TFloatField;
    ibqSitSc2CP: TFloatField;
    ibqSitSc2SC: TFloatField;
    ibqSitSc2DESCR: TIBStringField;
    ibqSitSc2RIMASTI: TFloatField;
    DBGrid16: TDBGrid;
    ibqSitArt: TIBDataSet;
    DataSource18: TDataSource;
    IBSQL9: TIBSQL;
    IBSQL10: TIBSQL;
    IBSQL11: TIBSQL;
    IBSQL12: TIBSQL;
    IBSQL13: TIBSQL;
    IBSQL14: TIBSQL;
    IBSQL15: TIBSQL;
    IBSQL16: TIBSQL;
    DataSource19: TDataSource;
    ibqSitArt2: TIBQuery;
    ibqSitArtCODICE_ARTICOLO: TIBStringField;
    ibqSitArtDESCR: TIBStringField;
    ibqSitArtARR: TFloatField;
    ibqSitArtINCL: TFloatField;
    ibqSitArtRIENT: TFloatField;
    ibqSitArtCP: TFloatField;
    ibqSitArtSC: TFloatField;
    ibqSitArtRIMASTI: TFloatField;
    ibqSitArt2CODICE_ARTICOLO: TIBStringField;
    ibqSitArt2DESCR: TIBStringField;
    ibqSitArt2ARR: TFloatField;
    ibqSitArt2INCL: TFloatField;
    ibqSitArt2RIENT: TFloatField;
    ibqSitArt2CP: TFloatField;
    ibqSitArt2SC: TFloatField;
    ibqSitArt2RIMASTI: TFloatField;
    DBGrid18: TDBGrid;
    DBGrid19: TDBGrid;
    ibdSitCau: TIBDataSet;
    DataSource20: TDataSource;
    ibdSitCau2: TIBDataSet;
    DataSource21: TDataSource;
    DBGrid20: TDBGrid;
    ibdSitCauCOL: TIBStringField;
    ibdSitCauA: TIBStringField;
    ibdSitCauTOT: TFloatField;
    ibdSitCau2COL: TIBStringField;
    ibdSitCau2A: TIBStringField;
    ibdSitCau2TOT: TFloatField;
    DBGrid21: TDBGrid;
    DBGrid22: TDBGrid;
    DBGrid23: TDBGrid;
    ibdSitCau3: TIBDataSet;
    IBStringField679: TIBStringField;
    IBStringField680: TIBStringField;
    FloatField489: TFloatField;
    DataSource22: TDataSource;
    ibdSitCau4: TIBDataSet;
    IBStringField681: TIBStringField;
    IBStringField682: TIBStringField;
    FloatField490: TFloatField;
    DataSource23: TDataSource;
    TabSheet10: TTabSheet;
    ibdTotFas: TIBDataSet;
    ibdTotFasCLIFOR_ID: TIntegerField;
    ibdTotFasDENOMINAZIONE: TIBStringField;
    ibdTotFasF_1: TFloatField;
    DataSource24: TDataSource;
    DBGrid24: TDBGrid;
    DBGrid25: TDBGrid;
    ibdTotFas2: TIBDataSet;
    IntegerField207: TIntegerField;
    IBStringField683: TIBStringField;
    FloatField491: TFloatField;
    DataSource25: TDataSource;
    TabSheet11: TTabSheet;
    DBGrid26: TDBGrid;
    DBGrid27: TDBGrid;
    ibdTotFas3: TIBDataSet;
    IntegerField208: TIntegerField;
    IBStringField684: TIBStringField;
    FloatField492: TFloatField;
    DataSource26: TDataSource;
    ibdTotFas4: TIBDataSet;
    IntegerField209: TIntegerField;
    IBStringField685: TIBStringField;
    FloatField493: TFloatField;
    DataSource27: TDataSource;
    DBSumList1: TDBSumList;
    ArrivDDT: TRxCalcEdit;
    INCLDDT: TRxCalcEdit;
    RIENTDDT: TRxCalcEdit;
    CPDDT: TRxCalcEdit;
    SCDDT: TRxCalcEdit;
    RIMASTIDDT: TRxCalcEdit;
    RxCalcEdit1: TRxCalcEdit;
    RxCalcEdit2: TRxCalcEdit;
    RxCalcEdit3: TRxCalcEdit;
    RxCalcEdit4: TRxCalcEdit;
    RxCalcEdit5: TRxCalcEdit;
    RxCalcEdit6: TRxCalcEdit;
    DBSumList2: TDBSumList;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    RxCalcEdit7: TRxCalcEdit;
    RxCalcEdit8: TRxCalcEdit;
    DBSumList3: TDBSumList;
    DBSumList4: TDBSumList;
    RxCalcEdit9: TRxCalcEdit;
    RxCalcEdit10: TRxCalcEdit;
    DBSumList5: TDBSumList;
    DBSumList6: TDBSumList;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure ibqSitScCalcFields(DataSet: TDataSet);
    procedure TabSheet8Show(Sender: TObject);
    procedure ibqSitSc2CalcFields(DataSet: TDataSet);
    procedure TabSheet7Show(Sender: TObject);
    procedure ibqSitArtCalcFields(DataSet: TDataSet);
    procedure ibqSitArt2CalcFields(DataSet: TDataSet);
    procedure TabSheet9Show(Sender: TObject);
    procedure TabSheet10Show(Sender: TObject);
    procedure DBSumList1SumListChanged(Sender: TObject);
    procedure DBSumList2SumListChanged(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBSumList3SumListChanged(Sender: TObject);
    procedure DBSumList4SumListChanged(Sender: TObject);
    procedure DBSumList5SumListChanged(Sender: TObject);
    procedure DBSumList6SumListChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VisCapiB: TVisCapiB;

implementation

uses uAzDM;

{$R *.dfm}

procedure TVisCapiB.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TVisCapiB.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
ibdArrRac.Open;
ibdRient.Open;
ibdInvConto.Open;
ibdCP.Open;
ibdPart.Open;
dsoCauInt.DataSet.Open;
dsFasonista.DataSet.Open;
end;

procedure TVisCapiB.CheckBox1Click(Sender: TObject);
begin
dsArticoli.DataSet.Active := CheckBox1.Checked;
end;

procedure TVisCapiB.SpeedButton5Click(Sender: TObject);
begin
////////////////////////////////////////////// Arrivi
ibdArrRac.Close;
ibdArrRac.SelectSQL.Clear;
ibdArrRac.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdArrRac.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdArrRac.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdArrRac.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdArrRac.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =510)');
ibdArrRac.SelectSQL.Add(' or (TAB_DOCUMENTI.TIPO_DOC =550))');

if CheckBox3.Checked then
ibdArrRac.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdArrRac.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdArrRac.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdArrRac.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdArrRac.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdArrRac.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdArrRac.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdArrRac.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdArrRac.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdArrRac.SelectSQL.Add('order by num_doc');
ibdArrRac.Open;

ibdArrRac1.Close;
ibdArrRac1.SelectSQL.Clear;
ibdArrRac1.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdArrRac1.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdArrRac1.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdArrRac1.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdArrRac1.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =510)');

if CheckBox3.Checked then
ibdArrRac1.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdArrRac1.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdArrRac1.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdArrRac1.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdArrRac1.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdArrRac1.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdArrRac1.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdArrRac1.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdArrRac1.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdArrRac1.SelectSQL.Add('order by num_doc');
ibdArrRac1.Open;


ibdArrRac2.Close;
ibdArrRac2.SelectSQL.Clear;
ibdArrRac2.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdArrRac2.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdArrRac2.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdArrRac2.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdArrRac2.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =550)');

if CheckBox3.Checked then
ibdArrRac2.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdArrRac2.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdArrRac2.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdArrRac2.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdArrRac2.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdArrRac2.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdArrRac2.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdArrRac2.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdArrRac2.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdArrRac2.SelectSQL.Add('order by num_doc');
ibdArrRac2.Open;

///////////////////////////////////////////////////////

////////////////////////////////////////////// Invio CL
ibdInvConto.Close;
ibdInvConto.SelectSQL.Clear;
ibdInvConto.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdInvConto.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdInvConto.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdInvConto.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdInvConto.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512)');
ibdInvConto.SelectSQL.Add(' or (TAB_DOCUMENTI.TIPO_DOC =520))');

if CheckBox3.Checked then
ibdInvConto.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdInvConto.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdInvConto.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdInvConto.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdInvConto.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdInvConto.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdInvConto.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdInvConto.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdInvConto.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdInvConto.SelectSQL.Add('order by num_doc');
ibdInvConto.Open;

ibdInvConto1.Close;
ibdInvConto1.SelectSQL.Clear;
ibdInvConto1.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdInvConto1.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdInvConto1.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdInvConto1.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdInvConto1.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512)');
ibdInvConto1.SelectSQL.Add(' or (TAB_DOCUMENTI.TIPO_DOC =520))');

if CheckBox3.Checked then
ibdInvConto1.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdInvConto1.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdInvConto1.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdInvConto1.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdInvConto1.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdInvConto1.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdInvConto1.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdInvConto1.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdInvConto1.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdInvConto1.SelectSQL.Add('order by num_doc');
ibdInvConto1.Open;

ibdInvConto2.Close;
ibdInvConto2.SelectSQL.Clear;
ibdInvConto2.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdInvConto2.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdInvConto2.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdInvConto2.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdInvConto2.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =551))');

if CheckBox3.Checked then
ibdInvConto2.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdInvConto2.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdInvConto2.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdInvConto2.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdInvConto2.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdInvConto2.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdInvConto2.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdInvConto2.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdInvConto2.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdInvConto2.SelectSQL.Add('order by num_doc');
ibdInvConto2.Open;

///////////////////////////////////////////////////////

////////////////////////////////////////////// Rientro Capi
ibdRient.Close;
ibdRient.SelectSQL.Clear;
ibdRient.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdRient.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdRient.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdRient.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdRient.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =513)');
ibdRient.SelectSQL.Add(' or (TAB_DOCUMENTI.TIPO_DOC =552))');

if CheckBox3.Checked then
ibdRient.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdRient.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdRient.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdRient.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdRient.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdRient.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdRient.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdRient.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdRient.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdRient.SelectSQL.Add('order by num_doc');
ibdRient.Open;

ibdRient1.Close;
ibdRient1.SelectSQL.Clear;
ibdRient1.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdRient1.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdRient1.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdRient1.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdRient1.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =513)');

if CheckBox3.Checked then
ibdRient1.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdRient1.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdRient1.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdRient1.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdRient1.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdRient1.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdRient1.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdRient1.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdRient1.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdRient1.SelectSQL.Add('order by num_doc');
ibdRient1.Open;

ibdRient2.Close;
ibdRient2.SelectSQL.Clear;
ibdRient2.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdRient2.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdRient2.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdRient2.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdRient2.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =552)');

if CheckBox3.Checked then
ibdRient2.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdRient2.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdRient2.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdRient2.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdRient2.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdRient2.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdRient2.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdRient2.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdRient2.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdRient2.SelectSQL.Add('order by num_doc');
ibdRient2.Open;

///////////////////////////////////////////////////////

////////////////////////////////////////////// Capi Pronti
ibdCP.Close;
ibdCP.SelectSQL.Clear;
ibdCP.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdCP.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdCP.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdCP.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdCP.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =514)');
ibdCP.SelectSQL.Add(' or (TAB_DOCUMENTI.TIPO_DOC =553))');

if CheckBox3.Checked then
ibdCP.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdCP.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdCP.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdCP.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdCP.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdCP.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdCP.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdCP.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdCP.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdCP.SelectSQL.Add('order by num_doc');
ibdCP.Open;

ibdCP1.Close;
ibdCP1.SelectSQL.Clear;
ibdCP1.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdCP1.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdCP1.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdCP1.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdCP1.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =514)');

if CheckBox3.Checked then
ibdCP1.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdCP1.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdCP1.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdCP1.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdCP1.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdCP1.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdCP1.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdCP1.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdCP1.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdCP1.SelectSQL.Add('order by num_doc');
ibdCP1.Open;

ibdCP2.Close;
ibdCP2.SelectSQL.Clear;
ibdCP2.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdCP2.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdCP2.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdCP2.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdCP2.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =553)');

if CheckBox3.Checked then
ibdCP2.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdCP2.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdCP2.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdCP2.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdCP2.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdCP2.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdCP2.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdCP2.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdCP2.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdCP2.SelectSQL.Add('order by num_doc');
ibdCP2.Open;

///////////////////////////////////////////////////////

////////////////////////////////////////////// Rientro Racam
ibdPart.Close;
ibdPart.SelectSQL.Clear;
ibdPart.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdPart.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdPart.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdPart.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdPart.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =515) or (TAB_DOCUMENTI.TIPO_DOC =516)');
ibdPart.SelectSQL.Add(' or (TAB_DOCUMENTI.TIPO_DOC =554))');

if CheckBox3.Checked then
ibdPart.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdPart.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdPart.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdPart.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdPart.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdPart.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdPart.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdPart.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdPart.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdPart.SelectSQL.Add('order by num_doc');
ibdPart.Open;

ibdPart1.Close;
ibdPart1.SelectSQL.Clear;
ibdPart1.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdPart1.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdPart1.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdPart1.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdPart1.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =515) or (TAB_DOCUMENTI.TIPO_DOC =516))');

if CheckBox3.Checked then
ibdPart1.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdPart1.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdPart1.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdPart1.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdPart1.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdPart1.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdPart1.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdPart1.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdPart1.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdPart1.SelectSQL.Add('order by num_doc');
ibdPart1.Open;

ibdPart2.Close;
ibdPart2.SelectSQL.Clear;
ibdPart2.SelectSQL.Add('select * from tab_det_doc JOIN TAB_DOCUMENTI ON');
ibdPart2.SelectSQL.Add('TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdPart2.SelectSQL.Add('inner  JOIN TAB_cli_for ON');
ibdPart2.SelectSQL.Add('TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdPart2.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =554)');

if CheckBox3.Checked then
ibdPart2.SelectSQL.Add(' and TAB_DET_DOC.COL='''+RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAUSALE').AsString+'''');
if CheckBox4.Checked then
ibdPart2.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdPart2.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdPart2.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdPart2.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

if RadioGroup1.ItemIndex = 0 then
ibdPart2.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibdPart2.SelectSQL.Add('order by SCHEDA');
if RadioGroup1.ItemIndex = 2 then
ibdPart2.SelectSQL.Add('order by denominazione');
if RadioGroup1.ItemIndex = 3 then
ibdPart2.SelectSQL.Add('order by data_doc');
if RadioGroup1.ItemIndex = 4 then
ibdPart2.SelectSQL.Add('order by num_doc');
ibdPart2.Open;
//////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////  Sit Schede
ibqSitSc.Close;
ibqSitSc.SelectSQL.Clear;
ibqSitSc.SelectSQL.Add('select Scheda,codice_articolo,Descr,sum(quantita) as ARR from tab_det_doc');
ibqSitSc.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibqSitSc.SelectSQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');

if CheckBox2.Checked then
ibqSitSc.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibqSitSc.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibqSitSc.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibqSitSc.SelectSQL.Add('group by Scheda,codice_articolo,descr');

if RadioGroup1.ItemIndex = 0 then
ibqSitSc.SelectSQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibqSitSc.SelectSQL.Add('order by SCHEDA');

ibqSitSc.Open;

ibqSitSc2.Close;
ibqSitSc2.SQL.Clear;
ibqSitSc2.SQL.Add('select Scheda,codice_articolo,Descr,sum(quantita) as ARR from tab_det_doc');
ibqSitSc2.SQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibqSitSc2.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =550');

if CheckBox2.Checked then
ibqSitSc2.SQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibqSitSc2.SQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibqSitSc2.SQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibqSitSc2.SQL.Add('group by Scheda,codice_articolo,descr');

if RadioGroup1.ItemIndex = 0 then
ibqSitSc2.SQL.Add('order by codice_articolo');
if RadioGroup1.ItemIndex = 1 then
ibqSitSc2.SQL.Add('order by SCHEDA');

ibqSitSc2.Open;

//////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////  Sit Articoli
ibqSitArt.Close;
ibqSitArt.SelectSQL.Clear;
ibqSitArt.SelectSQL.Add('select codice_articolo,Descr,sum(quantita) as ARR from tab_det_doc');
ibqSitArt.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibqSitArt.SelectSQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =510');

If CheckBox1.Checked then
Begin
ibqSitArt.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibqSitArt.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibqSitArt.SelectSQL.Add('group by codice_articolo,descr');

ibqSitArt.SelectSQL.Add('order by codice_articolo');

ibqSitArt.Open;

ibqSitArt2.Close;
ibqSitArt2.SQL.Clear;
ibqSitArt2.SQL.Add('select codice_articolo,Descr,sum(quantita) as ARR from tab_det_doc');
ibqSitArt2.SQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibqSitArt2.SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =550');

If CheckBox1.Checked then
Begin
ibqSitArt2.SQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibqSitArt2.SQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibqSitArt2.SQL.Add('group by codice_articolo,descr');

ibqSitArt2.SQL.Add('order by codice_articolo');

ibqSitArt2.Open;

//////////////////////////////////////////////////////////
////////////////////////////////////////////////////////// Situaz. x Causali
ibdSitCau.Close;
ibdSitCau.SelectSQL.Clear;
ibdSitCau.SelectSQL.Add('select distinct col,a,sum(quantita) as tot from tab_det_doc');
ibdSitCau.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdSitCau.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512)or');
ibdSitCau.SelectSQL.Add(' (TAB_DOCUMENTI.TIPO_DOC =520))');

if CheckBox4.Checked then
ibdSitCau.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdSitCau.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdSitCau.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdSitCau.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdSitCau.SelectSQL.Add('group by col,a');
ibdSitCau.SelectSQL.Add('order by col');
ibdSitCau.Open;

ibdSitCau2.Close;
ibdSitCau2.SelectSQL.Clear;
ibdSitCau2.SelectSQL.Add('select distinct col,a,sum(quantita) as tot from tab_det_doc');
ibdSitCau2.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdSitCau2.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =551)');

if CheckBox4.Checked then
ibdSitCau2.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdSitCau2.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdSitCau2.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdSitCau2.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdSitCau2.SelectSQL.Add('group by col,a');
ibdSitCau2.SelectSQL.Add('order by col');
ibdSitCau2.Open;

ibdSitCau3.Close;
ibdSitCau3.SelectSQL.Clear;
ibdSitCau3.SelectSQL.Add('select distinct col,a,sum(quantita) as tot from tab_det_doc');
ibdSitCau3.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdSitCau3.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =513)');

if CheckBox4.Checked then
ibdSitCau3.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdSitCau3.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdSitCau3.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdSitCau3.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdSitCau3.SelectSQL.Add('group by col,a');
ibdSitCau3.SelectSQL.Add('order by col');
ibdSitCau3.Open;

ibdSitCau4.Close;
ibdSitCau4.SelectSQL.Clear;
ibdSitCau4.SelectSQL.Add('select distinct col,a,sum(quantita) as tot from tab_det_doc');
ibdSitCau4.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdSitCau4.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =552)');

if CheckBox4.Checked then
ibdSitCau4.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdSitCau4.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdSitCau4.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdSitCau4.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdSitCau4.SelectSQL.Add('group by col,a');
ibdSitCau4.SelectSQL.Add('order by col');
ibdSitCau4.Open;
//////////////////////////////////////////////////////////
////////////////////////////////////////////////////////// Totali x Fason.
ibdTotFas.Close;
ibdTotFas.SelectSQL.Clear;
ibdTotFas.SelectSQL.Add('select distinct clifor_id,tab_cli_for.denominazione,sum(quantita) as F_1 from tab_det_doc');
ibdTotFas.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdTotFas.SelectSQL.Add('inner  JOIN TAB_cli_for ON TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdTotFas.SelectSQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =511) or (TAB_DOCUMENTI.TIPO_DOC =512)or');
ibdTotFas.SelectSQL.Add(' (TAB_DOCUMENTI.TIPO_DOC =520))');

if CheckBox4.Checked then
ibdTotFas.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdTotFas.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdTotFas.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdTotFas.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdTotFas.SelectSQL.Add('group by clifor_id,tab_cli_for.denominazione');
ibdTotFas.SelectSQL.Add('order by tab_cli_for.denominazione');
ibdTotFas.Open;

ibdTotFas2.Close;
ibdTotFas2.SelectSQL.Clear;
ibdTotFas2.SelectSQL.Add('select distinct clifor_id,tab_cli_for.denominazione,sum(quantita) as F_1 from tab_det_doc');
ibdTotFas2.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdTotFas2.SelectSQL.Add('inner  JOIN TAB_cli_for ON TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdTotFas2.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =551)');

if CheckBox4.Checked then
ibdTotFas2.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdTotFas2.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdTotFas2.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdTotFas2.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdTotFas2.SelectSQL.Add('group by clifor_id,tab_cli_for.denominazione');
ibdTotFas2.SelectSQL.Add('order by tab_cli_for.denominazione');
ibdTotFas2.Open;

ibdTotFas3.Close;
ibdTotFas3.SelectSQL.Clear;
ibdTotFas3.SelectSQL.Add('select distinct clifor_id,tab_cli_for.denominazione,sum(quantita) as F_1 from tab_det_doc');
ibdTotFas3.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdTotFas3.SelectSQL.Add('inner  JOIN TAB_cli_for ON TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdTotFas3.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =513)');


if CheckBox4.Checked then
ibdTotFas3.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdTotFas3.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdTotFas3.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdTotFas3.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdTotFas3.SelectSQL.Add('group by clifor_id,tab_cli_for.denominazione');
ibdTotFas3.SelectSQL.Add('order by tab_cli_for.denominazione');
ibdTotFas3.Open;

ibdTotFas4.Close;
ibdTotFas4.SelectSQL.Clear;
ibdTotFas4.SelectSQL.Add('select distinct clifor_id,tab_cli_for.denominazione,sum(quantita) as F_1 from tab_det_doc');
ibdTotFas4.SelectSQL.Add('JOIN TAB_DOCUMENTI ON TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id');
ibdTotFas4.SelectSQL.Add('inner  JOIN TAB_cli_for ON TAB_DOCUMENTI.clifor_id=TAB_cli_for.id_cli_for');
ibdTotFas4.SelectSQL.Add('WHERE (TAB_DOCUMENTI.TIPO_DOC =552)');


if CheckBox4.Checked then
ibdTotFas4.SelectSQL.Add(' and TAB_DOCUMENTI.CLIFOR_ID='''+RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_CLI_FOR').AsString+'''');
if CheckBox2.Checked then
ibdTotFas4.SelectSQL.Add(' and TAB_DET_DOC.SCHEDA='''+Edit1.Text+'''');
If CheckBox1.Checked then
Begin
ibdTotFas4.SelectSQL.Add(' AND codice_articolo>='''+rxdblcDaArtCodice.Value+'''');
ibdTotFas4.SelectSQL.Add(' AND codice_articolo<='''+rxdblcAdArtCodice.Value+'''');
End;

ibdTotFas4.SelectSQL.Add('group by clifor_id,tab_cli_for.denominazione');
ibdTotFas4.SelectSQL.Add('order by tab_cli_for.denominazione');
ibdTotFas4.Open;

end;

procedure TVisCapiB.TabSheet2Show(Sender: TObject);
begin
ibdArrRac1.Open;
ibdArrRac2.Open;
end;

procedure TVisCapiB.TabSheet3Show(Sender: TObject);
begin
ibdInvConto1.Open;
ibdInvConto2.Open;
end;

procedure TVisCapiB.TabSheet4Show(Sender: TObject);
begin
ibdRient1.Open;
ibdRient2.Open;
end;

procedure TVisCapiB.TabSheet5Show(Sender: TObject);
begin
ibdCP1.Open;
ibdCP2.Open;
end;

procedure TVisCapiB.TabSheet6Show(Sender: TObject);
begin
ibdPart1.Open;
ibdPart2.Open;
end;

procedure TVisCapiB.ibqSitScCalcFields(DataSet: TDataSet);
begin
IBSQL1.Close;
IBSQL1.ParamByName('parID_Doc').AsFloat :=
        ibqSitScSCHEDA.AsFloat;
IBSQL1.ExecQuery;
ibqSitScINCL.AsFloat := IBSQL1.fieldbyname('F_1').AsInteger;

IBSQL2.Close;
IBSQL2.ParamByName('parID_Doc').AsFloat :=
        ibqSitScSCHEDA.AsFloat;
IBSQL2.ExecQuery;
ibqSitScRIENT.AsFloat := IBSQL2.fieldbyname('F_1').AsInteger;

IBSQL3.Close;
IBSQL3.ParamByName('parID_Doc').AsFloat :=
        ibqSitScSCHEDA.AsFloat;
IBSQL3.ExecQuery;
ibqSitScCP.AsFloat := IBSQL3.fieldbyname('F_1').AsInteger;

IBSQL4.Close;
IBSQL4.ParamByName('parID_Doc').AsFloat :=
        ibqSitScSCHEDA.AsFloat;
IBSQL4.ExecQuery;
ibqSitScSC.AsFloat := IBSQL4.fieldbyname('F_1').AsInteger;

ibqSitScRIMASTI.AsFloat := ibqSitScARR.AsFloat -ibqSitScSC.AsFloat;

end;

procedure TVisCapiB.TabSheet8Show(Sender: TObject);
begin
ibqSitSc.Open;
ibqSitSc2.Open;
end;

procedure TVisCapiB.ibqSitSc2CalcFields(DataSet: TDataSet);
begin
IBSQL5.Close;
IBSQL5.ParamByName('parID_Doc').AsFloat :=
        ibqSitSc2SCHEDA.AsFloat;
IBSQL5.ExecQuery;
ibqSitSc2INCL.AsFloat := IBSQL5.fieldbyname('F_1').AsInteger;

IBSQL6.Close;
IBSQL6.ParamByName('parID_Doc').AsFloat :=
        ibqSitSc2SCHEDA.AsFloat;
IBSQL6.ExecQuery;
ibqSitSc2RIENT.AsFloat := IBSQL6.fieldbyname('F_1').AsInteger;

IBSQL7.Close;
IBSQL7.ParamByName('parID_Doc').AsFloat :=
        ibqSitSc2SCHEDA.AsFloat;
IBSQL7.ExecQuery;
ibqSitSc2CP.AsFloat := IBSQL7.fieldbyname('F_1').AsInteger;

IBSQL8.Close;
IBSQL8.ParamByName('parID_Doc').AsFloat :=
        ibqSitSc2SCHEDA.AsFloat;
IBSQL8.ExecQuery;
ibqSitSc2SC.AsFloat := IBSQL8.fieldbyname('F_1').AsInteger;

ibqSitSc2RIMASTI.AsFloat := ibqSitSc2ARR.AsFloat -ibqSitSc2SC.AsFloat;


end;

procedure TVisCapiB.TabSheet7Show(Sender: TObject);
begin
ibqSitArt.Open;
ibqSitArt2.Open;
end;

procedure TVisCapiB.ibqSitArtCalcFields(DataSet: TDataSet);
begin
IBSQL9.Close;
IBSQL9.ParamByName('parID_Doc').AsString :=
        ibqSitArtCODICE_ARTICOLO.AsString;
IBSQL9.ExecQuery;
ibqSitArtINCL.AsFloat := IBSQL9.fieldbyname('F_1').AsInteger;

IBSQL10.Close;
IBSQL10.ParamByName('parID_Doc').AsString :=
        ibqSitArtCODICE_ARTICOLO.AsString;
IBSQL10.ExecQuery;
ibqSitArtRIENT.AsFloat := IBSQL10.fieldbyname('F_1').AsInteger;

IBSQL11.Close;
IBSQL11.ParamByName('parID_Doc').AsString :=
        ibqSitArtCODICE_ARTICOLO.AsString;
IBSQL11.ExecQuery;
ibqSitArtCP.AsFloat := IBSQL11.fieldbyname('F_1').AsInteger;

IBSQL12.Close;
IBSQL12.ParamByName('parID_Doc').AsString :=
        ibqSitArtCODICE_ARTICOLO.AsString;
IBSQL12.ExecQuery;
ibqSitArtSC.AsFloat := IBSQL12.fieldbyname('F_1').AsInteger;

ibqSitArtRIMASTI.AsFloat := ibqSitArtARR.AsFloat -ibqSitArtSC.AsFloat;

end;

procedure TVisCapiB.ibqSitArt2CalcFields(DataSet: TDataSet);
begin
IBSQL16.Close;
IBSQL16.ParamByName('parID_Doc').AsString :=
        ibqSitArt2CODICE_ARTICOLO.AsString;
IBSQL16.ExecQuery;
ibqSitArt2INCL.AsFloat := IBSQL16.fieldbyname('F_1').AsInteger;

IBSQL15.Close;
IBSQL15.ParamByName('parID_Doc').AsString :=
        ibqSitArt2CODICE_ARTICOLO.AsString;
IBSQL15.ExecQuery;
ibqSitArt2RIENT.AsFloat := IBSQL15.fieldbyname('F_1').AsInteger;

IBSQL14.Close;
IBSQL14.ParamByName('parID_Doc').AsString :=
        ibqSitArt2CODICE_ARTICOLO.AsString;
IBSQL14.ExecQuery;
ibqSitArt2CP.AsFloat := IBSQL14.fieldbyname('F_1').AsInteger;

IBSQL13.Close;
IBSQL13.ParamByName('parID_Doc').AsString :=
        ibqSitArt2CODICE_ARTICOLO.AsString;
IBSQL13.ExecQuery;
ibqSitArt2SC.AsFloat := IBSQL13.fieldbyname('F_1').AsInteger;

ibqSitArt2RIMASTI.AsFloat := ibqSitArt2ARR.AsFloat -ibqSitArt2SC.AsFloat;
end;

procedure TVisCapiB.TabSheet9Show(Sender: TObject);
begin
ibdSitCau.Open;
ibdSitCau2.Open;
ibdSitCau3.Open;
ibdSitCau4.Open;
end;

procedure TVisCapiB.TabSheet10Show(Sender: TObject);
begin
ibdTotFas.Open;
ibdTotFas2.Open;
ibdTotFas3.Open;
ibdTotFas4.Open;
end;

procedure TVisCapiB.DBSumList1SumListChanged(Sender: TObject);
begin
{Edit1.Text := FormatFloat('#,##0',DBSumList1.SumCollection.Items[0].SumValue);
  Edit2.Text := FormatFloat('#,##0',DBSumList1.SumCollection.Items[1].SumValue);
  Edit3.Text := FormatFloat('#,##0',DBSumList1.SumCollection.Items[2].SumValue);}
ArrivDDT.Value := DBSumList1.SumCollection.Items[0].SumValue;
INCLDDT.Value := DBSumList1.SumCollection.Items[1].SumValue;
RIENTDDT.Value := DBSumList1.SumCollection.Items[2].SumValue;
CPDDT.Value := DBSumList1.SumCollection.Items[3].SumValue;
SCDDT.Value := DBSumList1.SumCollection.Items[4].SumValue;
RIMASTIDDT.Value := ArrivDDT.Value - SCDDT.Value;


end;

procedure TVisCapiB.DBSumList2SumListChanged(Sender: TObject);
begin
RxCalcEdit1.Value := DBSumList2.SumCollection.Items[0].SumValue;
RxCalcEdit2.Value := DBSumList2.SumCollection.Items[1].SumValue;
RxCalcEdit3.Value := DBSumList2.SumCollection.Items[2].SumValue;
RxCalcEdit4.Value := DBSumList2.SumCollection.Items[3].SumValue;
RxCalcEdit5.Value := DBSumList2.SumCollection.Items[4].SumValue;
RxCalcEdit6.Value := RxCalcEdit1.Value - RxCalcEdit5.Value;
end;

procedure TVisCapiB.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TVisCapiB.SpeedButton6Click(Sender: TObject);
begin
With (dmodAz.rePRN) Do
Begin
 LoadFromFile(ExtractFilePath(Application.ExeName)+'frBluSCArt1.frf');
 ShowReport;
End;

end;

procedure TVisCapiB.SpeedButton7Click(Sender: TObject);
begin
With (dmodAz.rePRN) Do
Begin
 LoadFromFile(ExtractFilePath(Application.ExeName)+'frBluSCArt2.frf');
 ShowReport;
End;

end;

procedure TVisCapiB.DBSumList3SumListChanged(Sender: TObject);
begin
RxCalcEdit7.Value := DBSumList3.SumCollection.Items[0].SumValue;
end;

procedure TVisCapiB.DBSumList4SumListChanged(Sender: TObject);
begin
RxCalcEdit8.Value := DBSumList4.SumCollection.Items[0].SumValue;
end;

procedure TVisCapiB.DBSumList5SumListChanged(Sender: TObject);
begin
RxCalcEdit9.Value := DBSumList5.SumCollection.Items[0].SumValue;
end;

procedure TVisCapiB.DBSumList6SumListChanged(Sender: TObject);
begin
RxCalcEdit10.Value := DBSumList6.SumCollection.Items[0].SumValue;
end;

end.


