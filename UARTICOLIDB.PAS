unit uArticoliDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask, ComCtrls, ExtDlgs, Buttons, Grids,
  DBGrids, Db;

type
  TfArticoliDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Articoli: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    LookTipoArt: TDBLookupComboBox;
    laTipoArt: TLabel;
    Panel1: TPanel;
    pctrlArticoli: TPageControl;
    tabs1: TTabSheet;
    tabs2: TTabSheet;
    tabs3: TTabSheet;
    paGruppi: TPanel;
    paAspetto: TPanel;
    paGeneral: TPanel;
    Label1: TLabel;
    LookCodIVA: TDBLookupComboBox;
    LookCodIVADescr: TDBLookupComboBox;
    Label2: TLabel;
    dbeCosto: TDBEdit;
    Label3: TLabel;
    dbeCostoUltimo: TDBEdit;
    Label4: TLabel;
    dbePrezzo: TDBEdit;
    Label5: TLabel;
    dbeSconto1: TDBEdit;
    dbeSconto2: TDBEdit;
    Label6: TLabel;
    dbeScortaMin: TDBEdit;
    Label7: TLabel;
    dbeScortaMax: TDBEdit;
    Label8: TLabel;
    LookReparto: TDBLookupComboBox;
    LookRepartpDescr: TDBLookupComboBox;
    Label9: TLabel;
    LookNumVar: TDBEdit;
    Label10: TLabel;
    dbeProvv: TDBEdit;
    laOmaggio: TLabel;
    LookOmaggio: TDBLookupComboBox;
    Label11: TLabel;
    LookUM1: TDBLookupComboBox;
    LookUM1D: TDBLookupComboBox;
    LookUM2D: TDBLookupComboBox;
    LookUM2: TDBLookupComboBox;
    Label12: TLabel;
    LookUM3D: TDBLookupComboBox;
    LookUM3: TDBLookupComboBox;
    Label13: TLabel;
    dbeUM2Val: TDBEdit;
    dbeUM3Val: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    LookAspEst: TDBLookupComboBox;
    LookAspEstD: TDBLookupComboBox;
    Label19: TLabel;
    dbePesoNetto: TDBEdit;
    Label20: TLabel;
    dbePesoLordo: TDBEdit;
    Label21: TLabel;
    dbeDescrPerDocum: TDBEdit;
    dbcbNSIntervento: TDBCheckBox;
    dbcbNSRegMagaz: TDBCheckBox;
    Label23: TLabel;
    LookForn: TDBLookupComboBox;
    LookFornFN: TDBLookupComboBox;
    Label24: TLabel;
    LookCatArt_M: TDBLookupComboBox;
    LookCatArt_F: TDBLookupComboBox;
    Label25: TLabel;
    LookProd: TDBLookupComboBox;
    LookProdDescr: TDBLookupComboBox;
    Label26: TLabel;
    LookGrAlt_M: TDBLookupComboBox;
    LookGrAlt_F: TDBLookupComboBox;
    Label27: TLabel;
    LookStagioni: TDBLookupComboBox;
    LooikStagiioni: TDBLookupComboBox;
    Label28: TLabel;
    LookCatMerc_F: TDBLookupComboBox;
    Label29: TLabel;
    LookContoAcqD: TDBLookupComboBox;
    Label30: TLabel;
    LookContoVendDescr: TDBLookupComboBox;
    LookCatMerc_M: TDBLookupComboBox;
    LookContoAcq: TDBLookupComboBox;
    LookContoVend: TDBLookupComboBox;
    Label22: TLabel;
    edPrezzoIvato: TEdit;
    LookCatArt_G: TDBLookupComboBox;
    LookGrAlt_G: TDBLookupComboBox;
    LookCatMerc_G: TDBLookupComboBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    tabs4: TTabSheet;
    tabs5: TTabSheet;
    tabs6: TTabSheet;
    paCodAgg: TPanel;
    paDep: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    imFotoArticolo: TImage;
    cbFotoStretch: TCheckBox;
    sbtnCarica: TSpeedButton;
    sbtnScarica: TSpeedButton;
    opdImagPercors: TOpenPictureDialog;
    dbeFotoPercorso: TDBEdit;
    sbtnMostraFoto: TSpeedButton;
    dbgDepositi: TDBGrid;
    dbgCodAgg: TDBGrid;
    LookTipo: TDBLookupComboBox;
    dbeDescrVend: TDBEdit;
    dbeDodVend: TDBEdit;
    Label34: TLabel;
    laTipoVend: TLabel;
    laCodVend: TLabel;
    laDescrVend: TLabel;
    dsoCodAgg: TDataSource;
    dsoDepPerArt: TDataSource;
    Label35: TLabel;
    LookCatArt_T: TDBLookupComboBox;
    LookGrAlt_T: TDBLookupComboBox;
    LookCatMerc_T: TDBLookupComboBox;
    procedure dbnTab_ArticoliClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbePrezzoExit(Sender: TObject);
    procedure cbFotoStretchClick(Sender: TObject);
    procedure sbtnScaricaClick(Sender: TObject);
    procedure sbtnCaricaClick(Sender: TObject);
    procedure sbtnMostraFotoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    Procedure Edit_Mode(bMode: Boolean);
    Procedure Cod_Agg_Update;
    Procedure Dep_Update;
    Procedure Foto_Update;
  public
    { Public declarations }
  end;

