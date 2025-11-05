unit uDocArt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, ComCtrls, ToolWin, ExtCtrls, Db, DBCtrls, StdCtrls, Mask,
  DBTables, Buttons, RxLookup, IBCustomDataSet, IBQuery, Grids, DBGrids,
  ToolEdit, CurrEdit, RXDBCtrl, Variants;

type
  TfDocArt = class(TfBaseForm3)
    dsoDet_Doc: TDataSource;
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    laNostroDeposito: TLabel;
    LookNostrDepCod: TDBLookupComboBox;
    LookNostrDepDescr: TDBLookupComboBox;
    dsoDepositi: TDataSource;
    gbUM: TGroupBox;
    cbUM1: TRadioButton;
    cbUM2: TRadioButton;
    cbUM3: TRadioButton;
    dsoUM: TDataSource;
    dsoArticoli: TDataSource;
    laImballo: TLabel;
    laDescrUM: TLabel;
    laQtaCons: TLabel;
    dbeQtaCons: TDBEdit;
    laImporto: TLabel;
    dbeImporto: TDBEdit;
    laPrezzoUnitario: TLabel;
    dbePrezzoUnitario: TDBEdit;
    laSc1: TLabel;
    dbeSconto1: TDBEdit;
    laSc2: TLabel;
    dbeSconto2: TDBEdit;
    dbeScontoMoneta: TDBEdit;
    laScMoneta: TLabel;
    laImportoScontato: TLabel;
    dbeImportoScontato: TDBEdit;
    edSta_PrezzoUn: TEdit;
    edSta_Sc1: TEdit;
    edSta_Sc2: TEdit;
    edSta_ScMoneta: TEdit;
    dbeNumRiga: TDBEdit;
    laIVAto: TLabel;
    dbeIvato: TDBEdit;
    laIVA: TLabel;
    dsoIVA: TDataSource;
    laOrdFron: TLabel;
    laQtaMag: TLabel;
    laOrdCli: TLabel;
    dsoContArt: TDataSource;
    bbImpSconRefresh: TBitBtn;
    dbeQtaUM: TDBEdit;
    Label1: TLabel;
    bbrefreshImpo: TBitBtn;
    tbtn_Articoli: TToolButton;
    bbIvatoReftresh: TBitBtn;
    rxdblcPianoConto: TRxDBLookupCombo;
    dsPianoConto: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    lblContoAcqVend: TLabel;
    lblColli: TLabel;
    dbeTotColli: TDBEdit;
    LookUM: TRxDBLookupCombo;
    IBQuery1: TIBQuery;
    Button1: TButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    Button3: TButton;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    RxDBCalcEdit3: TRxDBCalcEdit;
    RxDBCalcEdit4: TRxDBCalcEdit;
    RxDBCalcEdit5: TRxDBCalcEdit;
    RxDBCalcEdit6: TRxDBCalcEdit;
    RxDBCalcEdit7: TRxDBCalcEdit;
    RxDBCalcEdit8: TRxDBCalcEdit;
    RxDBCalcEdit9: TRxDBCalcEdit;
    Label3: TLabel;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    LookIVA: TRxDBLookupCombo;
    IBQuery3: TIBQuery;
    IBQuery3COSTO: TFloatField;
    IBQuery3SCONTO1: TFloatField;
    IBQuery3SCONTO2: TFloatField;
    IBQuery3SCONTO_EQ: TFloatField;
    IBQuery3DATA_DOC: TDateTimeField;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    RxCalcEdit1: TRxCalcEdit;
    RxDBCalcEdit10: TRxDBCalcEdit;
    RxDBCalcEdit11: TRxDBCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
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
    IBQuery4P6IVATO: TFloatField;
    IBQuery4IMP6: TFloatField;
    IBQuery4STRUTT: TFloatField;
    IBQuery4CA: TFloatField;
    IBQuery4CG: TFloatField;
    IBQuery4AG: TFloatField;
    IBQuery4CA2: TFloatField;
    IBQuery4CG2: TFloatField;
    IBQuery4AG2: TFloatField;
    IBQuery4CA3: TFloatField;
    IBQuery4CG3: TFloatField;
    IBQuery4AG3: TFloatField;
    IBQuery4CA4: TFloatField;
    IBQuery4CG4: TFloatField;
    IBQuery4AG4: TFloatField;
    IBQuery4CA5: TFloatField;
    IBQuery4CG5: TFloatField;
    IBQuery4AG5: TFloatField;
    IBQuery4CA6: TFloatField;
    IBQuery4CG6: TFloatField;
    IBQuery4AG6: TFloatField;
    IBQuery4ID_OFFERTA: TIntegerField;
    IBQuery4CR: TFloatField;
    IBQuery4CR2: TFloatField;
    IBQuery4CR3: TFloatField;
    IBQuery4CR4: TFloatField;
    IBQuery4CR5: TFloatField;
    IBQuery4CR6: TFloatField;
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
    IBQuery5: TIBQuery;
    IBQuery5CODICE_ARTICOLO: TIBStringField;
    IBQuery5CLI_FOR_ID: TIntegerField;
    IBQuery5CODICE_AGGIUNTIVO: TIBStringField;
    IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField;
    IBQuery5QUANTITA: TFloatField;
    IBQuery5DESCR: TIBStringField;
    edImballo: TDBEdit;
    Agg_Check: TDBCheckBox;
    ibqOrdAcq: TIBQuery;
    ibqOrdAcqCLIFOR_ID: TIntegerField;
    ibqOrdAcqDENOMINAZIONE: TIBStringField;
    ibqOrdAcqCODICE_ARTICOLO: TIBStringField;
    ibqOrdAcqDESCR: TIBStringField;
    ibqOrdAcqF_1: TFloatField;
    ibqOrdAcqConsegnato: TFloatField;
    ibqConsOrd2: TIBQuery;
    ibqConsOrd2CLIFOR_ID: TIntegerField;
    ibqConsOrd2CODICE_ARTICOLO: TIBStringField;
    ibqConsOrd2F_1: TFloatField;
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
    RxCalcEdit2: TRxCalcEdit;
    RxCalcEdit3: TRxCalcEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    RxDBCalcEdit12: TRxDBCalcEdit;
    ibqOfferte: TIBQuery;
    ibqOfferteDESCR: TIBStringField;
    ibqOfferteTIPO: TIntegerField;
    ibqOfferteDATAINIZIO: TDateTimeField;
    ibqOfferteDATAFINE: TDateTimeField;
    ibqOfferteNUMPEZZI: TFloatField;
    ibqOffertePREZZOUNITARIO: TFloatField;
    ibqOffertePREZZOCONF: TFloatField;
    ibqOfferteSCONTOPERC: TIntegerField;
    ibqOfferteAZIONE: TIBStringField;
    ibqOfferteGIORNISETT: TIntegerField;
    ibqOfferteID_OFFERTA: TIntegerField;
    RxDBCalcEdit13: TRxDBCalcEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    dbeSconto3: TDBEdit;
    IBQuery3SCONTO3: TFloatField;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbUM1Click(Sender: TObject);
    procedure dsoUMDataChange(Sender: TObject; Field: TField);
    procedure dbeCodiceDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbImpSconRefreshClick(Sender: TObject);
    procedure dbeQtaConsChange(Sender: TObject);
    procedure dbeSconto1Exit(Sender: TObject);
    procedure bbrefreshImpoClick(Sender: TObject);
    procedure tbtn_ArticoliClick(Sender: TObject);
    procedure bbIvatoReftreshClick(Sender: TObject);
    procedure dbeImportoChange(Sender: TObject);
    procedure dbeCodiceExit(Sender: TObject);
    procedure dbeQtaConsExit(Sender: TObject);
    procedure dbePrezzoUnitarioChange(Sender: TObject);
    procedure dbeDescrExit(Sender: TObject);
    procedure dbeImportoScontatoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure dbeQtaUMEnter(Sender: TObject);
    procedure dbeQtaUMClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LookIVAChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeDescrDblClick(Sender: TObject);
    procedure dbeQtaUMExit(Sender: TObject);
    procedure tbtnEsciClick(Sender: TObject);
    procedure dbeQtaUMKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure dbeSconto1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeSconto2KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodiceEnter(Sender: TObject);
    procedure RxCalcEdit1Exit(Sender: TObject);
    procedure ibqOrdAcqCalcFields(DataSet: TDataSet);
    procedure ibqOrdVenCalcFields(DataSet: TDataSet);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSconto3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
   Private
    Procedure Update_UM;
    Procedure RicercaCodice;
    Procedure RicercaDescrizione;
    Procedure Update_Importo;
    Procedure Calco;
    Procedure Update_Sta_;
    Procedure Clear_Sta_;
    Procedure Update_Prezz_Scon;
    Procedure Update_IVATO;
    Function Get_Next_Num_Riga(iID_Doc: Integer):Integer;
   Public
    dScM : currency;
    dSc1,dSc2,Prov: Double;
    boolNuovo, boolModifica: Boolean;
    intUM123,iNumero_Riga,iCliForID,intID_Doc: Integer;
    strCodDep, strCodIVA, strCodArt,CodArt: String;
    strTipo_Servizio,strCodiceListino: String;
    boolSenzaListino,Annulla, boolDoc_Vendita: Boolean;
    boolArtLocated: Boolean;
  end;
