unit UinviaArt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Buttons, Db, IBCustomDataSet, IBQuery, Grids,
  DBGrids, DBCtrls, RxLookup, Menus, Variants, FR_Class, NyBck,StrUtils,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP,
  IdTCPServer, IdFTPServer, IdAntiFreezeBase, IdAntiFreeze, IBDatabase,INIFiles,
  ComCtrls, RXSpin, IBSQL,ShellApi, OleCtrls, COECRCOMLib_TLB;

type
  TfInviaArt = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    daData: TMaskEdit;
    aData: TMaskEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    E1: TEdit;
    E2: TEdit;
    E3: TEdit;
    E4: TEdit;
    E5: TEdit;
    E7: TEdit;
    E6: TEdit;
    Edit3: TEdit;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    dsoDepositi: TDataSource;
    SpeedButton10: TSpeedButton;
    E8: TEdit;
    E9: TEdit;
    E10: TEdit;
    SpeedButton11: TSpeedButton;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    NyBck1: TNyBck;
    SaveDialog1: TSaveDialog;
    SpeedButton6: TSpeedButton;
    IBDataSet1: TIBDataSet;
    OpenDialog1: TOpenDialog;
    SpeedButton7: TSpeedButton;
    IdFTP1: TIdFTP;
    UploadOpenDialog1: TSaveDialog;
    IdAntiFreeze1: TIdAntiFreeze;
    IBDataSet1CODICE_ARTICOLO: TIBStringField;
    IBDataSet1DESCR: TIBStringField;
    IBDataSet1DESCR2: TIBStringField;
    IBDataSet1CODICE_IVA_ID: TIBStringField;
    IBDataSet1UNITA_DI_MISURA1_ID: TIBStringField;
    IBDataSet1UNITA_DI_MISURA2_ID: TIBStringField;
    IBDataSet1UNITA_DI_MISURA3_ID: TIBStringField;
    IBDataSet1SCONTO1: TFloatField;
    IBDataSet1SCONTO2: TFloatField;
    IBDataSet1SCONTO3: TFloatField;
    IBDataSet1PROVVIGIONE: TFloatField;
    IBDataSet1PESO_NETTO_KG: TFloatField;
    IBDataSet1PESO_LORDO_KG: TFloatField;
    IBDataSet1SCORTA_MIN: TFloatField;
    IBDataSet1SCORTA_MAX: TFloatField;
    IBDataSet1LOTTO_RIORDINO: TFloatField;
    IBDataSet1GG_APPROVVIGIONAMENTO: TIntegerField;
    IBDataSet1QTA_X_CONFEZIONE: TIntegerField;
    IBDataSet1ANNO: TIntegerField;
    IBDataSet1DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBDataSet1PREZZO_BASE: TFloatField;
    IBDataSet1COSTO_STANDART: TFloatField;
    IBDataSet1TIPO_ARTICOLO_ID: TSmallintField;
    IBDataSet1FATT_CONV1: TFloatField;
    IBDataSet1FATT_CONV2: TFloatField;
    IBDataSet1COSTO_ID: TIntegerField;
    IBDataSet1RICAVO_ID: TIntegerField;
    IBDataSet1GIORNI_MAX_INVENDUTO: TIntegerField;
    IBDataSet1ASPETTO_ID: TIBStringField;
    IBDataSet1RIORDINO_MESE_DA: TSmallintField;
    IBDataSet1RIORDINO_MESE_A: TSmallintField;
    IBDataSet1RIORDINO_GIORNO_DA: TSmallintField;
    IBDataSet1RIORDINO_GIORNO_A: TSmallintField;
    IBDataSet1STAGIONE_ID: TIBStringField;
    IBDataSet1GRUPPO_ALTERNATIVO: TIBStringField;
    IBDataSet1PRODUTTORE_ID: TIBStringField;
    IBDataSet1CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBDataSet1CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBDataSet1CODICE_BASE: TIBStringField;
    IBDataSet1DERIVATO: TSmallintField;
    IBDataSet1VARIANTE1_ID: TIBStringField;
    IBDataSet1VARIANTE2_ID: TIBStringField;
    IBDataSet1VARIANTE3_ID: TIBStringField;
    IBDataSet1NUM_VARIANTI: TIntegerField;
    IBDataSet1TIPO_COSTO_ID: TSmallintField;
    IBDataSet1TIPO_RICAVO_ID: TSmallintField;
    IBDataSet1OMAGGIO: TSmallintField;
    IBDataSet1TIPO_CLI_FOR_ID: TSmallintField;
    IBDataSet1CLI_FOR_ID: TIntegerField;
    IBDataSet1CODE_BAR: TIBStringField;
    IBDataSet1DESCR_CODE_BAR: TIBStringField;
    IBDataSet1NON_STAMPA_INVENTARIO: TSmallintField;
    IBDataSet1NON_STAMPA_REGISTRO: TSmallintField;
    IBDataSet1NOMENCLATURA: TIntegerField;
    IBDataSet1FATT_CONV1_NOMENCLATURA: TFloatField;
    IBDataSet1FATT_CONV2_NOMENCLATURA: TFloatField;
    IBDataSet1PROV_ORDINE: TIntegerField;
    IBDataSet1COSTO_ULTIMO: TFloatField;
    IBDataSet1DATA_COSTO_ULTIMO: TDateTimeField;
    IBDataSet1NUM_REPARTO: TIntegerField;
    IBDataSet1TIPO_CODE_BAR_ID: TSmallintField;
    IBDataSet1CONTO_ACQUISTO: TIntegerField;
    IBDataSet1CONTO_VENDITA: TIntegerField;
    IBDataSet1UN_MIS2_VAL: TIntegerField;
    IBDataSet1UN_MIS3_VAL: TIntegerField;
    IBDataSet1CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBDataSet1CAT_ART_GRUPPO_ID: TIntegerField;
    IBDataSet1CAT_ART_MARCA_ID: TIntegerField;
    IBDataSet1FOTO_PERCORSO: TIBStringField;
    IBDataSet1CAT_ART_TIPO_ID: TIntegerField;
    IBDataSet1FLAG_ACCESSORIE: TIBStringField;
    IBDataSet1DATAMOD: TDateTimeField;
    IBDataSet1SCONTO4: TFloatField;
    IBDataSet1PREZZO_IVATO: TFloatField;
    IBDataSet1P2IVATO: TFloatField;
    IBDataSet1P3IVATO: TFloatField;
    IBDataSet1P4IVATO: TFloatField;
    IBDataSet1P5IVATO: TFloatField;
    IBDataSet1SC21: TFloatField;
    IBDataSet1SC22: TFloatField;
    IBDataSet1SC23: TFloatField;
    IBDataSet1SC31: TFloatField;
    IBDataSet1SC32: TFloatField;
    IBDataSet1SC33: TFloatField;
    IBDataSet1SC41: TFloatField;
    IBDataSet1SC42: TFloatField;
    IBDataSet1SC43: TFloatField;
    IBDataSet1SC51: TFloatField;
    IBDataSet1SC52: TFloatField;
    IBDataSet1SC53: TFloatField;
    IBDataSet1R2: TFloatField;
    IBDataSet1R3: TFloatField;
    IBDataSet1R4: TFloatField;
    IBDataSet1R5: TFloatField;
    IBDataSet1IMP2: TFloatField;
    IBDataSet1IMP3: TFloatField;
    IBDataSet1IMP4: TFloatField;
    IBDataSet1IMP5: TFloatField;
    IBDataSet1RICARPREC: TFloatField;
    IBDataSet1P6IVATO: TFloatField;
    IBDataSet1IMP6: TFloatField;
    IBDataSet1STRUTT: TFloatField;
    IBDataSet1CA: TFloatField;
    IBDataSet1CG: TFloatField;
    IBDataSet1AG: TFloatField;
    IBDataSet1CA2: TFloatField;
    IBDataSet1CG2: TFloatField;
    IBDataSet1AG2: TFloatField;
    IBDataSet1CA3: TFloatField;
    IBDataSet1CG3: TFloatField;
    IBDataSet1AG3: TFloatField;
    IBDataSet1CA4: TFloatField;
    IBDataSet1CG4: TFloatField;
    IBDataSet1AG4: TFloatField;
    IBDataSet1CA5: TFloatField;
    IBDataSet1CG5: TFloatField;
    IBDataSet1AG5: TFloatField;
    IBDataSet1CA6: TFloatField;
    IBDataSet1CG6: TFloatField;
    IBDataSet1AG6: TFloatField;
    IBDataSet1ID_OFFERTA: TIntegerField;
    IBDataSet1CR: TFloatField;
    IBDataSet1CR2: TFloatField;
    IBDataSet1CR3: TFloatField;
    IBDataSet1CR4: TFloatField;
    IBDataSet1CR5: TFloatField;
    IBDataSet1CR6: TFloatField;
    IBDataSet1FOTO: TBlobField;
    IBQuery2: TIBQuery;
    SpeedButton8: TSpeedButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBDataSet2: TIBDataSet;
    IBDataSet2CODICE_ARTICOLO: TIBStringField;
    IBDataSet2DESCR: TIBStringField;
    IBDataSet2DESCR2: TIBStringField;
    IBDataSet2CODICE_IVA_ID: TIBStringField;
    IBDataSet2UNITA_DI_MISURA1_ID: TIBStringField;
    IBDataSet2UNITA_DI_MISURA2_ID: TIBStringField;
    IBDataSet2UNITA_DI_MISURA3_ID: TIBStringField;
    IBDataSet2SCONTO1: TFloatField;
    IBDataSet2SCONTO2: TFloatField;
    IBDataSet2SCONTO3: TFloatField;
    IBDataSet2PROVVIGIONE: TFloatField;
    IBDataSet2PESO_NETTO_KG: TFloatField;
    IBDataSet2PESO_LORDO_KG: TFloatField;
    IBDataSet2SCORTA_MIN: TFloatField;
    IBDataSet2SCORTA_MAX: TFloatField;
    IBDataSet2LOTTO_RIORDINO: TFloatField;
    IBDataSet2GG_APPROVVIGIONAMENTO: TIntegerField;
    IBDataSet2QTA_X_CONFEZIONE: TIntegerField;
    IBDataSet2ANNO: TIntegerField;
    IBDataSet2DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBDataSet2PREZZO_BASE: TFloatField;
    IBDataSet2COSTO_STANDART: TFloatField;
    IBDataSet2TIPO_ARTICOLO_ID: TSmallintField;
    IBDataSet2FATT_CONV1: TFloatField;
    IBDataSet2FATT_CONV2: TFloatField;
    IBDataSet2COSTO_ID: TIntegerField;
    IBDataSet2RICAVO_ID: TIntegerField;
    IBDataSet2GIORNI_MAX_INVENDUTO: TIntegerField;
    IBDataSet2ASPETTO_ID: TIBStringField;
    IBDataSet2RIORDINO_MESE_DA: TSmallintField;
    IBDataSet2RIORDINO_MESE_A: TSmallintField;
    IBDataSet2RIORDINO_GIORNO_DA: TSmallintField;
    IBDataSet2RIORDINO_GIORNO_A: TSmallintField;
    IBDataSet2STAGIONE_ID: TIBStringField;
    IBDataSet2GRUPPO_ALTERNATIVO: TIBStringField;
    IBDataSet2PRODUTTORE_ID: TIBStringField;
    IBDataSet2CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBDataSet2CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBDataSet2CODICE_BASE: TIBStringField;
    IBDataSet2DERIVATO: TSmallintField;
    IBDataSet2VARIANTE1_ID: TIBStringField;
    IBDataSet2VARIANTE2_ID: TIBStringField;
    IBDataSet2VARIANTE3_ID: TIBStringField;
    IBDataSet2NUM_VARIANTI: TIntegerField;
    IBDataSet2TIPO_COSTO_ID: TSmallintField;
    IBDataSet2TIPO_RICAVO_ID: TSmallintField;
    IBDataSet2OMAGGIO: TSmallintField;
    IBDataSet2TIPO_CLI_FOR_ID: TSmallintField;
    IBDataSet2CLI_FOR_ID: TIntegerField;
    IBDataSet2CODE_BAR: TIBStringField;
    IBDataSet2DESCR_CODE_BAR: TIBStringField;
    IBDataSet2NON_STAMPA_INVENTARIO: TSmallintField;
    IBDataSet2NON_STAMPA_REGISTRO: TSmallintField;
    IBDataSet2NOMENCLATURA: TIntegerField;
    IBDataSet2FATT_CONV1_NOMENCLATURA: TFloatField;
    IBDataSet2FATT_CONV2_NOMENCLATURA: TFloatField;
    IBDataSet2PROV_ORDINE: TIntegerField;
    IBDataSet2COSTO_ULTIMO: TFloatField;
    IBDataSet2DATA_COSTO_ULTIMO: TDateTimeField;
    IBDataSet2NUM_REPARTO: TIntegerField;
    IBDataSet2TIPO_CODE_BAR_ID: TSmallintField;
    IBDataSet2CONTO_ACQUISTO: TIntegerField;
    IBDataSet2CONTO_VENDITA: TIntegerField;
    IBDataSet2UN_MIS2_VAL: TIntegerField;
    IBDataSet2UN_MIS3_VAL: TIntegerField;
    IBDataSet2CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBDataSet2CAT_ART_GRUPPO_ID: TIntegerField;
    IBDataSet2CAT_ART_MARCA_ID: TIntegerField;
    IBDataSet2FOTO_PERCORSO: TIBStringField;
    IBDataSet2CAT_ART_TIPO_ID: TIntegerField;
    IBDataSet2FLAG_ACCESSORIE: TIBStringField;
    IBDataSet2DATAMOD: TDateTimeField;
    IBDataSet2SCONTO4: TFloatField;
    IBDataSet2PREZZO_IVATO: TFloatField;
    IBDataSet2P2IVATO: TFloatField;
    IBDataSet2P3IVATO: TFloatField;
    IBDataSet2P4IVATO: TFloatField;
    IBDataSet2P5IVATO: TFloatField;
    IBDataSet2SC21: TFloatField;
    IBDataSet2SC22: TFloatField;
    IBDataSet2SC23: TFloatField;
    IBDataSet2SC31: TFloatField;
    IBDataSet2SC32: TFloatField;
    IBDataSet2SC33: TFloatField;
    IBDataSet2SC41: TFloatField;
    IBDataSet2SC42: TFloatField;
    IBDataSet2SC43: TFloatField;
    IBDataSet2SC51: TFloatField;
    IBDataSet2SC52: TFloatField;
    IBDataSet2SC53: TFloatField;
    IBDataSet2R2: TFloatField;
    IBDataSet2R3: TFloatField;
    IBDataSet2R4: TFloatField;
    IBDataSet2R5: TFloatField;
    IBDataSet2IMP2: TFloatField;
    IBDataSet2IMP3: TFloatField;
    IBDataSet2IMP4: TFloatField;
    IBDataSet2IMP5: TFloatField;
    IBDataSet2RICARPREC: TFloatField;
    IBDataSet2P6IVATO: TFloatField;
    IBDataSet2IMP6: TFloatField;
    IBDataSet2STRUTT: TFloatField;
    IBDataSet2CA: TFloatField;
    IBDataSet2CG: TFloatField;
    IBDataSet2AG: TFloatField;
    IBDataSet2CA2: TFloatField;
    IBDataSet2CG2: TFloatField;
    IBDataSet2AG2: TFloatField;
    IBDataSet2CA3: TFloatField;
    IBDataSet2CG3: TFloatField;
    IBDataSet2AG3: TFloatField;
    IBDataSet2CA4: TFloatField;
    IBDataSet2CG4: TFloatField;
    IBDataSet2AG4: TFloatField;
    IBDataSet2CA5: TFloatField;
    IBDataSet2CG5: TFloatField;
    IBDataSet2AG5: TFloatField;
    IBDataSet2CA6: TFloatField;
    IBDataSet2CG6: TFloatField;
    IBDataSet2AG6: TFloatField;
    IBDataSet2ID_OFFERTA: TIntegerField;
    IBDataSet2CR: TFloatField;
    IBDataSet2CR2: TFloatField;
    IBDataSet2CR3: TFloatField;
    IBDataSet2CR4: TFloatField;
    IBDataSet2CR5: TFloatField;
    IBDataSet2CR6: TFloatField;
    IBDataSet2FOTO: TBlobField;
    ProgressBar1: TProgressBar;
    Edit4: TEdit;
    IBDataSet3: TIBDataSet;
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
    BlobField1: TBlobField;
    SpeedButton9: TSpeedButton;
    IBQuery3: TIBQuery;
    IBSQL1: TIBSQL;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
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
    IBQuery1PREZZO_BASE: TFloatField;
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
    IBQuery1UN_MIS2_VAL: TIntegerField;
    IBQuery1UN_MIS3_VAL: TIntegerField;
    IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery1CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery1CAT_ART_MARCA_ID: TIntegerField;
    IBQuery1FOTO_PERCORSO: TIBStringField;
    IBQuery1CAT_ART_TIPO_ID: TIntegerField;
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
    IBQuery1FOTO: TBlobField;
    SpeedButton12: TSpeedButton;
    E15: TEdit;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    CoEcrCom1: TCoEcrCom;
    Memo1: TMemo;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure daDataExit(Sender: TObject);
    procedure aDataExit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure NyBck1ImportError(Sender: TObject; Mess: String;
      RecNo: Integer; var Response: TNyBckErrorResponse);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInviaArt: TfInviaArt;
  Addyes, addno: integer;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfInviaArt.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

