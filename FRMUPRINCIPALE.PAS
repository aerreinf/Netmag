unit frmuPrincipale;

interface   

{$T+}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Buttons, ToolWin, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids,
  uFrmBarNED, uFrmBarMove, Db, IBStoredProc, IBUpdateSQL, ActnList,
  Placemnt, RXShell, RxMenus, Mask, IBCustomDataSet, IBTable, IBServices,
  ToolEdit, CurrEdit, IBQuery, ShellApi,INIFiles;

Type
  TfrmPrincipale = class(TForm)
    ctrlbarGeneralCtrl: TControlBar;
    popFile: TPopupMenu;
    mi0Esci: TMenuItem;
    popAnag: TPopupMenu;
    mi1Regioni: TMenuItem;
    mi1Province: TMenuItem;
    mi1Comuni: TMenuItem;
    mi1Banche: TMenuItem;
    mi1CAB: TMenuItem;
    mi1ABI: TMenuItem;
    mi1Zone: TMenuItem;
    mi1Sottozone: TMenuItem;
    popOptions: TPopupMenu;
    tbarMenuBtns: TToolBar;
    tbtnFile: TToolButton;
    tbtnAnag: TToolButton;
    tbtnOptions: TToolButton;
    mi0DBOpts: TMenuItem;
    sbarGeneral: TStatusBar;
    tbtnMagazzino: TToolButton;
    popMagazzino: TPopupMenu;
    mi2Articoli: TMenuItem;
    mi2Marca: TMenuItem;
    mi2Famiglia: TMenuItem;
    mi2Gruppo: TMenuItem;
    mi2Tipo: TMenuItem;
    mi2CauMag: TMenuItem;
    mi2CauTras: TMenuItem;
    mi2AspEst: TMenuItem;
    mi2Depositi: TMenuItem;
    mi2Imballi: TMenuItem;
    mi2Porto: TMenuItem;
    mi2Produttori: TMenuItem;
    mi2RagDep: TMenuItem;
    mi2Stagioni: TMenuItem;
    mi2Ubicazioni: TMenuItem;
    mi2UnDiMis: TMenuItem;
    mi2DescrAgg: TMenuItem;
    mi2Commessi: TMenuItem;
    mi2Arrotondamenti: TMenuItem;
    sm2Listinism: TMenuItem;
    mi2TipiOferte: TMenuItem;
    tbtnDocumenti: TToolButton;
    popDocumenti: TPopupMenu;
    paLeft: TPanel;
    paRight: TPanel;
    paDataView: TPanel;
    dbgMainDataGrid: TDBGrid;
    frmBarNED1: TfrmBarNED;
    popEdit: TPopupMenu;
    mi1AnagAz: TMenuItem;
    mi1PersAz: TMenuItem;
    mi1Clienti: TMenuItem;
    mi1CatCli: TMenuItem;
    mi1CodiceIVA: TMenuItem;
    mi1Monete: TMenuItem;
    mi1Pagamenti: TMenuItem;
    mi1CodiceISO: TMenuItem;
    mi1Nazioni: TMenuItem;
    mi1Agenti: TMenuItem;
    mi1Vettori: TMenuItem;
    frmBarMove1: TfrmBarMove;
    tbtnAltre: TToolButton;
    popAltre: TPopupMenu;
    Attivit: TMenuItem;
    Sesso: TMenuItem;
    TitpoTitolo: TMenuItem;
    INPS: TMenuItem;
    NaturaGiuridica: TMenuItem;
    TipoArrot: TMenuItem;
    Lingue: TMenuItem;
    Mododiconsegna1: TMenuItem;
    mi0NonimponibileIVA1: TMenuItem;
    mi0NonsoggettoIVA1: TMenuItem;
    mi1CamMon: TMenuItem;
    dlgPrinterSetup: TPrinterSetupDialog;
    mi0PrinterSetup: TMenuItem;
    mi0TipoPagamento: TMenuItem;
    mi1Fornitori: TMenuItem;
    mi5Acquisti: TMenuItem;
    mi5Vendite: TMenuItem;
    mi5PrevFor: TMenuItem;
    mi5OrdFor: TMenuItem;
    mi5DDTFor: TMenuItem;
    mi5FattFor: TMenuItem;
    mi5NotaDebito: TMenuItem;
    mi5PrevCli: TMenuItem;
    mi5OrdCli: TMenuItem;
    mi5DDTCli: TMenuItem;
    mi5FattCli: TMenuItem;
    mi5NotaCredito: TMenuItem;
    mi5VendBanc: TMenuItem;
    mi0TipoProvvigione: TMenuItem;
    mi0TipoSommaProvv: TMenuItem;
    N1: TMenuItem;
    mi0Baud: TMenuItem;
    mi0BitdiDati: TMenuItem;
    mi0BitdiStop: TMenuItem;
    mi0Parit: TMenuItem;
    mi0Porta: TMenuItem;
    mi0ModelloECR: TMenuItem;
    mi2NuovoListino: TMenuItem;
    dsoMainLook: TDataSource;
    paDataCtrl: TPanel;
    tbtnSpampe: TToolButton;
    pmStampe: TPopupMenu;
    smStampeCliFor: TMenuItem;
    ssmiClienti: TMenuItem;
    ssmiFornitori: TMenuItem;
    misAnagCli: TMenuItem;
    AnagraficaFornitori1: TMenuItem;
    StampaPersonalizzata1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    StampaPersonalizzata2: TMenuItem;
    StampaSelezionato1: TMenuItem;
    StampaSelezionato2: TMenuItem;
    mi2Listini: TMenuItem;
    pmiStampaCauMag: TMenuItem;
    miSchContArt: TMenuItem;
    miDAFF: TMenuItem;
    smiFattDifer: TMenuItem;
    miDVFattCli: TMenuItem;
    smiDVFDiferita: TMenuItem;
    miBrogliaccio: TMenuItem;
    tbtnContab: TToolButton;
    popContab: TPopupMenu;
    pmiContPianoDiConti: TMenuItem;
    pmiContab_CauContab: TMenuItem;
    PrimaNota1: TMenuItem;
    InserimentoeModifiche1: TMenuItem;
    miVisPrimaNota: TMenuItem;
    tbtnIVA: TToolButton;
    popIVA: TPopupMenu;
    LiquidazioneMensile1: TMenuItem;
    LiquidazioneTrimestrale1: TMenuItem;
    N5: TMenuItem;
    Pagamento1: TMenuItem;
    pmiDocVis: TMenuItem;
    N6: TMenuItem;
    smOrdini: TMenuItem;
    pmiInsMod: TMenuItem;
    pmiVisStam: TMenuItem;
    N7: TMenuItem;
    mmMenuPrincipale: TMainMenu;
    File1: TMenuItem;
    miReport: TMenuItem;
    miArticoli: TMenuItem;
    Categoria1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    miCaricoScaricoMagazzino: TMenuItem;
    N15: TMenuItem;
    smiPianodeiConti: TMenuItem;
    miSt_PianCont_ord_cod: TMenuItem;
    miSta_PianoCont_ord_descr: TMenuItem;
    pmiContab_Scad: TMenuItem;
    miArtVendita: TMenuItem;
    miArtAccessorie: TMenuItem;
    N17: TMenuItem;
    miEnableErrMsg: TMenuItem;
    pmPerGriglia: TPopupMenu;
    pmiDelete_Selected: TMenuItem;
    pmiPrimaNota_Ins: TMenuItem;
    miPN_Ins_MovGen: TMenuItem;
    pmiPN_ins_PagFatAcq: TMenuItem;
    pmiPN_ins_PagFatVend: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    pmiPN_ins_FattAcq: TMenuItem;
    pmiPN_ins_FattVend: TMenuItem;
    pmiMag_Distinte: TMenuItem;
    ActionList1: TActionList;
    actEsci: TAction;
    actPrinterSetup: TAction;
    actReportDesigner: TAction;
    actAnagrafica_AnagraficaAzienda: TAction;
    actMagazzino_Distinte: TAction;
    actToolBar_Nuovo: TAction;
    actToolBar_Modifica: TAction;
    actToolBar_Update: TAction;
    actDoc_Acq_Prev_Forn: TAction;
    actDoc_Vend_Prev_Cli: TAction;
    actContab_PianoConti: TAction;
    actStampe_Articoli: TAction;
    actGrid_Vis_Rec_Sel: TAction;
    smiStampe_Distinte: TMenuItem;
    miStampe_Distinte_Riepilogo: TMenuItem;
    miStampe_Distinte_Dettaglio: TMenuItem;
    miStampe_Distinte_RiepScateAst: TMenuItem;
    miStampe_Distinte_Riepilogomagazzino: TMenuItem;
    miStampe_Distinte_riepilogoprezzi: TMenuItem;
    miStampe_Distinte_Riepilogoprezziecc: TMenuItem;
    miStampe_Distinte_RiepilogoDaCodiceAcc: TMenuItem;
    actStampe_Distinte_Riepilogo: TAction;
    actStampe_Distinte_Dettaglio: TAction;
    actStampe_Distinte_RiepScatEAst: TAction;
    actStampe_Distinte_Riep_Mag: TAction;
    actStampe_Distinte_RiepDaCodAcc: TAction;
    actStampe_Doc_Brogliaccio: TAction;
    actContab_PN_Ins_MovGen: TAction;
    smProduzione: TMenuItem;
    miProd_Pretaglio: TMenuItem;
    miProd_Taglio: TMenuItem;
    N20: TMenuItem;
    miProd_Contolavoro: TMenuItem;
    N21: TMenuItem;
    miProd_Deposito: TMenuItem;
    miProd_Magazzino: TMenuItem;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    actDoc_Acq_Ord_Forn: TAction;
    actDoc_Acq_DDT_Forn: TAction;
    actDoc_Acq_Fatt_Imm: TAction;
    actDoc_Acq_Fatt_Dif: TAction;
    actDoc_Acq_Nota_Debito: TAction;
    actDoc_Vend_Ord_Cli: TAction;
    actDoc_Vend_Fatt_Imm: TAction;
    actDoc_Vend_Fatt_Dif: TAction;
    actDoc_Vend_Nota_Credito: TAction;
    actDoc_Vend_DDT_Cli: TAction;
    actDoc_Vend_Vend_Al_Banco: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    mpDist_Stampafiltrata: TMenuItem;
    rxfrmStore: TFormStorage;
    rxtricoGeAri: TRxTrayIcon;
    rxpopTrayMenu: TRxPopupMenu;
    N22: TMenuItem;
    miTry_Esci: TMenuItem;
    actTry_Close: TAction;
    Bolle1: TMenuItem;
    Campionario1: TMenuItem;
    OrdineCliente1: TMenuItem;
    BolleVend1: TMenuItem;
    ResoClienti1: TMenuItem;
    AbbR1: TMenuItem;
    Bollettwe1: TMenuItem;
    Vendita1: TMenuItem;
    VenditaalBanco2: TMenuItem;
    IBTable1: TIBTable;
    AbbC1: TMenuItem;
    BolladiProduzione1: TMenuItem;
    Distinte1: TMenuItem;
    Previsione1: TMenuItem;
    SpeedButton5: TSpeedButton;
    OrdiniFornitori1: TMenuItem;
    ArrivoFornitori1: TMenuItem;
    VisualizAccessori1: TMenuItem;
    VisualizzVendita1: TMenuItem;
    Dettaglio1: TMenuItem;
    SpeedButton6: TSpeedButton;
    Casse1: TMenuItem;
    InviaArticoli1: TMenuItem;
    SitGen: TMenuItem;
    Ordini1: TMenuItem;
    PretaglioFittizio1: TMenuItem;
    N23: TMenuItem;
    TagliEsterni1: TMenuItem;
    N24: TMenuItem;
    PreventiviVendita1: TMenuItem;
    RicercaSeriali1: TMenuItem;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Bolle2: TMenuItem;
    Contabilit1: TMenuItem;
    IBQuery1: TIBQuery;
    Taglie1: TMenuItem;
    Colori1: TMenuItem;
    CaricoFattture1: TMenuItem;
    ToolButton4: TToolButton;
    PopupMenu1: TPopupMenu;
    GestSchedeCarburante1: TMenuItem;
    GestAutomezzi1: TMenuItem;
    GestAttrezziedUtensili1: TMenuItem;
    GestAbbigliamento6261: TMenuItem;
    GestBeniStrumentaliUfficio1: TMenuItem;
    Passaggidirettiinmagaz1: TMenuItem;
    IBTable2: TIBTable;
    IBTable2CODICE: TIntegerField;
    IBTable2RIGA1: TIBStringField;
    IBTable2RIGA2: TIBStringField;
    IBTable2RIGA3: TIBStringField;
    IBTable2RIGA4: TIBStringField;
    IBTable2RIGA5: TIBStringField;
    IBTable2RIGA6: TIBStringField;
    IBTable2RIGA7: TIBStringField;
    IBTable2RIGA8: TIBStringField;
    IBTable2RIGA9: TIBStringField;
    ToolButton5: TToolButton;
    popInfo: TPopupMenu;
    Help1: TMenuItem;
    N25: TMenuItem;
    Contattaci1: TMenuItem;
    EsenzioniIva1: TMenuItem;
    Edit1: TEdit;
    Produzione1: TMenuItem;
    N26: TMenuItem;
    Pretaglio1: TMenuItem;
    aglio1: TMenuItem;
    CaricoAccessori1: TMenuItem;
    OrdiniFornitori2: TMenuItem;
    ArrivoFornitori2: TMenuItem;
    MovimentazioniCapi1: TMenuItem;
    CaricoRacam1: TMenuItem;
    N27: TMenuItem;
    InvioaFason1: TMenuItem;
    N28: TMenuItem;
    RientrodaCL1: TMenuItem;
    N29: TMenuItem;
    CapiPronti1: TMenuItem;
    N30: TMenuItem;
    InvioaRacam1: TMenuItem;
    VisSitAccessori1: TMenuItem;
    VisSitCapi1: TMenuItem;
    Info1: TMenuItem;
    InvioinCLInt1: TMenuItem;
    InvioinCLExtMan1: TMenuItem;
    InvioaRacamMan1: TMenuItem;
    CaricodaRacam21: TMenuItem;
    InvioinCLBolle1: TMenuItem;
    CapiProntiBolle1: TMenuItem;
    InvioaRacamBolle1: TMenuItem;
    RientrodaCLBolle1: TMenuItem;
    EmissioneRiBa1: TMenuItem;
    Distinte2: TMenuItem;
    SubaCategoria1: TMenuItem;
    N31: TMenuItem;
    Button1: TButton;
    Pelle1: TMenuItem;
    InserimentoschedeTagliatori1: TMenuItem;
    SpeedButton13: TSpeedButton;
    BackUp1: TMenuItem;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton25: TSpeedButton;
    ToolButton1: TToolButton;
    PopCasse: TPopupMenu;
    MenuItem2: TMenuItem;
    Reparti1: TMenuItem;
    GestioneCasseCASIOINDESIT1: TMenuItem;
    N32: TMenuItem;
    DareAvere1: TMenuItem;
    N33: TMenuItem;
    ScaricoAccessori1: TMenuItem;
    N34: TMenuItem;
    ScaricoMeteriePrime1: TMenuItem;
    N35: TMenuItem;
    Scarico1: TMenuItem;
    CodiciAggiuntivi1: TMenuItem;
    Statistiche1: TMenuItem;
    FatturaAcquistoINTRA1: TMenuItem;
    NoteAcquisti1: TMenuItem;
    N36: TMenuItem;
    N4: TMenuItem;
    NumeriProtAcquisto1: TMenuItem;
    NumeriProtVendita1: TMenuItem;
    N16: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    DDTdaFatt1: TMenuItem;
    RiepilogoIva1: TMenuItem;
    DichiarazioneIva1: TMenuItem;
    RegistroCorrispettivi1: TMenuItem;
    Causalicontabili1: TMenuItem;
    Prezzi1: TMenuItem;
    BolleRicam1: TMenuItem;
    BolleRicamRientr1: TMenuItem;
    N40: TMenuItem;
    VisualizRicami1: TMenuItem;
    procedure mi0DBOptsClick(Sender: TObject);
    procedure mi0EsciClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mi1RegioniClick(Sender: TObject);
    procedure frmBarNED1tbtnDelClick(Sender: TObject);
    procedure mi1ProvinceClick(Sender: TObject);
    procedure mi1ZoneClick(Sender: TObject);
    procedure mi1ABIClick(Sender: TObject);
    procedure mi1CABClick(Sender: TObject);
    procedure frmBarMove1tbtnFirstClick(Sender: TObject);
    procedure frmBarMove1tbtnPriorClick(Sender: TObject);
    procedure frmBarMove1tbtnNextClick(Sender: TObject);
    procedure frmBarMove1tbtnLastClick(Sender: TObject);
    procedure mi1ComuniClick(Sender: TObject);
    procedure mi1BancheClick(Sender: TObject);
    procedure mi1SottozoneClick(Sender: TObject);
    procedure mi1MoneteClick(Sender: TObject);
    procedure mi1VettoriClick(Sender: TObject);
    procedure AttivitClick(Sender: TObject);
    procedure TipoTitoloClick(Sender: TObject);
    procedure SessoClick(Sender: TObject);
    procedure mi1CodiceISOClick(Sender: TObject);
    procedure INPSClick(Sender: TObject);
    procedure NaturaGiuridicaClick(Sender: TObject);
    procedure mi1NazioniClick(Sender: TObject);
    procedure TipoArrotClick(Sender: TObject);
    procedure mi2MarcaClick(Sender: TObject);
    procedure mi2FamigliaClick(Sender: TObject);
    procedure mi2GruppoClick(Sender: TObject);
    procedure mi2TipoClick(Sender: TObject);
    procedure LingueClick(Sender: TObject);
    procedure mi2PortoClick(Sender: TObject);
    procedure Mododiconsegna1Click(Sender: TObject);
    procedure mi0NonimponibileIVA1Click(Sender: TObject);
    procedure mi0NonsoggettoIVA1Click(Sender: TObject);
    procedure mi1CatCliClick(Sender: TObject);
    procedure mi2ArrotondamentiClick(Sender: TObject);
    procedure mi2ImballiClick(Sender: TObject);
    procedure mi2AspEstClick(Sender: TObject);
    procedure mi1CamMonClick(Sender: TObject);
    procedure mi1CodiceIVAClick(Sender: TObject);
    procedure mi2ProduttoriClick(Sender: TObject);
    procedure mi2UbicazioniClick(Sender: TObject);
    procedure mi2CommessiClick(Sender: TObject);
    procedure mi2StagioniClick(Sender: TObject);
    procedure mi2UnDiMisClick(Sender: TObject);
    procedure mi2RagDepClick(Sender: TObject);
    procedure mi0TipoPagamentoClick(Sender: TObject);
    procedure mi2DepositiClick(Sender: TObject);
    procedure mi1ClientiClick(Sender: TObject);
    procedure mi1FornitoriClick(Sender: TObject);
    procedure mi0TipoProvvigioneClick(Sender: TObject);
    procedure mi1AgentiClick(Sender: TObject);
    procedure mi0TipoSommaProvvClick(Sender: TObject);
    procedure mi1PersAzClick(Sender: TObject);
    procedure mi1PagamentiClick(Sender: TObject);
    procedure mi0BaudClick(Sender: TObject);
    procedure mi0BitdiDatiClick(Sender: TObject);
    procedure mi0BitdiStopClick(Sender: TObject);
    procedure mi0ParitClick(Sender: TObject);
    procedure mi0PortaClick(Sender: TObject);
    procedure mi0ModelloECRClick(Sender: TObject);