Var
  fDocArt: TfDocArt;

implementation

uses uAzDM, uRicercaVeloceAZ, uArticoli, uBaseFormDoc3, uSeriali;

{$R *.DFM}

procedure TfDocArt.tbtnNuovoClick(Sender: TObject);
Var
 iNRiga_Nuovo: Integer;
begin
Try
If (dsoDet_Doc.DataSet.IsEmpty)
Then iNRiga_Nuovo:=1
Else Begin
dsoDet_Doc.DataSet.Last;
iNRiga_Nuovo:=1+dsoDet_Doc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
End;
Except
End;
Try
dsoDet_Doc.DataSet.Insert;
dsoDet_Doc.DataSet.FieldByName('TIPO_SERVIZIO').AsString:=strTipo_Servizio;
dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=0;
dsoDet_Doc.DataSet.FieldByName('SCONTO2').AsFloat:=0;
dsoDet_Doc.DataSet.FieldByName('SCONTO3').AsFloat:=0;
dsoDet_Doc.DataSet.FieldByName('SCONTO_EQ').AsCurrency:=0;
dsoDet_Doc.DataSet.FieldByName('DOC_ID').AsInteger:=intID_Doc;
//iNumero_Riga:=Get_Next_Num_Riga(intID_Doc);
iNumero_Riga:=iNRiga_Nuovo;
dsoDet_Doc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger:=iNRiga_Nuovo;
dsoDet_Doc.DataSet.FieldByName('DEP').AsString:=strCodDep;
dsoDet_Doc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;
dbeCodice.SetFocus;
inherited;
Except
Beep;
End;
end;