procedure TfInviaArt.RadioGroup1Click(Sender: TObject);
begin
If RadioGroup1.ItemIndex = 1 then
begin
Panel1.Visible := True;
end
else
Panel1.Visible := False;

end;

procedure TfInviaArt.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then
begin
Edit1.Visible := True;
Edit2.Visible := True;
end
else
begin
Edit1.Visible := False;
Edit2.Visible := False;
end;

end;

procedure TfInviaArt.SpeedButton1Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k : Integer;
A, b, c, x : String;
g, h, l, m : real;
Year, Month, Day : Word;
Strl: TStringList;
begin
Strl := TStringList.Create;
SpeedButton13.Enabled := True;
SpeedButton14.Enabled := True;
if RadioGroup1.ItemIndex = 1 then
begin
//x :='RegData Between (#'+FormatDateTime('MM/DD/yyyy',Strtodate(DaData.Text)) +'#) and (#'+ FormatDateTime('MM/DD/yyyy',Strtodate(aData.Text))+'#)' ;
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('where DATAMOD>=:da and DATAMOD<=:a');
IBQuery1.SQL.Add('and NON_STAMPA_INVENTARIO<>1 and flag_accessorie=''N''');
IBQuery1.SQL.Add('order by codice_Articolo');
IBQuery1.ParamByName('da').AsDate := Strtodate(DaData.Text);
IBQuery1.ParamByName('a').AsDate := Strtodate(aData.Text);
//IBQuery1.Open;
end
else
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('where NON_STAMPA_INVENTARIO<>1 and flag_accessorie=''N''');
IBQuery1.SQL.Add('order by codice_Articolo');
end;
//SpeedButton1.Enabled := False;


try
IBQuery1.Open;
IBQuery1.First;


  while not IBQuery1.Eof do
  begin

  if not VarIsNull(IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring
  else
  b := '-';
  if not VarIsNull(IBQuery1.Fieldbyname('DESCR').asstring) then
  c := IBQuery1.Fieldbyname('DESCR').asstring
  else
  c := '-';
//  if not VarIsNull(DataMod.MagazzT.FieldValues['RegCond']) then
//  E1.Text := (DataMod.MagazzT.FieldValues['RegCond'])
//  else
  E1.Text := '0';
  if not VarIsNull(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger) then
  E3.Text := IntToStr(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger)
  else
  E3.Text := '1';
//if (DataMod.MagazzT.FieldValues['IVA'] <> '0') then
//and (DataMod.MagazzT.FieldValues['IVA'] <> '') then
if not VarIsNull(IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency) then
//  E4.Text := FloatToStr(IBQuery1.Fieldbyname('PREZZO_IVATO').AsFloat*100)
  E4.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency))*100)
else
E4.Text := '0';

if not VarIsNull(IBQuery1.Fieldbyname('P2IVATO').AsCurrency) then
//  E5.Text := FormatFloat('0.00',(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100))
//    E5.Text := FloatToStr(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100)
    E5.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('P2IVATO').AsCurrency))*100)
else
E5.Text := '0';

if not VarIsNull(IBQuery1.Fieldbyname('P3IVATO').AsCurrency) then
//  E5.Text := FormatFloat('0.00',(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100))
//    E5.Text := FloatToStr(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100)
    E15.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('P3IVATO').AsCurrency))*100)
else
E15.Text := '0';

 // if RadioGroup2.ItemIndex = 0 then
//  A := DataMod.MagazzT.FieldValues['RegTipo'];
  if RadioGroup2.ItemIndex = 1 then
  A := 'IM';
  if RadioGroup2.ItemIndex = 2 then
  A := 'I';
  if RadioGroup2.ItemIndex = 3 then
  A := 'M';
  if RadioGroup2.ItemIndex = 4 then
  A := 'C';

//  if RadioGroup3.ItemIndex = 0 then
  begin
//  if (not VarIsNull(IBQuery1.Fieldbyname('ID_OFFERTA').AsInteger)) or
//     (not VarIsNull(IBQuery1.Fieldbyname('ID_OFFERTA').AsString)) then
if  (IBQuery1.Fieldbyname('ID_OFFERTA').AsInteger>0) then
  E2.Text := IBQuery1.Fieldbyname('ID_OFFERTA').AsString
  else
  E2.Text := '0'
  end;

  strl.add(''+A+ ','+ b + ',' + ''''+c+''''+','+E1.Text+','+E2.Text+','+E3.Text+''+','+E4.Text+','+E5.Text+','+E15.Text);

  IBQuery1.Next;
Strl.SaveToFile('pippo.dat');
  end;

finally
   Strl.Free;
  end;






{   OLD PROCEDURE CREAZIONE FILE ARTICOLI
IBQuery1.Open;
IBQuery1.First;

 x:=ExtractFilePath(Application.Exename)+'Pippo.dat';
  AssignFile(F, x);
  Rewrite(F);

  while not IBQuery1.Eof do
  begin

  if not VarIsNull(IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring
  else
  b := '-';
  if not VarIsNull(IBQuery1.Fieldbyname('DESCR').asstring) then
  c := IBQuery1.Fieldbyname('DESCR').asstring
  else
  c := '-';
//  if not VarIsNull(DataMod.MagazzT.FieldValues['RegCond']) then
//  E1.Text := (DataMod.MagazzT.FieldValues['RegCond'])
//  else
  E1.Text := '0';
  if not VarIsNull(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger) then
  E3.Text := IntToStr(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger)
  else
  E3.Text := '1';
//if (DataMod.MagazzT.FieldValues['IVA'] <> '0') then
//and (DataMod.MagazzT.FieldValues['IVA'] <> '') then
if not VarIsNull(IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency) then
//  E4.Text := FloatToStr(IBQuery1.Fieldbyname('PREZZO_IVATO').AsFloat*100)
  E4.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency))*100)
else
E4.Text := '0';

if not VarIsNull(IBQuery1.Fieldbyname('P2IVATO').AsCurrency) then
//  E5.Text := FormatFloat('0.00',(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100))
//    E5.Text := FloatToStr(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100)
    E5.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('P2IVATO').AsCurrency))*100)
else
E5.Text := '0';

if not VarIsNull(IBQuery1.Fieldbyname('P3IVATO').AsCurrency) then
//  E5.Text := FormatFloat('0.00',(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100))
//    E5.Text := FloatToStr(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100)
    E15.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('P3IVATO').AsCurrency))*100)
else
E15.Text := '0';

 // if RadioGroup2.ItemIndex = 0 then
//  A := DataMod.MagazzT.FieldValues['RegTipo'];
  if RadioGroup2.ItemIndex = 1 then
  A := 'IM';
  if RadioGroup2.ItemIndex = 2 then
  A := 'I';
  if RadioGroup2.ItemIndex = 3 then
  A := 'M';
  if RadioGroup2.ItemIndex = 4 then
  A := 'C';

//  if RadioGroup3.ItemIndex = 0 then
  begin
//  if (not VarIsNull(IBQuery1.Fieldbyname('ID_OFFERTA').AsInteger)) or
//     (not VarIsNull(IBQuery1.Fieldbyname('ID_OFFERTA').AsString)) then
if  (IBQuery1.Fieldbyname('ID_OFFERTA').AsInteger>0) then
  E2.Text := IBQuery1.Fieldbyname('ID_OFFERTA').AsString
  else
  E2.Text := '0'
  end;

//  else
//  E2.Text := Edit1.Text;

  Writeln(F, ''+A+ ','+ b + ',' + ''''+c+''''+','+E1.Text+','+E2.Text+','+E3.Text+''+','+E4.Text+','+E5.Text+','+E15.Text);
  //+','+E5.Text
  IBQuery1.Next;
  end;
  CloseFile(F);

OLD }

//ShellExecute(Handle, 'open', PChar('c:\geibdb\Trasm1.bat'), nil, nil, SW_SHOW);

end;