//    procedure dbgDataGridDrawColumnCell(Sender: TObject; const Rect: TRect;      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mi2CauTrasClick(Sender: TObject);
    procedure mi2CauMagClick(Sender: TObject);
    procedure mi2TipiOferteClick(Sender: TObject);
    procedure mi2NuovoListinoClick(Sender: TObject);
    procedure misAnagCliClick(Sender: TObject);
    procedure AnagraficaFornitori1Click(Sender: TObject);
    procedure StampaPersonalizzata1Click(Sender: TObject);
    procedure StampaPersonalizzata2Click(Sender: TObject);
    procedure StampaSelezionato1Click(Sender: TObject);
    procedure StampaSelezionato2Click(Sender: TObject);
    procedure mi2ListiniClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure miSDMAnaliticaClick(Sender: TObject);
    procedure miSDMSinteticaClick(Sender: TObject);
    procedure pmiStampaCauMagClick(Sender: TObject);
    procedure miSchContArtClick(Sender: TObject);
    procedure pmiDocVisClick(Sender: TObject);
    procedure pmiInsModClick(Sender: TObject);
    procedure pmiVisStamClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miSituazMagClick(Sender: TObject);
    procedure miCaricoScaricoMagazzinoClick(Sender: TObject);
    procedure miSt_PianCont_ord_codClick(Sender: TObject);
    procedure miSta_PianoCont_ord_descrClick(Sender: TObject);
    procedure miArtAccessorieClick(Sender: TObject);
    procedure miEnableErrMsgClick(Sender: TObject);
    procedure pmiPN_ins_FattAcqClick(Sender: TObject);
    procedure pmiPN_ins_FattVendClick(Sender: TObject);
    procedure pmiPN_ins_PagFatAcqClick(Sender: TObject);
    procedure pmiPN_ins_PagFatVendClick(Sender: TObject);
    procedure actEsciExecute(Sender: TObject);
    procedure actPrinterSetupExecute(Sender: TObject);
    procedure actReportDesignerExecute(Sender: TObject);
    procedure actAnagrafica_AnagraficaAziendaExecute(Sender: TObject);
    procedure actMagazzino_DistinteExecute(Sender: TObject);
    procedure actToolBar_NuovoExecute(Sender: TObject);
    procedure actToolBar_ModificaExecute(Sender: TObject);
    procedure actToolBar_UpdateExecute(Sender: TObject);
    procedure actContab_PianoContiExecute(Sender: TObject);
    procedure actStampe_ArticoliExecute(Sender: TObject);
    procedure actGrid_Vis_Rec_SelExecute(Sender: TObject);
    procedure actStampe_Distinte_RiepilogoExecute(Sender: TObject);
    procedure actStampe_Distinte_DettaglioExecute(Sender: TObject);
    procedure actStampe_Distinte_RiepScatEAstExecute(Sender: TObject);
    procedure actStampe_Distinte_Riep_MagExecute(Sender: TObject);
    procedure actStampe_Distinte_RiepDaCodAccExecute(Sender: TObject);
    procedure actStampe_Doc_BrogliaccioExecute(Sender: TObject);
    procedure actContab_PN_Ins_MovGenExecute(Sender: TObject);
    procedure miProd_PretaglioClick(Sender: TObject);
    procedure miProd_TaglioClick(Sender: TObject);
    procedure actDoc_Acq_Prev_FornExecute(Sender: TObject);
    procedure actDoc_Vend_Prev_CliExecute(Sender: TObject);
    procedure actDoc_Acq_Ord_FornExecute(Sender: TObject);
    procedure actDoc_Acq_DDT_FornExecute(Sender: TObject);
    procedure actDoc_Acq_Fatt_ImmExecute(Sender: TObject);
    procedure actDoc_Acq_Fatt_DifExecute(Sender: TObject);
    procedure actDoc_Acq_Nota_DebitoExecute(Sender: TObject);
    procedure actDoc_Vend_Ord_CliExecute(Sender: TObject);
    procedure actDoc_Vend_DDT_CliExecute(Sender: TObject);
    procedure actDoc_Vend_Fatt_ImmExecute(Sender: TObject);
    procedure actDoc_Vend_Fatt_DifExecute(Sender: TObject);
    procedure mpDist_StampafiltrataClick(Sender: TObject);
    procedure actTry_CloseExecute(Sender: TObject);
    procedure Campionario1Click(Sender: TObject);
    procedure VenditaalBanco2Click(Sender: TObject);
    procedure Vendita1Click(Sender: TObject);
    procedure BolladiProduzione1Click(Sender: TObject);
    procedure Previsione1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure OrdineCliente1Click(Sender: TObject);
    procedure OrdiniFornitori1Click(Sender: TObject);
    procedure Dettaglio1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure InviaArticoli1Click(Sender: TObject);
    procedure PretaglioFittizio1Click(Sender: TObject);
    procedure ArrivoFornitori1Click(Sender: TObject);
    procedure TagliEsterni1Click(Sender: TObject);
    procedure PreventiviVendita1Click(Sender: TObject);
    procedure SitGenClick(Sender: TObject);
    procedure miProd_ContolavoroClick(Sender: TObject);
    procedure miProd_DepositoClick(Sender: TObject);
    procedure miProd_MagazzinoClick(Sender: TObject);
    procedure BolleVend1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure Ordini1Click(Sender: TObject);
    procedure RicercaSeriali1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Bolle2Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Contabilit1Click(Sender: TObject);
    procedure Taglie1Click(Sender: TObject);
    procedure Colori1Click(Sender: TObject);
    procedure CaricoFattture1Click(Sender: TObject);
    procedure GestSchedeCarburante1Click(Sender: TObject);
    procedure ResoClienti1Click(Sender: TObject);
    procedure Passaggidirettiinmagaz1Click(Sender: TObject);
    function EnDeCrypt(const Value : String) : String;
    procedure sbarGeneralClick(Sender: TObject);
    procedure Contattaci1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EsenzioniIva1Click(Sender: TObject);
    procedure mi2DescrAggClick(Sender: TObject);
    procedure CaricoRacam1Click(Sender: TObject);
    procedure InvioinCLInt1Click(Sender: TObject);
    procedure InvioaFason1Click(Sender: TObject);
    procedure RientrodaCL1Click(Sender: TObject);
    procedure CapiPronti1Click(Sender: TObject);
    procedure InvioaRacam1Click(Sender: TObject);
    procedure InvioinCLExtMan1Click(Sender: TObject);
    procedure InvioaRacamMan1Click(Sender: TObject);
    procedure CaricodaRacam21Click(Sender: TObject);
    procedure VisSitCapi1Click(Sender: TObject);
    procedure InvioinCLBolle1Click(Sender: TObject);
    procedure RientrodaCLBolle1Click(Sender: TObject);
    procedure CapiProntiBolle1Click(Sender: TObject);
    procedure InvioaRacamBolle1Click(Sender: TObject);
    procedure EmissioneRiBa1Click(Sender: TObject);
    procedure GestAutomezzi1Click(Sender: TObject);
    procedure GestAttrezziedUtensili1Click(Sender: TObject);
    procedure Distinte2Click(Sender: TObject);
    procedure SubaCategoria1Click(Sender: TObject);
    procedure InserimentoschedeTagliatori1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure BackUp1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure Reparti1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure GestioneCasseCASIOINDESIT1Click(Sender: TObject);
    procedure pmiContab_ScadClick(Sender: TObject);
    procedure miVisPrimaNotaClick(Sender: TObject);
    procedure miArtVenditaClick(Sender: TObject);
    procedure DareAvere1Click(Sender: TObject);
    procedure ScaricoAccessori1Click(Sender: TObject);
    procedure ScaricoMeteriePrime1Click(Sender: TObject);
    procedure CodiciAggiuntivi1Click(Sender: TObject);
    procedure Statistiche1Click(Sender: TObject);
    procedure FatturaAcquistoINTRA1Click(Sender: TObject);
    procedure pmiContab_CauContabClick(Sender: TObject);
    procedure NumeriProtVendita1Click(Sender: TObject);
    procedure NumeriProtAcquisto1Click(Sender: TObject);
    procedure Causalicontabili1Click(Sender: TObject);
    procedure LiquidazioneMensile1Click(Sender: TObject);
    procedure Prezzi1Click(Sender: TObject);
    procedure BolleRicam1Click(Sender: TObject);
    procedure BolleRicamRientr1Click(Sender: TObject);
    procedure VisualizRicami1Click(Sender: TObject);

  private
    { Private declarations }
    Procedure EnableBarNED;
    Procedure DisableBarNED;
    Procedure EnableBarMove;
    Procedure DisableBarMove;
    Procedure DestroyOldForm;
    Procedure Show_Form_For_Edit;
    Procedure Show_Form_For_Insert;
    Procedure Update_SBar(sbField: Integer; strText: String);
    Procedure Update_Datas;
  public
    { Public declarations }
    intGridRecs,tipo: Integer;
    strCurrentTableName: String;
    bPubTable,client: Boolean;
         (*tapi call func calls tapi32.dll....
         function tapiRequestMakeCall(lpszDestAddress: PChar; lpszAppName: PChar;
         lpszCalledParty: PChar; lpszComment: PChar): Longint; stdcall;
         external 'tapi32.dll'; name 'tapiRequestMakeCall';*)
    Procedure CloseOldTable;
  end;