procedure TfDocArt.tbtnModificaClick(Sender: TObject);
begin
Try
   iNumero_Riga:=dsoDet_Doc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
   dsoDet_Doc.DataSet.Edit;
   strTipo_Servizio:=dsoDet_Doc.DataSet.FieldByName('Tipo_Servizio').AsString;
   strCodDep:=dsoDet_Doc.DataSet.FieldByName('Dep').AsString;
   boolArtLocated:=True;
   dbeCodice.SetFocus;
inherited;
Except
 Beep;
End;
end;

procedure TfDocArt.tbtnSalvaClick(Sender: TObject);
begin
If (dbeCodice.Text='')
Then Begin
MessageDlg('Immettere un codice articolo valido!!!!',mtWarning,[mbRetry],0);
Exit;
End;
With IBQuery2 do
Begin
close;
ParamByName('a').AsString := dbeCodice.Field.Value;
open;
if IBQuery2.IsEmpty then
begin
MessageDlg('Immettere un codice articolo valido!!!!',mtWarning,[mbRetry],0);
Exit;
end;
end;
if edImballo.Text = '' then
 edImballo.Text := '1';
if VarIsNull(dsoDet_Doc.dataset.FieldByName('Qta_UM').AsFloat) then
  begin
  dsoDet_Doc.dataset.FieldByName('Qta_UM').AsFloat:=0;
  dsoDet_Doc.dataset.FieldByName('Quantita').AsFloat:=0;
  end;

if VarIsNull(dsoDet_Doc.dataset.FieldByName('costo').AsCurrency) then
  dsoDet_Doc.dataset.FieldByName('costo').AsCurrency:=0;

 Try
 inherited;
 dsoDet_Doc.DataSet.Post;
 tbtnEsci.Click;
 Except
   Beep;
 End;
end;

procedure TfDocArt.tbtnAnullaClick(Sender: TObject);
begin
Try
dsoDet_Doc.DataSet.Cancel;
Annulla := True;
inherited;
tbtnEsci.Click;
Except
Beep;
End;
end;

procedure TfDocArt.tbtnEliminaClick(Sender: TObject);
begin
 Try
   dsoDet_Doc.DataSet.Delete;
  inherited;
  tbtnEsci.Click;
 Except
   Beep;
 End;
end;

procedure TfDocArt.FormShow(Sender: TObject);
begin
if  fBaseFormDoc3.intTipoDoc =151 then
Button1.Visible := True;
If (boolDoc_Vendita) then
Agg_Check.Visible := False;
boolArtLocated:=False;
dsoUM.DataSet.Open;
//dsoArticoli.DataSet.Open;
If (boolNuovo)Then
Begin
tbtnNuovo.Click;
edImballo.Text := '1';
dbeSconto1.Field.AsFloat:=dSc1;
dbeSconto2.Field.AsFloat:=dSc2;
dbeScontoMoneta.Field.AsCurrency:=dScM;
//fDocArt.Agg_Check.Checked := True;
dsoDet_Doc.DataSet.FieldByName('OMAGGIO').AsInteger := 1;
dsoDet_Doc.DataSet.FieldByName('TIPO_RIGA').AsInteger := 1;
DBEdit2.Field.AsFloat := Prov;
End;
if (boolModifica)
Then tbtnModifica.Click;
end;

procedure TfDocArt.cbUM1Click(Sender: TObject);
begin
  Update_UM;
end;

procedure TfDocArt.Update_UM;
Var
 dQUM,dUMxBase: Double;
begin
  If (dsoDet_Doc.DataSet.State in [dsBrowse])
    Then Exit;

 If (strTipo_Servizio='SERVIZIO')
  Then
   Begin
//  Clear_Sta_;
  edImballo.Text:='1';
  dUMxBase:=1;
     Exit;
   End;

 Try
  dQUM:=dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsFloat;
  edImballo.Text:='1';
  dUMxBase:=1;
//  dsoDet_Doc.DataSet.fieldByName('UNITA_MISURA').AsString:=
//    dsoArticoli.dataset.fieldbyname('UNITA_DI_MISURA1_ID').AsString;
  If (cbUM1.Checked)
    Then Begin
           intUM123:=1;
           dsoDet_Doc.DataSet.fieldByName('UNITA_MISURA').AsString:=
              IBQuery2.FieldByName('UNITA_DI_MISURA1_ID').AsString;
           LookUM.KeyValue:=IBQuery2.FieldByName('UNITA_DI_MISURA1_ID').AsString;
           edImballo.Text := '1';
         End;
  If (cbUM2.Checked)
    Then Begin
           intUM123:=2;
           dsoDet_Doc.DataSet.fieldByName('UNITA_MISURA').AsString:=
              IBQuery2.FieldByName('UNITA_DI_MISURA2_ID').AsString;
           LookUM.KeyValue:=IBQuery2.FieldByName('UNITA_DI_MISURA2_ID').AsString;
           edImballo.Text:=IBQuery2.FieldByName('UN_MIS2_VAL').asstring;
           dUMxBase:=IBQuery2.FieldByName('UN_MIS2_VAL').AsInteger;
           edImballo.Text := FloatToStr(dUMxBase);
         End;
  If (cbUM3.Checked)
    Then Begin
           intUM123:=3;
           dsoDet_Doc.DataSet.fieldByName('UNITA_MISURA').AsString:=
              IBQuery2.fieldByName('UNITA_DI_MISURA3_ID').AsString;
           LookUM.KeyValue:=IBQuery2.fieldByName('UNITA_DI_MISURA3_ID').AsString;
           edImballo.Text:=IBQuery2.fieldByName('UN_MIS3_VAL').AsString;
           dUMxBase:=IBQuery2.fieldByName('UN_MIS3_VAL').AsInteger;
           edImballo.Text := FloatToStr(dUMxBase);
         End;