procedure TfInviaArt.SpeedButton3Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k : Integer;
A, b, c, x : String;
g, h, l, m : real;
Year, Month, Day : Word;
begin
if RadioGroup1.ItemIndex = 1 then
begin
//x :='RegData Between (#'+FormatDateTime('MM/DD/yyyy',Strtodate(DaData.Text)) +'#) and (#'+ FormatDateTime('MM/DD/yyyy',Strtodate(aData.Text))+'#)' ;
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('where DATAMOD>=:da and DATAMOD<=:a');
IBQuery1.SQL.Add('order by codice_Articolo');
IBQuery1.ParamByName('da').AsDate := Strtodate(DaData.Text);
IBQuery1.ParamByName('a').AsDate := Strtodate(aData.Text);
//IBQuery1.Open;
end
else
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('order by codice_Articolo');
end;
SpeedButton1.Enabled := False;
IBQuery1.Open;
IBQuery1.First;

  AssignFile(F, 'c:\geibdb\Pippo.dat');
  Rewrite(F);

  while not IBQuery1.Eof do
  begin

  if not VarIsNull(IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring
  else
  b := '-';
  if not VarIsNull(IBQuery1.Fieldbyname('DESCR').asstring) then
  c := IBQuery1.Fieldbyname('DESCR').asstring
  else
  c := '-';
//  if not VarIsNull(DataMod.MagazzT.FieldValues['RegCond']) then
//  E1.Text := (DataMod.MagazzT.FieldValues['RegCond'])
//  else
  E1.Text := '0';
  if not VarIsNull(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger) then
  E3.Text := IntToStr(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger)
  else
  E3.Text := '1';
//if (DataMod.MagazzT.FieldValues['IVA'] <> '0') then
//and (DataMod.MagazzT.FieldValues['IVA'] <> '') then
if not VarIsNull(IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency) then
  E4.Text := FloatToStr(round(IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency*100))
else
E4.Text := '0';
{
if not VarIsNull(IBQuery1.Fieldbyname('P2IVATO').AsFloat) then
  E5.Text := FloatToStr(round(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100))
else
E5.Text := '0';
}

 // if RadioGroup2.ItemIndex = 0 then
//  A := DataMod.MagazzT.FieldValues['RegTipo'];
  if RadioGroup2.ItemIndex = 1 then
  A := 'IM';
  if RadioGroup2.ItemIndex = 2 then
  A := 'I';
  if RadioGroup2.ItemIndex = 3 then
  A := 'M';
  if RadioGroup2.ItemIndex = 4 then
  A := 'C';

  if RadioGroup3.ItemIndex = 0 then
  begin
//  if not VarIsNull(DataMod.MagazzT.FieldValues['RegOff']) then
//  E2.Text := DataMod.MagazzT.FieldValues['RegOff']
//  else
  E2.Text := '0'
  end
  else
  E2.Text := Edit1.Text;

  Writeln(F, ''+A+ ','+ b + ',' + ''''+c+''''+','+E1.Text+','+E2.Text+','+E3.Text+''+','+E4.Text );
  //,'+E5.Text
  IBQuery1.Next;
  end;
  CloseFile(F);
    SpeedButton3.Enabled := False;


//ShellExecute(Handle, 'open', PChar('c:\geibdb\Trasm1.bat'), nil, nil, SW_SHOW);

end;


procedure TfInviaArt.FormShow(Sender: TObject);
begin
DaData.Text := FormatDateTime('dd/mm/yyyy',Now);
aData.Text := FormatDateTime('dd/mm/yyyy',Now);
dmodAz.IBQDepositi.Close;
dmodAz.IBQDepositi.Open;
end;

procedure TfInviaArt.daDataExit(Sender: TObject);
begin
if daData.Text = '  /  /    ' then
daData.Text := FormatDateTime('dd/mm/yyyy',Now);

end;

procedure TfInviaArt.aDataExit(Sender: TObject);
begin
if aData.Text = '  /  /    ' then
aData.Text := FormatDateTime('dd/mm/yyyy',Now);

end;



procedure TfInviaArt.SpeedButton7Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k, m1,m2,m3 : Integer;
A, b, c, x,S1,S2,S3, P2,P3,P4,P5,Scelta0,Scelta, Scelta2 : String;
UserFTP,PassFTP,HostFTP,DirFTP, PortFTP:string;
g, h, l, m : real;
Year, Month, Day : Word;
begin
if RadioGroup1.ItemIndex = 1 then
begin
//x :='RegData Between (#'+FormatDateTime('MM/DD/yyyy',Strtodate(DaData.Text)) +'#) and (#'+ FormatDateTime('MM/DD/yyyy',Strtodate(aData.Text))+'#)' ;
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('where DATAMOD>=:da and DATAMOD<=:a');
IBQuery1.SQL.Add('and NON_STAMPA_INVENTARIO<>1');
IBQuery1.SQL.Add('order by codice_Articolo');
IBQuery1.ParamByName('da').AsDate := Strtodate(DaData.Text);
IBQuery1.ParamByName('a').AsDate := Strtodate(aData.Text);
//IBQuery1.Open;
end
else
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('where NON_STAMPA_INVENTARIO<>1');
IBQuery1.SQL.Add('order by codice_Articolo');
end;
SpeedButton1.Enabled := False;
IBQuery1.Open;
IBQuery1.First;

scelta0:=InputBox('Esportare :','1) Codici,Prezzi - 2) Codici','1');
scelta:=InputBox('Esportare :','1) Prezzi Imponibili - 2) Prezzi Ivati','1');
scelta2:=InputBox('Esportare :','1) File in locale - 2) File Upload FTP','1');

//if scelta2 = '1' then
//begin
if Savedialog1.execute then
if FileExists(SaveDialog1.FileName) then
If (MessageDlg('File ESISTENTE.. Riscriverlo?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;
x:=Savedialog1.FileName;
//end;

  AssignFile(F, x);
  Rewrite(F);

  while not IBQuery1.Eof do
  begin
  if not VarIsNull(IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring;
  S1:='                    ';
  m1:=Length(b);
  if m1>=13 then
  b:=leftstr(b,13)
  else
  begin
  m1:=13-m1;
  b:=b+leftstr(S1,m1);
  end;

  if not VarIsNull(IBQuery1.Fieldbyname('DESCR').asstring) then
  c := IBQuery1.Fieldbyname('DESCR').asstring;
  S1:='                    ';
  m1:=Length(c);
  if m1>=20 then
  c:=leftstr(c,20)
  else
  begin
  m1:=20-m1;
  c:=c+leftstr(S1,m1);
  end;


if scelta = '2' then
begin
if not VarIsNull(IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency) then
  E4.Text := FormatFloat('0.00',IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency)
else
E4.Text := '0'
end
else
begin
if not VarIsNull(IBQuery1.Fieldbyname('PREZZO_BASE').AsCurrency) then
  E4.Text := FormatFloat('0.00',IBQuery1.Fieldbyname('PREZZO_BASE').AsCurrency)
else
E4.Text := '0'
end;
  S1:='                    ';
  m1:=Length(E4.Text);
  if m1>=7 then
  E4.Text:=leftstr(E4.Text,7)
  else
  begin
  m1:=7-m1;
  E4.Text:=E4.Text+leftstr(S1,m1);
  end;

if scelta = '2' then
begin
if not VarIsNull(IBQuery1.Fieldbyname('P2IVATO').AsCurrency) then
  P2 := FormatFloat('0.00',IBQuery1.Fieldbyname('P2IVATO').AsCurrency)
else
  P2 := '0'
end
else
begin
if not VarIsNull(IBQuery1.Fieldbyname('IMP2').AsCurrency) then
  P2 := FormatFloat('0.00',IBQuery1.Fieldbyname('IMP2').AsCurrency)
else
  P2 := '0'
end;

  S1:='                    ';
  m1:=Length(P2);
  if m1>=7 then
  P2:=leftstr(P2,7)
  else
  begin
  m1:=7-m1;
  P2:=P2+leftstr(S1,m1);
  end;

if scelta = '2' then
begin
if not VarIsNull(IBQuery1.Fieldbyname('P3IVATO').AsCurrency) then
  P3 := FormatFloat('0.00',IBQuery1.Fieldbyname('P3IVATO').AsCurrency)
else
  P3 := '0'
end
else
begin
if not VarIsNull(IBQuery1.Fieldbyname('IMP3').AsCurrency) then
  P3 := FormatFloat('0.00',IBQuery1.Fieldbyname('IMP3').AsCurrency)
else
  P3 := '0'
end;

  S1:='                    ';
  m1:=Length(P3);
  if m1>=7 then
  P3:=leftstr(P3,7)
  else
  begin
  m1:=7-m1;
  P3:=P3+leftstr(S1,m1);
  end;

if scelta = '2' then
begin
if not VarIsNull(IBQuery1.Fieldbyname('P4IVATO').AsCurrency) then
  P4 := FormatFloat('0.00',IBQuery1.Fieldbyname('P4IVATO').AsCurrency)
else
  P4 := '0'
end
else
begin
if not VarIsNull(IBQuery1.Fieldbyname('IMP4').AsCurrency) then
  P4 := FormatFloat('0.00',IBQuery1.Fieldbyname('IMP4').AsCurrency)
else
  P4 := '0'
end;

  S1:='                    ';
  m1:=Length(P4);
  if m1>=7 then
  P4:=leftstr(P4,7)
  else
  begin
  m1:=7-m1;
  P4:=P4+leftstr(S1,m1);
  end;

if scelta = '2' then
begin
if not VarIsNull(IBQuery1.Fieldbyname('P5IVATO').AsCurrency) then
  P5 := FormatFloat('0.00',IBQuery1.Fieldbyname('P5IVATO').AsCurrency)
else
  P5 := '0'
end
else
begin
if not VarIsNull(IBQuery1.Fieldbyname('IMP5').AsCurrency) then
  P5 := FormatFloat('0.00',IBQuery1.Fieldbyname('IMP5').AsCurrency)
else
  P5 := '0'
end;

  S1:='                    ';
  m1:=Length(P5);
  if m1>=7 then
  P5:=leftstr(P5,7)
  else
  begin
  m1:=7-m1;
  P5:=P5+leftstr(S1,m1);
  end;

if scelta0 = '1' then
  Writeln(F, b + c + E4.Text + P2 + P3 + P4 + P5)
else
  Writeln(F, b + '000000');
  IBQuery1.Next;
  end;
  CloseFile(F);
//end;
if scelta2 = '2' then
begin
 dmodAz.ibTabPersAz.Open;
 dmodAz.ibTabPersAz.First;
 UserFTP:=(dmodAz.ibTabPersAzUSERFTP.AsString);
 HostFTP:=(dmodAz.ibTabPersAzFTPHOST.AsString);
 PassFTP:=(dmodAz.ibTabPersAzPASSFTP.AsString);
 DirFTP:=(dmodAz.ibTabPersAzDIRFTP.AsString);
 PortFTP:=(dmodAz.ibTabPersAzPORTFTP.AsString);
 dmodAz.ibTabPersAz.close;

with IdFTP1 do BEGIN
    Username := UserFTP;
    Password := PassFTP;
    Host := HostFTP;
    Port := strtoint(PortFTP);

    Connect;
end;
  if IdFTP1.Connected then begin
//    if UploadOpenDialog1.Execute then try
      IdFTP1.Put(Savedialog1.FileName, ExtractFileName(Savedialog1.FileName));
//      ChangeDir(idftp1.RetrieveCurrentDir);
//    finally
//    end;
  end;

end;
end;



procedure TfInviaArt.SpeedButton10Click(Sender: TObject);
var
V: TextFile;
FileHandle, i, d, e, j : Integer;
A, b, c, x, xx : String;
g, h, l, m : real;
Year, Month, Day, Year2, Month2, Day2: Word;

begin
SpeedButton15.Enabled := True;
SpeedButton16.Enabled := True;
dmodAz.ibtOfferte.Active := true;
dmodAz.ibtOfferte.First;
xx := ExtractFilePath(Application.Exename)+'Offerte.dat';
//  AssignFile(V, 'c:\geibdb\Offerte.dat');
  AssignFile(V, xx);
  Rewrite(V);

  while not dmodAz.ibtOfferte.Eof do
  begin

  if RadioGroup2.ItemIndex = 0 then
  A := dmodAz.ibtOfferteAZIONE.AsString;
  if RadioGroup2.ItemIndex = 1 then
  A := 'IM';
  if RadioGroup2.ItemIndex = 2 then
  A := 'I';
  if RadioGroup2.ItemIndex = 3 then
  A := 'M';
  if RadioGroup2.ItemIndex = 4 then
  A := 'C';


  b := dmodAz.ibtOfferte.FieldbyName('ID_OFFERTA').AsString;
  c := dmodAz.ibtOfferte.FieldbyName('Tipo').AsString;
  DecodeDate(dmodAz.ibtOfferte.FieldbyName('DataInizio').AsDateTime, Year, Month, Day);
  DecodeDate(dmodAz.ibtOfferte.FieldbyName('DataFine').AsDateTime, Year2, Month2, Day2);

E1.Text := IntToStr(Day);
E3.Text := IntToStr(Month);
E4.Text := IntToStr(Day2);
E5.Text := IntToStr(Month2);
E6.Text := (dmodAz.ibtOfferte.FieldbyName('Descr').AsString);
E7.Text := (dmodAz.ibtOfferte.FieldbyName('NumPezzi').AsString);

E8.Text :=FloatToStr(StrToFloat(formatfloat('0.00',(dmodAz.ibtOfferte.FieldbyName('PrezzoUnitario').AsCurrency)))*100);
//FloatToStr(formatfloa #,##0.00	dmodAz.ibtOfferte.FieldbyName('PrezzoUnitario').AsFloat*100);
//E8.Text := FloatToStr(dmodAz.ibtOfferte.FieldbyName('PrezzoUnitario').AsFloat*100);
E9.Text :=FloatToStr(StrToFloat(formatfloat('0.00',(dmodAz.ibtOfferte.FieldbyName('PrezzoConf').AsCurrency)))*100);
//FloatToStr(dmodAz.ibtOfferte.FieldbyName('PrezzoConf').AsFloat*100);

  if not VarIsNull(dmodAz.ibtOfferte.FieldbyName('ScontoPerc').AsString) then
  E10.Text :=inttostr(dmodAz.ibtOfferte.FieldbyName('ScontoPerc').AsInteger)
  //FloatToStr(StrToFloat(formatfloat('0.00',(dmodAz.ibtOfferte.FieldbyName('ScontoPerc').AsFloat))));
  //
  else
  E10.Text := '0';

Writeln(V, ''+A+ ','+ b + ','+ c + ','+ E1.Text + ','+ E3.Text + ','+ E4.Text + ','+ E5.Text + ','+'0'+ ','+'0'+ ','+'0'+ ','+'0'+ ','+'0'+','+ ''''+E6.Text+''''+','+E7.Text+','+E8.Text+','+E9.Text+''+','+E10.Text+'' );
  dmodAz.ibtOfferte.next;
  end;
  CloseFile(V);

end;

procedure TfInviaArt.Button1Click(Sender: TObject);
begin
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frSchedaArtN.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;

    dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSchedaArtN.frf');
    dmodAz.rePRN.ShowReport;

end;

procedure TfInviaArt.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfInviaArt.SpeedButton11Click(Sender: TObject);
label lab1;
begin
lab1:
   if Savedialog1.execute then
   begin
    if FileExists(SaveDialog1.FileName) then
      if MessageDlg(Format('%s  già esiste. Vuoi riscriverlo?', [SaveDialog1.FileName]),
        mtConfirmation, [mbyes,mbno], 0) <> idyes then goto lab1;

    addyes:=0; //reset

if RadioGroup1.ItemIndex = 1 then
begin
IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.Add('Select * from tab_articoli');
IBDataSet1.SelectSQL.Add('where DATAMOD>=:da and DATAMOD<=:a');
IBDataSet1.SelectSQL.Add('and NON_STAMPA_INVENTARIO<>1');
IBDataSet1.SelectSQL.Add('order by codice_Articolo');
IBDataSet1.ParamByName('da').AsDate := Strtodate(DaData.Text);
IBDataSet1.ParamByName('a').AsDate := Strtodate(aData.Text);
end
else
begin
IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.Add('Select * from tab_articoli');
IBDataSet1.SelectSQL.Add('where NON_STAMPA_INVENTARIO<>1');
IBDataSet1.SelectSQL.Add('order by codice_Articolo');
end;
IBDataSet1.Open;

  try
    NyBck1.TextFile:=Savedialog1.FileName;
    NyBck1.Exprt; //Dataset To Text file (and *.mem) file

  finally
   MessageDlg('  File esportato   ', mtInformation, [mbOK], 0);
  end;


  end
  else //If you press Cancel button

NyBck1.Exprt;
end;

procedure TfInviaArt.SpeedButton6Click(Sender: TObject);
begin
  if opendialog1.execute then
  begin
    addyes:=0;//reset
    addno :=0;//reset
    IBDataSet1.Close;
  try
    NyBck1.TextFile:=opendialog1.FileName;
    NyBck1.imprt; //Text file to Dataset
    addyes:=addyes-addno;
  finally
  MessageDlg('Import Completato', mtInformation, [mbOK], 0);
  end;
  end
  else // if you press cancel.
end;

procedure TfInviaArt.NyBck1ImportError(Sender: TObject; Mess: String;
  RecNo: Integer; var Response: TNyBckErrorResponse);
begin
 if mess<>'' then begin
  Response:=NyBckIgnore; //same record ignore
  Addno:=Addno+1;
  IBDataSet1.Cancel;
  end
  else begin //key violation error don't
  if MessageDlg(Mess + ' @: ' + IntToStr(RecNo)+ 'press "Abort", or "ignore".',mtError,[mbAbort,mbIgnore],0) = mrAbort then
  Response:=NybckAbort
  else
  Response:=nybckIgnore;
  end;
end;

procedure TfInviaArt.SpeedButton8Click(Sender: TObject);
var
i:integer;
struser,strpass,strConnStr,coda : string;
begin
  With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
  Try
    strConnStr := ReadString('SETUP','ConnStr','localhost:C:\GEIBDB\');
    strUser := ReadString('SETUP','User','SYSDBA');
    strPass := ReadString('SETUP','Pass','masterkey');
  Finally
    Free;
  End;

IBDatabase1.close;


//IBDatabase1.DatabaseName:=ExtractFilePath(Application.Exename)+'GAZEXPORT.GDB';

 Try
 IBDatabase1.Params.Clear;
 IBDatabase1.DatabaseName:= strConnStr+ 'GAZEXPORT.GDB';
 IBDatabase1.Params.Add('User_name='+strUser);
 IBDatabase1.Params.Add('password='+strPass);
 IBDatabase1.Open;
 Except
   Exit;
 End;

IBQuery1.Open;
i :=IBQuery1.RecordCount;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := i;
    ProgressBar1.Step := 1;

Edit4.Text := inttostr(i);


IBQuery1.First;
if not IBTransaction1.InTransaction then
       IBTransaction1.StartTransaction;

//IBSQL1.ExecQuery;
IBDataSet2.Open;

while not IBQuery1.Eof do
begin
IBQuery1.DisableControls;

ProgressBar1.Stepit;


coda := IBQuery1.FieldValues['CODICE_ARTICOLO'];
IBQuery2.Close;
IBQuery2.ParamByName('ca').AsString := coda;
IBQuery2.Open;
if IBQuery2.IsEmpty then
begin
IBDataSet2.Insert;
IBDataSet2.FieldValues['CODICE_ARTICOLO']:=IBQuery1.FieldValues['CODICE_ARTICOLO'];
IBDataSet2.FieldValues['DESCR']:=IBQuery1.FieldValues['DESCR'];
IBDataSet2.FieldValues['DESCR2']:=IBQuery1.FieldValues['DESCR2'];
IBDataSet2.FieldValues['CODICE_IVA_ID']:=IBQuery1.FieldValues['CODICE_IVA_ID'];
IBDataSet2.FieldValues['UNITA_DI_MISURA1_ID']:=IBQuery1.FieldValues['UNITA_DI_MISURA1_ID'];
IBDataSet2.FieldValues['UNITA_DI_MISURA2_ID']:=IBQuery1.FieldValues['UNITA_DI_MISURA2_ID'];
IBDataSet2.FieldValues['UNITA_DI_MISURA3_ID']:=IBQuery1.FieldValues['UNITA_DI_MISURA3_ID'];
IBDataSet2.FieldValues['SCONTO1']:=IBQuery1.FieldValues['SCONTO1'];
IBDataSet2.FieldValues['SCONTO2']:=IBQuery1.FieldValues['SCONTO2'];
IBDataSet2.FieldValues['SCONTO3']:=IBQuery1.FieldValues['SCONTO3'];
IBDataSet2.FieldValues['PROVVIGIONE']:=IBQuery1.FieldValues['PROVVIGIONE'];
IBDataSet2.FieldValues['PESO_NETTO_KG']:=IBQuery1.FieldValues['PESO_NETTO_KG'];
IBDataSet2.FieldValues['PESO_LORDO_KG']:=IBQuery1.FieldValues['PESO_LORDO_KG'];
IBDataSet2.FieldValues['SCORTA_MIN']:=IBQuery1.FieldValues['SCORTA_MIN'];
IBDataSet2.FieldValues['SCORTA_MAX']:=IBQuery1.FieldValues['SCORTA_MAX'];
IBDataSet2.FieldValues['LOTTO_RIORDINO']:=IBQuery1.FieldValues['LOTTO_RIORDINO'];
IBDataSet2.FieldValues['GG_APPROVVIGIONAMENTO']:=IBQuery1.FieldValues['GG_APPROVVIGIONAMENTO'];
IBDataSet2.FieldValues['QTA_X_CONFEZIONE']:=IBQuery1.FieldValues['QTA_X_CONFEZIONE'];
IBDataSet2.FieldValues['ANNO']:=IBQuery1.FieldValues['ANNO'];
IBDataSet2.FieldValues['DESCR_AGGIUNTIVA_ID']:=IBQuery1.FieldValues['DESCR_AGGIUNTIVA_ID'];
IBDataSet2.FieldValues['PREZZO_BASE']:=IBQuery1.FieldValues['PREZZO_BASE'];
IBDataSet2.FieldValues['COSTO_STANDART']:=IBQuery1.FieldValues['COSTO_STANDART'];
IBDataSet2.FieldValues['TIPO_ARTICOLO_ID']:=IBQuery1.FieldValues['TIPO_ARTICOLO_ID'];
IBDataSet2.FieldValues['FATT_CONV1']:=IBQuery1.FieldValues['FATT_CONV1'];
IBDataSet2.FieldValues['FATT_CONV2']:=IBQuery1.FieldValues['FATT_CONV2'];
IBDataSet2.FieldValues['COSTO_ID']:=IBQuery1.FieldValues['COSTO_ID'];
IBDataSet2.FieldValues['RICAVO_ID']:=IBQuery1.FieldValues['RICAVO_ID'];
IBDataSet2.FieldValues['GIORNI_MAX_INVENDUTO']:=IBQuery1.FieldValues['GIORNI_MAX_INVENDUTO'];
IBDataSet2.FieldValues['ASPETTO_ID']:=IBQuery1.FieldValues['ASPETTO_ID'];
IBDataSet2.FieldValues['RIORDINO_MESE_DA']:=IBQuery1.FieldValues['RIORDINO_MESE_DA'];
IBDataSet2.FieldValues['RIORDINO_MESE_A']:=IBQuery1.FieldValues['RIORDINO_MESE_A'];
IBDataSet2.FieldValues['RIORDINO_GIORNO_DA']:=IBQuery1.FieldValues['RIORDINO_GIORNO_DA'];
IBDataSet2.FieldValues['RIORDINO_GIORNO_A']:=IBQuery1.FieldValues['RIORDINO_GIORNO_A'];
IBDataSet2.FieldValues['STAGIONE_ID']:=IBQuery1.FieldValues['STAGIONE_ID'];
IBDataSet2.FieldValues['GRUPPO_ALTERNATIVO']:=IBQuery1.FieldValues['GRUPPO_ALTERNATIVO'];
IBDataSet2.FieldValues['PRODUTTORE_ID']:=IBQuery1.FieldValues['PRODUTTORE_ID'];
IBDataSet2.FieldValues['CATEGORIA_ARTICOLO_ID']:=IBQuery1.FieldValues['CATEGORIA_ARTICOLO_ID'];
IBDataSet2.FieldValues['CATEGORIA_MERCEOLOGICA_ID']:=IBQuery1.FieldValues['CATEGORIA_MERCEOLOGICA_ID'];
IBDataSet2.FieldValues['CODICE_BASE']:=IBQuery1.FieldValues['CODICE_BASE'];
IBDataSet2.FieldValues['DERIVATO']:=IBQuery1.FieldValues['DERIVATO'];
IBDataSet2.FieldValues['VARIANTE1_ID']:=IBQuery1.FieldValues['VARIANTE1_ID'];
IBDataSet2.FieldValues['VARIANTE2_ID']:=IBQuery1.FieldValues['VARIANTE2_ID'];
IBDataSet2.FieldValues['VARIANTE3_ID']:=IBQuery1.FieldValues['VARIANTE3_ID'];
IBDataSet2.FieldValues['NUM_VARIANTI']:=IBQuery1.FieldValues['NUM_VARIANTI'];
IBDataSet2.FieldValues['TIPO_COSTO_ID']:=IBQuery1.FieldValues['TIPO_COSTO_ID'];
IBDataSet2.FieldValues['TIPO_RICAVO_ID']:=IBQuery1.FieldValues['TIPO_RICAVO_ID'];
IBDataSet2.FieldValues['OMAGGIO']:=IBQuery1.FieldValues['OMAGGIO'];
IBDataSet2.FieldValues['TIPO_CLI_FOR_ID']:=IBQuery1.FieldValues['TIPO_CLI_FOR_ID'];
IBDataSet2.FieldValues['CLI_FOR_ID']:=IBQuery1.FieldValues['CLI_FOR_ID'];
IBDataSet2.FieldValues['CODE_BAR']:=IBQuery1.FieldValues['CODE_BAR'];
IBDataSet2.FieldValues['DESCR_CODE_BAR']:=IBQuery1.FieldValues['DESCR_CODE_BAR'];
IBDataSet2.FieldValues['NON_STAMPA_INVENTARIO']:=IBQuery1.FieldValues['NON_STAMPA_INVENTARIO'];
IBDataSet2.FieldValues['NON_STAMPA_REGISTRO']:=IBQuery1.FieldValues['NON_STAMPA_REGISTRO'];
IBDataSet2.FieldValues['NOMENCLATURA']:=IBQuery1.FieldValues['NOMENCLATURA'];
IBDataSet2.FieldValues['FATT_CONV1_NOMENCLATURA']:=IBQuery1.FieldValues['FATT_CONV1_NOMENCLATURA'];
IBDataSet2.FieldValues['FATT_CONV2_NOMENCLATURA']:=IBQuery1.FieldValues['FATT_CONV2_NOMENCLATURA'];
IBDataSet2.FieldValues['PROV_ORDINE']:=IBQuery1.FieldValues['PROV_ORDINE'];
IBDataSet2.FieldValues['COSTO_ULTIMO']:=IBQuery1.FieldValues['COSTO_ULTIMO'];
IBDataSet2.FieldValues['DATA_COSTO_ULTIMO']:=IBQuery1.FieldValues['DATA_COSTO_ULTIMO'];
IBDataSet2.FieldValues['NUM_REPARTO']:=IBQuery1.FieldValues['NUM_REPARTO'];
IBDataSet2.FieldValues['TIPO_CODE_BAR_ID']:=IBQuery1.FieldValues['TIPO_CODE_BAR_ID'];
IBDataSet2.FieldValues['CONTO_ACQUISTO']:=IBQuery1.FieldValues['CONTO_ACQUISTO'];
IBDataSet2.FieldValues['CONTO_VENDITA']:=IBQuery1.FieldValues['CONTO_VENDITA'];
IBDataSet2.FieldValues['UN_MIS2_VAL']:=IBQuery1.FieldValues['UN_MIS2_VAL'];
IBDataSet2.FieldValues['UN_MIS3_VAL']:=IBQuery1.FieldValues['UN_MIS3_VAL'];
IBDataSet2.FieldValues['CAT_ART_FAMIGLIA_ID']:=IBQuery1.FieldValues['CAT_ART_FAMIGLIA_ID'];
IBDataSet2.FieldValues['CAT_ART_GRUPPO_ID']:=IBQuery1.FieldValues['CAT_ART_GRUPPO_ID'];
IBDataSet2.FieldValues['CAT_ART_MARCA_ID']:=IBQuery1.FieldValues['CAT_ART_MARCA_ID'];
IBDataSet2.FieldValues['FOTO_PERCORSO']:=IBQuery1.FieldValues['FOTO_PERCORSO'];
IBDataSet2.FieldValues['CAT_ART_TIPO_ID']:=IBQuery1.FieldValues['CAT_ART_TIPO_ID'];
IBDataSet2.FieldValues['FLAG_ACCESSORIE']:=IBQuery1.FieldValues['FLAG_ACCESSORIE'];
IBDataSet2.FieldValues['DATAMOD']:=IBQuery1.FieldValues['DATAMOD'];
IBDataSet2.FieldValues['SCONTO4']:=IBQuery1.FieldValues['SCONTO4'];
IBDataSet2.FieldValues['PREZZO_IVATO']:=IBQuery1.FieldValues['PREZZO_IVATO'];
IBDataSet2.FieldValues['P2IVATO']:=IBQuery1.FieldValues['P2IVATO'];
IBDataSet2.FieldValues['P3IVATO']:=IBQuery1.FieldValues['P3IVATO'];
IBDataSet2.FieldValues['P4IVATO']:=IBQuery1.FieldValues['P4IVATO'];
IBDataSet2.FieldValues['P5IVATO']:=IBQuery1.FieldValues['P5IVATO'];
IBDataSet2.FieldValues['SC21']:=IBQuery1.FieldValues['SC21'];
IBDataSet2.FieldValues['SC22']:=IBQuery1.FieldValues['SC22'];
IBDataSet2.FieldValues['SC23']:=IBQuery1.FieldValues['SC23'];
IBDataSet2.FieldValues['SC31']:=IBQuery1.FieldValues['SC31'];
IBDataSet2.FieldValues['SC32']:=IBQuery1.FieldValues['SC32'];
IBDataSet2.FieldValues['SC33']:=IBQuery1.FieldValues['SC33'];
IBDataSet2.FieldValues['SC41']:=IBQuery1.FieldValues['SC41'];
IBDataSet2.FieldValues['SC42']:=IBQuery1.FieldValues['SC42'];
IBDataSet2.FieldValues['SC43']:=IBQuery1.FieldValues['SC43'];
IBDataSet2.FieldValues['SC51']:=IBQuery1.FieldValues['SC51'];
IBDataSet2.FieldValues['SC52']:=IBQuery1.FieldValues['SC52'];
IBDataSet2.FieldValues['SC53']:=IBQuery1.FieldValues['SC53'];
IBDataSet2.FieldValues['R2']:=IBQuery1.FieldValues['R2'];
IBDataSet2.FieldValues['R3']:=IBQuery1.FieldValues['R3'];
IBDataSet2.FieldValues['R4']:=IBQuery1.FieldValues['R4'];
IBDataSet2.FieldValues['R5']:=IBQuery1.FieldValues['R5'];
IBDataSet2.FieldValues['IMP2']:=IBQuery1.FieldValues['IMP2'];
IBDataSet2.FieldValues['IMP3']:=IBQuery1.FieldValues['IMP3'];
IBDataSet2.FieldValues['IMP4']:=IBQuery1.FieldValues['IMP4'];
IBDataSet2.FieldValues['IMP5']:=IBQuery1.FieldValues['IMP5'];
IBDataSet2.FieldValues['RICARPREC']:=IBQuery1.FieldValues['RICARPREC'];
IBDataSet2.FieldValues['P6IVATO']:=IBQuery1.FieldValues['P6IVATO'];
IBDataSet2.FieldValues['IMP6']:=IBQuery1.FieldValues['IMP6'];
IBDataSet2.FieldValues['STRUTT']:=IBQuery1.FieldValues['STRUTT'];
IBDataSet2.FieldValues['CA']:=IBQuery1.FieldValues['CA'];
IBDataSet2.FieldValues['CG']:=IBQuery1.FieldValues['CG'];
IBDataSet2.FieldValues['AG']:=IBQuery1.FieldValues['AG'];
IBDataSet2.FieldValues['CA2']:=IBQuery1.FieldValues['CA2'];
IBDataSet2.FieldValues['CG2']:=IBQuery1.FieldValues['CG2'];
IBDataSet2.FieldValues['AG2']:=IBQuery1.FieldValues['AG2'];
IBDataSet2.FieldValues['CA3']:=IBQuery1.FieldValues['CA3'];
IBDataSet2.FieldValues['CG3']:=IBQuery1.FieldValues['CG3'];
IBDataSet2.FieldValues['AG3']:=IBQuery1.FieldValues['AG3'];
IBDataSet2.FieldValues['CA4']:=IBQuery1.FieldValues['CA4'];
IBDataSet2.FieldValues['CG4']:=IBQuery1.FieldValues['CG4'];
IBDataSet2.FieldValues['AG4']:=IBQuery1.FieldValues['AG4'];
IBDataSet2.FieldValues['CA5']:=IBQuery1.FieldValues['CA5'];
IBDataSet2.FieldValues['CG5']:=IBQuery1.FieldValues['CG5'];
IBDataSet2.FieldValues['AG5']:=IBQuery1.FieldValues['AG5'];
IBDataSet2.FieldValues['CA6']:=IBQuery1.FieldValues['CA6'];
IBDataSet2.FieldValues['CG6']:=IBQuery1.FieldValues['CG6'];
IBDataSet2.FieldValues['AG6']:=IBQuery1.FieldValues['AG6'];
//IBDataSet2.FieldValues['ID_OFFERTA']:=IBQuery1.FieldValues['ID_OFFERTA'];
IBDataSet2.FieldValues['CR']:=IBQuery1.FieldValues['CR'];
IBDataSet2.FieldValues['CR2']:=IBQuery1.FieldValues['CR2'];
IBDataSet2.FieldValues['CR3']:=IBQuery1.FieldValues['CR3'];
IBDataSet2.FieldValues['CR4']:=IBQuery1.FieldValues['CR4'];
IBDataSet2.FieldValues['CR5']:=IBQuery1.FieldValues['CR5'];
IBDataSet2.FieldValues['CR6']:=IBQuery1.FieldValues['CR6'];

IBDataSet2.Post;
end
else
begin
IBDataSet2.Locate('CODICE_ARTICOLO',coda,[]);
IBDataSet2.Edit;
IBDataSet2.FieldValues['DESCR']:=IBQuery1.FieldValues['DESCR'];
IBDataSet2.FieldValues['DESCR2']:=IBQuery1.FieldValues['DESCR2'];
IBDataSet2.FieldValues['CODICE_IVA_ID']:=IBQuery1.FieldValues['CODICE_IVA_ID'];
IBDataSet2.FieldValues['UNITA_DI_MISURA1_ID']:=IBQuery1.FieldValues['UNITA_DI_MISURA1_ID'];
IBDataSet2.FieldValues['UNITA_DI_MISURA2_ID']:=IBQuery1.FieldValues['UNITA_DI_MISURA2_ID'];
IBDataSet2.FieldValues['UNITA_DI_MISURA3_ID']:=IBQuery1.FieldValues['UNITA_DI_MISURA3_ID'];
IBDataSet2.FieldValues['SCONTO1']:=IBQuery1.FieldValues['SCONTO1'];
IBDataSet2.FieldValues['SCONTO2']:=IBQuery1.FieldValues['SCONTO2'];
IBDataSet2.FieldValues['SCONTO3']:=IBQuery1.FieldValues['SCONTO3'];
IBDataSet2.FieldValues['PROVVIGIONE']:=IBQuery1.FieldValues['PROVVIGIONE'];
IBDataSet2.FieldValues['PESO_NETTO_KG']:=IBQuery1.FieldValues['PESO_NETTO_KG'];
IBDataSet2.FieldValues['PESO_LORDO_KG']:=IBQuery1.FieldValues['PESO_LORDO_KG'];
IBDataSet2.FieldValues['SCORTA_MIN']:=IBQuery1.FieldValues['SCORTA_MIN'];
IBDataSet2.FieldValues['SCORTA_MAX']:=IBQuery1.FieldValues['SCORTA_MAX'];
IBDataSet2.FieldValues['LOTTO_RIORDINO']:=IBQuery1.FieldValues['LOTTO_RIORDINO'];
IBDataSet2.FieldValues['GG_APPROVVIGIONAMENTO']:=IBQuery1.FieldValues['GG_APPROVVIGIONAMENTO'];
IBDataSet2.FieldValues['QTA_X_CONFEZIONE']:=IBQuery1.FieldValues['QTA_X_CONFEZIONE'];
IBDataSet2.FieldValues['ANNO']:=IBQuery1.FieldValues['ANNO'];
IBDataSet2.FieldValues['DESCR_AGGIUNTIVA_ID']:=IBQuery1.FieldValues['DESCR_AGGIUNTIVA_ID'];
IBDataSet2.FieldValues['PREZZO_BASE']:=IBQuery1.FieldValues['PREZZO_BASE'];
IBDataSet2.FieldValues['COSTO_STANDART']:=IBQuery1.FieldValues['COSTO_STANDART'];
IBDataSet2.FieldValues['TIPO_ARTICOLO_ID']:=IBQuery1.FieldValues['TIPO_ARTICOLO_ID'];
IBDataSet2.FieldValues['FATT_CONV1']:=IBQuery1.FieldValues['FATT_CONV1'];
IBDataSet2.FieldValues['FATT_CONV2']:=IBQuery1.FieldValues['FATT_CONV2'];
IBDataSet2.FieldValues['COSTO_ID']:=IBQuery1.FieldValues['COSTO_ID'];
IBDataSet2.FieldValues['RICAVO_ID']:=IBQuery1.FieldValues['RICAVO_ID'];
IBDataSet2.FieldValues['GIORNI_MAX_INVENDUTO']:=IBQuery1.FieldValues['GIORNI_MAX_INVENDUTO'];
IBDataSet2.FieldValues['ASPETTO_ID']:=IBQuery1.FieldValues['ASPETTO_ID'];
IBDataSet2.FieldValues['RIORDINO_MESE_DA']:=IBQuery1.FieldValues['RIORDINO_MESE_DA'];
IBDataSet2.FieldValues['RIORDINO_MESE_A']:=IBQuery1.FieldValues['RIORDINO_MESE_A'];
IBDataSet2.FieldValues['RIORDINO_GIORNO_DA']:=IBQuery1.FieldValues['RIORDINO_GIORNO_DA'];
IBDataSet2.FieldValues['RIORDINO_GIORNO_A']:=IBQuery1.FieldValues['RIORDINO_GIORNO_A'];
IBDataSet2.FieldValues['STAGIONE_ID']:=IBQuery1.FieldValues['STAGIONE_ID'];
IBDataSet2.FieldValues['GRUPPO_ALTERNATIVO']:=IBQuery1.FieldValues['GRUPPO_ALTERNATIVO'];
IBDataSet2.FieldValues['PRODUTTORE_ID']:=IBQuery1.FieldValues['PRODUTTORE_ID'];
IBDataSet2.FieldValues['CATEGORIA_ARTICOLO_ID']:=IBQuery1.FieldValues['CATEGORIA_ARTICOLO_ID'];
IBDataSet2.FieldValues['CATEGORIA_MERCEOLOGICA_ID']:=IBQuery1.FieldValues['CATEGORIA_MERCEOLOGICA_ID'];
IBDataSet2.FieldValues['CODICE_BASE']:=IBQuery1.FieldValues['CODICE_BASE'];
IBDataSet2.FieldValues['DERIVATO']:=IBQuery1.FieldValues['DERIVATO'];
IBDataSet2.FieldValues['VARIANTE1_ID']:=IBQuery1.FieldValues['VARIANTE1_ID'];
IBDataSet2.FieldValues['VARIANTE2_ID']:=IBQuery1.FieldValues['VARIANTE2_ID'];
IBDataSet2.FieldValues['VARIANTE3_ID']:=IBQuery1.FieldValues['VARIANTE3_ID'];
IBDataSet2.FieldValues['NUM_VARIANTI']:=IBQuery1.FieldValues['NUM_VARIANTI'];
IBDataSet2.FieldValues['TIPO_COSTO_ID']:=IBQuery1.FieldValues['TIPO_COSTO_ID'];
IBDataSet2.FieldValues['TIPO_RICAVO_ID']:=IBQuery1.FieldValues['TIPO_RICAVO_ID'];
IBDataSet2.FieldValues['OMAGGIO']:=IBQuery1.FieldValues['OMAGGIO'];
IBDataSet2.FieldValues['TIPO_CLI_FOR_ID']:=IBQuery1.FieldValues['TIPO_CLI_FOR_ID'];
IBDataSet2.FieldValues['CLI_FOR_ID']:=IBQuery1.FieldValues['CLI_FOR_ID'];
IBDataSet2.FieldValues['CODE_BAR']:=IBQuery1.FieldValues['CODE_BAR'];
IBDataSet2.FieldValues['DESCR_CODE_BAR']:=IBQuery1.FieldValues['DESCR_CODE_BAR'];
IBDataSet2.FieldValues['NON_STAMPA_INVENTARIO']:=IBQuery1.FieldValues['NON_STAMPA_INVENTARIO'];
IBDataSet2.FieldValues['NON_STAMPA_REGISTRO']:=IBQuery1.FieldValues['NON_STAMPA_REGISTRO'];
IBDataSet2.FieldValues['NOMENCLATURA']:=IBQuery1.FieldValues['NOMENCLATURA'];
IBDataSet2.FieldValues['FATT_CONV1_NOMENCLATURA']:=IBQuery1.FieldValues['FATT_CONV1_NOMENCLATURA'];
IBDataSet2.FieldValues['FATT_CONV2_NOMENCLATURA']:=IBQuery1.FieldValues['FATT_CONV2_NOMENCLATURA'];
IBDataSet2.FieldValues['PROV_ORDINE']:=IBQuery1.FieldValues['PROV_ORDINE'];
IBDataSet2.FieldValues['COSTO_ULTIMO']:=IBQuery1.FieldValues['COSTO_ULTIMO'];
IBDataSet2.FieldValues['DATA_COSTO_ULTIMO']:=IBQuery1.FieldValues['DATA_COSTO_ULTIMO'];
IBDataSet2.FieldValues['NUM_REPARTO']:=IBQuery1.FieldValues['NUM_REPARTO'];
IBDataSet2.FieldValues['TIPO_CODE_BAR_ID']:=IBQuery1.FieldValues['TIPO_CODE_BAR_ID'];
IBDataSet2.FieldValues['CONTO_ACQUISTO']:=IBQuery1.FieldValues['CONTO_ACQUISTO'];
IBDataSet2.FieldValues['CONTO_VENDITA']:=IBQuery1.FieldValues['CONTO_VENDITA'];
IBDataSet2.FieldValues['UN_MIS2_VAL']:=IBQuery1.FieldValues['UN_MIS2_VAL'];
IBDataSet2.FieldValues['UN_MIS3_VAL']:=IBQuery1.FieldValues['UN_MIS3_VAL'];
IBDataSet2.FieldValues['CAT_ART_FAMIGLIA_ID']:=IBQuery1.FieldValues['CAT_ART_FAMIGLIA_ID'];
IBDataSet2.FieldValues['CAT_ART_GRUPPO_ID']:=IBQuery1.FieldValues['CAT_ART_GRUPPO_ID'];
IBDataSet2.FieldValues['CAT_ART_MARCA_ID']:=IBQuery1.FieldValues['CAT_ART_MARCA_ID'];
IBDataSet2.FieldValues['FOTO_PERCORSO']:=IBQuery1.FieldValues['FOTO_PERCORSO'];
IBDataSet2.FieldValues['CAT_ART_TIPO_ID']:=IBQuery1.FieldValues['CAT_ART_TIPO_ID'];
IBDataSet2.FieldValues['FLAG_ACCESSORIE']:=IBQuery1.FieldValues['FLAG_ACCESSORIE'];
IBDataSet2.FieldValues['DATAMOD']:=IBQuery1.FieldValues['DATAMOD'];
IBDataSet2.FieldValues['SCONTO4']:=IBQuery1.FieldValues['SCONTO4'];
IBDataSet2.FieldValues['PREZZO_IVATO']:=IBQuery1.FieldValues['PREZZO_IVATO'];
IBDataSet2.FieldValues['P2IVATO']:=IBQuery1.FieldValues['P2IVATO'];
IBDataSet2.FieldValues['P3IVATO']:=IBQuery1.FieldValues['P3IVATO'];
IBDataSet2.FieldValues['P4IVATO']:=IBQuery1.FieldValues['P4IVATO'];
IBDataSet2.FieldValues['P5IVATO']:=IBQuery1.FieldValues['P5IVATO'];
IBDataSet2.FieldValues['SC21']:=IBQuery1.FieldValues['SC21'];
IBDataSet2.FieldValues['SC22']:=IBQuery1.FieldValues['SC22'];
IBDataSet2.FieldValues['SC23']:=IBQuery1.FieldValues['SC23'];
IBDataSet2.FieldValues['SC31']:=IBQuery1.FieldValues['SC31'];
IBDataSet2.FieldValues['SC32']:=IBQuery1.FieldValues['SC32'];
IBDataSet2.FieldValues['SC33']:=IBQuery1.FieldValues['SC33'];
IBDataSet2.FieldValues['SC41']:=IBQuery1.FieldValues['SC41'];
IBDataSet2.FieldValues['SC42']:=IBQuery1.FieldValues['SC42'];
IBDataSet2.FieldValues['SC43']:=IBQuery1.FieldValues['SC43'];
IBDataSet2.FieldValues['SC51']:=IBQuery1.FieldValues['SC51'];
IBDataSet2.FieldValues['SC52']:=IBQuery1.FieldValues['SC52'];
IBDataSet2.FieldValues['SC53']:=IBQuery1.FieldValues['SC53'];
IBDataSet2.FieldValues['R2']:=IBQuery1.FieldValues['R2'];
IBDataSet2.FieldValues['R3']:=IBQuery1.FieldValues['R3'];
IBDataSet2.FieldValues['R4']:=IBQuery1.FieldValues['R4'];
IBDataSet2.FieldValues['R5']:=IBQuery1.FieldValues['R5'];
IBDataSet2.FieldValues['IMP2']:=IBQuery1.FieldValues['IMP2'];
IBDataSet2.FieldValues['IMP3']:=IBQuery1.FieldValues['IMP3'];
IBDataSet2.FieldValues['IMP4']:=IBQuery1.FieldValues['IMP4'];
IBDataSet2.FieldValues['IMP5']:=IBQuery1.FieldValues['IMP5'];
IBDataSet2.FieldValues['RICARPREC']:=IBQuery1.FieldValues['RICARPREC'];
IBDataSet2.FieldValues['P6IVATO']:=IBQuery1.FieldValues['P6IVATO'];
IBDataSet2.FieldValues['IMP6']:=IBQuery1.FieldValues['IMP6'];
IBDataSet2.FieldValues['STRUTT']:=IBQuery1.FieldValues['STRUTT'];
IBDataSet2.FieldValues['CA']:=IBQuery1.FieldValues['CA'];
IBDataSet2.FieldValues['CG']:=IBQuery1.FieldValues['CG'];
IBDataSet2.FieldValues['AG']:=IBQuery1.FieldValues['AG'];
IBDataSet2.FieldValues['CA2']:=IBQuery1.FieldValues['CA2'];
IBDataSet2.FieldValues['CG2']:=IBQuery1.FieldValues['CG2'];
IBDataSet2.FieldValues['AG2']:=IBQuery1.FieldValues['AG2'];
IBDataSet2.FieldValues['CA3']:=IBQuery1.FieldValues['CA3'];
IBDataSet2.FieldValues['CG3']:=IBQuery1.FieldValues['CG3'];
IBDataSet2.FieldValues['AG3']:=IBQuery1.FieldValues['AG3'];
IBDataSet2.FieldValues['CA4']:=IBQuery1.FieldValues['CA4'];
IBDataSet2.FieldValues['CG4']:=IBQuery1.FieldValues['CG4'];
IBDataSet2.FieldValues['AG4']:=IBQuery1.FieldValues['AG4'];
IBDataSet2.FieldValues['CA5']:=IBQuery1.FieldValues['CA5'];
IBDataSet2.FieldValues['CG5']:=IBQuery1.FieldValues['CG5'];
IBDataSet2.FieldValues['AG5']:=IBQuery1.FieldValues['AG5'];
IBDataSet2.FieldValues['CA6']:=IBQuery1.FieldValues['CA6'];
IBDataSet2.FieldValues['CG6']:=IBQuery1.FieldValues['CG6'];
IBDataSet2.FieldValues['AG6']:=IBQuery1.FieldValues['AG6'];
//IBDataSet2.FieldValues['ID_OFFERTA']:=IBQuery1.FieldValues['ID_OFFERTA'];
IBDataSet2.FieldValues['CR']:=IBQuery1.FieldValues['CR'];
IBDataSet2.FieldValues['CR2']:=IBQuery1.FieldValues['CR2'];
IBDataSet2.FieldValues['CR3']:=IBQuery1.FieldValues['CR3'];
IBDataSet2.FieldValues['CR4']:=IBQuery1.FieldValues['CR4'];
IBDataSet2.FieldValues['CR5']:=IBQuery1.FieldValues['CR5'];
IBDataSet2.FieldValues['CR6']:=IBQuery1.FieldValues['CR6'];
IBDataSet2.Post;
end;
IBQuery1.Next;
end;
IBTransaction1.Commit;

IBQuery1.EnableControls;
IBDatabase1.close;
end;

procedure TfInviaArt.SpeedButton9Click(Sender: TObject);
var
i:integer;
struser,strpass,strConnStr,coda : string;
begin
  With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
  Try
    strConnStr := ReadString('SETUP','ConnStr','localhost:C:\GEIBDB\');
    strUser := ReadString('SETUP','User','SYSDBA');
    strPass := ReadString('SETUP','Pass','masterkey');
  Finally
    Free;
  End;



IBDatabase1.close;
IBDatabase1.DatabaseName:=ExtractFilePath(Application.Exename)+'GAZEXPORT.GDB';
 Try
 IBDatabase1.Params.Clear;
 IBDatabase1.Params.Add('User_name='+strUser);
 IBDatabase1.Params.Add('password='+strPass);
 IBDatabase1.Open;
 Except
   Exit;
 End;

IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.Add('Select * from tab_articoli');
IBDataSet1.Open;
IBDataSet2.Open;


IBDataSet2.First;
//if not IBTransaction1.InTransaction then
//       IBTransaction1.StartTransaction;
while not IBDataSet2.Eof do
begin
IBDataSet2.DisableControls;

ProgressBar1.Stepit;


coda := IBDataSet2.FieldValues['CODICE_ARTICOLO'];
IBQuery3.Close;
IBQuery3.ParamByName('ca').AsString := coda;
IBQuery3.Open;
if IBQuery3.IsEmpty then
begin
IBDataSet1.Insert;
IBDataSet1.FieldValues['CODICE_ARTICOLO']:=IBDataSet2.FieldValues['CODICE_ARTICOLO'];
IBDataSet1.FieldValues['DESCR']:=IBDataSet2.FieldValues['DESCR'];
IBDataSet1.FieldValues['DESCR2']:=IBDataSet2.FieldValues['DESCR2'];
IBDataSet1.FieldValues['CODICE_IVA_ID']:=IBDataSet2.FieldValues['CODICE_IVA_ID'];
IBDataSet1.FieldValues['UNITA_DI_MISURA1_ID']:=IBDataSet2.FieldValues['UNITA_DI_MISURA1_ID'];
IBDataSet1.FieldValues['UNITA_DI_MISURA2_ID']:=IBDataSet2.FieldValues['UNITA_DI_MISURA2_ID'];
IBDataSet1.FieldValues['UNITA_DI_MISURA3_ID']:=IBDataSet2.FieldValues['UNITA_DI_MISURA3_ID'];
IBDataSet1.FieldValues['SCONTO1']:=IBDataSet2.FieldValues['SCONTO1'];
IBDataSet1.FieldValues['SCONTO2']:=IBDataSet2.FieldValues['SCONTO2'];
IBDataSet1.FieldValues['SCONTO3']:=IBDataSet2.FieldValues['SCONTO3'];
IBDataSet1.FieldValues['PROVVIGIONE']:=IBDataSet2.FieldValues['PROVVIGIONE'];
IBDataSet1.FieldValues['PESO_NETTO_KG']:=IBDataSet2.FieldValues['PESO_NETTO_KG'];
IBDataSet1.FieldValues['PESO_LORDO_KG']:=IBDataSet2.FieldValues['PESO_LORDO_KG'];
IBDataSet1.FieldValues['SCORTA_MIN']:=IBDataSet2.FieldValues['SCORTA_MIN'];
IBDataSet1.FieldValues['SCORTA_MAX']:=IBDataSet2.FieldValues['SCORTA_MAX'];
IBDataSet1.FieldValues['LOTTO_RIORDINO']:=IBDataSet2.FieldValues['LOTTO_RIORDINO'];
IBDataSet1.FieldValues['GG_APPROVVIGIONAMENTO']:=IBDataSet2.FieldValues['GG_APPROVVIGIONAMENTO'];
IBDataSet1.FieldValues['QTA_X_CONFEZIONE']:=IBDataSet2.FieldValues['QTA_X_CONFEZIONE'];
IBDataSet1.FieldValues['ANNO']:=IBDataSet2.FieldValues['ANNO'];
IBDataSet1.FieldValues['DESCR_AGGIUNTIVA_ID']:=IBDataSet2.FieldValues['DESCR_AGGIUNTIVA_ID'];
IBDataSet1.FieldValues['PREZZO_BASE']:=IBDataSet2.FieldValues['PREZZO_BASE'];
IBDataSet1.FieldValues['COSTO_STANDART']:=IBDataSet2.FieldValues['COSTO_STANDART'];
IBDataSet1.FieldValues['TIPO_ARTICOLO_ID']:=IBDataSet2.FieldValues['TIPO_ARTICOLO_ID'];
IBDataSet1.FieldValues['FATT_CONV1']:=IBDataSet2.FieldValues['FATT_CONV1'];
IBDataSet1.FieldValues['FATT_CONV2']:=IBDataSet2.FieldValues['FATT_CONV2'];
IBDataSet1.FieldValues['COSTO_ID']:=IBDataSet2.FieldValues['COSTO_ID'];
IBDataSet1.FieldValues['RICAVO_ID']:=IBDataSet2.FieldValues['RICAVO_ID'];
IBDataSet1.FieldValues['GIORNI_MAX_INVENDUTO']:=IBDataSet2.FieldValues['GIORNI_MAX_INVENDUTO'];
IBDataSet1.FieldValues['ASPETTO_ID']:=IBDataSet2.FieldValues['ASPETTO_ID'];
IBDataSet1.FieldValues['RIORDINO_MESE_DA']:=IBDataSet2.FieldValues['RIORDINO_MESE_DA'];
IBDataSet1.FieldValues['RIORDINO_MESE_A']:=IBDataSet2.FieldValues['RIORDINO_MESE_A'];
IBDataSet1.FieldValues['RIORDINO_GIORNO_DA']:=IBDataSet2.FieldValues['RIORDINO_GIORNO_DA'];
IBDataSet1.FieldValues['RIORDINO_GIORNO_A']:=IBDataSet2.FieldValues['RIORDINO_GIORNO_A'];
IBDataSet1.FieldValues['STAGIONE_ID']:=IBDataSet2.FieldValues['STAGIONE_ID'];
IBDataSet1.FieldValues['GRUPPO_ALTERNATIVO']:=IBDataSet2.FieldValues['GRUPPO_ALTERNATIVO'];
IBDataSet1.FieldValues['PRODUTTORE_ID']:=IBDataSet2.FieldValues['PRODUTTORE_ID'];
IBDataSet1.FieldValues['CATEGORIA_ARTICOLO_ID']:=IBDataSet2.FieldValues['CATEGORIA_ARTICOLO_ID'];
IBDataSet1.FieldValues['CATEGORIA_MERCEOLOGICA_ID']:=IBDataSet2.FieldValues['CATEGORIA_MERCEOLOGICA_ID'];
IBDataSet1.FieldValues['CODICE_BASE']:=IBDataSet2.FieldValues['CODICE_BASE'];
IBDataSet1.FieldValues['DERIVATO']:=IBDataSet2.FieldValues['DERIVATO'];
IBDataSet1.FieldValues['VARIANTE1_ID']:=IBDataSet2.FieldValues['VARIANTE1_ID'];
IBDataSet1.FieldValues['VARIANTE2_ID']:=IBDataSet2.FieldValues['VARIANTE2_ID'];
IBDataSet1.FieldValues['VARIANTE3_ID']:=IBDataSet2.FieldValues['VARIANTE3_ID'];
IBDataSet1.FieldValues['NUM_VARIANTI']:=IBDataSet2.FieldValues['NUM_VARIANTI'];
IBDataSet1.FieldValues['TIPO_COSTO_ID']:=IBDataSet2.FieldValues['TIPO_COSTO_ID'];
IBDataSet1.FieldValues['TIPO_RICAVO_ID']:=IBDataSet2.FieldValues['TIPO_RICAVO_ID'];
IBDataSet1.FieldValues['OMAGGIO']:=IBDataSet2.FieldValues['OMAGGIO'];
IBDataSet1.FieldValues['TIPO_CLI_FOR_ID']:=IBDataSet2.FieldValues['TIPO_CLI_FOR_ID'];
IBDataSet1.FieldValues['CLI_FOR_ID']:=IBDataSet2.FieldValues['CLI_FOR_ID'];
IBDataSet1.FieldValues['CODE_BAR']:=IBDataSet2.FieldValues['CODE_BAR'];
IBDataSet1.FieldValues['DESCR_CODE_BAR']:=IBDataSet2.FieldValues['DESCR_CODE_BAR'];
IBDataSet1.FieldValues['NON_STAMPA_INVENTARIO']:=IBDataSet2.FieldValues['NON_STAMPA_INVENTARIO'];
IBDataSet1.FieldValues['NON_STAMPA_REGISTRO']:=IBDataSet2.FieldValues['NON_STAMPA_REGISTRO'];
IBDataSet1.FieldValues['NOMENCLATURA']:=IBDataSet2.FieldValues['NOMENCLATURA'];
IBDataSet1.FieldValues['FATT_CONV1_NOMENCLATURA']:=IBDataSet2.FieldValues['FATT_CONV1_NOMENCLATURA'];
IBDataSet1.FieldValues['FATT_CONV2_NOMENCLATURA']:=IBDataSet2.FieldValues['FATT_CONV2_NOMENCLATURA'];
IBDataSet1.FieldValues['PROV_ORDINE']:=IBDataSet2.FieldValues['PROV_ORDINE'];
IBDataSet1.FieldValues['COSTO_ULTIMO']:=IBDataSet2.FieldValues['COSTO_ULTIMO'];
IBDataSet1.FieldValues['DATA_COSTO_ULTIMO']:=IBDataSet2.FieldValues['DATA_COSTO_ULTIMO'];
IBDataSet1.FieldValues['NUM_REPARTO']:=IBDataSet2.FieldValues['NUM_REPARTO'];
IBDataSet1.FieldValues['TIPO_CODE_BAR_ID']:=IBDataSet2.FieldValues['TIPO_CODE_BAR_ID'];
IBDataSet1.FieldValues['CONTO_ACQUISTO']:=IBDataSet2.FieldValues['CONTO_ACQUISTO'];
IBDataSet1.FieldValues['CONTO_VENDITA']:=IBDataSet2.FieldValues['CONTO_VENDITA'];
IBDataSet1.FieldValues['UN_MIS2_VAL']:=IBDataSet2.FieldValues['UN_MIS2_VAL'];
IBDataSet1.FieldValues['UN_MIS3_VAL']:=IBDataSet2.FieldValues['UN_MIS3_VAL'];
IBDataSet1.FieldValues['CAT_ART_FAMIGLIA_ID']:=IBDataSet2.FieldValues['CAT_ART_FAMIGLIA_ID'];
IBDataSet1.FieldValues['CAT_ART_GRUPPO_ID']:=IBDataSet2.FieldValues['CAT_ART_GRUPPO_ID'];
IBDataSet1.FieldValues['CAT_ART_MARCA_ID']:=IBDataSet2.FieldValues['CAT_ART_MARCA_ID'];
IBDataSet1.FieldValues['FOTO_PERCORSO']:=IBDataSet2.FieldValues['FOTO_PERCORSO'];
IBDataSet1.FieldValues['CAT_ART_TIPO_ID']:=IBDataSet2.FieldValues['CAT_ART_TIPO_ID'];
IBDataSet1.FieldValues['FLAG_ACCESSORIE']:=IBDataSet2.FieldValues['FLAG_ACCESSORIE'];
IBDataSet1.FieldValues['DATAMOD']:=IBDataSet2.FieldValues['DATAMOD'];
IBDataSet1.FieldValues['SCONTO4']:=IBDataSet2.FieldValues['SCONTO4'];
IBDataSet1.FieldValues['PREZZO_IVATO']:=IBDataSet2.FieldValues['PREZZO_IVATO'];
IBDataSet1.FieldValues['P2IVATO']:=IBDataSet2.FieldValues['P2IVATO'];
IBDataSet1.FieldValues['P3IVATO']:=IBDataSet2.FieldValues['P3IVATO'];
IBDataSet1.FieldValues['P4IVATO']:=IBDataSet2.FieldValues['P4IVATO'];
IBDataSet1.FieldValues['P5IVATO']:=IBDataSet2.FieldValues['P5IVATO'];
IBDataSet1.FieldValues['SC21']:=IBDataSet2.FieldValues['SC21'];
IBDataSet1.FieldValues['SC22']:=IBDataSet2.FieldValues['SC22'];
IBDataSet1.FieldValues['SC23']:=IBDataSet2.FieldValues['SC23'];
IBDataSet1.FieldValues['SC31']:=IBDataSet2.FieldValues['SC31'];
IBDataSet1.FieldValues['SC32']:=IBDataSet2.FieldValues['SC32'];
IBDataSet1.FieldValues['SC33']:=IBDataSet2.FieldValues['SC33'];
IBDataSet1.FieldValues['SC41']:=IBDataSet2.FieldValues['SC41'];
IBDataSet1.FieldValues['SC42']:=IBDataSet2.FieldValues['SC42'];
IBDataSet1.FieldValues['SC43']:=IBDataSet2.FieldValues['SC43'];
IBDataSet1.FieldValues['SC51']:=IBDataSet2.FieldValues['SC51'];
IBDataSet1.FieldValues['SC52']:=IBDataSet2.FieldValues['SC52'];
IBDataSet1.FieldValues['SC53']:=IBDataSet2.FieldValues['SC53'];
IBDataSet1.FieldValues['R2']:=IBDataSet2.FieldValues['R2'];
IBDataSet1.FieldValues['R3']:=IBDataSet2.FieldValues['R3'];
IBDataSet1.FieldValues['R4']:=IBDataSet2.FieldValues['R4'];
IBDataSet1.FieldValues['R5']:=IBDataSet2.FieldValues['R5'];
IBDataSet1.FieldValues['IMP2']:=IBDataSet2.FieldValues['IMP2'];
IBDataSet1.FieldValues['IMP3']:=IBDataSet2.FieldValues['IMP3'];
IBDataSet1.FieldValues['IMP4']:=IBDataSet2.FieldValues['IMP4'];
IBDataSet1.FieldValues['IMP5']:=IBDataSet2.FieldValues['IMP5'];
IBDataSet1.FieldValues['RICARPREC']:=IBDataSet2.FieldValues['RICARPREC'];
IBDataSet1.FieldValues['P6IVATO']:=IBDataSet2.FieldValues['P6IVATO'];
IBDataSet1.FieldValues['IMP6']:=IBDataSet2.FieldValues['IMP6'];
IBDataSet1.FieldValues['STRUTT']:=IBDataSet2.FieldValues['STRUTT'];
IBDataSet1.FieldValues['CA']:=IBDataSet2.FieldValues['CA'];
IBDataSet1.FieldValues['CG']:=IBDataSet2.FieldValues['CG'];
IBDataSet1.FieldValues['AG']:=IBDataSet2.FieldValues['AG'];
IBDataSet1.FieldValues['CA2']:=IBDataSet2.FieldValues['CA2'];
IBDataSet1.FieldValues['CG2']:=IBDataSet2.FieldValues['CG2'];
IBDataSet1.FieldValues['AG2']:=IBDataSet2.FieldValues['AG2'];
IBDataSet1.FieldValues['CA3']:=IBDataSet2.FieldValues['CA3'];
IBDataSet1.FieldValues['CG3']:=IBDataSet2.FieldValues['CG3'];
IBDataSet1.FieldValues['AG3']:=IBDataSet2.FieldValues['AG3'];
IBDataSet1.FieldValues['CA4']:=IBDataSet2.FieldValues['CA4'];
IBDataSet1.FieldValues['CG4']:=IBDataSet2.FieldValues['CG4'];
IBDataSet1.FieldValues['AG4']:=IBDataSet2.FieldValues['AG4'];
IBDataSet1.FieldValues['CA5']:=IBDataSet2.FieldValues['CA5'];
IBDataSet1.FieldValues['CG5']:=IBDataSet2.FieldValues['CG5'];
IBDataSet1.FieldValues['AG5']:=IBDataSet2.FieldValues['AG5'];
IBDataSet1.FieldValues['CA6']:=IBDataSet2.FieldValues['CA6'];
IBDataSet1.FieldValues['CG6']:=IBDataSet2.FieldValues['CG6'];
IBDataSet1.FieldValues['AG6']:=IBDataSet2.FieldValues['AG6'];
//IBDataSet1.FieldValues['ID_OFFERTA']:=IBDataSet2.FieldValues['ID_OFFERTA'];
IBDataSet1.FieldValues['CR']:=IBDataSet2.FieldValues['CR'];
IBDataSet1.FieldValues['CR2']:=IBDataSet2.FieldValues['CR2'];
IBDataSet1.FieldValues['CR3']:=IBDataSet2.FieldValues['CR3'];
IBDataSet1.FieldValues['CR4']:=IBDataSet2.FieldValues['CR4'];
IBDataSet1.FieldValues['CR5']:=IBDataSet2.FieldValues['CR5'];
IBDataSet1.FieldValues['CR6']:=IBDataSet2.FieldValues['CR6'];

IBDataSet1.Post;
end
else
begin
IBDataSet1.Locate('CODICE_ARTICOLO',coda,[]);
IBDataSet1.Edit;
IBDataSet1.FieldValues['DESCR']:=IBDataSet2.FieldValues['DESCR'];
IBDataSet1.FieldValues['DESCR2']:=IBDataSet2.FieldValues['DESCR2'];
IBDataSet1.FieldValues['CODICE_IVA_ID']:=IBDataSet2.FieldValues['CODICE_IVA_ID'];
IBDataSet1.FieldValues['UNITA_DI_MISURA1_ID']:=IBDataSet2.FieldValues['UNITA_DI_MISURA1_ID'];
IBDataSet1.FieldValues['UNITA_DI_MISURA2_ID']:=IBDataSet2.FieldValues['UNITA_DI_MISURA2_ID'];
IBDataSet1.FieldValues['UNITA_DI_MISURA3_ID']:=IBDataSet2.FieldValues['UNITA_DI_MISURA3_ID'];
IBDataSet1.FieldValues['SCONTO1']:=IBDataSet2.FieldValues['SCONTO1'];
IBDataSet1.FieldValues['SCONTO2']:=IBDataSet2.FieldValues['SCONTO2'];
IBDataSet1.FieldValues['SCONTO3']:=IBDataSet2.FieldValues['SCONTO3'];
IBDataSet1.FieldValues['PROVVIGIONE']:=IBDataSet2.FieldValues['PROVVIGIONE'];
IBDataSet1.FieldValues['PESO_NETTO_KG']:=IBDataSet2.FieldValues['PESO_NETTO_KG'];
IBDataSet1.FieldValues['PESO_LORDO_KG']:=IBDataSet2.FieldValues['PESO_LORDO_KG'];
IBDataSet1.FieldValues['SCORTA_MIN']:=IBDataSet2.FieldValues['SCORTA_MIN'];
IBDataSet1.FieldValues['SCORTA_MAX']:=IBDataSet2.FieldValues['SCORTA_MAX'];
IBDataSet1.FieldValues['LOTTO_RIORDINO']:=IBDataSet2.FieldValues['LOTTO_RIORDINO'];
IBDataSet1.FieldValues['GG_APPROVVIGIONAMENTO']:=IBDataSet2.FieldValues['GG_APPROVVIGIONAMENTO'];
IBDataSet1.FieldValues['QTA_X_CONFEZIONE']:=IBDataSet2.FieldValues['QTA_X_CONFEZIONE'];
IBDataSet1.FieldValues['ANNO']:=IBDataSet2.FieldValues['ANNO'];
IBDataSet1.FieldValues['DESCR_AGGIUNTIVA_ID']:=IBDataSet2.FieldValues['DESCR_AGGIUNTIVA_ID'];
IBDataSet1.FieldValues['PREZZO_BASE']:=IBDataSet2.FieldValues['PREZZO_BASE'];
IBDataSet1.FieldValues['COSTO_STANDART']:=IBDataSet2.FieldValues['COSTO_STANDART'];
IBDataSet1.FieldValues['TIPO_ARTICOLO_ID']:=IBDataSet2.FieldValues['TIPO_ARTICOLO_ID'];
IBDataSet1.FieldValues['FATT_CONV1']:=IBDataSet2.FieldValues['FATT_CONV1'];
IBDataSet1.FieldValues['FATT_CONV2']:=IBDataSet2.FieldValues['FATT_CONV2'];
IBDataSet1.FieldValues['COSTO_ID']:=IBDataSet2.FieldValues['COSTO_ID'];
IBDataSet1.FieldValues['RICAVO_ID']:=IBDataSet2.FieldValues['RICAVO_ID'];
IBDataSet1.FieldValues['GIORNI_MAX_INVENDUTO']:=IBDataSet2.FieldValues['GIORNI_MAX_INVENDUTO'];
IBDataSet1.FieldValues['ASPETTO_ID']:=IBDataSet2.FieldValues['ASPETTO_ID'];
IBDataSet1.FieldValues['RIORDINO_MESE_DA']:=IBDataSet2.FieldValues['RIORDINO_MESE_DA'];
IBDataSet1.FieldValues['RIORDINO_MESE_A']:=IBDataSet2.FieldValues['RIORDINO_MESE_A'];
IBDataSet1.FieldValues['RIORDINO_GIORNO_DA']:=IBDataSet2.FieldValues['RIORDINO_GIORNO_DA'];
IBDataSet1.FieldValues['RIORDINO_GIORNO_A']:=IBDataSet2.FieldValues['RIORDINO_GIORNO_A'];
IBDataSet1.FieldValues['STAGIONE_ID']:=IBDataSet2.FieldValues['STAGIONE_ID'];
IBDataSet1.FieldValues['GRUPPO_ALTERNATIVO']:=IBDataSet2.FieldValues['GRUPPO_ALTERNATIVO'];
IBDataSet1.FieldValues['PRODUTTORE_ID']:=IBDataSet2.FieldValues['PRODUTTORE_ID'];
IBDataSet1.FieldValues['CATEGORIA_ARTICOLO_ID']:=IBDataSet2.FieldValues['CATEGORIA_ARTICOLO_ID'];
IBDataSet1.FieldValues['CATEGORIA_MERCEOLOGICA_ID']:=IBDataSet2.FieldValues['CATEGORIA_MERCEOLOGICA_ID'];
IBDataSet1.FieldValues['CODICE_BASE']:=IBDataSet2.FieldValues['CODICE_BASE'];
IBDataSet1.FieldValues['DERIVATO']:=IBDataSet2.FieldValues['DERIVATO'];
IBDataSet1.FieldValues['VARIANTE1_ID']:=IBDataSet2.FieldValues['VARIANTE1_ID'];
IBDataSet1.FieldValues['VARIANTE2_ID']:=IBDataSet2.FieldValues['VARIANTE2_ID'];
IBDataSet1.FieldValues['VARIANTE3_ID']:=IBDataSet2.FieldValues['VARIANTE3_ID'];
IBDataSet1.FieldValues['NUM_VARIANTI']:=IBDataSet2.FieldValues['NUM_VARIANTI'];
IBDataSet1.FieldValues['TIPO_COSTO_ID']:=IBDataSet2.FieldValues['TIPO_COSTO_ID'];
IBDataSet1.FieldValues['TIPO_RICAVO_ID']:=IBDataSet2.FieldValues['TIPO_RICAVO_ID'];
IBDataSet1.FieldValues['OMAGGIO']:=IBDataSet2.FieldValues['OMAGGIO'];
IBDataSet1.FieldValues['TIPO_CLI_FOR_ID']:=IBDataSet2.FieldValues['TIPO_CLI_FOR_ID'];
IBDataSet1.FieldValues['CLI_FOR_ID']:=IBDataSet2.FieldValues['CLI_FOR_ID'];
IBDataSet1.FieldValues['CODE_BAR']:=IBDataSet2.FieldValues['CODE_BAR'];
IBDataSet1.FieldValues['DESCR_CODE_BAR']:=IBDataSet2.FieldValues['DESCR_CODE_BAR'];
IBDataSet1.FieldValues['NON_STAMPA_INVENTARIO']:=IBDataSet2.FieldValues['NON_STAMPA_INVENTARIO'];
IBDataSet1.FieldValues['NON_STAMPA_REGISTRO']:=IBDataSet2.FieldValues['NON_STAMPA_REGISTRO'];
IBDataSet1.FieldValues['NOMENCLATURA']:=IBDataSet2.FieldValues['NOMENCLATURA'];
IBDataSet1.FieldValues['FATT_CONV1_NOMENCLATURA']:=IBDataSet2.FieldValues['FATT_CONV1_NOMENCLATURA'];
IBDataSet1.FieldValues['FATT_CONV2_NOMENCLATURA']:=IBDataSet2.FieldValues['FATT_CONV2_NOMENCLATURA'];
IBDataSet1.FieldValues['PROV_ORDINE']:=IBDataSet2.FieldValues['PROV_ORDINE'];
IBDataSet1.FieldValues['COSTO_ULTIMO']:=IBDataSet2.FieldValues['COSTO_ULTIMO'];
IBDataSet1.FieldValues['DATA_COSTO_ULTIMO']:=IBDataSet2.FieldValues['DATA_COSTO_ULTIMO'];
IBDataSet1.FieldValues['NUM_REPARTO']:=IBDataSet2.FieldValues['NUM_REPARTO'];
IBDataSet1.FieldValues['TIPO_CODE_BAR_ID']:=IBDataSet2.FieldValues['TIPO_CODE_BAR_ID'];
IBDataSet1.FieldValues['CONTO_ACQUISTO']:=IBDataSet2.FieldValues['CONTO_ACQUISTO'];
IBDataSet1.FieldValues['CONTO_VENDITA']:=IBDataSet2.FieldValues['CONTO_VENDITA'];
IBDataSet1.FieldValues['UN_MIS2_VAL']:=IBDataSet2.FieldValues['UN_MIS2_VAL'];
IBDataSet1.FieldValues['UN_MIS3_VAL']:=IBDataSet2.FieldValues['UN_MIS3_VAL'];
IBDataSet1.FieldValues['CAT_ART_FAMIGLIA_ID']:=IBDataSet2.FieldValues['CAT_ART_FAMIGLIA_ID'];
IBDataSet1.FieldValues['CAT_ART_GRUPPO_ID']:=IBDataSet2.FieldValues['CAT_ART_GRUPPO_ID'];
IBDataSet1.FieldValues['CAT_ART_MARCA_ID']:=IBDataSet2.FieldValues['CAT_ART_MARCA_ID'];
IBDataSet1.FieldValues['FOTO_PERCORSO']:=IBDataSet2.FieldValues['FOTO_PERCORSO'];
IBDataSet1.FieldValues['CAT_ART_TIPO_ID']:=IBDataSet2.FieldValues['CAT_ART_TIPO_ID'];
IBDataSet1.FieldValues['FLAG_ACCESSORIE']:=IBDataSet2.FieldValues['FLAG_ACCESSORIE'];
IBDataSet1.FieldValues['DATAMOD']:=IBDataSet2.FieldValues['DATAMOD'];
IBDataSet1.FieldValues['SCONTO4']:=IBDataSet2.FieldValues['SCONTO4'];
IBDataSet1.FieldValues['PREZZO_IVATO']:=IBDataSet2.FieldValues['PREZZO_IVATO'];
IBDataSet1.FieldValues['P2IVATO']:=IBDataSet2.FieldValues['P2IVATO'];
IBDataSet1.FieldValues['P3IVATO']:=IBDataSet2.FieldValues['P3IVATO'];
IBDataSet1.FieldValues['P4IVATO']:=IBDataSet2.FieldValues['P4IVATO'];
IBDataSet1.FieldValues['P5IVATO']:=IBDataSet2.FieldValues['P5IVATO'];
IBDataSet1.FieldValues['SC21']:=IBDataSet2.FieldValues['SC21'];
IBDataSet1.FieldValues['SC22']:=IBDataSet2.FieldValues['SC22'];
IBDataSet1.FieldValues['SC23']:=IBDataSet2.FieldValues['SC23'];
IBDataSet1.FieldValues['SC31']:=IBDataSet2.FieldValues['SC31'];
IBDataSet1.FieldValues['SC32']:=IBDataSet2.FieldValues['SC32'];
IBDataSet1.FieldValues['SC33']:=IBDataSet2.FieldValues['SC33'];
IBDataSet1.FieldValues['SC41']:=IBDataSet2.FieldValues['SC41'];
IBDataSet1.FieldValues['SC42']:=IBDataSet2.FieldValues['SC42'];
IBDataSet1.FieldValues['SC43']:=IBDataSet2.FieldValues['SC43'];
IBDataSet1.FieldValues['SC51']:=IBDataSet2.FieldValues['SC51'];
IBDataSet1.FieldValues['SC52']:=IBDataSet2.FieldValues['SC52'];
IBDataSet1.FieldValues['SC53']:=IBDataSet2.FieldValues['SC53'];
IBDataSet1.FieldValues['R2']:=IBDataSet2.FieldValues['R2'];
IBDataSet1.FieldValues['R3']:=IBDataSet2.FieldValues['R3'];
IBDataSet1.FieldValues['R4']:=IBDataSet2.FieldValues['R4'];
IBDataSet1.FieldValues['R5']:=IBDataSet2.FieldValues['R5'];
IBDataSet1.FieldValues['IMP2']:=IBDataSet2.FieldValues['IMP2'];
IBDataSet1.FieldValues['IMP3']:=IBDataSet2.FieldValues['IMP3'];
IBDataSet1.FieldValues['IMP4']:=IBDataSet2.FieldValues['IMP4'];
IBDataSet1.FieldValues['IMP5']:=IBDataSet2.FieldValues['IMP5'];
IBDataSet1.FieldValues['RICARPREC']:=IBDataSet2.FieldValues['RICARPREC'];
IBDataSet1.FieldValues['P6IVATO']:=IBDataSet2.FieldValues['P6IVATO'];
IBDataSet1.FieldValues['IMP6']:=IBDataSet2.FieldValues['IMP6'];
IBDataSet1.FieldValues['STRUTT']:=IBDataSet2.FieldValues['STRUTT'];
IBDataSet1.FieldValues['CA']:=IBDataSet2.FieldValues['CA'];
IBDataSet1.FieldValues['CG']:=IBDataSet2.FieldValues['CG'];
IBDataSet1.FieldValues['AG']:=IBDataSet2.FieldValues['AG'];
IBDataSet1.FieldValues['CA2']:=IBDataSet2.FieldValues['CA2'];
IBDataSet1.FieldValues['CG2']:=IBDataSet2.FieldValues['CG2'];
IBDataSet1.FieldValues['AG2']:=IBDataSet2.FieldValues['AG2'];
IBDataSet1.FieldValues['CA3']:=IBDataSet2.FieldValues['CA3'];
IBDataSet1.FieldValues['CG3']:=IBDataSet2.FieldValues['CG3'];
IBDataSet1.FieldValues['AG3']:=IBDataSet2.FieldValues['AG3'];
IBDataSet1.FieldValues['CA4']:=IBDataSet2.FieldValues['CA4'];
IBDataSet1.FieldValues['CG4']:=IBDataSet2.FieldValues['CG4'];
IBDataSet1.FieldValues['AG4']:=IBDataSet2.FieldValues['AG4'];
IBDataSet1.FieldValues['CA5']:=IBDataSet2.FieldValues['CA5'];
IBDataSet1.FieldValues['CG5']:=IBDataSet2.FieldValues['CG5'];
IBDataSet1.FieldValues['AG5']:=IBDataSet2.FieldValues['AG5'];
IBDataSet1.FieldValues['CA6']:=IBDataSet2.FieldValues['CA6'];
IBDataSet1.FieldValues['CG6']:=IBDataSet2.FieldValues['CG6'];
IBDataSet1.FieldValues['AG6']:=IBDataSet2.FieldValues['AG6'];
//IBDataSet1.FieldValues['ID_OFFERTA']:=IBDataSet2.FieldValues['ID_OFFERTA'];
IBDataSet1.FieldValues['CR']:=IBDataSet2.FieldValues['CR'];
IBDataSet1.FieldValues['CR2']:=IBDataSet2.FieldValues['CR2'];
IBDataSet1.FieldValues['CR3']:=IBDataSet2.FieldValues['CR3'];
IBDataSet1.FieldValues['CR4']:=IBDataSet2.FieldValues['CR4'];
IBDataSet1.FieldValues['CR5']:=IBDataSet2.FieldValues['CR5'];
IBDataSet1.FieldValues['CR6']:=IBDataSet2.FieldValues['CR6'];
IBDataSet1.Post;
end;
IBDataSet2.Next;
end;


IBDataSet2.EnableControls;
IBDatabase1.close;
end;


procedure TfInviaArt.SpeedButton12Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k, m1,m2,m3 : Integer;
A, b, c, x,S1,S2,S3 : String;
g, h, l, m : real;
Year, Month, Day : Word;
begin
if RadioGroup1.ItemIndex = 1 then
begin
//x :='RegData Between (#'+FormatDateTime('MM/DD/yyyy',Strtodate(DaData.Text)) +'#) and (#'+ FormatDateTime('MM/DD/yyyy',Strtodate(aData.Text))+'#)' ;
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('where DATAMOD>=:da and DATAMOD<=:a');
IBQuery1.SQL.Add('and NON_STAMPA_INVENTARIO<>1');
IBQuery1.SQL.Add('order by codice_Articolo');
IBQuery1.ParamByName('da').AsDate := Strtodate(DaData.Text);
IBQuery1.ParamByName('a').AsDate := Strtodate(aData.Text);
//IBQuery1.Open;
end
else
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('Select * from tab_articoli');
IBQuery1.SQL.Add('where NON_STAMPA_INVENTARIO<>1');
IBQuery1.SQL.Add('order by codice_Articolo');
end;
//SpeedButton1.Enabled := False;
IBQuery1.Open;
IBQuery1.First;

 x:=ExtractFilePath(Application.Exename)+'ECRPLU00.TXT';
  AssignFile(F, x);
  Rewrite(F);

  while not IBQuery1.Eof do
  begin

  if not VarIsNull(IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring) then
  b := IBQuery1.Fieldbyname('CODICE_ARTICOLO').asstring
  else
  b := '-';
  S1:='                    ';
  m1:=Length(b);
  if m1>=13 then
  b:=leftstr(b,13)
  else
  begin
  m1:=13-m1;
  b:=b+leftstr(S1,m1);
  end;


  if not VarIsNull(IBQuery1.Fieldbyname('DESCR').asstring) then
  c := IBQuery1.Fieldbyname('DESCR').asstring
  else
  c := '-';
  S1:='                                   ';
  m1:=Length(c);
  if m1>=30 then
  c:=leftstr(c,30)
  else
  begin
  m1:=30-m1;
  c:=c+leftstr(S1,m1);
  end;

//  if not VarIsNull(DataMod.MagazzT.FieldValues['RegCond']) then
//  E1.Text := (DataMod.MagazzT.FieldValues['RegCond'])
//  else
  E1.Text := '0';
  if not VarIsNull(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger) then
  E3.Text := IntToStr(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger)
  else
  E3.Text := '1';
  S1:='0000';
  m1:=Length(E3.Text);
  if m1>=3 then
  E3.Text:=leftstr(E3.Text,3)
  else
  begin
  m1:=3-m1;
  E3.Text:=leftstr(S1,m1)+E3.Text;
  end;

    if not VarIsNull(IBQuery1.Fieldbyname('CODICE_IVA_ID').AsInteger) then
  E5.Text := IntToStr(IBQuery1.Fieldbyname('CODICE_IVA_ID').AsInteger)
  else
  E5.Text := '20';
  S1:='  ';
  m1:=Length(E5.Text);
  if m1>=3 then
  E5.Text:=leftstr(E5.Text,2)
  else
  begin
  m1:=2-m1;
  E5.Text:=leftstr(S1,m1)+E5.Text;
  end;

//if (DataMod.MagazzT.FieldValues['IVA'] <> '0') then
//and (DataMod.MagazzT.FieldValues['IVA'] <> '') then
if not VarIsNull(IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency) then
  E4.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('PREZZO_IVATO').AsCurrency))*100)
else
E4.Text := '0';
  S1:='0000000000';
  m1:=Length(E4.Text);
  if m1>=9 then
  E4.Text:=leftstr(E4.Text,9)
  else
  begin
  m1:=9-m1;
  E4.Text:=leftstr(S1,m1)+E4.Text;
  end;

{
if not VarIsNull(IBQuery1.Fieldbyname('P2IVATO').AsCurrency) then
//  E5.Text := FormatFloat('0.00',(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100))
//    E5.Text := FloatToStr(IBQuery1.Fieldbyname('P2IVATO').AsFloat*100)
    E5.Text := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('P2IVATO').AsCurrency))*100)
else
E5.Text := '0';
}

 // if RadioGroup2.ItemIndex = 0 then
//  A := DataMod.MagazzT.FieldValues['RegTipo'];
  if RadioGroup2.ItemIndex = 1 then
  A := 'IM';
  if RadioGroup2.ItemIndex = 2 then
  A := 'I';
  if RadioGroup2.ItemIndex = 3 then
  A := 'M';
  if RadioGroup2.ItemIndex = 4 then
  A := 'C';

//  if RadioGroup3.ItemIndex = 0 then
  begin

  //if  (IBQuery1.Fieldbyname('ID_OFFERTA').AsInteger>0) then
  //E2.Text := IBQuery1.Fieldbyname('ID_OFFERTA').AsString
  //else
  //E2.Text := '0'
  end;

//  else
//  E2.Text := Edit1.Text;

  Writeln(F, b + E4.Text+E3.Text+c + E5.Text+'00000000');
  //+','+E5.Text
  IBQuery1.Next;
  end;
  CloseFile(F);

ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'COPIA.bat'), nil, nil, SW_SHOW);