var
  frmPrincipale: TfrmPrincipale;
  dynWStrName: Array of String;
  intDynCntr: Integer;

Implementation


Uses

  uDBOpts, uAzDM, uPubDM, uRegioni, uProvince, uZone, uABI, uCAB,
  uComuni, uBanche, uSottoZone, uMonete, uVettori, uClienti, uForn,
  uNazioni, uCreaListWiz, uListini, uPrnForm, uCatCli,
  uCauTrasp, uPianoConti, uArticoli, uCauMag, uDescrAgg,
  uRicercaPrincipale, uPrnCustCliFor, uPrnCustSelCliFor,
  uArrot, uCodISO, uPagamenti, uCasse, uBaud, uBitDati,
  uBitStop, uParita, uModCons, uINPS, uNatGiur, uDocs,
  uMarca, uFamiglia, uGruppo, uTipo, uReparti,
  uAnagAzDB, uAttivitaDB, uTipoTitoloDB, uSessoDB,
  uTipoArrDB,  uLingueDB, uPortoDB,
  uNonImpIVADB, uNonSogIVADB, uImballiDB, uAspettoEstDB,
  uCambMonDB, uCodIVADB, uProduttoriDB, uUbicazioniDB,
  uCommessiDB, uStagioniDB, uUnitMisDB,
  uTipoPagDB, uDepositiDB, uTipoProvvDB, uAgentiDB,
  uTipoSomPrvDB, uPersAzDB, uRaggDepDB,
  uPorteDB, uTipoRegisDB, uTipoOfertaDB, uPrnBrogl, uVisDoc, uOrdini,
  uVisOrd, frmuCarScarMag, frmuScadenze, frmuVisPrimaNota, frmuVisDistinta,
  frmuInsPrimaNota, frmuPNinsMovGener, frmuInsInPNPagamento, frmuSelAcc,
  frmuProduzioneAbbigliamento, frmuInsInPN, frmuSelectPerDistinte,
  frmuVendBanco, uBollette, uSitMag, uAccess01, uPrevProd, uOperai,
  uApprovAcc, UinviaArt, uPretFit, uTaglio, uTaglioFas, uSitGenVen,
  uBolConto, uSitORd, uSeriali, uRicSer, uSitBol, uContabR, uTaglie,
  uColori, uVisFattOrdini, UConte2, uUnitMis, uBaseFormDoc3, uEsenteIva,
  uBaseForm3, UCauInt, uVisCapiB, uCostiGest, uRiba, uSubCat, uTaglPell,
  frmBackRest, UGestCasse, UCodAgg, uStatistiche , uNumReg, uCauCont,
  uRegIvaV, frmSituazRicami;



{$R *.DFM}

const
	ID_BIT	=	$200000;			// EFLAGS ID bit
type
	TCPUID	= array[1..4] of Longint;
	TVendor	= array [0..11] of char;

function IsCPUID_Available : Boolean; register;
asm
	PUSHFD							{direct access to flags no possible, only via stack}
  POP     EAX					{flags to EAX}
  MOV     EDX,EAX			{save current flags}
  XOR     EAX,ID_BIT	{not ID bit}
  PUSH    EAX					{onto stack}
  POPFD								{from stack to flags, with not ID bit}
  PUSHFD							{back to stack}
  POP     EAX					{get back to EAX}
  XOR     EAX,EDX			{check if ID bit affected}
  JZ      @exit				{no, CPUID not availavle}
  MOV     AL,True			{Result=True}
@exit:
end;

function GetCPUID : TCPUID; assembler; register;
asm
  PUSH    EBX         {Save affected register}
  PUSH    EDI
  MOV     EDI,EAX     {@Resukt}
  MOV     EAX,1
  DW      $A20F       {CPUID Command}
  STOSD			          {CPUID[1]}
  MOV     EAX,EBX
  STOSD               {CPUID[2]}
  MOV     EAX,ECX
  STOSD               {CPUID[3]}
  MOV     EAX,EDX
  STOSD               {CPUID[4]}
  POP     EDI					{Restore registers}
  POP     EBX
end;

function GetCPUVendor : TVendor; assembler; register;
asm
  PUSH    EBX					{Save affected register}
  PUSH    EDI
  MOV     EDI,EAX			{@Result (TVendor)}
  MOV     EAX,0
  DW      $A20F				{CPUID Command}
  MOV     EAX,EBX
  XCHG		EBX,ECX     {save ECX result}
  MOV			ECX,4
@1:
  STOSB
  SHR     EAX,8
  LOOP    @1
  MOV     EAX,EDX
  MOV			ECX,4
@2:
  STOSB
  SHR     EAX,8
  LOOP    @2
  MOV     EAX,EBX
  MOV			ECX,4
@3:
  STOSB
  SHR     EAX,8
  LOOP    @3
  POP     EDI					{Restore registers}
  POP     EBX
end;

function TfrmPrincipale.EnDeCrypt(const Value : String) : String;
var
  CharIndex : integer;
begin
  Result := Value;
  for CharIndex := 1 to Length(Value) do
    Result[CharIndex] := chr(not(ord(Value[CharIndex])));
end;

procedure TfrmPrincipale.mi0DBOptsClick(Sender: TObject);
begin
 fDBOpts:=TfDBOpts.Create(Self);
 fDBOpts.ShowModal;
 fDBOpts.Free;
end;

procedure TfrmPrincipale.mi0EsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Beep;
 If (MessageDlg('Uscire dal programma?',mtConfirmation,[mbYes, mbNo], 0) = mrYes)
 then
 begin
IBTable1.Active := True;
IBTable1.First;
if IBTable1.fieldbyName('COSTO').AsInteger = 1896 then
// ShowMessage('Ti auguro una buona giornata .. Ciaoo Babi ..');
 CloseOldTable;
 DestroyOldForm;
 If (dmodAz.ibtrDef.InTransaction) Then dmodAz.ibtrDef.Commit;
 If (dmodPub.ibTransPub.InTransaction) Then dmodPub.ibTransPub.Commit;
  dmodAz.ibdbAzUni.Connected := False;
  Action:=caFree
 end
 Else Action:=caNone;
end;

procedure TfrmPrincipale.mi1RegioniClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fRegioni:=TfRegioni.Create(Self);
 strCurrentTableName:='TAB_REGIONI';
 bPubTable:=True;
 Update_SBar(2,'Regioni');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Regioni.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Regioni;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Regioni.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.frmBarNED1tbtnDelClick(Sender: TObject);
begin
 If (dbgMainDataGrid.DataSource.DataSet.IsEmpty)
  Then
   Begin
    MessageDlg('Non c''è niente da eliminare !',mtWarning,[mbOK],0);
    Exit;
   End;
 If (MessageDlg('Vuole eliminare ?',mtConfirmation,[mbOK,mbCancel],0)=mrOK)
  Then dbgMainDataGrid.DataSource.DataSet.Delete;
End;

procedure TfrmPrincipale.mi1ProvinceClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fProvince:=TfProvince.Create(Self);
 strCurrentTableName:='TAB_PROVINCE';
 bPubTable:=True;
 Update_SBar(2,'Province');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Province.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Province;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Province.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1ZoneClick(Sender: TObject);
begin
// If Not(fZone=Nil)   Then Exit;
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fZone:=TfZone.Create(Self);
 strCurrentTableName:='TAB_Zone';
 bPubTable:=False;
 Update_SBar(2,'Zone');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Zone.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Zone;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Zone.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.CloseOldTable;
Var
 iCntrDS: Integer;
 iCntr: Integer;
Begin
dmodAz.ibqTab_Doc.SelectSQL.Clear;
dmodAz.ibqTab_Doc.SelectSQL.add('select TAB_DOCUMENTI.*,TAB_CLI_FOR.DENOMINAZIONE AS CLIFORDESCR,TAB_CLI_FOR. PARTITA_IVA AS CliForPARTITAiva FROM TAB_DOCUMENTI');
dmodAz.ibqTab_Doc.SelectSQL.add('INNER JOIN TAB_CLI_FOR ON TAB_DOCUMENTI.CLIFOR_ID =TAB_CLI_FOR.ID_CLI_FOR');
dmodAz.ibqTab_Doc.SelectSQL.add('WHERE TIPO_DOC = :parTipoDoc');
dmodAz.ibqTab_Doc.SelectSQL.add('Order By DATA_DOC, Num_DOC');
With (dmodPub.ibdbPub) Do
 Begin
  iCntrDS:=DataSetCount;
  For iCntr:=0 To iCntrDS-1 Do DataSets[iCntr].Active:=False;
 End;
 // And the same with dbAz
 With (dmodAz.ibdbAzUni) Do
 Begin
  iCntrDS:=DataSetCount;
  For iCntr:=0 To iCntrDS-1 Do DataSets[iCntr].Active:=False;
 End;

End;

procedure TfrmPrincipale.EnableBarNED;
begin
// frmBarNED1.Enabled:=True;
 frmBarNED1.tbtnNew.Enabled:=True;
 frmBarNED1.tbtnEdit.Enabled:=True;
 frmBarNED1.tbtnRefresh.Enabled:=True;
end;

procedure TfrmPrincipale.DestroyOldForm;
Var
 intCntrComp, intCntr: Integer;
begin
 intCntrComp:=self.ComponentCount;
 For intCntr:=0 To intCntrComp-1 Do
  If ( (Self.Components[intCntr] is TForm) )
   Then
    Begin
     (Self.Components[intCntr] as TForm).Free;
     Exit;
    End;

end;

procedure TfrmPrincipale.mi1ABIClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fABI:=TfABI.Create(Self);
 strCurrentTableName:='TAB_ABI';
 bPubTable:=False;
 Update_SBar(2,'ABI');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_ABI.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_ABI;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_ABI.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1CABClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;

 strCurrentTableName:='TAB_CAB';
 bPubTable:=False;
 Update_SBar(2,'CAB');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_CAB.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_CAB;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_CAB.EnableControls;
 Update_Datas;

fCAB:=TfCAB.Create(Self);
end;




procedure TfrmPrincipale.frmBarMove1tbtnFirstClick(Sender: TObject);
begin
 If ( dsoMainLook.DataSet.IsEmpty) Then Exit;
dsoMainLook.DataSet.DisableControls;
  dsoMainLook.DataSet.First;
dsoMainLook.DataSet.EnableControls;
end;

procedure TfrmPrincipale.frmBarMove1tbtnPriorClick(Sender: TObject);
begin
 If ( dsoMainLook.DataSet.IsEmpty) Then Exit;
  dsoMainLook.DataSet.Prior;;
end;

procedure TfrmPrincipale.frmBarMove1tbtnNextClick(Sender: TObject);
begin
 If ( dsoMainLook.DataSet.IsEmpty) Then Exit;
  dsoMainLook.DataSet.Next;
end;

procedure TfrmPrincipale.frmBarMove1tbtnLastClick(Sender: TObject);
begin
 If ( dsoMainLook.DataSet.IsEmpty) Then Exit;
dsoMainLook.DataSet.DisableControls;
  dsoMainLook.DataSet.Last;
dsoMainLook.DataSet.EnableControls;
end;

procedure TfrmPrincipale.EnableBarMove;
begin
// frmBarMove1.Enabled:=True;
 frmBarMove1.tbtnFirst.Enabled:=True;
 frmBarMove1.tbtnPrior.Enabled:=True;
 frmBarMove1.tbtnNext.Enabled:=True;
 frmBarMove1.tbtnLast.Enabled:=True;
end;

procedure TfrmPrincipale.mi1ComuniClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fComuni:=TfComuni.Create(Self);
 strCurrentTableName:='TAB_COMUNI';
 bPubTable:=True;
 Update_SBar(2,'Comuni');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Comuni.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Comuni;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Comuni.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1BancheClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fBanche:=TfBanche.Create(Self);
 strCurrentTableName:='TAB_BANCHE';
 bPubTable:=False;
 Update_SBar(2,'Banche');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Banche.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Banche;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Banche.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1SottozoneClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fSottoZone:=TfSottoZone.Create(Self);
 strCurrentTableName:='TAB_Sotto_Zone';
 bPubTable:=False;
 Update_SBar(2,'SottoZone');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_SottoZone.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_SottoZone;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_SottoZone.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1MoneteClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fMonete:=TfMonete.Create(Self);
 strCurrentTableName:='TAB_MONETE';
 bPubTable:=True;
 Update_SBar(2,'Monete');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Monete.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Monete;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Monete.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1VettoriClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fVettori:=TfVettori.Create(Self);
 strCurrentTableName:='TAB_VETTORI';
 bPubTable:=False;
 Update_SBar(2,'Vettori');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Vettori.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Vettori;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Vettori.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.AttivitClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fAttivitaDB:=TfAttivitaDB.Create(Self);
 Update_SBar(2,'Attività');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Attivita.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Attivita;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Attivita.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.TipoTitoloClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fTipoTitoloDB:=TfTipoTitoloDB.Create(Self);
 Update_SBar(2,'Tipo Titolo');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Tipo_Titolo.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Tipo_Titolo;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Tipo_Titolo.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.SessoClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fSessoDB:=TfSessoDB.Create(Self);
 Update_SBar(2,'Sesso');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Sesso.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Sesso;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Sesso.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1CodiceISOClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCodISO:=TfCodISO.Create(Self);
 strCurrentTableName:='TAB_CODICI_ISO';
 bPubTable:=True;
 Update_SBar(2,'Codici ISO');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Codici_ISO.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Codici_ISO;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Codici_ISO.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.INPSClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fINPS:=TfINPS.Create(Self);
 strCurrentTableName:='TAB_INPS';
 bPubTable:=True;
 Update_SBar(2,'INPS');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_INPS.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_INPS;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_INPS.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.NaturaGiuridicaClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fNatGiur:=TfNatGiur.Create(Self);
 Update_SBar(2,'Natura Giuridica');
 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='TAB_NATURA_GIURIDICA';
 bPubTable:=TRUE;
 dmodPub.ibTab_Natura_Giuridica.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Natura_Giuridica;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Natura_Giuridica.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1NazioniClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fNazioni:=TfNazioni.Create(Self);
 strCurrentTableName:='TAB_NAZIONI';
 bPubTable:=True;
 Update_SBar(2,'Nazioni');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Nazioni.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Nazioni;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Nazioni.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.TipoArrotClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTipoArrotDB:=TfTipoArrotDB.Create(Self);
 Update_SBar(2,'Tipo Arrotondamento');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Tipo_Arrotondamento.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Tipo_Arrotondamento;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Tipo_Arrotondamento.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.Show_Form_For_Edit;