var
  fArticoliDB: TfArticoliDB;

implementation

Uses uAzDM, uPubDM, uFotoArt;

{$R *.DFM}

procedure TfArticoliDB.dbnTab_ArticoliClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbInsert) Then
                       Begin
                        Edit_Mode(True);
                        pctrlArticoli.ActivePage:=tabs1;
                        dbeCodice.SetFocus;
                        dbcbNSIntervento.Field.AsInteger:=0;
                        dbcbNSRegMagaz.Field.AsInteger:=0;
                        
                       End;
 If (Button=nbEdit) Then
                       Begin
                        Edit_Mode(True);
                        pctrlArticoli.ActivePage:=tabs1;
                        dbeCodice.SetFocus;
                       End;
 If (Button=nbPost) Then Edit_Mode(False);
 If (Button=nbCancel) Then  Edit_Mode(False);
 
end;

procedure TfArticoliDB.Edit_Mode(bMode: Boolean);
begin
 paView.Enabled:=bMode;
 paGruppi.Enabled:=bMode;
 paGeneral.Enabled:=bMode;
 paAspetto.Enabled:=bMode;
end;

procedure TfArticoliDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dbnTab_Articoli.BtnClick(nbCancel)
end;

procedure TfArticoliDB.dbePrezzoExit(Sender: TObject);
Var
 dPrezzoIvato,dPrezzo,dIVA: Double;
 strPrezIvato:String;
begin
 dPrezzo:=dbePrezzo.DataSource.DataSet.FieldByName('PREZZO_BASE').AsFloat;
 dIVA:=dmodAz.dsoTab_Codici_IVA.DataSet.FieldByName('ALIQUOTA').AsFloat;
 dPrezzoIvato:=dprezzo+dPrezzo*dIVA/100;
 Str(dPrezzoIvato:5:2,strPrezIvato);
 edPrezzoIvato.Text:= strPrezIvato;


end;

procedure TfArticoliDB.cbFotoStretchClick(Sender: TObject);
begin
 imFotoArticolo.stretch:=cbFotoStretch.Checked;
 Foto_Update;
end;

procedure TfArticoliDB.sbtnScaricaClick(Sender: TObject);
begin
 dbeFotoPercorso.Field.AsString:='';
 Foto_Update;
end;

procedure TfArticoliDB.sbtnCaricaClick(Sender: TObject);
begin
 If (opdImagPercors.Execute)
  Then
   Begin
    dbeFotoPercorso.Field.AsString:=opdImagPercors.FileName;
    Foto_Update;
   End;
end;

procedure TfArticoliDB.sbtnMostraFotoClick(Sender: TObject);
begin
 If (dbeFotoPercorso.Field.AsString='') Then Exit;
 fMostraFoto:=TfMostraFoto.Create(Self);
 fMostraFoto.iFotoArt.Picture.LoadFromFile(dbeFotoPercorso.field.AsString);
 fMostraFoto.WindowState:=wsMaximized;
 fMostraFoto.ShowModal;
 fMostraFoto.Free;
end;

procedure TfArticoliDB.Cod_Agg_Update;
begin
 // set param for cod agg
 With (dmodAz.ibqTab_Cod_Agg) Do
 Begin
  Close;
    Unprepare;
       ParamByName('parCodArt').AsString:=
          dmodAz.ibTab_Articoli.FieldByName('CODICE_ARTICOLO').AsString;
    Prepare;
  Open;
 End;
end;

procedure TfArticoliDB.FormCreate(Sender: TObject);
begin
 Dep_Update;
 Cod_Agg_Update;
end;

procedure TfArticoliDB.Dep_Update;
begin
 // set param for dep
 With (dmodAz.ibqTab_Art_Dep) Do
 Begin
  Close;
    Unprepare;
       ParamByName('parCodArt').AsString:=
          dmodAz.ibTab_Articoli.FieldByName('CODICE_ARTICOLO').AsString;
    Prepare;
  Open;
 End;
end;

procedure TfArticoliDB.Foto_Update;
begin
 Try
  If Not(dbeFotoPercorso.field.AsString='')
   Then imFotoArticolo.Picture.LoadFromFile(dbeFotoPercorso.field.AsString)
   Else imFotoArticolo.Picture:=Nil;;
 Except
  MessageDlg('Foto non è selezionato o percorso non è valido',mtWarning,[mbOK],0);
 End;
end;

procedure TfArticoliDB.FormShow(Sender: TObject);
begin
 Foto_Update;
end;

procedure TfArticoliDB.FormActivate(Sender: TObject);
begin Foto_Update;end;

end.