end;



procedure TfInviaArt.SpeedButton13Click(Sender: TObject);
 var ris,ris2 :integer;
     nmfile, result, errfile :string;
     risultato,risultato2: widestring;
begin
// if not opendialog1.Execute then
//  abort
// else
 begin
   Datetimetostring(result,'yyyymmddhhddss', Time);
 nmfile:=ExtractFilePath(Application.ExeName)+'pippo.dat';
//   nmfile:=opendialog1.FileName;
   errfile:=ExtractFilePath(Application.ExeName)+'UAerr_'+result+'.txt';
   CoEcrCom1.Open('PORT=1');
   CoEcrCom1.EventMask:=255;
   CoEcrCom1.EnableTradDC:=true;
   screen.Cursor:=crHourGlass;
   CoEcrCom1.OperatingMode:=0;
 ris2:=CoEcrCom1.EcrCmd('selez ecr=1',risultato2);
   ris:=CoEcrCom1.EcrCmd('em_link cmd=''UA'', FILE='''+nmfile+''', ERR='''+errfile+''', BLOCK, OFFLINE', risultato);
   screen.Cursor:=crDefault;
   if ris=0 then
    begin
     memo1.Lines.Add('Download Eseguito Correttamente');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end
   else
    begin
     memo1.Lines.Add('Errore Nel Upload');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end;
   CoEcrCom1.Close;
 end;

end;



procedure TfInviaArt.SpeedButton14Click(Sender: TObject);
 var ris,ris2 :integer;
     nmfile, result, errfile :string;
     risultato,risultato2: widestring;
begin
// if not opendialog1.Execute then
//  abort
// else
 begin
   Datetimetostring(result,'yyyymmddhhddss', Time);
 nmfile:=ExtractFilePath(Application.ExeName)+'pippo.dat';
   errfile:=ExtractFilePath(Application.ExeName)+'UAerr_'+result+'.txt';
   CoEcrCom1.Open('PORT=1');
   CoEcrCom1.EventMask:=255;
   CoEcrCom1.EnableTradDC:=true;
   screen.Cursor:=crHourGlass;
   CoEcrCom1.OperatingMode:=0;
 ris2:=CoEcrCom1.EcrCmd('selez ecr=2',risultato2);
   ris:=CoEcrCom1.EcrCmd('em_link cmd=''UA'', FILE='''+nmfile+''', ERR='''+errfile+''', BLOCK, OFFLINE', risultato);
   screen.Cursor:=crDefault;
   if ris=0 then
    begin
     memo1.Lines.Add('Download Eseguito Correttamente');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end
   else
    begin
     memo1.Lines.Add('Errore Nel Upload');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end;
   CoEcrCom1.Close;
 end;

end;

procedure TfInviaArt.SpeedButton15Click(Sender: TObject);
 var ris,ris2 :integer;
     nmfile, result, errfile :string;
     risultato,risultato2: widestring;
begin
// if not opendialog1.Execute then
//  abort
// else
 begin
//   nmfile:=opendialog1.FileName;
   Datetimetostring(result,'yyyymmddhhddss', Time);
   nmfile:=ExtractFilePath(Application.ExeName)+'offerte.dat';

   errfile:=ExtractFilePath(Application.ExeName)+'UOerr_'+result+'.txt';
   CoEcrCom1.Open('PORT=1');
   CoEcrCom1.EventMask:=255;
   CoEcrCom1.EnableTradDC:=true;
   screen.Cursor:=crHourGlass;
   CoEcrCom1.OperatingMode:=0;
 ris2:=CoEcrCom1.EcrCmd('selez ecr=1',risultato2);
//   ris:=CoEcrCom1.EcrCmd('em_link cmd=''UO'', FILE='''+'offerte.dat'+''', ERR='''+errfile+''', BLOCK, OFFLINE', risultato);
   ris:=CoEcrCom1.EcrCmd('em_link cmd=''UO'', FILE='''+nmfile+''', ERR='''+errfile+''', BLOCK, OFFLINE', risultato);
   screen.Cursor:=crDefault;
   if ris=0 then
    begin
     memo1.Lines.Add('Download Eseguito Correttamente');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end
   else
    begin
     memo1.Lines.Add('Errore Nel Upload');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end;
   CoEcrCom1.Close;
 end;

end;

procedure TfInviaArt.SpeedButton16Click(Sender: TObject);
 var ris,ris2 :integer;
     nmfile, result, errfile :string;
     risultato,risultato2: widestring;
begin
// if not opendialog1.Execute then
//  abort
// else
 begin
   Datetimetostring(result,'yyyymmddhhddss', Time);
   nmfile:=ExtractFilePath(Application.ExeName)+'offerte.dat';
   errfile:=ExtractFilePath(Application.ExeName)+'UOerr_'+result+'.txt';

   CoEcrCom1.Open('PORT=1');
   CoEcrCom1.EventMask:=255;
   CoEcrCom1.EnableTradDC:=true;
   screen.Cursor:=crHourGlass;
   CoEcrCom1.OperatingMode:=0;
 ris2:=CoEcrCom1.EcrCmd('selez ecr=2',risultato2);
   ris:=CoEcrCom1.EcrCmd('em_link cmd=''UO'', FILE='''+nmfile+''', ERR='''+errfile+''', BLOCK, OFFLINE', risultato);
//   ris:=CoEcrCom1.EcrCmd('em_link cmd=''UO'', FILE='''+'offerte.dat'+''', ERR='''+errfile+''', BLOCK, OFFLINE', risultato);
   screen.Cursor:=crDefault;
   if ris=0 then
    begin
     memo1.Lines.Add('Download Eseguito Correttamente');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end
   else
    begin
     memo1.Lines.Add('Errore Nel Upload');
     memo1.Lines.Add('Gli errori sono stati raccolti in:'+errfile)
    end;
   CoEcrCom1.Close;
 end;

end;

end.