Var
 intCntrComp, intCntr: Integer;
begin
 Try
  If ( dsoMainLook.DataSet.IsEmpty)
   Then Begin
         MessageDlg('Non c''è niente da modificare !',mtWarning,[mbOK],0);
         Exit;
        End;
  intCntrComp:=self.ComponentCount;
  For intCntr:=0 To intCntrComp-1 Do
  Begin
   If ( (Self.Components[intCntr] is TForm) )
   Then
   Begin
    (Self.Components[intCntr] as TForm).ShowModal;
    Exit;
   End;
  End;
 Except
 End;

End;

procedure TfrmPrincipale.Show_Form_For_Insert;
Var
 intCntrComp, intCntr: Integer;
begin
 Try
  intCntrComp:=self.ComponentCount;
  For intCntr:=0 To intCntrComp-1 Do
  Begin
   If ( (Self.Components[intCntr] is TForm) )
   Then
   Begin
    (Self.Components[intCntr] as TForm).ShowModal;
    Exit;
   End;
  End;
 Except
 End;
end;

procedure TfrmPrincipale.mi2MarcaClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fMarcA:=TfMarca.Create(Self);
 strCurrentTableName:='TAB_MARCA';
 bPubTable:=False;
 Update_SBar(2,'Marca');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Marca.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Marca;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Marca.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2FamigliaClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fFamiglia:=TfFamiglia.Create(Self);
 Update_SBar(2,'Famiglia');
 strCurrentTableName:='TAB_FAMIGLIA';
 bPubTable:=False;
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Famiglia.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Famiglia;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Famiglia.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2GruppoClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fGruppo:=TfGruppo.Create(Self);
 strCurrentTableName:='TAB_GRUPPO';
 bPubTable:=False;
 Update_SBar(2,'Gruppo');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Gruppo.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Gruppo;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Gruppo.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2TipoClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTipo:=TfTipo.Create(Self);
 strCurrentTableName:='TAB_TIPO';
 bPubTable:=False;
 Update_SBar(2,'Tipo');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Tipo.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Tipo;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Tipo.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.LingueClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fLingueDB:=TfLingueDB.Create(Self);
 Update_SBar(2,'Lingue');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Lingue.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Lingue;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Lingue.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2PortoClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fPortoDB:=TfPortoDB.Create(Self);
 Update_SBar(2,'Porto');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Porto.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Porto;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Porto.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.Mododiconsegna1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fModCons:=TfModCons.Create(Self);
 strCurrentTableName:='TAB_MODO_CONSEGNA';
 bPubTable:=True;
 Update_SBar(2,'Modo di Consegna');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Modo_Consegna.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Modo_Consegna;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Modo_Consegna.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi0NonimponibileIVA1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fNonImpIVADB:=TfNonImpIVADB.Create(Self);
 Update_SBar(2,'Non Imponibile IVA');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Non_Imponibile_IVA.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Non_Imponibile_IVA;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Non_Imponibile_IVA.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi0NonsoggettoIVA1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fNonSogIVADB:=TfNonSogIVADB.Create(Self);
 Update_SBar(2,'Non Soggetto IVA');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Non_Soggetto_IVA.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Non_Soggetto_IVA;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Non_Soggetto_IVA.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1CatCliClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCatCli:=TfCatCli.Create(Self);
 strCurrentTableName:='TAB_Categoria_Clienti';
 bPubTable:=False;
 Update_SBar(2,'Categorie Clienti');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Cat_Cli.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Cat_Cli;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Cat_Cli.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2ArrotondamentiClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fArrot:=TfArrot.Create(Self);
 Update_SBar(2,'Arrotondamenti');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Arrotondamenti.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Arrotondamenti;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Arrotondamenti.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2ImballiClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fImballiDB:=TfImballiDB.Create(Self);
 Update_SBar(2,'Imballo');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Imballi.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Imballi;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Imballi.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2AspEstClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fAspettoEstDB:=TfAspettoEstDB.Create(Self);
 Update_SBar(2,'Aspetto Esteriore');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Aspetto_Esteriore.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Aspetto_Esteriore;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Aspetto_Esteriore.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1CamMonClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCambiMoneteDB:=TfCambiMoneteDB.Create(Self);
 strCurrentTableName:='TAB_CAMBI_MONETE';
 bPubTable:=True;
 Update_SBar(2,'Cambi Monete');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Cambi_Monete.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Cambi_Monete;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Cambi_Monete.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1CodiceIVAClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCodIVADB:=TfCodIVADB.Create(Self);
 strCurrentTableName:='TAB_CODICI_IVA';
 bPubTable:=False;
 Update_SBar(2,'Codici IVA');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Codici_IVA.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Codici_IVA;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Codici_IVA.EnableControls; 
 Update_Datas;
end;

procedure TfrmPrincipale.mi2ProduttoriClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fProduttoriDB:=TfProduttoriDB.Create(Self);
 Update_SBar(2,'Produttori');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Produttori.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Produttori;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Produttori.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2UbicazioniClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fUbicazioniDB:=TfUbicazioniDB.Create(Self);
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Ubicazioni.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Ubicazioni;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Ubicazioni.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2CommessiClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fOperai:=TfOperai.Create(Self);
 Update_SBar(2,'Dipendenti');
 EnableBarNED;
 EnableBarMove;
 dmodAz.IBQryCommessi.DisableControls;
 dsoMainLook.DataSet:=dmodAz.IBQryCommessi;
 dbgMainDataGrid.Visible:=True;
 dmodAz.IBQryCommessi.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2StagioniClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fStagioniDB:=TfStagioniDB.Create(Self);
 Update_SBar(2,'Stagioni');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Stagioni.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Stagioni;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Stagioni.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2UnDiMisClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fUnitMis:=TfUnitMis.Create(Self);
 Update_SBar(2,'Unità di misura');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Unita_Di_Misura.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Unita_Di_Misura;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Unita_Di_Misura.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2RagDepClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fRaggDepDB:=TfRaggDepDB.Create(Self);
 Update_SBar(2,'Ragruppamenti Depositi');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Ragg_Dep.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Ragg_Dep;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Ragg_Dep.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.Update_SBar(sbField: Integer; strText: String);
begin
 Try
   sbarGeneral.Panels[sbField].Text:=strText;
 Except
   sbarGeneral.Panels[sbField].Text:='';
 End;
end;

procedure TfrmPrincipale.mi0TipoPagamentoClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTipoPagDB:=TfTipoPagDB.Create(Self);
 Update_SBar(2,'Tipo Pagamenti');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Tipo_Pagamento.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Tipo_Pagamento;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Tipo_Pagamento.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2DepositiClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fDepositiDB:=TfDepositiDB.Create(Self);
 Update_SBar(2,'Depositi');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Depositi.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Depositi;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Depositi.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1ClientiClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fClienti:=TfClienti.Create(Self);
 dmodAz.ibqTab_Cli.Open;
 strCurrentTableName:='TAB_CLI_FOR';
 bPubTable:=False;
 Update_SBar(2,'Clienti');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibqTab_Cli.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Cli;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibqTab_Cli.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1FornitoriClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fForn:=TfForn.Create(Self);
 strCurrentTableName:='TAB_CLI_FOR';
 bPubTable:=False;
 Update_SBar(2,'Fornitori');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibqTab_For.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibqTab_For;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibqTab_For.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi0TipoProvvigioneClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTipoProvvDB:=TfTipoProvvDB.Create(Self);
 Update_SBar(2,'Tipo Provvigione');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Tipo_Provvigione.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Tipo_Provvigione;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Tipo_Provvigione.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi1AgentiClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fAgentiDB:=TfAgentiDB.Create(Self);
 strCurrentTableName:='TAB_AGENTI';
 bPubTable:=False;
 Update_SBar(2,'Agenti');
 EnableBarNED;
 EnableBarMove;
 With (dmodAz) Do
 Begin
  ibTab_Tipo_Somma_Provv.Open;
  ibTab_Tipo_Provvigione.Open;
  ibTab_Zone.Open;
  ibTab_SottoZone.Open;
  ibTab_Agenti.Open;
  ibTab_Cat_Cli_x_Ag.Open;
  ibTab_Cat_Merc_x_Ag.Open;
 End;
 dmodAz.ibTab_Agenti.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Agenti;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Agenti.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi0TipoSommaProvvClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTipoSommaPrvDB:=TfTipoSommaPrvDB.Create(Self);
 Update_SBar(2,'Tipo Somma Provvigione');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Tipo_Somma_Provv.DisableControls;
 dmodAz.ibTab_Tipo_Somma_Provv.Open;
 dsoMainLook.DataSet:=dmodAz.ibTab_Tipo_Somma_Provv;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Tipo_Somma_Provv.EnableControls;
 Update_Datas;

end;

procedure TfrmPrincipale.mi1PersAzClick(Sender: TObject);
begin
// If Not(fPersAzDB=Nil)   Then Exit;
 CloseOldTable;
 DestroyOldForm;
 fPersAzDB:=TfPersAzDB.Create(Self);
 strCurrentTableName:='TAB_Pers_Az';
 bPubTable:=True;
 Update_SBar(2,'Personalizzazione Azienda');
 dmodAz.ibTab_Piano_Conti.Open;
 dmodAz.ibTab_Codici_IVA.Open;
 dmodAz.ibTabPersAz.Open;

 DisableBarNED;
 DisableBarMove;

 dsoMainLook.DataSet:=Nil;
 dbgMainDataGrid.Visible:=False;
 fPersAzDB.ShowModal;
 fPersAzDB.Close;
 fPersAzDB:=Nil;
end;

procedure TfrmPrincipale.mi1PagamentiClick(Sender: TObject);
begin
// If Not(fPagamenti=Nil)   Then Exit;
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fPagamenti:=TfPagamenti.Create(Self);
 strCurrentTableName:='TAB_PAGAMENTI';
 bPubTable:=False;
 Update_SBar(2,'Pagamenti');
 // set properties
 EnableBarNED;
 EnableBarMove;
                  // dmodPub.ibTab_Tipo_Pagamento.Open; dmodAz.ibTab_Pagamenti.Open;
 dsoMainLook.DataSet:=dmodAz.ibTab_Pagamenti;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
End;

procedure TfrmPrincipale.mi0BaudClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fBaud:=TfBaud.Create(Self);
 strCurrentTableName:='TAB_Baud';
 bPubTable:=True;
 Update_SBar(2,'Baud');
 // set properties
 EnableBarNED;
 EnableBarMove;
{ dmodPub.ibTab_Baud.Open;}
  dsoMainLook.DataSet:=dmodPub.ibTab_Baud;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.mi0BitdiDatiClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fBitDati:=TfBitDati.Create(Self);
 strCurrentTableName:='TAB_Bit_Dati';
 bPubTable:=True;
 Update_SBar(2,'Bit di Dati');
 // set properties
 EnableBarNED;
 EnableBarMove;
                 //dmodPub.ibTab_Bit_Dati.Open;
  dsoMainLook.DataSet:=dmodPub.ibTab_Bit_Dati;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.mi0BitdiStopClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fBitStop:=TfBitStop.Create(Self);
 strCurrentTableName:='TAB_Bit_Stop';
 bPubTable:=True;
 Update_SBar(2,'Bit di Stop');
 // set properties
 EnableBarNED;
 EnableBarMove;
                  // dmodPub.ibTab_Bit_Stop.Open;
  dsoMainLook.DataSet:=dmodPub.ibTab_Bit_Stop;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.mi0ParitClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fParita:=TfParita.Create(Self);
 strCurrentTableName:='TAB_PARITA';
 bPubTable:=True;
 Update_SBar(2,'Parita');
 // set properties
 EnableBarNED;
 EnableBarMove;
                          //dmodPub.ibTab_Parita.Open;
  dsoMainLook.DataSet:=dmodPub.ibTab_Parita;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.mi0PortaClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fPorteDB:=TfPorteDB.Create(Self);
 Update_SBar(2,'Porte');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Porte.Open;
  dsoMainLook.DataSet:=dmodPub.ibTab_Porte;
 dbgMainDataGrid.Visible:=True;
 { TODO -ccode : Change, the way to view the datas }
end;

procedure TfrmPrincipale.mi0ModelloECRClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fTipoRegisDB:=TfTipoRegisDB.Create(Self);
 Update_SBar(2,'Tipo Registratore');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Tipo_Registratore.Open;
  dsoMainLook.DataSet:=dmodPub.ibTab_Tipo_Registratore;
 dbgMainDataGrid.Visible:=True;
 { TODO -ccode : Change, the way to view the datas }
end;

