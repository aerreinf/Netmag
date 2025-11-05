 unit uBollette;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask,
  DBCtrls, Db, RxLookup, IBCustomDataSet, IBQuery, IBTable, ToolEdit,
  CurrEdit, RXDBCtrl, Variants, RxMemDS, OoMisc, AdPort, Menus;

type
  TfBolle = class(TForm)
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
    dsoDocumento: TDataSource;
    dsoRigheDoc: TDataSource;
    dsoMoneta: TDataSource;
    dsoPagamenti: TDataSource;
    dsoPorto: TDataSource;
    dsoCausSped: TDataSource;
    dsoBanca: TDataSource;
    dsoAgenti: TDataSource;
    dsoListino: TDataSource;
    dsoDepositi: TDataSource;
    dsoAltreDest: TDataSource;
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
    dbeNumero: TDBEdit;
    dbeDataDoc: TDBEdit;
    LookCliForCod: TRxDBLookupCombo;
    LookCliForDescr: TRxDBLookupCombo;
    dbeIndirizzo_cli_for: TDBEdit;
    dbeIndirizzo_cli_for2: TDBEdit;
    LookNostrDepCod: TRxDBLookupCombo;
    LookNostrDepDescr: TRxDBLookupCombo;
    laNumero: TLabel;
    laDataDoc: TLabel;
    laCliFor: TLabel;
    laNostroDeposito: TLabel;
    dbeListino: TDBEdit;
    dbeContropartita: TDBEdit;
    Label5: TLabel;
    LookAgCod: TDBLookupComboBox;
    LookAgDescr: TDBLookupComboBox;
    laNote: TLabel;
    dbmNote: TDBMemo;
    Panel2: TPanel;
    Label39: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbeDaPagare: TDBEdit;
    dbeTotSconti: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    LookCauMagCod: TDBLookupComboBox;
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
    DBEdit5: TDBEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEQtaCons: TDBEdit;
    DBEdit6: TDBEdit;
    bbCodice: TBitBtn;
    bbDescr: TBitBtn;
    BitBtn1: TBitBtn;
    dbedit7: TRxDBCalcEdit;
    dbedit8: TRxDBCalcEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    laNumRigaLocate: TLabel;
    edNumRigaLocate: TEdit;
    dsProvv: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery1SC: TIBStringField;
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
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn2: TBitBtn;
    IBQuery5: TIBQuery;
    IBQuery5CODICE_ARTICOLO: TIBStringField;
    IBQuery5CLI_FOR_ID: TIntegerField;
    IBQuery5CODICE_AGGIUNTIVO: TIBStringField;
    IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField;
    IBQuery5QUANTITA: TFloatField;
    IBQuery5DESCR: TIBStringField;
    SpeedButton6: TSpeedButton;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CODICE: TStringField;
    RxMemoryData1QTA: TFloatField;
    RxMemoryData1PREZZO: TCurrencyField;
    OpenDialog1: TOpenDialog;
    ApdComPort1: TApdComPort;
    Memo1: TMemo;
    SpeedButton7: TSpeedButton;
    dbeSconto1: TDBEdit;
    laSconto: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    IBqOrdini: TIBQuery;
    IBqOrdiniCOSTO: TFloatField;
    IBqOrdiniTOTSCAT: TFloatField;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    IBQueryS1: TIBQuery;
    IBQueryS2: TIBQuery;
    RxCalcEdit1: TRxCalcEdit;
    Label18: TLabel;
    RxMemoryData1A: TStringField;
    RxMemoryData1B: TStringField;
    RxMemoryData1C: TStringField;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
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
    procedure edNumRigaLocateKeyPress(Sender: TObject; var Key: Char);
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
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit77KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookCliForDescrChange(Sender: TObject);
    procedure LookCliForCodChange(Sender: TObject);
    procedure dbedit7KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bbCodiceClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ApdComPort1TriggerAvail(CP: TObject; Count: Word);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbeSconto1Exit(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit9DblClick(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure Stampe1Click(Sender: TObject);
  private
    { Private declarations }

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

    // !!!
    Procedure Insert_Contab_Vend(i_ID_Doc: Integer);
    Procedure Insert_Contab_Acq(i_ID_Doc: Integer);
    Procedure Elimina_Contab(i_ID_Doc: Integer;CliForID: Integer);
    Procedure Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
    Procedure Aggiorna_Spese_IVA;
    Function  Inserimento_di_riga_contab(Var iPK_Codice: Integer;iConDett: Integer;
              dtData_Doc,dtData_Mov: TDateTime;iNum_Doc,iDoc_ID: Integer;
              sDescr_Mov: String; iTIPO_Mov, iPianoConto: Integer;
              sSottoContoDescr,sNomeContoDescr: String; iCliForID,
              iTipoCliFor,iNumProto: Integer; dDare,dAvere: currency): Boolean;
    Function Verifica_NumDoc(iNumDoc_per_Verifica: Integer): Boolean;
    Procedure Aggiorna_IVA_Totale;
    Procedure Apri;


  public
    { Public declarations }
    L,V,sc : integer;
    eccedenza : integer;
    strCodDep, strCodIVA, strCodArt: String;
    intID_Doc, iNumero_Riga,tipo: Integer;
    intTipoDoc, intTipoCliFor,alberto: Integer;
    intNewNumDoc,intOldNumDoc: Integer;
    boolVendita: Boolean;
    boolNonHaListino: Boolean;
    boolmodifica,boolDoc_Vendita : boolean;
    boolInsert: Boolean;
    nuovissimo : Boolean;
    sc1,sc2,mg1 : double;
    strCAU_MAG,tipog2: String;

    strCodIvaSp_Boll,strCodIvaSp_Inc,strCodIvaSp_Imb,
    strCodIvaSp_ContrSegn,strCodIvaSp_Access,strCodIvaSp_Sped: String;
    Procedure Passa;
    procedure SetCom;
    Procedure Edit_Mode(bMode: Boolean);
    Procedure Clean_All_TEdits;
    Procedure Edit_Modex(bMode: Boolean);
  end;

var
  fBolle: TfBolle;
   bCanClose: Boolean=True;

const
  chSOH = #01;
  chSTX = #02;
  chETX = #03;
  chEOT = #04;
  chENQ = #05;
  chACK = #06;
  chLF = #10;
  chCR = #13;
  chNAK = #21;
  chCAN = #24;

  BUFFER_LEN = 300;

  CMD_TX = 'TX';
  CMD_RX = 'RX';
  CMD_END = 'END';
  CMD_TU3 = 'TU3';
  CMD_YMDM = 'YMDM';

  EOL: string = #13#10;

implementation

uses uAzDM, frmuPassDoc, uRicercaVeloceAZ, uNumDocList, uPubDM, uPrnForm,
  uTerm;

{$R *.DFM}

procedure TfBolle.Pass_Doc(intPassTipoDoc: Integer);
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
 //

End;

procedure TfBolle.tbtnNuovoClick(Sender: TObject);
Var
 wAnno,wMese,wGiorno,wOra,wMin,wSec,wMSec: Word;
 zz,iID_Doc_New: Integer;
begin
RxMemoryData1.Open;
RxMemoryData1.EmptyTable;
RxMemoryData1.Close;
Panel1.Enabled := True;
Panel3.Enabled := True;
Edit_Mode(True);
Clean_All_TEdits;
tbtnNumDoc.Enabled:=False;
tbtnPrint.Enabled:=False;
dbeNumero.Enabled := True;

DecodeDate(Date,wAnno,wMese,wGiorno);
DecodeTime(Time,wOra,wMin,wSec,wMSec);


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
dsoDocumento.DataSet.fieldByName('SPESE_SPEDIZIONE').AsCurrency:=0;
dsoDocumento.DataSet.fieldByName('SPESE_BOLLI').AsCurrency:=0;
dsoDocumento.DataSet.fieldByName('SPESE_INCASSO').AsCurrency:=0;
dsoDocumento.DataSet.fieldByName('SPESE_ACCESSORIE').AsCurrency:=0;
dsoDocumento.DataSet.fieldByName('SPESE_IMBALLO').AsCurrency:=0;
dsoDocumento.DataSet.fieldByName('SPESE_CONTRASS').AsCurrency:=0;
dsoDocumento.dataset.Post;
dsoDocumento.dataset.Edit;
If (intTipoDoc=23) or (intTipoDoc=24)
Then Exit;
Get_Num_Doc;
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;
end;
 
procedure TfBolle.tbtnModificaClick(Sender: TObject);
begin
If (dsoDocumento.DataSet.IsEmpty)
Then Exit;
sc1 :=LookCliForCod.LookupSource.DataSet.FieldByName('Sconto_testata1').AsFloat;
sc2 :=LookCliForCod.LookupSource.DataSet.FieldByName('Sconto_testata2').AsFloat;
mg1 := LookCliForCod.LookupSource.DataSet.FieldByName('Certificato').AsFloat;


edit3.Text := FloatToStr(sc2);
edit2.Text := FloatToStr(mg1);


Panel1.Enabled := True;
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

procedure TfBolle.tbtnSalvaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
 saveplace2 : TBookmark;
begin
If (dbeNumero.Text='')
Then Begin
MessageDlg('Immettere un numero di documento!!!',mtWarning,[mbRetry],0);
Exit;
End;
If (dbeCodice.Text='')
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
Panel1.Enabled := False;
Panel3.Enabled := False;
Aggiorna_IVA_Totale;
If (dsoRigheDoc.dataset.isEmpty)
Then Exit;
If (MessageDlg('Conferma il salvataggio!',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
Try
SavePlace2 :=  dsoDocumento.DataSet.GetBookmark;
dsoDocumento.DataSet.Edit;
If (dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger=1)
Then Azzerare_IVA;
Calcola_Totali;
If (boolInsert) //dsoDocumento.DataSet.State in [dsInsert])
Then
begin
Set_Num_Doc;
if (boolVendita) or (fBolle.intTipoDoc=22)then
dsoDocumento.DataSet.FieldByName('NUM_DOC').AsInteger:=intNewNumDoc;
end;
cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
tipodoc := dsoDocumento.DataSet.FieldByName('tipo_doc').asinteger;
dsoDocumento.DataSet.Post ;
//Elimina_Scadenza;
//Insert_Scadenza;
 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace2);
dsoDocumento.DataSet.FreeBookmark(SavePlace2);
dsoDocumento.DataSet.Locate('ID_DOCUMENTO',int_ID_Docum,[]);
Edit_Mode(False);
Edit_Modex(False);
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
If (MessageDlg('Stampare?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then tbtnPrint.Click;
end;

procedure TfBolle.tbtnAnullaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
 SavePlace : TBookmark;
begin
If (MessageDlg('Annullare ?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;

Try
If (dsoRigheDoc.DataSet.State in [dsInsert,dsEdit])
Then dsoRigheDoc.DataSet.Cancel;
Edit_Modex(False);
Except
Beep;
End;

SavePlace := dsoDocumento.DataSet.GetBookmark;
Panel1.Enabled := False;
Panel3.Enabled := False;
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
Edit_Mode(False);
If ( dsoRigheDoc.DataSet.State in [dsInsert,dsEdit])
Then dsoRigheDoc.DataSet.Cancel;
If ( dsoDocumento.DataSet.State in [dsEdit])And Not(boolInsert)
Then
dsoDocumento.DataSet.Cancel;
dmodAz.ibtrDef.Rollback;
Apri;
dsoDocumento.DataSet.GotoBookmark(SavePlace);
dsoDocumento.DataSet.FreeBookmark(SavePlace);
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
end;

procedure TfBolle.tbtnEliminaClick(Sender: TObject);
Var
 int_ID_Docum,cliforid,tipodoc: Integer;
begin
boolInsert:=False;
If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
Try
While Not(dsoRigheDoc.DataSet.IsEmpty) Do dsoRigheDoc.DataSet.Delete;
If (intTipoDoc = 204)  OR (intTipoDoc = 300)
Then
Begin
int_ID_Docum:=dsoDocumento.DataSet.FieldByName('ID_Documento').asinteger;
cliforid := dsoDocumento.DataSet.FieldByName('CliFor_ID').asinteger;
//elimina_Contab(int_ID_Docum,CliForID);
//Elimina_Scadenza;
End;
dsoDocumento.DataSet.Delete;
Del_Num_Doc;
tbtnNumDoc.Enabled:=True;
tbtnPrint.Enabled:=True;
Edit_Mode(False);
 dmodAz.ibtrDef.Commit;
Except
 dmodAz.ibtrDef.Rollback;
End;
Apri;
end;

procedure TfBolle.tbtnPrevClick(Sender: TObject);
begin
 dsoDocumento.DataSet.Prior;
end;

procedure TfBolle.tbtnNextClick(Sender: TObject);
begin
 dsoDocumento.DataSet.Next;
end;

procedure TfBolle.Get_Num_Doc;
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

procedure TfBolle.Set_Num_Doc;
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

procedure TfBolle.Get_Tab_Name(iTipoDoc: Integer;
  var strTab_Name: String);
begin
  Case (iTipoDoc) of
   200: strTab_Name:='NUM_BOL_CAMP';
   201: strTab_Name:='NUM_DOC_VEN_ORD';
   300: strTab_Name:='NUM_DOC_VEN_BANCO';
   22: strTab_Name:='NUM_DOC_ACQ_ORD';
   205: strTab_Name:='NUM_BOL_PRE';
   210: strTab_Name:='NUM_BOL_VEN';
   212: strTab_Name:='NUM_BOL_RES';
   24: strTab_Name:='NUM_DOC_ACQ_FATT';
   222: strTab_Name:='NUM_ORDINI5';
   555: strTab_Name:='NUM_DOC_ACQ_DDT';
   251: strTab_Name:='NUM_DOC_ACQ_FATT2';
   258: strTab_Name:='NUM_BOL_CL1';

   {
   12: strTab_Name:='NUM_DOC_VEN_ORD';
   13: strTab_Name:='NUM_DOC_VEN_DDT';
   14: strTab_Name:='NUM_DOC_VEN_FATT';
   15: strTab_Name:='NUM_DOC_VEN_NOTA';
   16: strTab_Name:='NUM_DOC_VEN_BANCO';
   17: strTab_Name:='NUM_DOC_VEN_FATT2';

   21: strTab_Name:='NUM_DOC_ACQ_PREV';
   22: strTab_Name:='NUM_DOC_ACQ_ORD';
   23: strTab_Name:='NUM_DOC_ACQ_DDT';
   24: strTab_Name:='NUM_DOC_ACQ_FATT';
   25: strTab_Name:='NUM_DOC_ACQ_NOTA';

   27: strTab_Name:='NUM_DOC_ACQ_FATT2'
}
   Else strTab_Name:='';
  End;
end;



procedure TfBolle.tbtnNumDocClick(Sender: TObject);
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


procedure TfBolle.FormShow(Sender: TObject);
begin
Apri;
If (boolVendita)
Then Begin
laCliFor.Caption:='Cliente';
LookCliForCod.LookupSource:=dmodAz.dsoqTabCli;
LookCliForDescr.LookupSource:=dmodAz.dsoqTabCli;
End
Else Begin
laCliFor.Caption:='Fornitore';
LookCliForCod.LookupSource:=dmodAz.dsoqTabFor;
LookCliForDescr.LookupSource:=dmodAz.dsoqTabFor;
End;
RxMemoryData1.Open;
RxMemoryData1.EmptyTable;
eccedenza :=0;
end;

procedure TfBolle.dbgRigheDblClick(Sender: TObject);
begin
 SpeedButton2.Click;
end;

procedure TfBolle.Del_Num_Doc;
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


procedure TfBolle.edNumRigaLocateChange(Sender: TObject);
begin
 Try
  If Not(edNumRigaLocate.Text='')
   Then StrToInt(edNumRigaLocate.Text);
 Except
   edNumRigaLocate.Text:='1';
 End;
end;

procedure TfBolle.Locate_Riga;
begin
 Try
    If Not(dbgRighe.DataSource.DataSet.Locate('NUM_RIGA_ID',StrToInt(edNumRigaLocate.Text),[]))
      Then Beep;
    Beep;
 Except
 End;
end;
procedure TfBolle.edNumRigaLocateKeyPress(Sender: TObject; var Key: Char);
begin
 If ((Key=#13)And(Not(edNumRigaLocate.Text='')))
then begin
dsoRigheDoc.DataSet.BlockReadSize := 1;
Locate_Riga;
dsoRigheDoc.DataSet.BlockReadSize := 0;
end;
end;

procedure TfBolle.Aggiornamento_Contabilita(bNormale: Boolean);
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

procedure TfBolle.Calcola_Totali;
Var
 SavePlace : TBookmark;
 dSp,dSPIVA: Currency;
 dTotale, dTotImp,dTotMerc,dTotServ,dTotAltre,dTotIVATO,dTotIVA,dTotSconti : Currency;
 dtotsct, dtotqta: Double;
 bTipo_Serv: Byte;
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
          0: dTotAltre :=dTotAltre +FieldByName('IMPORTO_SConto').AsCurrency;
          1: dTotMerc  :=dTotMerc  +FieldByName('IMPORTO_SConto').AsCurrency;
          2: dTotServ  :=dTotServ  +FieldByName('IMPORTO_SConto').AsCurrency;
       End;
       dTotIMP   := dTotImp   + FieldByName('importo_Sconto').AsCurrency;
//       dTotIVATO := dTotIVATO + FieldByName('IMPORTO_CON_IVA').AsCurrency;
       dTotSct := dTotSct + FieldByName('qta_um').AsFloat;
       dTotqta := dTotqta + FieldByName('quantita').AsFloat;
       Next;
     End;
     dTotale:=dTotAltre+dTotMerc+dTotServ;
     dTotIVA:=0;//dTotIVATO-dTotale;
     dTotSconti:= dTotImp-dTotale;
     dbeTotMerc.field.AsCurrency:=dTotMerc+dTotAltre;
     dbeTotServ.field.AsCurrency:=dTotServ;
     dbeTotSconti.field.AsCurrency:=dTotSconti;
     dbeImponibile.field.AsCurrency:=dTotale+dSp;//+((dTotIvato+dSp+dSpIVA)*(dSc1+dSc2)-dScM);
     dbeImposta.field.AsCurrency:=0;//dTotIva+dSpIVA;
     dbeTotale.field.AsCurrency:=dtotale;//dTotIvato+dSp+dSpIVA;
     dbeDaPagare.field.AsCurrency:=dTotIMP;
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


procedure TfBolle.tbtnPrintClick(Sender: TObject);
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
     if intTipoDoc = 24 then
     begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frBolEccedenze'+strCAU_MAG+'.frf');
     ShowReport;
     end;

  End;
 dmodAz.ibqStampaDoc.Close;

end;

procedure TfBolle.Aggiorna_IVA(boolNormale: Boolean;intNumRiga: Integer);
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
ibqTab_DocIMPON1.AsCurrency := ibqTab_DocIMPON1.AsCurrency +iNormal*
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
       // Check if zero!
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
              ibqTab_DocIMPOSTA3.AsCurrency := 0;
              ibqTab_DocCODIVA3.AsString := '';
              ibqTab_DocALIVA3.AsFloat := 0;
             End;
       If (ibqTab_DocIMPON4.AsCurrency = 0)
        Then Begin
              ibqTab_DocIMPOSTA4.AsCurrency := 0;
              ibqTab_DocCODIVA4.AsString := '';
              ibqTab_DocALIVA4.AsFloat := 0;
             End;
       If (ibqTab_DocIMPON5.AsCurrency = 0)
        Then Begin
              ibqTab_DocIMPOSTA5.AsCurrency := 0;
              ibqTab_DocCODIVA5.AsString := '';
              ibqTab_DocALIVA5.AsFloat := 0;
             End;
       End;
End;


procedure TfBolle.Get_Val_From_PersAz;
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


procedure TfBolle.Calcola_Spese(VAR dSpese: currency;VAR dSpeseIVA: currency);
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

procedure TfBolle.Get_Aliq_IVA(strCodIVA: String;
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




procedure TfBolle.FormCreate(Sender: TObject);
begin
 ChangeDataSetsState(True);
 Get_Val_From_PersAz;
end;

procedure TfBolle.Azzerare_IVA;
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

 dsoDocumento.DataSet.FieldByName('TOTALE_IVA').AsCurrency:=0;
 
// dsoDocumento.DataSet.FieldByName('TOTALE_EURO_IVATO').AsCurrency:=
//  Round((dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsCurrency)*1936.27);

end;

procedure TfBolle.Insert_Scadenza;
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
         FieldByName('IMPORTO').AsCurrency:=dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsCurrency;
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
 dImportoRata:=( (dsoDocumento.DataSet.FieldByName('TOTALE_IVATO').AsCurrency-
                 dsoDocumento.DataSet.FieldByName('ACCONTO').AsCurrency)/wNumRate);
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
     FieldByName('RATA'+IntToStr(wRateCntr)+'_IMPORTO').AsCurrency:=dImportoRata;
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
         Post;
       End;  
  End;
  dmodAz.ibqryScadenze.Close;
  // OK !
End;

procedure TfBolle.Elimina_Scadenza;
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

procedure TfBolle.Insert_Contab_Acq(i_ID_Doc: Integer);
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
    ibqryContabAVERE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
    ibqryContabDARE.AsCurrency:=0;
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
       ibqryContabAVERE.AsCurrency:=0;
       ibqryContabDARE.AsCurrency:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
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
    ibqryContabAVERE.AsCurrency:=0;
    ibqryContabDARE.AsCurrency:=ibquery1TOTALE_IVA.AsCurrency;
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

procedure TfBolle.Insert_Contab_Vend(i_ID_Doc: Integer);
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

    ibqryContabAVERE.AsCurrency:=0;
    ibqryContabDARE.AsCurrency:=ibquery1TOTALE_IVATO.AsCurrency;
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
       ibqryContabAVERE.AsCurrency:=ibqRicerca.fieldByName('tot_importo').AsCurrency;
       ibqryContabDARE.AsCurrency:=0;
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

    ibqryContabAVERE.AsCurrency:=ibquery1TOTALE_IVA.AsCurrency;
    ibqryContabDARE.AsCurrency:=0;
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

procedure TfBolle.Elimina_Contab(i_ID_Doc: Integer;CliForID: Integer);
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
procedure TfBolle.tbtnAggiornaIVAClick(Sender: TObject);
begin
  Aggiorna_IVA_Totale;
end;
}

procedure TfBolle.Aggiorna_Spese_IVA;
 // iva per Spese.

 Procedure Update_iva(strCodIVA: String;dAliVa: Double;dImpon,dImposta : Currency);
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
 dAliVa :Double;
 dImpon,dImposta:Currency;
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

function TfBolle.Inserimento_di_riga_contab(var iPK_Codice: Integer;
  iConDett: Integer; dtData_Doc, dtData_Mov: TDateTime; iNum_Doc,
  iDoc_ID: Integer; sDescr_Mov: String; iTIPO_Mov, iPianoConto: Integer;
  sSottoContoDescr, sNomeContoDescr: String; iCliForID, iTipoCliFor,
  iNumProto: Integer; dDare, dAvere: currency): Boolean;
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




procedure TfBolle.dbeNumeroExit(Sender: TObject);
begin
 Try
  intNewNumDoc:=dbeNumero.Field.Asinteger;
  If (Verifica_NumDoc(dbeNumero.Field.Asinteger))
   Then Begin
          Application.MessageBox('Il numero già esiste!','Errore',mb_ok);
          dbeNumero.SetFocus;
        End;
  Except
  End;

end;

function TfBolle.Verifica_NumDoc(
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

Procedure TfBolle.Aggiorna_IVA_Totale;
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

procedure TfBolle.FormDestroy(Sender: TObject);
begin
 ChangeDataSetsState(False);
end;

Procedure TfBolle.Clean_All_TEdits;
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

procedure TfBolle.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=bCanClose;
end;

procedure TfBolle.tbtnEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfBolle.Edit_Mode(bMode: Boolean);
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
 // panel
// paView.Enabled:=(bMode);
end;

procedure TfBolle.ChangeDataSetsState(bOpen: Boolean);
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

procedure TfBolle.BitBtn1Click(Sender: TObject);
var
iNRiga: Integer;
a,x,y,z:String;
b: Double;

begin
if intTipoDoc=24 then
begin

A:= dbeCodice.Field.AsString;
x:= DBEdit11.Field.AsString;
y:= DBEdit9.Field.AsString;
z:= DBEdit10.Field.AsString;


with IBQueryS1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =22) ');
   SQL.Add('AND (TAB_DET_DOC.CODICE_ARTICOLO =:parID_Doc) ');
ParamByName('parID_Doc').AsString:= A;


if  DBEdit11.Field.AsString <> '' then  begin
  SQL.Add('AND (TAB_DET_DOC.A =:parID_Doc2) ');
  ParamByName('parID_Doc2').AsString:= x;
end;
if  DBEdit9.Field.AsString <> '' then begin
  SQL.Add('AND (TAB_DET_DOC.B =:parID_Doc3) ');
  ParamByName('parID_Doc3').AsString:= y;
end;
if  DBEdit10.Field.AsString <> '' then begin
  SQL.Add('AND (TAB_DET_DOC.C =:parID_Doc4) ');
  ParamByName('parID_Doc4').AsString:= z;
end;
  SQL.Add(') ');

Open;
end;

with IBQueryS2 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) AS F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE ((TAB_DOCUMENTI.TIPO_DOC =24) ');
   SQL.Add('AND (TAB_DET_DOC.CODICE_ARTICOLO =:parID_Doc) ');
ParamByName('parID_Doc').AsString:= A;


if  DBEdit11.Field.AsString <> '' then  begin
  SQL.Add('AND (TAB_DET_DOC.A =:parID_Doc2) ');
  ParamByName('parID_Doc2').AsString:= x;
end;
if  DBEdit9.Field.AsString <> '' then begin
  SQL.Add('AND (TAB_DET_DOC.B =:parID_Doc3) ');
  ParamByName('parID_Doc3').AsString:= y;
end;
if  DBEdit10.Field.AsString <> '' then begin
  SQL.Add('AND (TAB_DET_DOC.C =:parID_Doc4) ');
  ParamByName('parID_Doc4').AsString:= z;
end;
  SQL.Add(') ');
Open;
end;
b:= IBQueryS1.fieldbyname('F_1').AsFloat - IBQueryS2.fieldbyname('F_1').AsFloat -
DBEQtaCons.Field.AsFloat;
if b<0 then
RxCalcEdit1.Value := -b;
if eccedenza = 1 then RxCalcEdit1.Value := 0;
end;

Try
dsoRigheDoc.DataSet.Post;
dsoDocumento.DataSet.FieldByName('KINGUA_ID').AsString :=tipog2;
Except
Beep;
End;
Aggiorna_IVA(True,iNRiga);
Calcola_Totali;
Edit_Modex(False);
eccedenza :=0;
if RxCalcEdit1.Value >0 then begin
If (MessageDlg('Immettere eccedenza?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then begin
if boolmodifica = false then
if eccedenza <> 1 then SpeedButton1.Click;
end
else
begin

RxMemoryData1.Open;
RxMemoryData1.Insert;
RxMemoryData1.FieldByName('CODICE').AsString := dbeCodice.Field.AsString;
RxMemoryData1.FieldByName('QTA').AsFloat := RxCalcEdit1.Value;
RxMemoryData1.FieldByName('A').AsString := DBEdit11.Field.AsString;
RxMemoryData1.FieldByName('B').AsString := DBEdit9.Field.AsString;
RxMemoryData1.FieldByName('C').AsString := DBEdit10.Field.AsString;
RxMemoryData1.Post;
//eccedenza :=1;
//SpeedButton7.Click;
end;
end;

//if intTipoDoc<>24 then
SpeedButton1.Click;
end;

procedure TfBolle.dbeCodiceClick(Sender: TObject);
begin
dbeCodice.SelectAll;
end;

procedure TfBolle.dbeCodiceEnter(Sender: TObject);
begin
dbeCodice.SelectAll;
end;

procedure TfBolle.DBEdit3Enter(Sender: TObject);
begin
DBEdit3.SelectAll;
end;

procedure TfBolle.dbeCodiceExit(Sender: TObject);
var
tipog : string;
vo,R,PREZZO_LISTINO : Currency;
begin
alberto:=0;
If not (dsoRigheDoc.DataSet.State in [dsinsert,dsedit])
then exit;
If (dbeCodice.Text='')
Then
begin
dsoRigheDoc.DataSet.Cancel;
Edit_Modex(false);
Exit;
end;
 //If (boolModifica)
//Then Exit;
 With IBQuery1 do
 Begin
close;
ParamByName('CA').AsString := dbeCodice.Field.AsString;
open;
end;
if IBQuery1.IsEmpty then
begin
IBQuery5.Close;
IBQuery5.ParamByName('a').AsString := dbeCodice.Field.AsString;
IBQuery5.Open;
if IBQuery5.IsEmpty then
begin
dbeCodice.SetFocus;
alberto:=1;
Exit
end
else
begin
dbeCodice.Field.AsString :=IBQuery5.fieldbyname('codice_articolo').AsString;
IBQuery1.close;
IBQuery1.ParamByName('CA').AsString := dbeCodice.Field.AsString;
IBQuery1.open;
end;
end;
With IBQuery1 do
Begin
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=fieldbyname('DESCR').AsString;
If (boolDoc_Vendita) then
dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency :=fieldbyname('PREZZO_BASE').AsCurrency
Else
dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency :=fieldbyname('COSTO_STANDART').AsCurrency;
//dmodAz.ibTab_Gruppo.Open;
tipog := FieldByName('CAT_ART_GRUPPO_ID').AsString;
//if  dmodAz.ibTab_Gruppo.locate('CODICE',tipog,[]) then
tipog2 := fieldbyname('SC').AsString;
   If (boolDoc_Vendita)
     Then dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_VENDITA').AsInteger
     Else dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_ACQUISTO').AsInteger;
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger:=
        FieldByName('UN_MIS2_VAL').AsInteger;
if FieldByName('UN_MIS2_VAL').AsInteger <1 then
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger := 1;
if intTipoDoc=200 then
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger := 1;
if VarIsNull(dsoDocumento.DataSet.FieldByName('Listino').AsVariant) then
dsoDocumento.DataSet.FieldByName('Listino').AsInteger :=0;
if dsoDocumento.DataSet.FieldByName('Listino').AsInteger<6 then
L := 2
else
L := 1;

if dsoDocumento.DataSet.FieldByName('Listino').AsInteger=999 then
L:=999;

V := dsoDocumento.DataSet.FieldByName('Listino').AsInteger;
if (V < 6) and (L<>999) then V := v+6;
try
R:=0;
vo := ((IBQuery1PREZZO_BASE.AsCurrency +((V-6)*IBQuery1RIC.AsFloat))/L);
PREZZO_LISTINO := VO + (VO*R/100);
Except;
PREZZO_LISTINO :=0;
end;

if (intTipoDoc<>210) and (L=999) then
begin
PREZZO_LISTINO :=0;
end;

if (intTipoDoc=210) and (L=999) then
begin
IBqOrdini.Close;
IBqOrdini.ParamByName('CF').AsInteger := LookCliForCod.KeyValue;
IBqOrdini.ParamByName('CART').AsString := dbeCodice.Field.AsString;
IBqOrdini.Open;
IBqOrdini.First;
try
PREZZO_LISTINO := IBqOrdiniCOSTO.AsCurrency;
dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsInteger := IBqOrdiniTOTSCAT.AsInteger;
Except;
PREZZO_LISTINO :=0;
end;

end;

try
dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency:=
        PREZZO_LISTINO;


//dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat  := SC1;
//if (not varisnull(dsoDocumento.dataset.FieldByName('SCONTO1').AsFloat)) and (dsoDocumento.dataset.FieldByName('SCONTO1').AsFloat<>0) then
dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat  := dsoDocumento.dataset.FieldByName('SCONTO1').AsFloat;

if not varisnull(SC2) then
dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency:=
(dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency / (1+SC2/100));


if not varisnull(mg1) then
dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency:=
dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency+
(dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency * (mg1/100));


except
dsoRigheDoc.DataSet.FieldByName('COSTO').AsCurrency:=0
end;
end;
end;

procedure TfBolle.DBEdit4Enter(Sender: TObject);
begin
DBEdit4.SelectAll;
end;

procedure TfBolle.DBEdit3Exit(Sender: TObject);
//var
//a,x,y,z:String;
//b: float;
begin
try
dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat :=
        dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat *
        dsoRigheDoc.DataSet.FieldByName('TOTSCAT').AsFloat;
{
dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat :=
        dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
        dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat ;

dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat :=
        dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat -
        (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*
        dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100) ;
}
dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency :=
        dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
        dbedit7.Value;

dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency :=
        dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency -
        (dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsCurrency*
        dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100) ;



Except;
end;


end;

procedure TfBolle.DBEdit3Click(Sender: TObject);
begin
DBEdit3.SelectAll;
end;

procedure TfBolle.DBEdit4Click(Sender: TObject);
begin
DBEdit4.SelectAll;
end;

procedure TfBolle.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit3.SetFocus;
end;

procedure TfBolle.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit3.SetFocus;
end;

procedure TfBolle.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit4.SetFocus;
end;

procedure TfBolle.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit7.SetFocus;
end;

procedure TfBolle.DBEdit77KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit6.SetFocus;
end;

procedure TfBolle.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
if (intTipoDoc<>24) 
then BitBtn1.SetFocus
else
DBEdit11.SetFocus;
end;

procedure TfBolle.BitBtn1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
SpeedButton1.Click;
end;

procedure TfBolle.BitBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
SpeedButton1.Click;
end;


procedure TfBolle.LookCliForDescrChange(Sender: TObject);
begin
LookAgCod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookAgDescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
dsoDocumento.DataSet.FieldByName('Agente_id').AsString := LookAgCod.ListSource.DataSet.FieldByName('CODICE').AsString;
LookNostrDepCod.KeyValue := 1;
LookNostrDepDescr.KeyValue := 1;

sc1 :=LookCliForCod.LookupSource.DataSet.FieldByName('Sconto_testata1').AsFloat;
dsoDocumento.dataset.FieldByName('SCONTO1').AsFloat := sc1;
sc2 :=LookCliForCod.LookupSource.DataSet.FieldByName('Sconto_testata2').AsFloat;
mg1 := LookCliForCod.LookupSource.DataSet.FieldByName('Certificato').AsFloat;

edit3.Text := FloatToStr(sc2);
edit2.Text := FloatToStr(mg1);

If (LookCliForCod.LookupSource.DataSet.FieldByName('CODICE_IVA_ESENTE').AsString='')
 Then  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=0
 Else  dsoDocumento.DataSet.FieldByName('IVA_ESENTE').AsInteger:=1;
dsoDocumento.DataSet.FieldByName('PAGAMENTO_ID').AsString:=
 LookCliForCod.LookupSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
dmodAz.ibTab_Piano_Conti.Locate('Tipo',LookCliForCod.LookupSource.DataSet.FieldByName('ID_Cli_for').asinteger,[]);
 dsoDocumento.DataSet.FieldByName('PIANOCONTO_ID').AsInteger:=
    dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger;
dbeIndirizzo_cli_for.Field.AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('indirizzo').AsString;
dbeIndirizzo_cli_for2.Field.AsString:=
  LookCliForCod.LookupSource.DataSet.FieldByName('com_descr').AsString+'-'+
  LookCliForCod.LookupSource.DataSet.FieldByName('cap_descr').AsString+'('+
  LookCliForCod.LookupSource.DataSet.FieldByName('pr_descr').AsString+')';

dmodAz.ibqTab_DocTEL1.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL1').AsString;
dmodAz.ibqTab_DocTEL2.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('TEL2').AsString;
dmodAz.ibqTab_DocTEL3.AsString:=LookCliForCod.LookupSource.DataSet.FieldByName('FAX').AsString;
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
If not (boolVendita) then
dbeListino.Field.AsInteger := 6;

end;

procedure TfBolle.LookCliForCodChange(Sender: TObject);
begin
LookAgCod.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
LookAgDescr.KeyValue := LookCliForCod.LookupSource.DataSet.FieldByName('Agente_id').AsString;
dsoDocumento.DataSet.FieldByName('Agente_id').AsString := LookAgCod.ListSource.DataSet.FieldByName('CODICE').AsString;
LookNostrDepCod.KeyValue := 1;
LookNostrDepDescr.KeyValue := 1;
sc1 :=LookCliForCod.LookupSource.DataSet.FieldByName('Sconto_testata1').AsFloat;
dsoDocumento.dataset.FieldByName('SCONTO1').AsFloat := sc1;
sc2 :=LookCliForCod.LookupSource.DataSet.FieldByName('Sconto_testata2').AsFloat;
mg1 := LookCliForCod.LookupSource.DataSet.FieldByName('Certificato').AsFloat;

edit3.Text := FloatToStr(sc2);
edit2.Text := FloatToStr(mg1);

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

 If not (boolVendita) then
dbeListino.Field.AsInteger := 6;
end;

procedure TfBolle.dbedit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit6.SetFocus;
end;

procedure TfBolle.SpeedButton5Click(Sender: TObject);
begin

fTerm:=TfTerm.Create(Self);
fTerm.ShowModal;
fTerm.Free;
end;

procedure TfBolle.SpeedButton4Click(Sender: TObject);
begin
Try
if dsoRigheDoc.DataSet.State in [dsBrowse] then exit;
dsoRigheDoc.DataSet.Cancel;
Edit_Modex(False);
Except
Beep;
End;
end;

procedure TfBolle.SpeedButton3Click(Sender: TObject);
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
Edit_Modex(false);
End;
end;

procedure TfBolle.SpeedButton2Click(Sender: TObject);
Var
 iNRiga: Integer;
begin
eccedenza :=0;
If (tbtnEsci.Enabled)
Then Exit;
If (dsoRigheDoc.dataset.isEmpty)
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

procedure TfBolle.SpeedButton1Click(Sender: TObject);
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
RxCalcEdit1.Value:=0;
dsoRigheDoc.DataSet.Insert;
dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString:='ARTICOLO';
dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=0;
dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsCurrency:=0;
dsoRigheDoc.DataSet.FieldByName('DOC_ID').AsInteger:=
 dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
iNumero_Riga:=iNRiga_Nuovo;
dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger:=iNRiga_Nuovo;
dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=IntToStr(LookNostrDepCod.KeyValue);
dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;
Except
Beep;
End;
Edit_Modex(True);
boolDoc_Vendita:=boolVendita;
dbeCodice.SetFocus;
end;

procedure TfBolle.Apri;
begin
dmodAz.dsoqTabCli.DataSet.Open;
dmodAz.dsoqTabFor.DataSet.Open;
dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=intTipoDoc;
dsoDocumento.DataSet.Open;
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
end;


procedure TfBolle.bbCodiceClick(Sender: TObject);
begin
With (TfRicercaVeloceAZSQL.Create(Self)) Do
Begin
boolAdditionalWhere:=False;
strTabella:='TAB_ARTICOLI';
strCampoWhere:='CODICE_ARTICOLO';
strCampo2:='DESCR';
If (boolDoc_Vendita)
Then  strCampo3:='PREZZO_BASE'
Else  strCampo3:='COSTO_STANDART';
intRichieste:=3;
strResCampoCodice:='CODICE_ARTICOLO';
strValore:=dbeCodice.Field.AsString;
ShowModal;
strCodArt:=VarToStr(vaResValore);
if not (dsoRigheDoc.DataSet.State in [dsInsert,dsEdit]) then
SpeedButton1.Click;
dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=VarToStr(vaResValore2);
Free;
End;
DBEdit3.SetFocus;
end;

procedure TfBolle.Edit_Modex(bMode: Boolean);
begin
 SpeedButton1.Enabled:=Not(bMode);
 SpeedButton2.Enabled:=Not(bMode);
 BitBtn1.Enabled:=(bMode);
 SpeedButton4.Enabled:=(bMode);
 SpeedButton3.Enabled:=Not(bMode);
end;

procedure TfBolle.SpeedButton6Click(Sender: TObject);
begin
SpeedButton6.Visible := False;
tipo:=1;
SetCom;
ApdComPort1.open := true;
end;


procedure TfBolle.ApdComPort1TriggerAvail(CP: TObject; Count: Word);
var
  I: Integer;
  Tmp: string;
  f : Word;
  h:Char;
  FileData: TStringList;
begin
for i:=1 to count do begin
h :=  ApdComPort1.GetChar;
if h = (chSOH) then
Memo1.Lines.Add('1');
if h = (chSTX) then
begin
Memo1.Lines.Add('2');
end;
if h = (chETX) then
begin
Memo1.Lines.Add('3');
ApdComPort1.PutChar(#06);
end;
if h = (chEOT) then
begin
Memo1.Lines.Add('4');
ApdComPort1.PutChar(#06);
if tipo=1 then
passa;
end;
if h = (chENQ) then
begin
Memo1.Lines.Add('5');
ApdComPort1.PutChar(#06);
end;
if h = (chACK) then
Memo1.Lines.Add('6');
if h = (chLF) then
Memo1.Lines.Add('10');
if h = (chCR) then
Memo1.Lines.Add('13');
if h = (chNAK) then
Memo1.Lines.Add('21');
if h = (chCAN) then
Memo1.Lines.Add('24');
Memo1.Lines.Text := Memo1.Lines.Text + h;


end;
end;

procedure TfBolle.passa;
VAR
g,k:INTEGER;
FileData: TStringList;
begin
RxMemoryData1.Open;
RxMemoryData1.EmptyTable;
RxMemoryData1.Open;
g:=Memo1.Lines.Count;
for k:=1 to g do
begin
if Copy(Memo1.Lines[k], 1, 1) ='2' then
begin
RxMemoryData1.Insert;
RxMemoryData1.FieldByName('CODICE').AsString := Copy(Memo1.Lines[k], 8, 12);
RxMemoryData1.FieldByName('QTA').AsInteger := strtoint(trim(Copy(Memo1.Lines[k], 22, 5)));
RxMemoryData1.Post;
end;
end;
ApdComPort1.Open := false;
SpeedButton7.Click;
end;


procedure TfBolle.SetCom;
begin
 dmodAz.ibTabPersAz.Open;
 ApdComPort1.ComNumber:=StrToInt(dmodAz.ibTabPersAzCOMPORT.AsString);
 ApdComPort1.Baud:=StrToInt(dmodAz.ibTabPersAzBAUDRATE.AsString);
 ApdComPort1.DataBits:=StrToInt(dmodAz.ibTabPersAzDATABITS.AsString);
 ApdComPort1.StopBits:=StrToInt(dmodAz.ibTabPersAzSTOPBITS.AsString);
// ApdComPort1.Parity:=(dmodAz.ibTabPersAzPARITY.AsString);
// ApdComPort1.RTS
// ApdComPort1.DTR


 dmodAz.ibTabPersAz.Close;
end;


procedure TfBolle.SpeedButton7Click(Sender: TObject);
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
if RxMemoryData1.IsEmpty then exit;
RxMemoryData1.Last;
SpeedButton1.Click;
while not RxMemoryData1.bof do
begin
boolmodifica := False;
dbeCodice.Field.AsString := RxMemoryData1.FieldByName('CODICE').AsString;
dbeCodiceExit(sender);
if alberto = 0 then
begin
DBEdit3.Field.AsFloat :=(RxMemoryData1.FieldByName('QTA').AsFloat);
DBEdit3Exit(sender);
if eccedenza = 1 then begin
DBEdit11.Field.AsString :=(RxMemoryData1.FieldByName('A').AsString);
DBEdit9.Field.AsString :=(RxMemoryData1.FieldByName('B').AsString);
DBEdit10.Field.AsString :=(RxMemoryData1.FieldByName('C').AsString);
end;
end;
BitBtn1.Click;
RxMemoryData1.Prior;
end;
SpeedButton6.Visible := true;
eccedenza :=0;

end;

procedure TfBolle.Button1Click(Sender: TObject);
begin
dbeCodiceExit(sender);
end;

procedure TfBolle.dbeSconto1Exit(Sender: TObject);
begin
edit1.text := floattostr(dbeSconto1.Field.asfloat);
end;

procedure TfBolle.DBEdit11DblClick(Sender: TObject);
begin
With (TfRicercaVeloceAZSQL.Create(Self)) Do
Begin
boolAdditionalWhere:=False;
strTabella:='TAB_colori';
strCampoWhere:='DESCR';
strCampo2:='DESCR';
strCampo3:='DESCR' ;

//If (boolDoc_Vendita)
//Then  strCampo3:='DESCR'
//Else  strCampo3:='COSTO_STANDART';
intRichieste:=3;
strResCampoCodice:='DESCR';
strValore:=DBEdit11.Field.AsString;
ShowModal;
strCodArt:=VarToStr(vaResValore);
if not (dsoRigheDoc.DataSet.State in [dsInsert,dsEdit]) then
SpeedButton1.Click;
//dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
dsoRigheDoc.DataSet.FieldByName('A').AsString:=VarToStr(vaResValore2);
Free;
End;
DBEdit9.SetFocus;

end;

procedure TfBolle.DBEdit9DblClick(Sender: TObject);
begin
With (TfRicercaVeloceAZSQL.Create(Self)) Do
Begin
boolAdditionalWhere:=False;
strTabella:='TAB_taglie';
strCampoWhere:='DESCR';
strCampo2:='DESCR';
strCampo3:='DESCR' ;

//If (boolDoc_Vendita)
//Then  strCampo3:='DESCR'
//Else  strCampo3:='COSTO_STANDART';
intRichieste:=3;
strResCampoCodice:='DESCR';
strValore:=DBEdit9.Field.AsString;
ShowModal;
strCodArt:=VarToStr(vaResValore);
if not (dsoRigheDoc.DataSet.State in [dsInsert,dsEdit]) then
SpeedButton1.Click;
//dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
dsoRigheDoc.DataSet.FieldByName('B').AsString:=VarToStr(vaResValore2);
Free;
End;
BitBtn1.SetFocus;
end;

procedure TfBolle.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
BitBtn1.SetFocus;
end;

procedure TfBolle.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit10.SetFocus;
end;

procedure TfBolle.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
DBEdit9.SetFocus;
end;

procedure TfBolle.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

end.