if not VarIsNull(dsoDet_Doc.dataset.FieldByName('QTA_UM').AsFloat) then
  begin
  dsoDet_Doc.DataSet.fieldByName('QUANTITA').asfloat:=dUMxBase*dQUM;
{
  dsoDet_Doc.DataSet.FieldByName('OP_QTA_DISPONIBILE').AsFloat:=
       dsoDet_Doc.DataSet.fieldByName('QUANTITA').AsFloat;
  dsoDet_Doc.DataSet.FieldByName('OP_QTA_GIACENZA').AsFloat:=
       dsoDet_Doc.DataSet.fieldByName('QUANTITA').AsFloat;
}
  Update_Importo;
 end
 Except
 End;
End;

procedure TfDocArt.Update_Sta_;
begin
// If Not(boolArtLocated)
//   Then Exit;
 If Not(strTipo_Servizio='ARTICOLO')
  Then
     Exit;

 With (dmodAz.ibqCont_Art) Do
 Begin
   Close;
    ParamByName('parCod_Art').asstring:=strCodArt;
    ParamByName('parCod_Dep').asstring:=strCodDep;
   Open;

ibqOrdAcq.close;
ibqOrdAcq.ParamByName('codice').asstring:=strCodArt;
//ibqOrdAcq.ParamByName('cliente').AsInteger:=iCliForID;
ibqOrdAcq.Open;
RxCalcEdit2.Value := ibqOrdAcq.fieldbyname('F_1').AsFloat-ibqOrdAcq.fieldbyname('consegnato').AsFloat;

ibqOrdVen.close;
ibqOrdVen.ParamByName('codice').asstring:=strCodArt;
//ibqOrdAcq.ParamByName('cliente').AsInteger:=iCliForID;
ibqOrdVen.Open;
RxCalcEdit3.Value := ibqOrdVen.fieldbyname('F_1').AsFloat-ibqOrdVen.fieldbyname('consegnato').AsFloat;

if fBaseFormDoc3.boolVendita = True then
begin
 if dmodAz.ibqCont_Art.fieldbyname('GIACENZA_ATTUALE').AsFloat<=0 then
ShowMessage('Quantità Magazzino INSUFFICIENTE !!!!');
end;
end;
End;

procedure TfDocArt.dsoUMDataChange(Sender: TObject; Field: TField);
begin
// If not(strTipo_Servizio='ARTICOLO')
//  Then Clear_Sta_
//  Else Update_Sta_;
end;

procedure TfDocArt.dbeCodiceDblClick(Sender: TObject);
begin
RicercaCodice;
end;

procedure TfDocArt.FormCreate(Sender: TObject);
begin
//inherited;
//boolArtLocated:=False;
end;

procedure TfDocArt.Update_Prezz_Scon;
Var
 dSC1,dSC2,dSC3,dSC: Double;
begin
 If (dsoDet_Doc.DataSet.State in [dsBrowse])
   Then Exit;
 Try
dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('IMPORTO').AsCurrency;
dSC1 := dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency*dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsCurrency/100;
dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency-dSC1;
dSC2 := dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency*dsoDet_Doc.DataSet.FieldByName('SCONTO2').AsCurrency/100;
dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency-dSC2;
dSC3 := dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency*dsoDet_Doc.DataSet.FieldByName('SCONTO3').AsCurrency/100;
dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency-dSC3;

dSC  := dsoDet_Doc.DataSet.FieldByName('SCONTO_EQ').AsCurrency;
dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency-dSC;
Except
dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsCurrency:=0;
dsoDet_Doc.DataSet.FieldByName('SCONTO2').AsCurrency:=0;
dsoDet_Doc.DataSet.FieldByName('SCONTO3').AsCurrency:=0;
dsoDet_Doc.DataSet.FieldByName('SCONTO_EQ').AsCurrency:=0;
dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('IMPORTO').AsCurrency;
 End;
end;

procedure TfDocArt.bbImpSconRefreshClick(Sender: TObject);
begin
  Update_Prezz_Scon;
end;

procedure TfDocArt.Update_Importo;
begin
  If (dsoDet_Doc.DataSet.State in [dsBrowse])
    Then Exit;