{procedure TfAzisceDB.dbgDataGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
// Update_SBar(1,IntToStr(dbgDataGrid.DataSource.DataSet.RecordCount));
{ If (bPubTable)
  Then intGridRecs:=dmodPub.Get_RecCnt_From_Table(strCurrentTableName)
  Else intGridRecs:=dmodAz.Get_RecCnt_From_Table(strCurrentTableName);
 Update_SBar(1,IntToStr(intGridRecs));                                }
{end;}


procedure TfrmPrincipale.mi2CauTrasClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCauTrasp:=TfCauTrasp.Create(Self);
 strCurrentTableName:='TAB_CAU_TRASP';
 bPubTable:=False;
 Update_SBar(2,'Causali di Trasporto');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibTab_Cau_Trasp;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.DisableBarNED;
begin
// frmBarNED1.Enabled:=True;
 frmBarNED1.tbtnNew.Enabled:=False;
 frmBarNED1.tbtnEdit.Enabled:=False;
 frmBarNED1.tbtnRefresh.Enabled:=False;
end;

procedure TfrmPrincipale.DisableBarMove;
begin
 frmBarMove1.tbtnFirst.Enabled:=False;
 frmBarMove1.tbtnPrior.Enabled:=False;
 frmBarMove1.tbtnNext.Enabled:=False;
 frmBarMove1.tbtnLast.Enabled:=False;
end;

procedure TfrmPrincipale.mi2CauMagClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCauMag:=TfCauMag.Create(Self);
 strCurrentTableName:='TAB_causali_magazzino';
 bPubTable:=False;
 Update_SBar(2,'Causali Magazzino');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibTab_Cau_Mag;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.mi2TipiOferteClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTipiOferteDB:=TfTipiOferteDB.Create(Self);
 Update_SBar(2,'Tipi Offerte');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibtOfferte.Open;
 dsoMainLook.DataSet:=dmodAz.ibtOfferte;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.mi2NuovoListinoClick(Sender: TObject);
begin

 EXIT;

 dmodAz.ibTab_Famiglia.Open;
 dmodAz.ibTab_Gruppo.Open;
 dmodAz.ibTab_Marca.Open;
 dmodAz.ibTab_Tipo.Open;

 dmodAz.ibTab_Listino.Open;
 dmodPub.ibTab_Monete.Open;
 dmodPub.ibTab_Arrotondamenti.Open;

 //Creare Nuovo Listino
 fCreaListWiz:=TfCreaListWiz.Create(Self);
 fCreaListWiz.ShowModal;
 fCreaListWiz.Close;

 dmodAz.ibTab_Listino.Close;
 dmodPub.ibTab_Monete.Close;
 dmodPub.ibTab_Arrotondamenti.Close;

 dmodAz.ibTab_Famiglia.close;
 dmodAz.ibTab_Gruppo.close;
 dmodAz.ibTab_Marca.close;
 dmodAz.ibTab_Tipo.close;

end;

procedure TfrmPrincipale.Update_Datas;
Var
 iCntr: Integer;
begin
 If (dsoMainLook.DataSet=NIL)
  Then Exit;
 Try
  dsoMainLook.DataSet.Close;
  dsoMainLook.DataSet.Open;
  If (bPubTable)
    Then intGridRecs:=dmodPub.Get_RecCnt_From_Table(strCurrentTableName)
    Else intGridRecs:=dmodAz.Get_RecCnt_From_Table(strCurrentTableName);
  Update_SBar(1,IntToStr(intGridRecs));
  intDynCntr:=dsoMainLook.DataSet.FieldCount;
  SetLength(dynWStrName,intDynCntr);
  For iCntr:=0 To intDynCntr-1 Do
  Begin
   If (dsoMainLook.DataSet.Fields[iCntr].Visible)and(dsoMainLook.DataSet.Fields[iCntr].Tag=2)
    Then
      Begin
       dynWStrName[iCntr]:=dsoMainLook.DataSet.Fields[iCntr].FieldName;
      End;
  End;
  paDataCtrl.Enabled:=True;
 Except
 End;
end;

procedure TfrmPrincipale.misAnagCliClick(Sender: TObject);
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frClienti.frf');
     If (PrepareReport)
       Then ShowReport;
 End;
end;

procedure TfrmPrincipale.AnagraficaFornitori1Click(Sender: TObject);
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frForn.frf');
     If (PrepareReport)
       Then ShowReport;
 End;
end;


(*ExtractFilePath(Application.ExeName)+*)

procedure TfrmPrincipale.StampaPersonalizzata1Click(Sender: TObject);
begin
 With (TfPrnCustCliFor.Create(Self)) Do
 Begin
  bPerCli:=True;
  Per_Clienti;
  ShowModal;

  Free;
 End;
end;

procedure TfrmPrincipale.StampaPersonalizzata2Click(Sender: TObject);
begin
 With (TfPrnCustCliFor.Create(Self)) Do
 Begin
  bPerCli:=False;
  Per_Clienti;
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.StampaSelezionato1Click(Sender: TObject);
begin
 With (TfPrnCustSel.Create(Self)) Do
 Begin
  bPerCli:=True;
  Fill_Boxes;
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.StampaSelezionato2Click(Sender: TObject);
begin
 With (TfPrnCustSel.Create(Self)) Do
 Begin
  bPerCli:=False;
  Fill_Boxes;
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.mi2ListiniClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 dmodAz.ibTab_Articoli.Open;
 dmodAz.ibqContabile_Articolo.Open;
 fListini:=TfListini.Create(Self);
 strCurrentTableName:='TAB_LISTINo';
 bPubTable:=False;
 Update_SBar(2,'Listini');
 EnableBarNED;
 EnableBarMove;
  dsoMainLook.DataSet:=dmodAz.ibTab_Listino;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.FormActivate(Sender: TObject);
Begin
   frmBarNED1.Left:=11;
   frmBarMove1.Left:=111;
End;

procedure TfrmPrincipale.miSDMAnaliticaClick(Sender: TObject);
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frMovAn.frf');
     ShowReport;
 End;
end;

procedure TfrmPrincipale.miSDMSinteticaClick(Sender: TObject);
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frMovSin.frf');
     If (PrepareReport)
       Then ShowReport;
 End;
end;

procedure TfrmPrincipale.pmiStampaCauMagClick(Sender: TObject);
begin
  dmodAz.ibTab_Cau_Mag.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frCauMag.frf');
     ShowReport;
 End;
end;

procedure TfrmPrincipale.miSchContArtClick(Sender: TObject);
begin
  dmodAz.r_ibtCont_Art.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frScContArt.frf');
     ShowReport;
   End;
   dmodAz.r_ibtCont_Art.Close;
end;

procedure TfrmPrincipale.pmiDocVisClick(Sender: TObject);
begin
 fVisDoc:=TfVisDoc.Create(Self);
 fVisDoc.ShowModal;
 fVisDoc.Free;
end;

procedure TfrmPrincipale.pmiInsModClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fOrdini:=TfOrdini.Create(Self);
 strCurrentTableName:='ORDINI';
 bPubTable:=False;
 Update_SBar(2,'Gestione Ordini');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqOrdini;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.pmiVisStamClick(Sender: TObject);
begin
 With (TfVisOrdini.create(Self)) Do
 Begin
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipale.FormShow(Sender: TObject);
//Var  d1Mag: TDate;
var
  CPUID : TCPUID;
  I     : Integer;
  S			: TVendor;
  x,y,z,seriale : string;
dwSerialNumber,dwMaximumComponentLength,dwFileSystemFlags : DWORD ;
begin
//MessageDlg('Access Violation processing D module', mtError, [mbOk], 0);
//application.Terminate;

  if ( GetVolumeInformation( 'c:\',
                             nil,
                             0,
                             @dwSerialNumber,
                             dwMaximumComponentLength,
                             dwFileSystemFlags,
                             nil,
                             0 ) ) then
  begin
    seriale:= Format( '%X-%X',
                 [( dwSerialNumber and $FFFF0000 ) shr 16,
                  ( dwSerialNumber and $0000FFFF )]
                 ) ;
  end ;

dmodAz.Tipo := 0;
dmodAz.Acc := 1;
IBTable1.Active := True;
IBTable1.First;
sbarGeneral.Panels[0].Text := IBTable1.fieldbyName('Descr').AsString;
//sbarGeneral.Panels[0].Text := 'PROVA';
dmodAz.TipoNum := IBTable1.fieldbyName('CODICE_ARTICOLO').AsString;
dmodAz.Tipo := IBTable1.fieldbyName('FATTCONV').AsInteger;
dmodAz.Attivita := IBTable1.fieldbyName('MOVMAG_ID').AsInteger;

self.Caption:=self.Caption+'       '+sbarGeneral.Panels[0].Text;
Application.Title := self.Caption;
//Application.Hint := 'pippo';
//Application.ShowHint := True;

dmodAz.Acc := 1;

if IBTable1.fieldbyName('COSTO').AsInteger = 1895 then
begin
AbbR1.Enabled := TRUE;
AbbC1.Enabled := TRUE;
miArtAccessorie.Enabled:=TRUE;
dmodAz.Acc := 0;
end;
if IBTable1.fieldbyName('COSTO').AsInteger = 1896 then
begin
AbbR1.Enabled := false;
AbbC1.Enabled := TRUE;
miArtAccessorie.Enabled:=TRUE;
dmodAz.Acc := 0;
end;

if IBTable1.fieldbyName('SCONTO1').AsInteger = 1 then
begin
tbtnContab.Enabled:=False;
end;

if IBTable1.fieldbyName('SCONTO2').AsInteger = 1 then
begin
//Casse1.Enabled:=False;
smOrdini.Enabled:=False;
end;

////////////////////
Client := False;
With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
Try
if ReadString('INFO','CORE','.') = 'C'
then
begin
mi1Fornitori.Enabled:=false;
tbtnSpampe.Enabled:=false;
Client:=True;
end
Finally
Free;
End;
With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
Try
if ReadString('INFO','FIO','.') = '1'
then
dmodAz.Fiori := 1
else dmodAz.Fiori := 0;
Finally
Free;
End;

/////////////////
{
with dmodPub do
begin
ibTab_ClassificazioneIVA.Open;
ibTab_ClassificazioneIVA.First;
if ibTab_ClassificazioneIVA.FieldByName('DESCR').asstring = 'IVA' then
begin
ibTab_ClassificazioneIVA.Edit;
ibTab_ClassificazioneIVA.FieldByName('CODICE').asinteger :=
ibTab_ClassificazioneIVA.FieldByName('CODICE').asinteger+1;
ibTab_ClassificazioneIVA.Post;
if ibTab_ClassificazioneIVA.FieldByName('CODICE').asinteger >154 then
begin
IBQuery1.close;
IBQuery1.sql.Clear;
IBQuery1.sql.Add('delete from tab_articoli');
IBQuery1.Open;
IBQuery1.close;
IBQuery1.sql.Clear;
IBQuery1.sql.Add('delete from tab_det_doc');
IBQuery1.Open;
IBQuery1.close;
IBQuery1.sql.Clear;
IBQuery1.sql.Add('delete from tab_documenti');
IBQuery1.Open;

  Application.Terminate;
end;
  end;
end;
}
{
 If (FileExists(ExtractFilePath(Application.ExeName)+'frArticolo2.frf')) then
 begin
with IBQuery1 do
begin
close;
sql.Clear;
sql.Add('select count(*) as tot from tab_articoli');
ExecSQL;
if tot.asinteger>5


end;
end;
}


//if IBTable1.fieldbyName('PERC_PROVV').AsInteger =1 then begin
for I := Low(CPUID) to High(CPUID)  do CPUID[I] := -1;
if IsCPUID_Available then begin
CPUID	:= GetCPUID;
x := IntToHex(CPUID[1],8);
//label2.Caption := 'CPUID[2] = ' + IntToHex(CPUID[2],8);
//Label3.Caption := 'CPUID[3] = ' + IntToHex(CPUID[3],8);
y := IntToHex(CPUID[4],8);
//PValue.Caption := IntToStr(CPUID[1] shr 12 and 3);
//FValue.Caption := IntToStr(CPUID[1] shr 8 and $f);
//MValue.Caption := IntToStr(CPUID[1] shr 4 and $f);
//SValue.Caption := IntToStr(CPUID[1] and $f);
//S := GetCPUVendor;
//Label5.Caption := 'Vendor: ' + S; end
z := x+y;
IBTable2.Active := True;
IBTable2.Open;
if (EnDeCrypt(IBTable2.fieldbyName('RIGA1').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA2').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA3').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA4').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA5').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA6').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA7').AsString) <> z+seriale)
// and   (EnDeCrypt(IBTable2.fieldbyName('RIGA10').AsString) <> z+seriale) AND
//   (EnDeCrypt(IBTable2.fieldbyName('RIGA11').AsString) <> z+seriale) AND
//   (EnDeCrypt(IBTable2.fieldbyName('RIGA12').AsString) <> z+seriale) AND
//   (EnDeCrypt(IBTable2.fieldbyName('RIGA13').AsString) <> z+seriale)

   then
      begin
   ShowMessage ('Errore P C U !!');
  Application.Terminate;
  end;
  end;
//end;

//if (IBTable1.fieldbyName('PERC_PROVV').AsInteger <>0) OR (IBTable1.fieldbyName('PERC_PROVV').AsInteger <>1) then begin

for I := Low(CPUID) to High(CPUID)  do CPUID[I] := -1;
if IsCPUID_Available then begin
CPUID	:= GetCPUID;
x := IntToHex(CPUID[1],8);
//label2.Caption := 'CPUID[2] = ' + IntToHex(CPUID[2],8);
//Label3.Caption := 'CPUID[3] = ' + IntToHex(CPUID[3],8);
y := IntToHex(CPUID[4],8);
//PValue.Caption := IntToStr(CPUID[1] shr 12 and 3);
//FValue.Caption := IntToStr(CPUID[1] shr 8 and $f);
//MValue.Caption := IntToStr(CPUID[1] shr 4 and $f);
//SValue.Caption := IntToStr(CPUID[1] and $f);
//S := GetCPUVendor;
//Label5.Caption := 'Vendor: ' + S; end
z := x+y;
IBTable2.Active := True;
IBTable2.Open;
//sbarGeneral.Panels[2].Text := (DateToStr(NOW) + ' ' +EnDeCrypt(IBTable2.fieldbyName('RIGA9').AsString));
if (EnDeCrypt(IBTable2.fieldbyName('RIGA1').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA2').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA3').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA4').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA5').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA6').AsString) <> z+seriale) AND
   (EnDeCrypt(IBTable2.fieldbyName('RIGA7').AsString) <> z+seriale)
// and   (EnDeCrypt(IBTable2.fieldbyName('RIGA10').AsString) <> z+seriale) AND
//   (EnDeCrypt(IBTable2.fieldbyName('RIGA11').AsString) <> z+seriale) AND
//   (EnDeCrypt(IBTable2.fieldbyName('RIGA12').AsString) <> z+seriale) AND
//   (EnDeCrypt(IBTable2.fieldbyName('RIGA13').AsString) <> z+seriale)


   then
    begin
    ShowMessage ('Errore P C U !!');
  Application.Terminate;
  end;

IF (StrToDate(EnDeCrypt(IBTable2.fieldbyName('RIGA9').AsString)) < Now) THEN
    begin
MessageDlg('Access Violation processing D module', mtError, [mbOk], 0);
with dmodPub do
begin
ibTab_ClassificazioneIVA.Open;
ibTab_ClassificazioneIVA.First;
if ibTab_ClassificazioneIVA.FieldByName('DESCR').asstring <> 'IVA' then
begin
ibTab_ClassificazioneIVA.Edit;
ibTab_ClassificazioneIVA.FieldByName('DESCR').asstring := 'IVA';
ibTab_ClassificazioneIVA.FieldByName('CODICE').asinteger := 1;
ibTab_ClassificazioneIVA.Post;
end
else
begin
if ibTab_ClassificazioneIVA.FieldByName('DESCR').asstring = 'IVA' then
begin
ibTab_ClassificazioneIVA.Edit;
ibTab_ClassificazioneIVA.FieldByName('CODICE').asinteger :=
ibTab_ClassificazioneIVA.FieldByName('CODICE').asinteger+1;
ibTab_ClassificazioneIVA.Post;
if ibTab_ClassificazioneIVA.FieldByName('CODICE').asinteger >300 then
begin
IBQuery1.close;
IBQuery1.sql.Clear;
IBQuery1.sql.Add('delete from tab_articoli');
IBQuery1.Open;
IBQuery1.close;
IBQuery1.sql.Clear;
IBQuery1.sql.Add('delete from tab_det_doc');
IBQuery1.Open;
IBQuery1.close;
IBQuery1.sql.Clear;
IBQuery1.sql.Add('delete from tab_documenti');
IBQuery1.Open;
ibTab_ClassificazioneIVA.Close;
IBQuery1.close;
  Application.Terminate;
