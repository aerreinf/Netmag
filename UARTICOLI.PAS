unit uArticoli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCtrls,
  ComCtrls, Mask, ToolWin, ExtDlgs, IBCustomDataSet, IBQuery, DBCGrids,
  RxLookup, ToolEdit, CurrEdit, DBTables, mxtables, IBTable, Variants,
  Menus, IBSQL, RXDBCtrl;

type
  TfArticoli = class(TfBaseForm3)
    laCodice: TLabel;
    laDescr: TLabel;
    laTipoArt: TLabel;
    dbeDescr: TDBEdit;
    dbeCodice: TDBEdit;
    paPages: TPanel;
    pctrlArticoli: TPageControl;
    tabs1: TTabSheet;
    paGeneral: TPanel;
    laCodIVA: TLabel;
    laCosto: TLabel;
    laCostoUltimo: TLabel;
    laPrezzo: TLabel;
    laSconti: TLabel;
    laScortaMin: TLabel;
    laScortaMax: TLabel;
    laReparto: TLabel;
    laNumVar: TLabel;
    laProvv: TLabel;
    laOmaggio: TLabel;
    dbeCosto: TDBEdit;
    dbeCostoUltimo: TDBEdit;
    dbePrezzo: TDBEdit;
    dbeSconto1: TDBEdit;
    dbeSconto2: TDBEdit;
    dbeScortaMin: TDBEdit;
    dbeScortaMax: TDBEdit;
    LookNumVar: TDBEdit;
    dbeProvv: TDBEdit;
    LookOmaggio: TDBLookupComboBox;
    edPrezzoIvato4: TEdit;
    tabs2: TTabSheet;
    paAspetto: TPanel;
    laUMBase: TLabel;
    laUM2: TLabel;
    laUM3: TLabel;
    laEq2: TLabel;
    laEQ3: TLabel;
    laUM2PerBase: TLabel;
    laUM3PerBase: TLabel;
    laAspettoEsteriore: TLabel;
    laPesoNetto: TLabel;
    laPesoLordo: TLabel;
    laDescrAggPerDocs: TLabel;
    LookUM1: TDBLookupComboBox;
    LookUM1D: TDBLookupComboBox;
    LookUM2D: TDBLookupComboBox;
    LookUM2: TDBLookupComboBox;
    LookUM3D: TDBLookupComboBox;
    LookUM3: TDBLookupComboBox;
    dbeUM2Val: TDBEdit;
    dbeUM3Val: TDBEdit;
    LookAspEst: TDBLookupComboBox;
    LookAspEstD: TDBLookupComboBox;
    dbePesoNetto: TDBEdit;
    dbePesoLordo: TDBEdit;
    dbcbNSIntervento: TDBCheckBox;
    dbcbNSRegMagaz: TDBCheckBox;
    tabs3: TTabSheet;
    paGruppi: TPanel;
    laFornitore: TLabel;
    laProduttore: TLabel;
    laStagione: TLabel;
    laContoAcq: TLabel;
    laContoVen: TLabel;
    laMarca: TLabel;
    laGruppo: TLabel;
    laFamiglia: TLabel;
    laTipo: TLabel;
    LookFornFN: TDBLookupComboBox;
    LookProd: TDBLookupComboBox;
    LookProdDescr: TDBLookupComboBox;
    LookStagioni: TDBLookupComboBox;
    LooikStagiioni: TDBLookupComboBox;
    LookContoAcqD: TDBLookupComboBox;
    LookContoVendDescr: TDBLookupComboBox;
    LookContoAcq: TDBLookupComboBox;
    LookContoVend: TDBLookupComboBox;
    tabs4: TTabSheet;
    paCodAgg: TPanel;
    dbgCodAgg: TDBGrid;
    tabs5: TTabSheet;
    paDep: TPanel;
    dbgDepositi: TDBGrid;
    tabs6: TTabSheet;
    Panel4: TPanel;
    sbtnCarica: TSpeedButton;
    sbtnScarica: TSpeedButton;
    sbtnMostraFoto: TSpeedButton;
    cbFotoStretch: TCheckBox;
    Panel5: TPanel;
    imFotoArticolo: TImage;
    dbeFotoPercorso: TDBEdit;
    dsoArticoli: TDataSource;
    dsoCodAgg: TDataSource;
    dsoDepArt: TDataSource;
    dsoCodiceIva: TDataSource;
    dsoReparti: TDataSource;
    dsoOmaggio: TDataSource;
    dsoUnMisura: TDataSource;
    dsoAspEst: TDataSource;
    dsoFornitore: TDataSource;
    dsoStagioni: TDataSource;
    dsoProduttori: TDataSource;
    dsoPianoConti: TDataSource;
    dsoMARCA: TDataSource;
    dsoGRUPPO: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoTIPO: TDataSource;
    dsoTipoArt: TDataSource;
    opdImagPercors: TOpenPictureDialog;
    dsoUbicazioni: TDataSource;
    dsoDepositi: TDataSource;
    dsoPersAz: TDataSource;
    tbtnContArt: TToolButton;
    tbtnRicerca: TToolButton;
    sep_r_c: TToolButton;
    laUM1_eq1: TLabel;
    tabsListini: TTabSheet;
    pnlListini: TPanel;
    DBGrid1: TDBGrid;
    dsListiniPerArt: TDataSource;
    tabsTaglia: TTabSheet;
    dsTaglia: TDataSource;
    dsColori: TDataSource;
    pnlTaglia: TPanel;
    bbArtExsists: TBitBtn;
    dsContabileArt: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    tabsAssort: TTabSheet;
    dsAssort: TDataSource;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo6: TRxDBLookupCombo;
    sep7: TToolButton;
    tbtnStampa1: TToolButton;
    tbtnStampa2: TToolButton;
    tbtnStampa3: TToolButton;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DataSource1: TDataSource;
    LookCodIVA: TRxDBLookupCombo;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBESconto3: TDBEdit;
    DBEPrezzoIvato: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Button3: TButton;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label8: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label18: TLabel;
    LookCatArt_M: TRxDBLookupCombo;
    LookCatArt_G: TRxDBLookupCombo;
    LookCatArt_F: TRxDBLookupCombo;
    LookCatArt_T: TRxDBLookupCombo;
    Label19: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    dsoOfferte: TDataSource;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    RxCalcEdit1: TRxCalcEdit;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    dbeDescrPerDocum: TDBMemo;
    DBCheckBox2: TDBCheckBox;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    RxDBLookupCombo13: TRxDBLookupCombo;
    RxDBLookupCombo14: TRxDBLookupCombo;
    Button9: TButton;
    IBTable1: TIBDataSet;
    StatusBar1: TStatusBar;
    ToolButton6: TToolButton;
    DBCheckBox3: TDBCheckBox;
    Label21: TLabel;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    RxDBLookupCombo15: TRxDBLookupCombo;
    RxDBLookupCombo16: TRxDBLookupCombo;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    RxDBLookupCombo17: TRxDBLookupCombo;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    Label22: TLabel;
    DBEdit67: TDBEdit;
    IbqUpdoc: TIBSQL;
    ToolButton1: TToolButton;
    ToolButton11: TToolButton;
    RxDBLookupCombo18: TRxDBLookupCombo;
    Label23: TLabel;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure sbtnMostraFotoClick(Sender: TObject);
    procedure sbtnCaricaClick(Sender: TObject);
    procedure sbtnScaricaClick(Sender: TObject);
    procedure dbePrezzoEnter(Sender: TObject);
    procedure cbFotoStretchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnContArtClick(Sender: TObject);
    procedure tbtnRicercaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tabsListiniShow(Sender: TObject);
    procedure tabsListiniHide(Sender: TObject);
    procedure bbArtExsistsClick(Sender: TObject);
    procedure tbtnStampa1Click(Sender: TObject);
    procedure tbtnStampa2Click(Sender: TObject);
    procedure tbtnStampa3Click(Sender: TObject);
    procedure tbtnTagliaClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure edPrezzoIvato4Exit(Sender: TObject);
    procedure edPrezzoIvatoExit(Sender: TObject);
    procedure dbePrezzoClick(Sender: TObject);
    procedure dbeSconto1Click(Sender: TObject);
    procedure dbeSconto1Enter(Sender: TObject);
    procedure dbeSconto2Click(Sender: TObject);
    procedure dbeSconto2Enter(Sender: TObject);
    procedure DBESconto3Click(Sender: TObject);
    procedure DBESconto3Enter(Sender: TObject);
    procedure DBEPrezzoIvatoEnter(Sender: TObject);
    procedure DBEPrezzoIvatoClick(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure LookCatArt_MKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookCatArt_GKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookCatArt_FKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookCatArt_TKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbePrezzoExit(Sender: TObject);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure RxDBLookupCombo9Exit(Sender: TObject);
    procedure dbeCostoExit(Sender: TObject);
    procedure dbeCostoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEPrezzoIvatoExit(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
  private
    boolInserting: Boolean;
    Artic:string;
    procedure Edit_Mode(bMode: Boolean);
    Procedure IUpdate_Ivato2;
    Procedure IUpdate_Ivato3;
    Procedure ControllaArt;
    procedure Apri;
  public
    boolVendita: Boolean;
    ChiChiama : integer;
    procedure Foto_Update;
  end;

var
  fArticoli: TfArticoli;

implementation

uses uFotoArt, uAzDM, uContabArt, uRicercaArt, uPrnForm, frmuTagliaColori,
  frmuAssortimento, frmuVisTgCol, frmStampaCodeBar, uGestListCrop,
  uTipoOfertaDB, FR_Class, UinviaArt, uPrnBrogl;

{$R *.DFM}

procedure TfArticoli.tbtnNuovoClick(Sender: TObject);
begin
inherited;
boolInserting:=True;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoArticoli.DataSet.Insert;
 dbeCodice.SetFocus;
 dsAssort.autoEdit:=False;
 dsTaglia.AutoEdit:=false;
 dsColori.AutoEdit:=false;
 If (boolVendita)
   Then dsoArticoli.DataSet.fieldByName('FLAG_ACCESSORIE').asString:='N'
   Else dsoArticoli.DataSet.fieldByName('FLAG_ACCESSORIE').asString:='S';
 dsoArticoli.DataSet.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
 LookContoVend.Field.Value:=dsoPersAz.DataSet.FieldByName('VENDITE').Value;     //ibTab_Piano_Conti
 LookContoAcq.Field.Value:=dsoPersAz.DataSet.FieldByName('ACQUISTI').Value;     //ibTab_Piano_Conti

 dbeCosto.Text := '0';
 dbePrezzo.Text := '0';
 DBEPrezzoIvato.Text := '0';
 DBEdit4.Text := '0';
 DBEdit5.Text := '0';
 DBEdit6.Text := '0';
 DBEdit2.Text := '0';
 DBEdit8.Text := '0';
 DBEdit9.Text := '0';
 DBEdit10.Text := '0';
 DBEdit12.Text := '0';
 DBEdit13.Text := '0';
 DBEdit14.Text := '0';
 DBEdit16.Text := '0';
 DBEdit17.Text := '0';
 DBEdit18.Text := '0';
 DBEdit7.Text := '0';
 DBEdit11.Text := '0';
 DBEdit15.Text := '0';
 DBEdit23.Text := '0';
 DBEdit24.Text := '0';
 DBEdit25.Text := '0';
 DBEdit26.Text := '0';
dsoArticoli.DataSet.FieldByName('NON_STAMPA_INVENTARIO').AsInteger := 0;
dsoArticoli.DataSet.FieldByName('NON_STAMPA_REGISTRO').AsInteger := 0;
 Edit_Mode(True);
{
 dmodAz.ibqryTaglia.Close;
 dmodAz.ibqryColori.Close;
 dmodAz.ibqryAssort.Close;
 dmodAz.ibqryAssort.Open;
 dmodAz.ibqryColori.Open;
 dmodAz.ibqryTaglia.Open;
}
End;

procedure TfArticoli.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 boolInserting:=False;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoArticoli.DataSet.Edit;
 Artic := dsoArticoli.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 dbeCodice.SetFocus;
 dsoArticoli.DataSet.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
 dsAssort.autoEdit:=True;
 dsTaglia.AutoEdit:=True;
 dsColori.AutoEdit:=True;
 Edit_Mode(True); 
end;

procedure TfArticoli.tbtnSalvaClick(Sender: TObject);
var
savep : TBookmark;
art : string;
begin
IF LookCodIVA.Text = '' THEN
begin
       Application.MessageBox('Immettere il codice IVA !','Attendere',MB_OK);
       exit;
end;

dbedit35.SetFocus;

if  boolInserting then
begin

  With (dmodAz) Do
  Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('SELECT Count(*) From Tab_Articoli');
   ibqRicerca.SQL.Add(' Where CODICE_ARTICOLO = '''+dbeCodice.Field.AsString+'''');
   ibqRicerca.open;

   If (ibqRicerca.FieldByname('Count').AsInteger>0) Then
     Begin
       Application.MessageBox('Codice già esistente!','Attendere',MB_OK);
       dbeCodice.Field.AsString:='------';
       dbeCodice.SetFocus;
       ibqRicerca.CLose;

       EXIT;
     End;
   ibqRicerca.CLose;
 end;
end;
  inherited;

 dsTaglia.AutoEdit:=False;
 dsColori.AutoEdit:=False;
try
 begin

 art :=dbeCodice.Field.AsString;



 dsoArticoli.DataSet.Post;
 savep := dsoArticoli.DataSet.GetBookmark;
 dsoArticoli.DataSet.DisableControls;
 if boolInserting = False then
  if Artic <> art then
  begin
IbqUpdoc.Close;
IbqUpdoc.ParamByName('a').AsString :=art;
IbqUpdoc.ParamByName('b').AsString :=Artic;
IbqUpdoc.ExecQuery;
IbqUpdoc.Close;
end;

 if chichiama = 0 then
 dmodAz.ibtrDef.Commit
 else  dmodAz.ibtrDef.CommitRetaining;
end
except
 if chichiama = 0 then
 dmodAz.ibtrDef.Rollback
 else  dmodAz.ibtrDef.RollbackRetaining;
end;
 boolInserting:=False;
 Apri;
 dsoArticoli.DataSet.EnableControls;
 dsoArticoli.DataSet.GotoBookmark(savep);
 dsoArticoli.DataSet.FreeBookmark(savep);

 dsoArticoli.DataSet.Locate('CODICE_ARTICOLO',art,[]);
 Edit_Mode(False);
end;

procedure TfArticoli.tbtnAnullaClick(Sender: TObject);
var
savep : TBookmark;
begin
If (MessageDlg('Annullare ?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
  inherited;
 boolInserting:=False;
 dsTaglia.AutoEdit:=False;
 dsColori.AutoEdit:=False;
 savep := dsoArticoli.DataSet.GetBookmark;
 dsoArticoli.DataSet.Cancel;
 if chichiama = 0 then
 dmodAz.ibtrDef.Rollback
 else  dmodAz.ibtrDef.RollbackRetaining;

 Apri;
 dsoArticoli.DataSet.GotoBookmark(savep);
 dsoArticoli.DataSet.FreeBookmark(savep);
 Edit_Mode(False);  
end;

procedure TfArticoli.tbtnEliminaClick(Sender: TObject);
begin
 If (Application.messagebox('Eliminare?','attenzione',mb_yesno+mb_iconhand)=id_no)
    Then Exit;
  inherited;

 boolInserting:=False;
 dsTaglia.AutoEdit:=False;
 dsColori.AutoEdit:=False;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

try
 begin
 dsoArticoli.DataSet.Delete;
 if chichiama = 0 then
 dmodAz.ibtrDef.Commit
 else  dmodAz.ibtrDef.CommitRetaining;
end
except
 if chichiama = 0 then
 dmodAz.ibtrDef.Rollback
 else  dmodAz.ibtrDef.RollbackRetaining;
end;
 Apri;
 Edit_Mode(False);
end;

procedure TfArticoli.sbtnMostraFotoClick(Sender: TObject);
begin
  inherited;
 If (dbeFotoPercorso.Field.AsString='') Then Exit;
 fMostraFoto:=TfMostraFoto.Create(Self);
 fMostraFoto.iFotoArt.Picture.LoadFromFile(dbeFotoPercorso.field.AsString);
 fMostraFoto.WindowState:=wsMaximized;
 fMostraFoto.ShowModal;
 fMostraFoto.Free;
end;

procedure TfArticoli.sbtnCaricaClick(Sender: TObject);
begin
  inherited;
 If (opdImagPercors.Execute)
  Then
   Begin
    dbeFotoPercorso.Field.AsString:=opdImagPercors.FileName;
    Foto_Update;
   End;
end;

procedure TfArticoli.sbtnScaricaClick(Sender: TObject);
begin
  inherited;
 dbeFotoPercorso.Field.AsString:='';
 Foto_Update;
end;

procedure TfArticoli.dbePrezzoEnter(Sender: TObject);
begin
dbePrezzo.SelectAll;
end;

procedure TfArticoli.Edit_Mode(bMode: Boolean);
begin
 paView.Enabled:=bMode;
 paGruppi.Enabled:=bMode;
 paGeneral.Enabled:=bMode;
 paAspetto.Enabled:=bMode;
 paCodAgg.Enabled:=bMode;
 pnlTaglia.Enabled:=bMode;
 ToolButton8.Enabled:=not(bMode);
 tbtnRicerca.Enabled:=not(bMode);
 tbtnContArt.Enabled:=not(bMode);
end;

procedure TfArticoli.cbFotoStretchClick(Sender: TObject);
begin
  inherited;
 imFotoArticolo.stretch:=cbFotoStretch.Checked;
 Foto_Update;
end;

procedure TfArticoli.Foto_Update;
begin
 Try
  If Not(dbeFotoPercorso.field.AsString='')
   Then imFotoArticolo.Picture.LoadFromFile(dbeFotoPercorso.field.AsString)
   Else imFotoArticolo.Picture:=Nil;;
 Except
//  MessageDlg('Foto non selezionata o percorso non valido',mtWarning,[mbOK],0);
 End;
end;

procedure TfArticoli.FormShow(Sender: TObject);
begin
  inherited;
 Foto_Update;
 if dmodAz.Acc = 0 then
 ToolButton2.Visible := True;

 paView.Enabled:=False;
 end;

procedure TfArticoli.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoArticoli.DataSet.Prior;
 Foto_Update;

 If (pctrlArticoli.ActivePage=tabsListini) Then
  Begin
    dmodAz.ibqCont_Art.Close;
    dmodAz.ibqCont_Art.ParamByName('parCod_Art').asstring:=dbeCodice.Field.AsString;
    dmodAz.ibqCont_Art.ParamByName('parCod_Dep').asstring:='%';
    dmodAz.ibqCont_Art.Open;

    dmodAz.ibqryListiniPerArt.Close;
     dmodAz.ibqryListiniPerArt.ParamByName('parCodart').AsString:=dbeCodice.Field.AsString;
    dmodAz.ibqryListiniPerArt.Open;
  End;
RxCalcEdit1.Value := dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency*
         (100+dsoArticoli.DataSet.FieldByName('CODICE_IVA_ID').AsFloat)/100;

end;

procedure TfArticoli.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoArticoli.DataSet.Next;
{
 dmodAz.ibqryTaglia.Close;
 dmodAz.ibqryColori.Close;
 dmodAz.ibqryAssort.Close;
 dmodAz.ibqryAssort.Open;
 dmodAz.ibqryColori.Open;
 dmodAz.ibqryTaglia.Open;
}
 Foto_Update;

 If (pctrlArticoli.ActivePage=tabsListini) Then
  Begin
    // refresh datas, means open query
    dmodAz.ibqCont_Art.Close;
    dmodAz.ibqCont_Art.ParamByName('parCod_Art').asstring:=dbeCodice.Field.AsString;
    dmodAz.ibqCont_Art.ParamByName('parCod_Dep').asstring:='%';
    dmodAz.ibqCont_Art.Open;

    dmodAz.ibqryListiniPerArt.Close;
     dmodAz.ibqryListiniPerArt.ParamByName('parCodart').AsString:=dbeCodice.Field.AsString;
    dmodAz.ibqryListiniPerArt.Open;

  End;
RxCalcEdit1.Value := dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency*
         (100+dsoArticoli.DataSet.FieldByName('CODICE_IVA_ID').AsFloat)/100;

end;

procedure TfArticoli.tbtnContArtClick(Sender: TObject);
begin
 if (dsoArticoli.DataSet.Isempty)
  Then  Begin
          ShowMessage('La tabella è vuota!');
          Exit;
        End;
 fContabArt:=TfContabArt.Create(Self);
 fContabArt.LookArtCod.KeyValue:=dbeCodice.Field.Value;
 fContabArt.LookArtDescr.KeyValue:=dbeCodice.Field.Value;
 fContabArt.bbTuttidep.Click;
 fContabArt.ShowModal;
 fContabArt.Free;
end;

procedure TfArticoli.tbtnRicercaClick(Sender: TObject);
begin
 dmodAz.ibqRicerca_Art.Close;
 fRicercaArt:=TfRicercaArt.Create(Self);
 fRicercaArt.ShowModal;
 fRicercaArt.Free;
end;

procedure TfArticoli.FormActivate(Sender: TObject);
begin
  inherited;
 pctrlArticoli.activepage:=Tabs1;

end;

procedure TfArticoli.IUpdate_Ivato2;
Var
 dPrezzoIvato,dPrezzo : Currency;
 dIVA,dSconto1,Dsconto2,dSconto3 : Double;
 strPrezIvato:String;
begin
 Try
 begin
dPrezzoIvato := 0;
dPrezzo:=dbePrezzo.DataSource.DataSet.FieldByName('PREZZO_BASE').AsCurrency;
dIVA:=dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsFloat;
dSconto1 := dbeSconto1.DataSource.DataSet.FieldByName('Sconto1').AsFloat;
dSconto2 := dbeSconto2.DataSource.DataSet.FieldByName('Sconto2').AsFloat;
dSconto3 := dbeSconto3.DataSource.DataSet.FieldByName('Sconto4').AsFloat;

DBEPrezzoIvato.Text := FloatToStr(dPrezzo*(1+DIva/100));
dsoArticoli.DataSet.FieldByName('Prezzo_IVATO').AsCurrency := (dPrezzo*(1+DIva/100));
 end
 Except
DBEPrezzoIvato.Text:= '0';
 End;
end;

procedure TfArticoli.tabsListiniShow(Sender: TObject);
begin
// refresh datas, means open query
 dmodAz.ibqCont_Art.Close;
 dmodAz.ibqCont_Art.ParamByName('parCod_Art').asstring:=dbeCodice.Field.AsString;
 dmodAz.ibqCont_Art.ParamByName('parCod_Dep').asstring:='%';
 dmodAz.ibqCont_Art.Open;

 dmodAz.ibqryListiniPerArt.Close;
 dmodAz.ibqryListiniPerArt.ParamByName('parCodart').AsString:=dbeCodice.Field.AsString;
 dmodAz.ibqryListiniPerArt.Open;
end;

procedure TfArticoli.tabsListiniHide(Sender: TObject);
begin
 dmodAz.ibqryListiniPerArt.Close;
 dmodAz.ibqCont_Art.Close;
end;

procedure TfArticoli.bbArtExsistsClick(Sender: TObject);
begin
ControllaArt;
end;

procedure TfArticoli.tbtnStampa1Click(Sender: TObject);
begin
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frSchedaArt.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;

  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSchedaArt.frf');
     ShowReport;
     //PrintReport;
  End;
end;

procedure TfArticoli.tbtnStampa2Click(Sender: TObject);
begin
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frSchedaArt2.frf'))
    Then  Begin
            MessageDlg('Il File di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;

  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSchedaArt2.frf');
     ShowReport;
  End;

end;

procedure TfArticoli.tbtnStampa3Click(Sender: TObject);
begin
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frArticoli.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frArticoli.frf');
     ShowReport;
 End;
end;

procedure TfArticoli.tbtnTagliaClick(Sender: TObject);
begin
{
 With (TfrmTagliaColori.Create(Self)) Do
 Begin
   ShowModal;
   Free;

 End;
}
end;

procedure TfArticoli.ToolButton2Click(Sender: TObject);
var
 SavePlace: TBookmark;
begin
 SavePlace :=dsoArticoli.DataSet.GetBookmark;
 fVisTgCol:=TfVisTgCol.Create(Self);
 fVisTgCol.ShowModal;
 fVisTgCol.Free;
 Apri;
 dsoArticoli.DataSet.GotoBookmark(SavePlace);
 dsoArticoli.DataSet.FreeBookmark(SavePlace);
end;

procedure TfArticoli.ToolButton5Click(Sender: TObject);
begin
 fStampaCodeBar:=TfStampaCodeBar.Create(Self);
 fStampaCodeBar.ShowModal;
 fStampaCodeBar.Free;
end;


procedure TfArticoli.IUpdate_Ivato3;
Var
 dPrezzoIvato,dPrezzo,L2,L3,L4,L5,I2,I3,I4,I5 :Currency;
 dIVA,dSconto1,Dsconto2,dSconto3 : Double;
 ScontoAcq : Double;
 strPrezIvato:String;
begin
 Try
begin
dPrezzo := 0;
dPrezzoIvato := dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsCurrency;
dIVA:=dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsFloat;

dPrezzo := dPrezzoIvato/(1+dIVA/100);
dsoArticoli.DataSet.FieldByName('PREZZO_BASE').AsCurrency:= dPrezzo;
dbePrezzo.Text := CurrToStr(dPrezzo);

ScontoAcq := ((dsoArticoli.DataSet.FieldByName('PREZZO_BASE').AsCurrency -
 dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency)*100/
 dsoArticoli.DataSet.FieldByName('PREZZO_BASE').AsCurrency);

dsoArticoli.DataSet.FieldByName('RICARPREC').AsFloat := ScontoAcq;
DBEdit1.Text := FloatToStr(ScontoAcq);

L2 := (dPrezzo- (dprezzo * dsoArticoli.DataSet.FieldByName('SC21').AsFloat/100));
L2 := (L2 -(L2*dsoArticoli.DataSet.FieldByName('SC22').AsFloat)/100);
L2 := (L2 -(L2*dsoArticoli.DataSet.FieldByName('SC23').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('IMP2').AsCurrency := L2;
DBEdit23.Text :=FloatToStr(L2);


L3 := (dprezzo-
  (dprezzo * dsoArticoli.DataSet.FieldByName('SC31').AsFloat/100));
L3 := (L3 -(L3*dsoArticoli.DataSet.FieldByName('SC32').AsFloat)/100);
L3 := (L3 -(L3*dsoArticoli.DataSet.FieldByName('SC33').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('IMP3').AsCurrency := L3;
DBEdit24.Text :=FloatToStr(L3);


L4 := (dprezzo-

  (dprezzo * dsoArticoli.DataSet.FieldByName('SC41').AsFloat/100));
L4 := (L4 -(L4*dsoArticoli.DataSet.FieldByName('SC42').AsFloat)/100);
L4 := (L4 -(L4*dsoArticoli.DataSet.FieldByName('SC43').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('IMP4').AsCurrency := L4;
DBEdit25.Text :=FloatToStr(L4);

{
L5 := (dprezzo-
  (dprezzo * dsoArticoli.DataSet.FieldByName('SC51').AsFloat/100));
L5 := (L5 -(L5*dsoArticoli.DataSet.FieldByName('SC52').AsFloat)/100);
L5 := (L5 -(L5*dsoArticoli.DataSet.FieldByName('SC53').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('IMP5').AsFloat := L5;
DBEdit26.Text :=FloatToStr(L5);
}
{
L2 := (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat-
  (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat * dsoArticoli.DataSet.FieldByName('SC21').AsFloat/100));
L2 := (L2 -(L2*dsoArticoli.DataSet.FieldByName('SC22').AsFloat)/100);
L2 := (L2 -(L2*dsoArticoli.DataSet.FieldByName('SC23').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('P2IVATO').AsFloat := L2;
DBEdit2.Text :=FloatToStr(L2);


L3 := (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat-
  (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat * dsoArticoli.DataSet.FieldByName('SC31').AsFloat/100));
L3 := (L3 -(L3*dsoArticoli.DataSet.FieldByName('SC32').AsFloat)/100);
L3 := (L3 -(L3*dsoArticoli.DataSet.FieldByName('SC33').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('P3IVATO').AsFloat := L3;
DBEdit7.Text :=FloatToStr(L3);


L4 := (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat-
  (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat * dsoArticoli.DataSet.FieldByName('SC41').AsFloat/100));
L4 := (L4 -(L4*dsoArticoli.DataSet.FieldByName('SC42').AsFloat)/100);
L4 := (L4 -(L4*dsoArticoli.DataSet.FieldByName('SC43').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('P4IVATO').AsFloat := L4;
DBEdit11.Text :=FloatToStr(L4);


L5 := (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat-
  (dsoArticoli.DataSet.FieldByName('PREZZO_IVATO').AsFloat * dsoArticoli.DataSet.FieldByName('SC51').AsFloat/100));
L5 := (L5 -(L5*dsoArticoli.DataSet.FieldByName('SC52').AsFloat)/100);
L5 := (L5 -(L5*dsoArticoli.DataSet.FieldByName('SC53').AsFloat)/100);

dsoArticoli.DataSet.FieldByName('P5IVATO').AsFloat := L5;
DBEdit15.Text :=FloatToStr(L5);
}
I2:=0;
I2 :=(L2*(1+dIVA/100));
dsoArticoli.DataSet.FieldByName('P2IVATO').AsCurrency := I2;
DBEdit2.Text := FloatToStr(I2);
I2:=0;
I2 :=(L3*(1+dIVA/100));
dsoArticoli.DataSet.FieldByName('P3IVATO').AsCurrency := I2;
DBEdit7.Text := FloatToStr(I2);
I2:=0;
I2 :=(L4*(1+dIVA/100));
dsoArticoli.DataSet.FieldByName('P4IVATO').AsCurrency := I2;
DBEdit11.Text := FloatToStr(I2);
{
I2:=0;
I2 :=(L5*(1+dIVA/100));
dsoArticoli.DataSet.FieldByName('P5IVATO').AsFloat := I2;
DBEdit15.Text := FloatToStr(I2);
}

end
 Except
DBEPrezzo.Text:= '0';
 End;

 end;

procedure TfArticoli.edPrezzoIvato4Exit(Sender: TObject);
begin
IUpdate_Ivato3;
end;

procedure TfArticoli.edPrezzoIvatoExit(Sender: TObject);
begin
IUpdate_Ivato3;
end;

procedure TfArticoli.dbePrezzoClick(Sender: TObject);
begin
dbePrezzo.SelectAll;
end;

procedure TfArticoli.dbeSconto1Click(Sender: TObject);
begin
dbeSconto1.SelectAll;
end;

procedure TfArticoli.dbeSconto1Enter(Sender: TObject);
begin
dbeSconto1.SelectAll;
end;

procedure TfArticoli.dbeSconto2Click(Sender: TObject);
begin
dbeSconto2.SelectAll;
end;

procedure TfArticoli.dbeSconto2Enter(Sender: TObject);
begin
dbeSconto2.SelectAll;
end;

procedure TfArticoli.DBESconto3Click(Sender: TObject);
begin
dbeSconto3.SelectAll;
end;

procedure TfArticoli.DBESconto3Enter(Sender: TObject);
begin
dbeSconto3.SelectAll;
end;

procedure TfArticoli.DBEPrezzoIvatoEnter(Sender: TObject);
begin
DBEPrezzoIvato.SelectAll;
end;

procedure TfArticoli.DBEPrezzoIvatoClick(Sender: TObject);
begin
DBEPrezzoIvato.SelectAll;
end;

procedure TfArticoli.DBEdit1Click(Sender: TObject);
begin
DBEdit1.SelectAll;
end;

procedure TfArticoli.DBEdit1Enter(Sender: TObject);
begin
DBEdit1.SelectAll;
end;

procedure TfArticoli.Button1Click(Sender: TObject);
begin
   IUpdate_Ivato2;
end;

procedure TfArticoli.Button2Click(Sender: TObject);
begin
IUpdate_Ivato3;
end;

procedure TfArticoli.Button3Click(Sender: TObject);
begin
 fGestListCrop:=TFGestListCrop.Create(Self);
 fGestListCrop.ShowModal;
 fGestListCrop.Free;
 Apri;
end;

procedure TfArticoli.ControllaArt;
begin
  With (dmodAz) Do
  Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('SELECT Count(*) From Tab_Articoli');
   ibqRicerca.SQL.Add(' Where CODICE_ARTICOLO = '''+dbeCodice.Field.AsString+'''');
   ibqRicerca.open;
   If (ibqRicerca.FieldByname('Count').AsInteger>0) Then
     Begin
       Application.MessageBox('Codice già esistente nel''archivio!','Attendere',MB_OK);
       dbeCodice.Field.AsString:='-----';
       dbeCodice.SetFocus;
     End;
   ibqRicerca.CLose;
  End;
end;

procedure TfArticoli.Button4Click(Sender: TObject);
begin
dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('PREZZO_BASE').AsCurrency-
  (dsoArticoli.DataSet.FieldByName('PREZZO_BASE').AsCurrency * dsoArticoli.DataSet.FieldByName('RICARPREC').AsFloat/100));

end;

procedure TfArticoli.Button5Click(Sender: TObject);
begin
dsoArticoli.DataSet.FieldByName('IMP2').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency+
  (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency * dsoArticoli.DataSet.FieldByName('R2').AsFloat/100));

dsoArticoli.DataSet.FieldByName('P2IVATO').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('IMP2').AsCurrency*
 (1+dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsFloat/100));

end;

procedure TfArticoli.Button6Click(Sender: TObject);
begin
dsoArticoli.DataSet.FieldByName('IMP3').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency+
  (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency * dsoArticoli.DataSet.FieldByName('R3').AsFloat/100));

dsoArticoli.DataSet.FieldByName('P3IVATO').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('IMP3').AsCurrency*
 (1+dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsCurrency/100));

end;

procedure TfArticoli.Button7Click(Sender: TObject);
begin
dsoArticoli.DataSet.FieldByName('IMP4').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency+
  (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency * dsoArticoli.DataSet.FieldByName('R4').AsFloat/100));

dsoArticoli.DataSet.FieldByName('P4IVATO').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('IMP4').AsCurrency*
 (1+dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsCurrency/100));


end;

procedure TfArticoli.Button8Click(Sender: TObject);
begin
dsoArticoli.DataSet.FieldByName('IMP5').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency+
  (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency * dsoArticoli.DataSet.FieldByName('R5').AsFloat/100));

dsoArticoli.DataSet.FieldByName('P5IVATO').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('IMP5').AsCurrency*
 (1+dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsCurrency/100));
end;

procedure TfArticoli.LookCatArt_MKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

 If (Key=VK_ESCAPE)
  Then dsoArticoli.DataSet.FieldByName('CAT_ART_MARCA_ID').Value:=Null;

end;

procedure TfArticoli.LookCatArt_GKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=VK_ESCAPE)
  Then dsoArticoli.DataSet.FieldByName('CAT_ART_GRUPPO_ID').Value:=Null;
end;

procedure TfArticoli.LookCatArt_FKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=VK_ESCAPE)
  Then dsoArticoli.DataSet.FieldByName('CAT_ART_FAMIGLIA_ID').Value:=Null;

end;

procedure TfArticoli.LookCatArt_TKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=VK_ESCAPE)
  Then dsoArticoli.DataSet.FieldByName('CAT_ART_TIPO_ID').Value:=Null;


end;

procedure TfArticoli.BitBtn1Click(Sender: TObject);
var
x,y : integer;
z,w : string;
begin
IBTable1.Open;
with dmodAz do
begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('SELECT Count(*) From CODART');
   ibqRicerca.open;
   If (ibqRicerca.FieldByname('Count').AsInteger>0) Then
     Begin

IBTable1.First;
x:=length(IBTable1.FieldByName('CODICE').AsString);

z := copy((IBTable1.FieldByName('CODICE').AsString),(x-4),5);
w := copy((IBTable1.FieldByName('CODICE').AsString),1,(x-5));

{
ibqRicerca.CLose;
ibqRicerca.SQL.Clear;
ibqRicerca.SQL.Add('SELECT * From CODART order by CODICE descending');
ibqRicerca.open;
ibqRicerca.First;
x:=length(ibqRicerca.FieldByName('CODICE').AsString);

z := copy((ibqRicerca.FieldByName('CODICE').AsString),(x-4),5);
w := copy((ibqRicerca.FieldByName('CODICE').AsString),1,(x-5));
}
     End
     else
begin
//ibqRicerca.CLose;

ibTabPersAz.Open;
ibTabPersAz.First;
x:= length(ibTabPersAz.FieldByName('DESCR_ZOOM_ART').AsString);
z := copy((ibTabPersAz.FieldByName('DESCR_ZOOM_ART').AsString),(x-4),5);
w := copy((ibTabPersAz.FieldByName('DESCR_ZOOM_ART').AsString),1,(x-5));
end;
end;

dsoArticoli.DataSet.FieldByName('CODICE_ARTICOLO').AsString :=
w+IntToStr(StrToInt(z)+1);
IBTable1.Insert;
IBTable1.FieldByName('CODICE').AsString := w+IntToStr(StrToInt(z)+1);
IBTable1.Post;
IBTable1.Close;
end;

procedure TfArticoli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
 VK_F2 : begin
         tbtnRicerca.Click;
         end;
 VK_F3 : begin
         tbtnContArt.Click;
         end;
 VK_F4 : begin
         tbtnStampa1.Click;
         end;
 VK_F5 : begin
         ToolButton2.Click;
         end;
 VK_F6 : begin
         Button3.Click;
         end;
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
//    else fArticoli.KeyPreview := False;
end;
end;

procedure TfArticoli.dbePrezzoExit(Sender: TObject);
begin
Button1.Click;
end;

procedure TfArticoli.RxDBLookupCombo8Exit(Sender: TObject);
begin
if not varisnull(RxDBLookupCombo8.KeyValue) then
RxDBLookupCombo9.KeyValue :=RxDBLookupCombo8.KeyValue;
end;

procedure TfArticoli.RxDBLookupCombo9Exit(Sender: TObject);
begin
if not varisnull(RxDBLookupCombo9.KeyValue) then
RxDBLookupCombo8.KeyValue :=RxDBLookupCombo9.KeyValue;
end;

procedure TfArticoli.dbeCostoExit(Sender: TObject);
begin
RxCalcEdit1.Value := dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency*
         (100+dsoArticoli.DataSet.FieldByName('CODICE_IVA_ID').AsFloat)/100;

end;

procedure TfArticoli.dbeCostoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
RxCalcEdit1.Value := dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency*
         (100+dsoArticoli.DataSet.FieldByName('CODICE_IVA_ID').AsFloat)/100;
end;

Procedure TfArticoli.Apri;
begin
if boolVendita then
begin
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
 End
end
else
 begin
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''S''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
 End

 end;

 dmodAz.IBQuery_IVA.open;
 dmodAz.ibTab_Cod_Agg_D.Open;
 dmodAz.ibtOfferte.Open;
 dmodAz.ibTab_Reparti.Open;
 dmodAz.ibTab_Unita_di_Misura.Open;
 dmodAz.ibqTab_For.open;
 dmodAz.ibTab_Piano_Conti.Open;
 dmodAz.ibTab_Produttori.Open;
 dmodAz.ibTab_Stagioni.Open;
 dmodAz.ibTab_Marca.Open;
 dmodAz.ibTab_Gruppo.Open;
 dmodAz.ibTab_Famiglia.Open;
 dmodAz.ibTab_Tipo.Open;
 dmodAz.ibTab_Aspetto_Esteriore.Open;
 dsoPersAz.DataSet.Open;
 // dmodAz.ibqryAssort.Open;
// dmodAz.ibqryColori.Open;
// dmodAz.ibqryTaglia.Open;
end;

procedure TfArticoli.DBEPrezzoIvatoExit(Sender: TObject);
begin
Button2.Click;
end;

procedure TfArticoli.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfArticoli.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
CanClose := tbtnEsci.Enabled;
end;

procedure TfArticoli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if boolVendita=True then
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
end
else
begin
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''S''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
 End;
end;


end;

procedure TfArticoli.ToolButton8Click(Sender: TObject);
var
savep : TBookmark;
begin
 savep := dsoArticoli.DataSet.GetBookmark;

fTipiOferteDB:=TfTipiOferteDB.Create(Self);
fTipiOferteDB.ShowModal;
fTipiOferteDB.Free;

 Apri;
 dsoArticoli.DataSet.GotoBookmark(savep);
 dsoArticoli.DataSet.FreeBookmark(savep);
end;


procedure TfArticoli.ToolButton10Click(Sender: TObject);
var
savep : TBookmark;
begin
 savep := dsoArticoli.DataSet.GetBookmark;
With (TfinviaArt.Create(Self)) Do
Begin
ShowModal;
Free;
End;
 Apri;
 dsoArticoli.DataSet.GotoBookmark(savep);
 dsoArticoli.DataSet.FreeBookmark(savep);
end;

procedure TfArticoli.Button9Click(Sender: TObject);
begin
dsoArticoli.DataSet.FieldByName('PREZZO_BASE').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency+
  (dsoArticoli.DataSet.FieldByName('COSTO_STANDART').AsCurrency * dsoArticoli.DataSet.FieldByName('RICARPREC').AsCurrency/100));


end;

procedure TfArticoli.ToolButton11Click(Sender: TObject);
var
savep : TBookmark;
ar : string;
begin
 savep := dsoArticoli.DataSet.GetBookmark;
ar := dbeCodice.Text;
With (TfPrnBroglMag.Create(Self)) Do
Begin
rabArtDaA.Checked := True;
rxdblcDaArtCodice.KeyValue :=ar;
rxdblcAdArtCodice.KeyValue :=ar;
ShowModal;

Free;
End;
 Apri;
 dsoArticoli.DataSet.GotoBookmark(savep);
 dsoArticoli.DataSet.FreeBookmark(savep);


end;

procedure TfArticoli.DBEdit23Exit(Sender: TObject);
begin

dsoArticoli.DataSet.FieldByName('P2IVATO').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('IMP2').AsCurrency*
 (1+dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsFloat/100));
end;

procedure TfArticoli.DBEdit24Exit(Sender: TObject);
begin
  inherited;
dsoArticoli.DataSet.FieldByName('P3IVATO').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('IMP3').AsCurrency*
 (1+dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsCurrency/100));
end;

procedure TfArticoli.DBEdit25Exit(Sender: TObject);
begin
  inherited;
dsoArticoli.DataSet.FieldByName('P4IVATO').AsCurrency :=
 (dsoArticoli.DataSet.FieldByName('IMP4').AsCurrency*
 (1+dsoCodiceIva.DataSet.FieldByName('ALIQUOTA').AsCurrency/100));
end;

END.