if dmodAz.Fiori = 1 then
Try
dsoDet_Doc.DataSet.FieldByName('IMPORTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsFloat * dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency;
 //RxDBCalcEdit5.VALUE;
Except
dsoDet_Doc.DataSet.FieldByName('IMPORTO').AsCurrency:=0;
End
else
Try
dsoDet_Doc.DataSet.FieldByName('IMPORTO').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('QUANTITA').AsFloat * dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency;
 //RxDBCalcEdit5.VALUE;
Except
dsoDet_Doc.DataSet.FieldByName('IMPORTO').AsCurrency:=0;
End;

end;

procedure TfDocArt.dbeQtaConsChange(Sender: TObject);
begin
  Update_Importo;
  Update_Prezz_Scon;

end;

procedure TfDocArt.dbeSconto1Exit(Sender: TObject);
begin
  Update_Prezz_Scon;
end;

procedure TfDocArt.bbrefreshImpoClick(Sender: TObject);
begin
 Update_Importo;
end;

procedure TfDocArt.tbtn_ArticoliClick(Sender: TObject);
var
f : string;
begin
f:=dsoDet_Doc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
fArticoli:=TfArticoli.Create(Self);
bCanClose:=True;
fArticoli.boolVendita:=True;
fArticoli.ChiChiama := 1;
if f <>'' then
 With (dmodAz.ibTab_Articoli) Do
 Begin
  Close;
  SelectSQL.Clear;
  SelectSQL.Add('SELECT * FROM TAB_ARTICOLI');
  SelectSQL.Add('WHERE CODICE_ARTICOLO LIKE '''+f+'%''');
  SelectSQL.add('order by codice_articolo');
  Open;
  end;

//dmodAz.ibTab_Articoli.Locate('CODICE_ARTICOLO',f,[]);
fArticoli.ShowModal;

fArticoli.Free;


dsoContArt.DataSet.Open;
dsoArticoli.DataSet.Close;
{ With (dmodAz.ibTab_Articoli) Do
 Begin
  Close;
  SelectSQL.Clear;
  SelectSQL.Add('SELECT * FROM TAB_ARTICOLI');
  SelectSQL.add('order by codice_articolo');
  Open;
 end;}
dsoArticoli.DataSet.Open;
dsoDepositi.DataSet.Open;
dsoUM.DataSet.Open;
dsoIVA.DataSet.Open;
dsPianoConto.DataSet.Open;
end;

procedure TfDocArt.Update_IVATO;
Var
 dAli: Double;
begin
If (dsoDet_Doc.DataSet.State in [dsBrowse])
Then Exit;
try
begin
Try
Begin
dAli:=dsoIVA.DataSet.FieldByName('ALIQUOTA').AsFloat;
dsoDet_Doc.DataSet.FieldByName('importo_con_iva').AsCurrency:=
 dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency +
 (dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency * dAli/100);
End;
Except
dsoDet_Doc.DataSet.FieldByName('importo_con_iva').AsCurrency:=dsoDet_Doc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency;
Beep;
End;
end;
except
exit;
end;
end;

procedure TfDocArt.bbIvatoReftreshClick(Sender: TObject);
begin
 Update_IVATO;
end;

function TfDocArt.Get_Next_Num_Riga(iID_Doc: Integer):Integer;
begin
// Result:=-1;
// Exit;
end;

procedure TfDocArt.dbeImportoChange(Sender: TObject);
begin
 Try
   Update_Prezz_Scon;
 Except
 End;
end;

procedure TfDocArt.dbeCodiceExit(Sender: TObject);
var
dQUM,dUMxBase: Double;
begin
If not (dsoDet_Doc.DataSet.State in [dsinsert,dsedit])
then exit;
if VarIsNull(dsoDet_Doc.dataset.FieldByName('CODICE_ARTICOLO').AsString)
  Then Exit;
If (boolModifica= True) and (dbeCodice.Field.AsString = CodArt)
  Then Exit;
// If (strTipo_Servizio='SERVIZIO')
//  Then Exit;
edImballo.Text:='1';
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := dbeCodice.Field.AsString;
IBQuery2.open;
if IBQuery2.IsEmpty then
begin
IBQuery5.Close;
IBQuery5.ParamByName('a').AsString := dbeCodice.Field.AsString;
IBQuery5.Open;
if IBQuery5.IsEmpty then
Exit
else
begin
dbeCodice.Field.AsString :=IBQuery5.fieldbyname('codice_articolo').AsString;
edImballo.Text := IBQuery5.fieldbyname('quantita').AsString;
IBQuery2.close;
IBQuery2.ParamByName('a').AsString := dbeCodice.Field.AsString;
IBQuery2.open;
end;
end;

With IBQuery2 do
Begin
dsoDet_Doc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=fieldbyname('CODICE_ARTICOLO').AsString;
 If (strTipo_Servizio<>'SERVIZIO') then
dsoDet_Doc.DataSet.FieldByName('DESCR').AsString:=fieldbyname('DESCR').AsString;
If (boolDoc_Vendita) then
begin
if fieldbyname('ID_OFFERTA').AsInteger <>0 then
begin
ibqOfferte.Close;
ibqOfferte.ParamByName('idOff').AsInteger := fieldbyname('ID_OFFERTA').AsInteger;
ibqOfferte.Open;
if ((ibqOfferte.fieldbyname('datainizio').AsDateTime<= Now) and (ibqOfferte.fieldbyname('datafine').AsDateTime>= Now)) then
dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency :=
 ibqOfferte.fieldbyname('PREZZOCONF').AsCurrency / ibqOfferte.fieldbyname('NUMPEZZI').AsFloat
else
dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency :=fieldbyname('PREZZO_BASE').AsCurrency;
end
else
dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency :=fieldbyname('PREZZO_BASE').AsCurrency
end
Else
dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency :=fieldbyname('COSTO_STANDART').AsCurrency;

dsoDet_Doc.DataSet.FieldByName('PREZZOLIST').AsCurrency:=fieldbyname('PREZZO_BASE').AsCurrency;
if not VarIsNull(fieldbyname('PROVVIGIONE').AsFloat) then
dsoDet_Doc.DataSet.FieldByName('PERC_PROVV').AsFloat:=fieldbyname('PROVVIGIONE').AsCurrency;

  if (strCodiceListino = '1') and (dmodAz.Tipo <> 1) then
  dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency:=
     fieldByname('IMP2').AsCurrency;
  if (strCodiceListino = '2') and (dmodAz.Tipo <> 1) then
  dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency:=
     fieldByname('IMP3').AsCurrency;
  if (strCodiceListino = '3') and (dmodAz.Tipo <> 1) then
  dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency:=
     fieldByname('IMP4').AsCurrency;
  if (strCodiceListino = '4') and (dmodAz.Tipo <> 1) then
  dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency:=
     fieldByname('IMP5').AsCurrency;

if dmodAz.Tipo = 1 then
begin
  if strCodiceListino = '1' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC21').AsFloat;
  if strCodiceListino = '2' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC31').AsFloat;
  if strCodiceListino = '3' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC41').AsFloat;
  if strCodiceListino = '4' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     fieldByname('SC51').AsFloat;
end;

   If (boolDoc_Vendita)
     Then dsoDet_Doc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_VENDITA').AsInteger
     Else dsoDet_Doc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_ACQUISTO').AsInteger;

   If Not(fieldByname('CODICE_IVA_ID').AsString='')
     Then LookIVA.Field.AsString :=
           fieldByname('CODICE_IVA_ID').AsString;
///////////////////////////////////////////////////////////
  cbUM1.Checked:=True;
 If (strTipo_Servizio='SERVIZIO')
  Then
   Begin
  edImballo.Text:='1';
  dUMxBase:=1;
     Exit;
   End;

 Try
dQUM:=dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsFloat;

dUMxBase:=1;
intUM123:=1;
dsoDet_Doc.DataSet.fieldByName('UNITA_MISURA').AsString:=
FieldByName('UNITA_DI_MISURA1_ID').AsString;
LookUM.KeyValue:=FieldByName('UNITA_DI_MISURA1_ID').AsString;
//edImballo.Text := '1';
 Except
 End;
  dsoDet_Doc.DataSet.fieldByName('QUANTITA').asfloat:=dUMxBase*dQUM;
 End;
with IBQuery3 do
begin
close;
ParamByName('parcodart').AsString := dbeCodice.Field.AsString;
ParamByName('parcliforid').Asinteger := iCliForID;
open;
end;
Update_Importo;
strCodArt := dsoDet_Doc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
Update_Sta_;
end;

procedure TfDocArt.dbeQtaConsExit(Sender: TObject);
begin
 Update_Importo;
   Update_Prezz_Scon;

end;

procedure TfDocArt.dbePrezzoUnitarioChange(Sender: TObject);
begin
  Update_Importo;
  Update_Prezz_Scon;
end;

procedure TfDocArt.dbeDescrExit(Sender: TObject);
begin
dbeCodiceExit(sender);
try
  dbeQtaUM.SetFocus;
  except
    end;
end;

procedure TfDocArt.Clear_Sta_;
begin
             edSta_PrezzoUn.Text := '';
             edSta_Sc1.Text      := '';
             edSta_Sc2.Text      := '';
             edSta_ScMoneta.Text := '';
end;

procedure TfDocArt.dbeImportoScontatoChange(Sender: TObject);
begin
 Update_IVATO;

end;

procedure TfDocArt.FormDestroy(Sender: TObject);
begin
//  inherited;

end;

procedure TfDocArt.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin


 If (strTipo_Servizio<>'SERVIZIO') THEN
If (Key=#13) Then DBEdit3.SetFocus;

If (strTipo_Servizio='SERVIZIO') THEN
If (Key=#13) Then dbeDescr.SetFocus;
end;

procedure TfDocArt.Button1Click(Sender: TObject);
var
a:string;
b,c,d,e:Double;
begin
  inherited;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
  if not dmodAz.ibqryDistinte.Locate('Codice_articolo',dbeCodice.Text,[]) then
exit;
dmodAz.ibtblDistinte_Dett.First;
c:=0;
b:=0;
d:=0;
e:=100000000;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from tab_contabile_articolo');
IBQuery1.SQL.Add('where codice_articolo=:cod and deposito_id=:dep');
IBQuery1.ParamByName('cod').asstring:=a;
IBQuery1.ParamByName('dep').asstring:=VarToStr(LookNostrDepCod.KeyValue);
IBQuery1.Open;
c:=IBQuery1.FieldByName('Giacenza_attuale').AsFloat;
d:=(c/b);
if (d<e) then
e := d;
dmodAz.ibtblDistinte_Dett.next;

end;
dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsFloat := e;
end;

procedure TfDocArt.Calco;
begin
end;

procedure TfDocArt.dbeQtaUMEnter(Sender: TObject);
begin
if edImballo.Text = '' then
 edImballo.Text := '1';
end;

procedure TfDocArt.dbeQtaUMClick(Sender: TObject);
begin
if edImballo.Text = '' then
 edImballo.Text := '1';
end;

procedure TfDocArt.Button2Click(Sender: TObject);
begin
if not (dbeQtaUM.Field.AsFloat>0) then
begin
ShowMessage('Inserire prima la quantità!!!!');
dbeQtaUM.SetFocus;
exit;
end;
dsoDet_Doc.DataSet.Post;
dsoDet_Doc.DataSet.Edit;
fSeriali:=TfSeriali.Create(Self);
fSeriali.a := dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsInteger;
fSeriali.COD := dsoDet_Doc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
fSeriali.DES := dsoDet_Doc.DataSet.FieldByName('DESCR').AsString;
fSeriali.DOC := intID_Doc;
fSeriali.DET_DOC :=dsoDet_Doc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
fSeriali.ShowModal;
fSeriali.Free;
end;

procedure TfDocArt.LookIVAChange(Sender: TObject);
begin
 Update_IVATO;
end;

procedure TfDocArt.RicercaCodice;
var
 dQUM,dUMxBase: Double;
begin
//If (strTipo_Servizio='SERVIZIO')
//Then
//Exit;

With (TfRicercaVeloceAZSQL.Create(Self)) Do
Begin
boolAdditionalWhere:=False;
strTabella:='TAB_ARTICOLI';
strCampoWhere:='CODICE_ARTICOLO';
strCampo2:='DESCR';
If (boolDoc_Vendita)
Then  strCampo3:='PREZZO_BASE'
Else  strCampo3:='COSTO_STANDART';
intRichieste:=33;
strResCampoCodice:='CODICE_ARTICOLO';
strValore:=dbeCodice.Field.AsString;
Deposito:=LookNostrDepCod.KeyValue;
ShowModal;
strCodArt:=VarToStr(vaResValore);
dsoDet_Doc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
dsoDet_Doc.DataSet.FieldByName('DESCR').AsString:=VarToStr(vaResValore2);
Free;
End;
dbeQtaUM.SetFocus;
End;

procedure TfDocArt.RicercaDescrizione;
var
 dQUM,dUMxBase: Double;
begin
 If (strTipo_Servizio='SERVIZIO')
  Then
   Begin
//     Clear_Sta_;
     Exit;
   End;

 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE_ARTICOLO';

    If (boolDoc_Vendita)
      Then  strCampo3:='PREZZO_BASE'
      Else  strCampo3:='COSTO_STANDART';

    intRichieste:=33;
    strResCampoCodice:='DESCR';//'CODICE_ARTICOLO';
    strValore:=dbeDescr.Field.AsString;
    Deposito:=LookNostrDepCod.KeyValue;
    ShowModal;
  strCodArt:=VarToStr(vaResValore2);
   dsoDet_Doc.DataSet.FieldByName('CODICE_ARTICOLO').AsVariant:=(vaResValore2);
   dsoDet_Doc.DataSet.FieldByName('DESCR').AsVariant:=vaResValore;//strCodArt;
{
   dsoDet_Doc.DataSet.FieldByName('COSTO').AsVariant:=(vaResValore3);
   dsoDet_Doc.DataSet.FieldByName('PREZZOLIST').AsString:=VarToStr(vaResValore3);
   if not VarIsNull(dsoDati.DataSet.fieldbyname('PROVVIGIONE').AsFloat) then
   dsoDet_Doc.DataSet.FieldByName('PERC_PROVV').AsFloat:=dsoDati.DataSet.fieldbyname('PROVVIGIONE').AsFloat;

if (strCodiceListino = '1') and (dmodAz.Tipo <> 1) then
dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat:=
 dsoDati.DataSet.fieldByname('IMP2').AsFloat;
if (strCodiceListino = '2') and (dmodAz.Tipo <> 1) then
 dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat:=
  dsoDati.DataSet.fieldByname('IMP3').AsFloat;
if (strCodiceListino = '3') and (dmodAz.Tipo <> 1) then
 dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat:=
  dsoDati.DataSet.fieldByname('IMP4').AsFloat;
if (strCodiceListino = '4') and (dmodAz.Tipo <> 1) then
 dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat:=
  dsoDati.DataSet.fieldByname('IMP5').AsFloat;

if dmodAz.Tipo = 1 then
begin
  if strCodiceListino = '1' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     dsoDati.DataSet.fieldByname('SC21').AsFloat;
  if strCodiceListino = '2' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     dsoDati.DataSet.fieldByname('SC31').AsFloat;
  if strCodiceListino = '3' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     dsoDati.DataSet.fieldByname('SC41').AsFloat;
  if strCodiceListino = '4' then
  dsoDet_Doc.DataSet.FieldByName('SCONTO1').AsFloat:=
     dsoDati.DataSet.fieldByname('SC51').AsFloat;
end;

//   boolArtLocated:=True;
   If (boolDoc_Vendita)
     Then dsoDet_Doc.dataset.FieldByName('pianoconto_id').asinteger:=
                 dsoDati.DataSet.FieldByName('CONTO_VENDITA').AsInteger
     Else dsoDet_Doc.dataset.FieldByName('pianoconto_id').asinteger:=
                 dsoDati.DataSet.FieldByName('CONTO_ACQUISTO').AsInteger;

   If Not(dsoDati.DataSet.fieldByname('CODICE_IVA_ID').AsString='')
     Then LookIVA.Field.AsString :=
           dsoDati.DataSet.fieldByname('CODICE_IVA_ID').AsString;
///////////////////////////////////////////////////////////
  cbUM1.Checked:=True;
 If (strTipo_Servizio='SERVIZIO')
  Then
   Begin
//  Clear_Sta_;
  edImballo.Text:='1';
  dUMxBase:=1;
     Exit;
   End;

 Try
dQUM:=dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsFloat;
edImballo.Text:='1';
dUMxBase:=1;
intUM123:=1;
dsoDet_Doc.DataSet.fieldByName('UNITA_MISURA').AsString:=
dsoDati.dataset.FieldByName('UNITA_DI_MISURA1_ID').AsString;
LookUM.KeyValue:=dsoDati.dataset.FieldByName('UNITA_DI_MISURA1_ID').AsString;
 Except
 End;
  dsoDet_Doc.DataSet.fieldByName('QUANTITA').asfloat:=dUMxBase*dQUM;


}
   Free;
  End;
//  Update_Importo;
{with IBQuery3 do
begin
close;
ParamByName('parcodart').AsString := dbeCodice.Field.AsString;
ParamByName('parcliforid').Asinteger := iCliForID;
open;
end;}

//  Update_Sta_;

  dbeQtaUM.SetFocus;
end;

procedure TfDocArt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
 VK_F2 : begin
         if dbeCodice.Focused then
         RicercaCodice;
         end;
 VK_F3 : begin
         if dbeDescr.Focused then
         RicercaDescrizione;
         end;
 VK_F6 : begin
         if tbtnAnulla.Enabled then
         tbtnAnulla.Click;
         end;
 VK_F7 : begin
         if tbtnSalva.Enabled then
         tbtnSalva.Click;
         end;
 VK_F8 : begin
         if tbtnAnulla.Enabled then
         tbtnAnulla.Click;
         end;
 VK_ESCAPE : begin
         if tbtnEsci.Enabled then
         tbtnEsci.Click;
         end;
//    else fDocArt.KeyPreview := False;
end;

end;

procedure TfDocArt.dbeDescrDblClick(Sender: TObject);
begin
RicercaDescrizione;
end;

procedure TfDocArt.dbeQtaUMExit(Sender: TObject);
begin
if fBaseFormDoc3.boolVendita = True then
begin
 if dmodAz.ibqCont_Art.fieldbyname('GIACENZA_ATTUALE').AsFloat<=dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsFloat then
ShowMessage('Quantità Magazzino INSUFFICIENTE !!!!');
end;
if Annulla = False then
begin
dsoDet_Doc.DataSet.FieldByName('Quantita').AsFloat :=
dsoDet_Doc.DataSet.FieldByName('QTA_UM').AsFloat * StrToInt(EDIMBALLO.TEXT) ;
 Try
  Update_Importo;
  Update_Prezz_Scon;
  Except
 End;
end;
end;

procedure TfDocArt.tbtnEsciClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TfDocArt.dbeQtaUMKeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then RxDBCalcEdit5.SetFocus;
end;

procedure TfDocArt.RxDBCalcEdit5KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dbeSconto1.SetFocus;
end;

procedure TfDocArt.dbeSconto1KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dbeSconto2.SetFocus;
end;

procedure TfDocArt.dbeSconto2KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dbeSconto3.SetFocus;
end;

procedure TfDocArt.RxDBCalcEdit7KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then tbarControl.SetFocus;

end;

procedure TfDocArt.dbeCodiceEnter(Sender: TObject);
begin
CodArt := dbeCodice.Field.AsString;
end;

procedure TfDocArt.RxCalcEdit1Exit(Sender: TObject);
begin
try
dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency:=
 RxCalcEdit1.Value /(1+(dsoIVA.DataSet.FieldByName('ALIQUOTA').AsInteger/100));
except
dsoDet_Doc.DataSet.FieldByName('COSTO').AsCurrency:=0;
end;
end;

procedure TfDocArt.ibqOrdAcqCalcFields(DataSet: TDataSet);
begin
with ibqConsOrd2 do
begin
ParamByName('codice_articolo').Value := ibqOrdAcqCODICE_ARTICOLO.Value;
Open;
end;
ibqOrdAcqConsegnato.Value := ibqConsOrd2F_1.Value;
end;

procedure TfDocArt.ibqOrdVenCalcFields(DataSet: TDataSet);
begin
with ibqConsOrd do
begin
close;
ParamByName('codice_articolo').Value := ibqOrdVenCODICE_ARTICOLO.Value;
Open;
end;
ibqOrdVenConsegnato.Value := ibqConsOrdF_1.Value;

end;

procedure TfDocArt.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin

If (strTipo_Servizio='SERVIZIO') THEN
If (Key=#13) Then dbeQtaUM.SetFocus;
end;

procedure TfDocArt.dbeSconto3KeyPress(Sender: TObject; var Key: Char);
begin

If (Key=#13) Then RxDBCalcEdit7.SetFocus;
end;

procedure TfDocArt.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin

 If (strTipo_Servizio<>'SERVIZIO') THEN
If (Key=#13) Then dbeQtaUM.SetFocus;
end;

end.