end;
  end;
end;
end;
end;
end;
IBTable1.Active := False;
end;

procedure TfrmPrincipale.miSituazMagClick(Sender: TObject);
begin
 fSitMag:=TfSitMag.Create(Self);
 fSitMag.ShowModal;
 fSitMag.Free;
end;

procedure TfrmPrincipale.miCaricoScaricoMagazzinoClick(Sender: TObject);
begin
 With (TfrmCarScarMag.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.miSt_PianCont_ord_codClick(Sender: TObject);
begin
  dmodAz.ibTab_Piano_Conti.Open;
 With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frPiaContC.frf');
     ShowReport;
 End;
End;

procedure TfrmPrincipale.miSta_PianoCont_ord_descrClick(Sender: TObject);
begin
  With (dmodAz.ibqRicerca) Do
  Begin
   Close;
   SQL.Clear;
   SQL.Add('Select * From Tab_Piano_conti order by DESCR');
   open;
  End;

   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frPiaContD.frf');
     ShowReport;
   End;
   
  With (dmodAz.ibqRicerca) Do
  Begin
   Close;
   SQL.Clear;
 End;
end;


procedure TfrmPrincipale.miArtAccessorieClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''S''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
 End;

 fArticoli:=TfArticoli.Create(Self);
 fArticoli.boolVendita:=False;  // Inserimento default ACCESSORI
 fArticoli.chichiama := 0;
 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='TAB_ARTICOLI';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibTab_Articoli;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Articoli - Accessori');
 Update_Datas;
end;


procedure TfrmPrincipale.miEnableErrMsgClick(Sender: TObject);
begin
 NoErrMsg:=Not(NoErrMsg);
 miEnableErrMsg.Checked:=NoErrMsg;
end;

procedure TfrmPrincipale.pmiPN_ins_FattAcqClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (TfrmInsInPN.Create(Self)) Do
 Begin
   boolVendita:=False;
   tipo_acq:=1;
dmodAz.modifica := False;
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipale.pmiPN_ins_FattVendClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (TfrmInsInPN.Create(Self)) Do
 Begin
   boolVendita:=True;
dmodAz.modifica := False;
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipale.pmiPN_ins_PagFatAcqClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
frmInsInPNPagamento:=TfrmInsInPNPagamento.Create(self);
frmInsInPNPagamento.boolVendita:=False;
dmodAz.modifica := False;
frmInsInPNPagamento.ShowModal;
frmInsInPNPagamento.Free;


end;

procedure TfrmPrincipale.pmiPN_ins_PagFatVendClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
frmInsInPNPagamento:=TfrmInsInPNPagamento.Create(self);
frmInsInPNPagamento.boolVendita:=True;
dmodAz.modifica := False;
frmInsInPNPagamento.ShowModal;
frmInsInPNPagamento.Free;

end;

procedure TfrmPrincipale.actEsciExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipale.actPrinterSetupExecute(Sender: TObject);
begin
 Try
  dlgPrinterSetup.Execute;
 Except

 End;
end;

procedure TfrmPrincipale.actReportDesignerExecute(Sender: TObject);
Var
 strDate: String;
begin
strDate:=InputBox('Report designer','Digitare password:','********************');
If Not(strDate=DateToStr(Date))
Then Exit;
dmodAz.rePRN.DesignReport;
end;

procedure TfrmPrincipale.actAnagrafica_AnagraficaAziendaExecute(
  Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fAnagAzDB:=TfAnagAzDB.Create(Self);
 strCurrentTableName:='TAB_Anagrafica_aziende';
 bPubTable:=True;
 Update_SBar(2,'Anagrafica Azienda');
// DisableBarNED;
// DisableBarMove;
 EnableBarNED;
 EnableBarMove;
 With (dmodPub) Do
 Begin
  ibTab_Anag_Az.Open;
  ibTab_Comuni.Open;
  ibTab_Province.Open;
  ibTab_Tipo_Titolo.Open;
  ibTab_Attivita.Open;
  ibTab_Sesso.Open;
  ibTab_Codici_ISO.Open;
  ibTab_Nazioni.Open;
  ibTab_Natura_Giuridica.Open;
  ibTab_INPS.Open;
 End;
 dsoMainLook.DataSet:=dmodPub.ibTab_Anag_Az;
 dbgMainDataGrid.Visible:=True;
// fAnagAzDB.ShowModal;
// fAnagAzDB.Close;
 Update_SBar(2,'Anag.Azienda');
 Update_Datas;
end;

procedure TfrmPrincipale.actMagazzino_DistinteExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;

 dmodAz.ibqryArt_Acc_per_Distinte.Open;
 dmodAz.ibqryDistinte.Open;
 dmodAz.ibtblDistinte_Dett.Open;

 frmVisDistinta:=TfrmVisDistinta.Create(Self);

 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='DISTINTE';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibqryDistinte;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Distinte');
 Update_Datas;
end;

procedure TfrmPrincipale.actToolBar_NuovoExecute(Sender: TObject);
begin
 Show_Form_For_Insert;
end;

procedure TfrmPrincipale.actToolBar_ModificaExecute(Sender: TObject);
begin
 Show_Form_For_Edit;
end;

procedure TfrmPrincipale.actToolBar_UpdateExecute(Sender: TObject);
begin
// dsoMainLook.DataSet.Close;
//  dsoMainLook.DataSet.Open;
 Update_Datas;
// Update_SBar(1,IntToStr(dbgDataGrid.DataSource.DataSet.RecordCount));
end;

procedure TfrmPrincipale.actContab_PianoContiExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fPianoConti:=TfPianoConti.Create(Self);
 strCurrentTableName:='TAB_piano_conti';
 bPubTable:=False;
 Update_SBar(2,'Piano dei Conti');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibTab_Piano_Conti;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.actStampe_ArticoliExecute(Sender: TObject);
begin

  dmodAz.ibTab_Articoli.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frArtMag.frf');
     ShowReport;
 End;
end;

procedure TfrmPrincipale.actGrid_Vis_Rec_SelExecute(Sender: TObject);
begin
// Update_SBar(1,IntToStr( dsoMainLook.DataSet.RecordCount));
 Show_Form_For_Edit;
end;

procedure TfrmPrincipale.actStampe_Distinte_RiepilogoExecute(Sender: TObject);
begin
  dmodAz.ibqryDistinte.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDist_Rplg1.frf');
     ShowReport;
 End;
end;

procedure TfrmPrincipale.actStampe_Distinte_DettaglioExecute(Sender: TObject);
begin
  dmodAz.ibqryDistinte.Open;
  dmodAz.ibtblDistinte_Dett.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDist_Dett1.frf');
     ShowReport;
 End;
end;

procedure TfrmPrincipale.actStampe_Distinte_RiepScatEAstExecute(
  Sender: TObject);
begin
  dmodAz.ibqryDistinte.Open;
  dmodAz.ibtblDistinte_Dett.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDist_Dett2.frf');
     ShowReport;

 End;
end;

procedure TfrmPrincipale.actStampe_Distinte_Riep_MagExecute(Sender: TObject);
begin
  dmodAz.ibqryDistinte.Open;
  dmodAz.ibtblDistinte_Dett.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frDist_RplgMag.frf');
     ShowReport;
 End;
end;

procedure TfrmPrincipale.actStampe_Distinte_RiepDaCodAccExecute(
  Sender: TObject);
Var
 strCodice: String;
begin
 With (TfrmSelAcc.Create(Self)) Do
 Begin
   ShowModal;
   If (boolSelected)
     Then strCodice:=strCodice_Access
     Else strCodice:='';

    Free;
 End;

  If (strCodice='')
   Then Exit;

 With (dmodAz.ibqRicerca) Do
 Begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM DISTINTE');
   SQL.Add('left join distinte_Dett on (distinte.pk_codice=distinte_dett.fk_distinte)');
   SQL.Add('left join tab_contabile_Articolo on (distinte.codice_Articolo=tab_contabile_articolo.codice_Articolo)');
//   SQL.Add('WHERE (PK_Codice in (SELECT FK_DISTINTE FROM DISTINTE_DETT');
//  SQL.Add('WHERE CODICE_ARTICOLO LIKE '''+strCodice+'''))');
//   SQL.Add(' and (distinte_dett.codice_Articolo LIKE '''+strCodice+''')');
   SQL.Add(' where (distinte_dett.codice_Articolo LIKE '''+strCodice+''')');
   SQL.Add('Order By Codice_Articolo');
   Open;
   If Not(IsEmpty)
    Then Begin
             With (dmodAz.rePRN) Do
             Begin
               LoadFromFile(ExtractFilePath(Application.ExeName)+'frDist_RplgDaCodAcc.frf');
               ShowReport;
           End;
         End;
   Close;
   SQL.Clear;
 End;

 If (strCodice='') then exit
 else
 actStampe_Distinte_RiepDaCodAccExecute(sender);
//    Free;
// End;
End;

procedure TfrmPrincipale.actStampe_Doc_BrogliaccioExecute(Sender: TObject);
begin
 fPrnBroglMag:=TfPrnBroglMag.Create(Self);
 fPrnBroglMag.showmodal;
 fPrnBroglMag.Free;
end;

procedure TfrmPrincipale.actContab_PN_Ins_MovGenExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 dmodAz.ibTab_Depositi.Open;
 With (TfrmPNinsMovGener.Create(Self)) Do
 Begin
dmodAz.modifica := False;
   ShowModal;
   Free
 End;
end;

procedure TfrmPrincipale.miProd_PretaglioClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
  ibqryPretaglio.Close;
  ibqryPretaglio.Open;
  ibqTab_Cli.Open;
  ibqTab_For.Open;
  IBQryCommessi.Open;
  IBQDepositi.Open;
 End;

 // set properties
 frmProduzioneAbbigliamento:=TfrmProduzioneAbbigliamento.Create(Self);
 // set properties
 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='PRETAGLIO';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibqryPretaglio;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Pretaglio');
 Update_Datas;
end;

procedure TfrmPrincipale.miProd_TaglioClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
  ibqryTaglio.Open;
  ibqTab_Cli.Open;
  ibqTab_For.Open;
  IBQryCommessi.Open;
  IBQDepositi.Open;
 End;
 fTaglio:=TfTaglio.Create(Self);
 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='TAGLIO';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibqryTaglio;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Taglio');
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Acq_Prev_FornExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Preventivi Fornitori  ==  21
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=21;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);

 fBaseFormDoc3.Caption:='Documenti - Acquisti - Preventivi Fornitori';
 fBaseFormDoc3.intTipoDoc:=21;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'PFOR';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.Prev.Forn.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Vend_Prev_CliExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=11;
 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Preventivi Clienti';
 fBaseFormDoc3.intTipoDoc:=11;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'PCLI';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.Prev.Cli.');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Acq_Ord_FornExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Ordine Fornitori  ==  22
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=22;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);

 fBaseFormDoc3.Caption:='Documenti - Acquisti - Ordini Fornitori';
 fBaseFormDoc3.intTipoDoc:=22;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;

 fBaseFormDoc3.strCAU_MAG := 'OFOR';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.Ord.Forn.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Acq_DDT_FornExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> D.D.T. Fornitori  ==  23
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=23;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisti - D.D.T. Fornitori';
 fBaseFormDoc3.intTipoDoc:=23;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'DDTF';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.DDT.Forn.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Acq_Fatt_ImmExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Fatture Fornitori  ==  24
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=24;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisti - Fatture Fornitori (I)';
 fBaseFormDoc3.intTipoDoc:=24;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'FTIA';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.Fatt.Forn.(I)');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibqTab_For.Open;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;

end;

procedure TfrmPrincipale.actDoc_Acq_Fatt_DifExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Fatture Fornitori  ==  27
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=27;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisti - Fatture Fornitori (D)';
 fBaseFormDoc3.intTipoDoc:=27;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'FATA';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.Fatt.Forn.(D)');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;

end;

procedure TfrmPrincipale.actDoc_Acq_Nota_DebitoExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Nota Debito  ==  25
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=25;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisti - Nota Debito';
 fBaseFormDoc3.intTipoDoc:=25;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'NDFO';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.Ndeb.Forn.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Vend_Ord_CliExecute(Sender: TObject);
begin

 CloseOldTable;
 DestroyOldForm;
 // ---> Ordini Clienti == 12
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=12;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Ordini Clienti';
 fBaseFormDoc3.intTipoDoc:=12;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'OCLI';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.Ord.Cli.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Vend_DDT_CliExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> DDT Clienti == 13
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=13;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - D.D.T. Clienti';
 fBaseFormDoc3.intTipoDoc:=13;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'DDTC';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.DDT.Cli.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Vend_Fatt_ImmExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Fatture Clienti == 14
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=14;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Fatture Clienti';
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.intTipoDoc:=14;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'FTIV';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.Fatt.Cli.');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.actDoc_Vend_Fatt_DifExecute(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Fatture Clienti == 17
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=17;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Fatture Clienti (D)';
 fBaseFormDoc3.intTipoDoc:=17;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'FATV';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.Fatt.Cli.(D)');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.mpDist_StampafiltrataClick(Sender: TObject);
begin
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
 End;
 With (TfrmSelectPerDistinte.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.actTry_CloseExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipale.Campionario1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Campionario Clienti == 200
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=200;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Bolle - Vendite - Campionario Clienti';
 fBolle.intTipoCliFor:=1;
 fBolle.intTipoDoc:=200;
 fBolle.boolVendita:=True;

 fBolle.strCAU_MAG := 'CAMP';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Bolle Campionari Clienti');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.VenditaalBanco2Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Vendita al Banco  ==  350
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=350;

 fVendBanco:=TfVendBanco.Create(Self);
 fVendBanco.intTipoDoc:=350;
 fVendBanco.intTipoCliFor:=1;
 fVendBanco.boolVendita:=True;
 fVendBanco.strCAU_MAG := 'VEND';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
// Update_SBar(2,'Vendita al Banco');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

{
   With (TfVendBanco.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
}
end;

procedure TfrmPrincipale.Vendita1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Bollette di Vendita Clienti == 300
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=300;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Bolle - Vendite - ';
 fBolle.intTipoCliFor:=1;
 fBolle.intTipoDoc:=300;
 fBolle.boolVendita:=True;

 fBolle.strCAU_MAG := 'VEND';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Bolle Vendita Clienti');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;


end;

procedure TfrmPrincipale.BolladiProduzione1Click(Sender: TObject);
begin

 CloseOldTable;
 DestroyOldForm;
 // ---> Crea Articoli da Distinte 151
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=151;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Produzione da Distinta';
 fBaseFormDoc3.intTipoDoc:=151;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'PROD';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc. Aumento Prod.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.Previsione1Click(Sender: TObject);
begin
 With (TfPRevProd.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;

end;


procedure TfrmPrincipale.SpeedButton5Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
  // ---> Note Debito Clienti  == 18
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=18;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Nota Debito';
 fBaseFormDoc3.intTipoDoc:=18;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'NDRE';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.Ndebito Cli.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.OrdineCliente1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Campionario Clienti == 201
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=201;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Bolle - Vendite - Ordini Clienti';
 fBolle.intTipoCliFor:=1;
 fBolle.intTipoDoc:=201;
 fBolle.boolVendita:=True;

 fBolle.strCAU_MAG := 'OCLI';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Bolle Ordini Clienti');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.OrdiniFornitori1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Ordini Fornitori Clienti == 22
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=22;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Acquisto - Ordini Fornitori';
 fBolle.intTipoCliFor:=2;
 fBolle.intTipoDoc:=22;
 fBolle.boolVendita:=False;

 fBolle.strCAU_MAG := 'OFOR';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Ordini Fornitori');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.Dettaglio1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (TfApprovAcc.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;

end;


procedure TfrmPrincipale.SpeedButton6Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Nota Debito  ==  28
  dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=28;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisti - Nota Credito';
 fBaseFormDoc3.intTipoDoc:=28;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'NCRF';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.N.Credito Forn.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;

end;



procedure TfrmPrincipale.InviaArticoli1Click(Sender: TObject);
begin
 With (TfInviaArt.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;

end;

procedure TfrmPrincipale.PretaglioFittizio1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
  ibqryPretFit.Close;
  ibqryPretFit.Open;
  ibqTab_Cli.Open;
  ibqTab_For.Open;
  IBQryCommessi.Open;
  IBQDepositi.Open;
 End;

 // set properties
 fPretFit:=TfPretFit.Create(Self);
 // set properties
 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='PRETAGLIO Fittizio';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibqryPretFit;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Pretaglio Fittizio');
 Update_Datas;
end;

procedure TfrmPrincipale.ArrivoFornitori1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Ordini Fornitori Clienti == 24
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=24;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Acquisto - Arrivo Fornitori';
 fBolle.intTipoCliFor:=2;
 fBolle.intTipoDoc:=24;
 fBolle.boolVendita:=False;

 fBolle.strCAU_MAG := 'FTIA';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Arrivi Fornitori');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.TagliEsterni1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
  ibqryPretFas.Close;
  ibqryPretFas.Open;
  ibqTab_Cli.Open;
  ibqTab_For.Open;
  IBQryCommessi.Open;
  IBQDepositi.Open;
 End;
 fTaglioFas:=TfTaglioFas.Create(Self);
 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='Taglio Fasonisti';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibqryPretFas;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Taglio Fasonisti');
 Update_Datas;
end;

procedure TfrmPrincipale.PreventiviVendita1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Preventivi Clienti == 205
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=205;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Preventivi - Vendite ';
 fBolle.intTipoCliFor:=1;
 fBolle.intTipoDoc:=205;
 fBolle.boolVendita:=True;

 fBolle.strCAU_MAG := 'PCLI';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Preventivi Clienti');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;


end;

procedure TfrmPrincipale.SitGenClick(Sender: TObject);
begin
 With (TfSitGenVen.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.miProd_ContolavoroClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Conto Lavoro == 500
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=500;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Conto Lavoro';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=500;
 fBolConto.setnum:=True;
 fBolConto.boolVendita:=False;
 fBolConto.strCAU_MAG := 'CLAV';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Conto Lavoro');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.miProd_DepositoClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Deposito == 501
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=501;

 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Deposito';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=501;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'DEPO';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Deposito');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;


end;

procedure TfrmPrincipale.miProd_MagazzinoClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Magazzino == 502
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=502;

 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Magazzino';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=502;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'CMAG';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Magazzino');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;



end;

procedure TfrmPrincipale.BolleVend1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Bolle Clienti == 210
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=210;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Bolle - Vendite ';
 fBolle.intTipoCliFor:=1;
 fBolle.intTipoDoc:=210;
 fBolle.boolVendita:=True;

 fBolle.strCAU_MAG := 'FTIV';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Bolle Clienti');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;


end;

procedure TfrmPrincipale.SpeedButton7Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
  // ---> Note Debito Fornitori== 28
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=28;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisto - Nota Debito';
 fBaseFormDoc3.intTipoDoc:=28;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'NDFO';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.N.Debito Forn.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;


end;

procedure TfrmPrincipale.SpeedButton19Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Nota Credito Clienti  ==  15
  dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=15;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Nota Credito';
 fBaseFormDoc3.intTipoDoc:=15;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'NCRE';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Acq.N.Credito Cli.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;


end;

procedure TfrmPrincipale.Ordini1Click(Sender: TObject);
begin
 With (TfSitOrd.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.RicercaSeriali1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (TfRicSer.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;

end;

procedure TfrmPrincipale.SpeedButton10Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Nota Debito  ==  31
  dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=31;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Reso Cliente';
 fBaseFormDoc3.intTipoDoc:=31;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'RESC';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc. D.D.T. Reso Cli.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.SpeedButton9Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Nota Debito  ==  25
  dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=32;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisti - Reso Fornitore';
 fBaseFormDoc3.intTipoDoc:=32;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'RESF';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc. D.D.T. Reso Forn.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;


end;

procedure TfrmPrincipale.SpeedButton11Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Bolla Vendita  ==  210
  dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=210;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Bolla Moviment.';
 fBaseFormDoc3.intTipoDoc:=210;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'BOLV';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc. Bolla Ven. Cli.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;


end;

procedure TfrmPrincipale.Button1Click(Sender: TObject);
var dwSerialNumber,
    dwMaximumComponentLength,
    dwFileSystemFlags : DWORD ;
begin
  if ( GetVolumeInformation( 'd:\',
                             nil,
                             0,
                             @dwSerialNumber,
                             dwMaximumComponentLength,
                             dwFileSystemFlags,
                             nil,
                             0 ) ) then
  begin
    ShowMessage( Format( 'Il numero seriale e'' : %X-%X',
                 [( dwSerialNumber and $FFFF0000 ) shr 16,
                  ( dwSerialNumber and $0000FFFF )]
                 ) ) ;
  end ;

end;

procedure TfrmPrincipale.SpeedButton12Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Bolla Acquisto  ==  211
  dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=211;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Acquisti - Bolla Moviment.';

 fBaseFormDoc3.intTipoDoc:=211;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'BOLA';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc. Bolla Acq. For.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;

end;

procedure TfrmPrincipale.Bolle2Click(Sender: TObject);
begin
With (TfSitBol.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.SpeedButton18Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Vendita al Banco  ==  350
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=350;

 fVendBanco:=TfVendBanco.Create(Self);
 fVendBanco.intTipoDoc:=350;
 fVendBanco.intTipoCliFor:=1;
 fVendBanco.boolVendita:=True;
 fVendBanco.strCAU_MAG := 'VEND';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Vendita al Banco');
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
  Show_Form_For_Insert;
end;

procedure TfrmPrincipale.Contabilit1Click(Sender: TObject);
begin
 With (TfContabR.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;

end;

procedure TfrmPrincipale.Taglie1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTaglie:=TfTaglie.Create(Self);
 strCurrentTableName:='TAB_TAGLIE';
 bPubTable:=False;
 Update_SBar(2,'Taglie');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibTab_Taglie;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.Colori1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fColori:=TfColori.Create(Self);
 strCurrentTableName:='TAB_COLORI';
 bPubTable:=False;
 Update_SBar(2,'Colori');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibTab_Colori;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.CaricoFattture1Click(Sender: TObject);
begin
 With (TfVisFattOrdini.create(Self)) Do
 Begin
   ShowModal;
   Free;
 End;

end;

procedure TfrmPrincipale.GestSchedeCarburante1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fConte2:=TfConte2.Create(Self);
 Update_SBar(2,'Spese Interne');
 // set properties
 EnableBarNED;
 EnableBarMove;
// dmodAz.IBQryCommessi.Open;
// dsoMainLook.DataSet:=dmodAz.IBQryCommessi;
 dbgMainDataGrid.Visible:=True;

end;

procedure TfrmPrincipale.ResoClienti1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Resi Clienti == 212
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=212;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Bolle - Vendite ';
 fBolle.intTipoCliFor:=1;
 fBolle.intTipoDoc:=212;
 fBolle.boolVendita:=True;

 fBolle.strCAU_MAG := 'RESC';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Bolle Clienti');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;



end;

procedure TfrmPrincipale.Passaggidirettiinmagaz1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Bolle Clienti == 210
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=222;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Passaggi Diretti in Magazzino';
 fBolle.intTipoCliFor:=2;
 fBolle.intTipoDoc:=222;
 fBolle.boolVendita:=False;

 fBolle.strCAU_MAG := 'PASS';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Passaggi in Mag.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;


procedure TfrmPrincipale.sbarGeneralClick(Sender: TObject);
begin
shellexecute(0,'open','www.eticenter.it',nil,nil,SW_SHOW);
end;
 
procedure TfrmPrincipale.Contattaci1Click(Sender: TObject);
begin
     shellexecute(0,'open','www.eticenter.it',nil,nil,SW_SHOW);
end;

procedure TfrmPrincipale.Edit1KeyPress(Sender: TObject; var Key: Char);
var
campo : string;
begin
if (Key=#13) then
begin
try
begin
dsoMainLook.DataSet.DisableControls;
campo := dsoMainLook.DataSet.Fields[0].FieldName;
dsoMainLook.DataSet.Locate(campo,Edit1.Text,[loCaseInsensitive, loPartialKey]);
end
except
end;
dsoMainLook.DataSet.EnableControls;
end;
end;

procedure TfrmPrincipale.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
 VK_F9 : begin
         Show_Form_For_Insert;
         end;
{
 VK_DOWN : begin
         frmPrincipale.KeyPreview := False;
         end;
 VK_UP : begin
         frmPrincipale.KeyPreview := False;
         end;
 VK_DOWN : begin
         frmPrincipale.KeyPreview := False;
         end;
 VK_UP : begin
         frmPrincipale.KeyPreview := False;
         end;
}
  else frmPrincipale.KeyPreview := False;
  //key := 0 ;
end;
end;

procedure TfrmPrincipale.EsenzioniIva1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fEsenteIva:=TfEsenteIva.Create(Self);
 strCurrentTableName:='TAB_ESENTE_IVA';
 bPubTable:=False;
 Update_SBar(2,'Esenzioni Iva');
 EnableBarNED;
 EnableBarMove;
 dmodPub.ibTab_Esente_IVA.DisableControls;
 dsoMainLook.DataSet:=dmodPub.ibTab_Esente_IVA;
 dbgMainDataGrid.Visible:=True;
 dmodPub.ibTab_Esente_IVA.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.mi2DescrAggClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCauInt:=TfCauInt.Create(Self);
 strCurrentTableName:='TAB_causali';
 bPubTable:=False;
 Update_SBar(2,'Causali Interne');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.Tab_Causali;
 dbgMainDataGrid.Visible:=True;

end;


procedure TfrmPrincipale.CaricoRacam1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Arrivo da Racam == 510
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=510;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Arrivo Capi da RACAM';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=510;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=False;
 fBolConto.strCAU_MAG := 'ARAC';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Arrivo Capi da RACAM');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.InvioinCLInt1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 512
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=512;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Invio in C/L Int.';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=512;
 fBolConto.boolVendita:=false;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'CLIN';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio in C/L Int.');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.InvioaFason1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 511
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=511;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Invio in C/L Ext.';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=511;
 fBolConto.boolVendita:=false;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'CLAV';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio in C/L Ext.');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.RientrodaCL1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 513
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=513;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Rientro da C/L';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=513;
 fBolConto.boolVendita:=False;
 fBolConto.strCAU_MAG := 'RICL';
 fBolConto.setnum:=False;
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Rientro da C/L');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.CapiPronti1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 514
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=514;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Capi Pronti';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=514;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'PRON';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Capi Pronti');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.InvioaRacam1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 515
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=515;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Invio a Racam';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=515;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'IRAC';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio a Racam');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.InvioinCLExtMan1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL/Man == 520
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInteger:=520;
 ShowMessage('Inserimento D.D.T. C/L Manuali ....');
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Invio in C/L Ext. Manuale';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=520;
 fBolConto.boolVendita:=false;
 fBolConto.setnum:=False;
 fBolConto.strCAU_MAG := 'CLAM';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio in C/L Ext. Manuale');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.InvioaRacamMan1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio a Racam Manuale == 516
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=516;
 ShowMessage('Inserimento D.D.T. Invio a Racam Manuali ....');
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Invio a Racam Manuale';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=516;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=False;
 fBolConto.strCAU_MAG := 'IRAM';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio a Racam Manuale');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.CaricodaRacam21Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Arrivo Bollette da Racam == 550
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=550;
 fBolConto:=TfBolConto.Create(Self);
 ShowMessage('Inserimento Bollette Arrivo Capi ....');
 fBolConto.Caption:='Arrivo Bollette Capi da RACAM';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=550;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=False;
 fBolConto.strCAU_MAG := 'ARAB';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Arrivo Bollette Capi da RACAM');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.VisSitCapi1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (TVisCapiB.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;

end;

procedure TfrmPrincipale.InvioinCLBolle1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 551
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=551;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Invio in C/L Bolle';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=551;
 fBolConto.boolVendita:=false;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'CLBO';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio in C/L Bolle');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.RientrodaCLBolle1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Rientro in CL == 552
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=552;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Rientro da C/L Bolle';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=552;
 fBolConto.boolVendita:=False;
 fBolConto.strCAU_MAG := 'RICB';
 fBolConto.setnum:=False;
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Rientro da C/L Bolle');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.CapiProntiBolle1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 553
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=553;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Capi Pronti Bolle';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=553;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'PROB';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Capi Pronti Bolle');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.InvioaRacamBolle1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 554
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=554;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Invio a Racam Bolle';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=554;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'IRAB';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio a Racam Bolle');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;
end;

procedure TfrmPrincipale.EmissioneRiBa1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fRiba:=TfRiba.Create(Self);
 Update_SBar(2,'Emissioni Ri.Ba.');
 EnableBarNED;
 EnableBarMove;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.GestAutomezzi1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar('c:\geibdb\geari.exe'), nil, nil, SW_SHOW);
end;

procedure TfrmPrincipale.GestAttrezziedUtensili1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // set properties
 fCostiGest:=TfCostiGest.Create(Self);
 Update_SBar(2,'Spese Interne');
 // set properties
 EnableBarNED;
 EnableBarMove;
 dbgMainDataGrid.Visible:=True;
end;

procedure TfrmPrincipale.Distinte2Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;

 dmodAz.ibqryArt_Acc_per_Distinte.Open;
 dmodAz.ibqryDistinte.Open;
 dmodAz.ibtblDistinte_Dett.Open;

 frmVisDistinta:=TfrmVisDistinta.Create(Self);

 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='DISTINTE';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibqryDistinte;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Distinte');
 Update_Datas;

end;

procedure TfrmPrincipale.SubaCategoria1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fSubCat:=TfSubCat.Create(Self);
 strCurrentTableName:='TAB_SUBCAT';
 bPubTable:=False;
 Update_SBar(2,'Sub Categoria');
 EnableBarNED;
 EnableBarMove;
// dmodAz.ibTab_SUBCAT.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_SUBCAT;
 dbgMainDataGrid.Visible:=True;
// dmodAz.ibTab_SUBCAT.EnableControls;
 Update_Datas;

end;

procedure TfrmPrincipale.InserimentoschedeTagliatori1Click(
  Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fTaglPell:=TfTaglPell.Create(Self);
 strCurrentTableName:='TAB_SUBCAT';
 bPubTable:=False;
 Update_SBar(2,'Inserimento schede taglio');
 EnableBarNED;
 EnableBarMove;
// dmodAz.ibTab_SUBCAT.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_SUBCAT;
 dbgMainDataGrid.Visible:=True;
// dmodAz.ibTab_SUBCAT.EnableControls;
 Update_Datas;
end;

procedure TfrmPrincipale.SpeedButton13Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Ordini Clienti == 12
dmodAz.ibqTab_Doc.SelectSQL.Clear;
dmodAz.ibqTab_Doc.SelectSQL.add('select TAB_DOCUMENTI.*,TAB_CLI_FOR.DENOMINAZIONE AS CLIFORDESCR,TAB_CLI_FOR. PARTITA_IVA AS CliForPARTITAiva FROM TAB_DOCUMENTI');
dmodAz.ibqTab_Doc.SelectSQL.add('INNER JOIN TAB_CLI_FOR ON TAB_DOCUMENTI.CLIFOR_ID =TAB_CLI_FOR.ID_CLI_FOR');
dmodAz.ibqTab_Doc.SelectSQL.add('WHERE TIPO_DOC = :parTipoDoc and serie_doc=''WEB''');
dmodAz.ibqTab_Doc.SelectSQL.add('Order By DATA_DOC, Num_DOC');

 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=12;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Vendite - Ordini Clienti';
 fBaseFormDoc3.intTipoDoc:=12;
 fBaseFormDoc3.intTipoCliFor:=1;
 fBaseFormDoc3.boolVendita:=True;
 fBaseFormDoc3.strCAU_MAG := 'OCLI';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.Ven.Ord.Cli.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.BackUp1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fBackRest:=TfBackRest.Create(Self);
 fBackRest.ShowModal;
 fBackRest.Free;
end;

procedure TfrmPrincipale.SpeedButton14Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> DDT Cl == 135
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=135;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Conto Lavoro - D.D.T. C/L';
 fBaseFormDoc3.intTipoDoc:=135;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'DDCL';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.DDT.Conto Lav.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.SpeedButton15Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Produzione == 235
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=235;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Produzione';
 fBaseFormDoc3.intTipoDoc:=235;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'PROD';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc. Produzione');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=not(Client);
 Update_Datas;

end;

procedure TfrmPrincipale.SpeedButton25Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> D.D.T. Fornitori  ==  335
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=335;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Rientro da Conto Lav.';
 fBaseFormDoc3.intTipoDoc:=335;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'DDCF';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.DDt Rientro C/Lav.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.SpeedButton17Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> D.D.T. Fornitori  ==  336
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=336;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Rientro da Conto Lav.';
 fBaseFormDoc3.intTipoDoc:=336;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'DDEF';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.DDt Rientro C/Lav. EXT.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.SpeedButton16Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> D.D.T. Fornitori  ==  136
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=136;

 fBaseFormDoc3:=TfBaseFormDoc3.Create(Self);
 fBaseFormDoc3.Caption:='Documenti - Invio in Conto Lav. Ext.';
 fBaseFormDoc3.intTipoDoc:=136;
 fBaseFormDoc3.intTipoCliFor:=2;
 fBaseFormDoc3.boolVendita:=False;
 fBaseFormDoc3.strCAU_MAG := 'DDEI';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Doc.DDt Rientro C/Lav. EXT.');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.Reparti1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fReparti:=TfReparti.Create(Self);
 strCurrentTableName:='TAB_REPARTI';
 bPubTable:=False;
 Update_SBar(2,'Reparti');
 EnableBarNED;
 EnableBarMove;
 dmodAz.ibTab_Reparti.DisableControls;
 dsoMainLook.DataSet:=dmodAz.ibTab_Reparti;
 dbgMainDataGrid.Visible:=True;
 dmodAz.ibTab_Reparti.EnableControls;
 Update_Datas;

end;

procedure TfrmPrincipale.MenuItem2Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCasse:=TfCasse.Create(Self);
 strCurrentTableName:='TAB_CASSE';
 bPubTable:=False;
 Update_SBar(2,'Casse');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibTab_Casse;
 dbgMainDataGrid.Visible:=True;
 Update_Datas

end;

procedure TfrmPrincipale.GestioneCasseCASIOINDESIT1Click(Sender: TObject);
begin
 fGestCasse:=TfGestCasse.Create(Self);
 fGestCasse.ShowModal;
 fGestCasse.Free;

end;

procedure TfrmPrincipale.pmiContab_ScadClick(Sender: TObject);
begin
  With (TfrmScadenze.Create(Self)) DO
  Begin
   dmodAz.ibqTab_Cli.Open;
   boolPerPassareInPrimaNota:=False;
   ShowModal;
   Free;
  End;
end;


procedure TfrmPrincipale.miVisPrimaNotaClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 dmodAz.ibTab_Depositi.Open;
frmVisPrimaNota:=TfrmVisPrimaNota.Create(self);
frmVisPrimaNota.ShowModal;
frmVisPrimaNota.Free;

end;

procedure TfrmPrincipale.miArtVenditaClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;

 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
 End;

 fArticoli:=TfArticoli.Create(Self);
 fArticoli.boolVendita:=True; // Inserimento default Art. Vendita
 fArticoli.chichiama := 0;
 EnableBarNED;
 EnableBarMove;
 strCurrentTableName:='TAB_ARTICOLI';
 bPubTable:=False;
 dsoMainLook.DataSet:=dmodAz.ibTab_Articoli;
 dbgMainDataGrid.Visible:=True;
 Update_SBar(2,'Articoli');
 Update_Datas;
end;
procedure TfrmPrincipale.DareAvere1Click(Sender: TObject);
begin
 With (TfContabR.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

procedure TfrmPrincipale.ScaricoAccessori1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Ordini Fornitori Clienti == 24
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=24;

 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Scarico Materie Prime';
 fBolle.intTipoCliFor:=2;
 fBolle.intTipoDoc:=24;
 fBolle.boolVendita:=False;

 fBolle.strCAU_MAG := 'FTIA';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Scarico Materie Prime');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.ScaricoMeteriePrime1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Invio in CL == 555
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=555;
 fBolle:=TfBolle.Create(Self);
 fBolle.Caption:='Invio a Racam';
 fBolle.intTipoCliFor:=2;
 fBolle.intTipoDoc:=555;
 fBolle.boolVendita:=False;
// fBolle.setnum:=True;
 fBolle.strCAU_MAG := 'IRAC';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Invio a Racam');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.CodiciAggiuntivi1Click(Sender: TObject);
begin
fCodAgg:=TfCodAgg.Create(Self);
fCodAgg.ShowModal;
fCodAgg.Free;

end;

procedure TfrmPrincipale.Statistiche1Click(Sender: TObject);
begin
fStatistiche:=TfStatistiche.Create(Self);
fStatistiche.ShowModal;
fStatistiche.Free;
end;

procedure TfrmPrincipale.FatturaAcquistoINTRA1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (TfrmInsInPN.Create(Self)) Do
 Begin
   boolVendita:=False;
dmodAz.modifica := False;
   tipo_acq:=2;
   ShowModal;
   Free;
 End;
end;

procedure TfrmPrincipale.pmiContab_CauContabClick(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fNumReg:=TfNumReg.Create(Self);
fNumReg.DataSource1.DataSet :=dmodAz.ibNum_RegD;
dmodAz.ibNum_RegD.Open;
 fNumReg.ShowModal;
 fNumReg.Free;
end;

procedure TfrmPrincipale.NumeriProtVendita1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fNumReg:=TfNumReg.Create(Self);
fNumReg.DataSource1.DataSet:=dmodAz.ibqNum_ProtV;
dmodAz.ibqNum_ProtV.Open;
 fNumReg.ShowModal;
 fNumReg.Free;

end;

procedure TfrmPrincipale.NumeriProtAcquisto1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fNumReg:=TfNumReg.Create(Self);
fNumReg.DataSource1.DataSet:=dmodAz.ibNum_ProtA;
dmodAz.ibNum_ProtA.Open;
 fNumReg.ShowModal;
 fNumReg.Free;
end;

procedure TfrmPrincipale.Causalicontabili1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 fCauCont:=TfCauCont.Create(Self);
 strCurrentTableName:='TAB_CAU_CONT';
 bPubTable:=False;
 Update_SBar(2,'Causali contabili');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqCaucont;
 dbgMainDataGrid.Visible:=True;

end;

procedure TfrmPrincipale.LiquidazioneMensile1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
// dmodAz.ibTab_Depositi.Open;
 With (TfRegIvaV.Create(Self)) Do
 Begin
dmodAz.modifica := False;
fRegIvaV.boolVendita:=True;
ShowModal;
Free
 End;

end;

procedure TfrmPrincipale.Prezzi1Click(Sender: TObject);
begin
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
ibTab_Articoli.First;
while not ibTab_Articoli.Eof do
begin
ibTab_Articoli.edit;

//ibTab_ArticoliP2IVATO.AsString := FormatFloat('0.00',trunc(ibTab_ArticoliP2IVATO.AsCurrency*100+0.5)/100);
//ibTab_ArticoliP3IVATO.AsCurrency := 1;

ibTab_ArticoliPREZZO_IVATO.AsString := FormatFloat('0.00',ibTab_ArticoliPREZZO_IVATO.AsCurrency);
ibTab_ArticoliPREZZO_BASE.AsString := FormatFloat('0.00',ibTab_ArticoliPREZZO_BASE.AsCurrency);
ibTab_ArticoliCOSTO_STANDART.AsString := FormatFloat('0.00',ibTab_ArticoliCOSTO_STANDART.AsCurrency);
ibTab_ArticoliP2IVATO.AsString := FormatFloat('0.00',ibTab_ArticoliP2IVATO.AsCurrency);
ibTab_ArticoliP3IVATO.AsString := FormatFloat('0.00',ibTab_ArticoliP3IVATO.AsCurrency);
ibTab_ArticoliP4IVATO.AsString := FormatFloat('0.00',ibTab_ArticoliP4IVATO.AsCurrency);
ibTab_ArticoliP5IVATO.AsString := FormatFloat('0.00',ibTab_ArticoliP5IVATO.AsCurrency);
ibTab_ArticoliP6IVATO.AsString := FormatFloat('0.00',ibTab_ArticoliP6IVATO.AsCurrency);
ibTab_ArticoliIMP2.AsString := FormatFloat('0.00',ibTab_ArticoliIMP2.AsCurrency);
ibTab_ArticoliIMP3.AsString := FormatFloat('0.00',ibTab_ArticoliIMP3.AsCurrency);
ibTab_ArticoliIMP4.AsString := FormatFloat('0.00',ibTab_ArticoliIMP4.AsCurrency);
ibTab_ArticoliIMP5.AsString := FormatFloat('0.00',ibTab_ArticoliIMP5.AsCurrency);
ibTab_ArticoliIMP6.AsString := FormatFloat('0.00',ibTab_ArticoliIMP6.AsCurrency);

ibTab_Articoli.Post;
ibTab_Articoli.Next;
 end;
end;
 dmodAz.ibtrDef.Commit;
end;

procedure TfrmPrincipale.BolleRicam1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Ricamo == 590
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=590;
 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Ricamo uscita';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=590;
 fBolConto.setnum:=True;
 fBolConto.boolVendita:=False;
 fBolConto.strCAU_MAG := 'RICA';
 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Ricami Uscita');
 EnableBarNED;
 EnableBarMove;
 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;



end;

procedure TfrmPrincipale.BolleRicamRientr1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 // ---> Rientro Ricami == 591
 dmodAz.ibqTab_Doc.ParamByName('parTipoDoc').AsInTeger:=591;

 fBolConto:=TfBolConto.Create(Self);
 fBolConto.Caption:='Rientro Ricami';
 fBolConto.intTipoCliFor:=2;
 fBolConto.intTipoDoc:=591;
 fBolConto.boolVendita:=False;
 fBolConto.setnum:=True;
 fBolConto.strCAU_MAG := 'RICR';

 strCurrentTableName:='TAB_DOCUMENTI';
 bPubTable:=False;
 Update_SBar(2,'Rientro Ricami');
 // set properties
 EnableBarNED;
 EnableBarMove;

 dsoMainLook.DataSet:=dmodAz.ibqTab_Doc;
 dbgMainDataGrid.Visible:=True;
 Update_Datas;

end;

procedure TfrmPrincipale.VisualizRicami1Click(Sender: TObject);
begin
 CloseOldTable;
 DestroyOldForm;
 With (Tfsituazricami.Create(Self)) Do
 Begin
  ShowModal;
  Free;
 End;
end;

END.


