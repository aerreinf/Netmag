unit uForn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, DBCGrids, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask,
  ToolWin, ExtCtrls, Db, RxLookup, Menus, Variants, IBCustomDataSet,
  IBQuery;

type
  TfForn = class(TfBaseForm3)
    laCodice: TLabel;
    laDenom: TLabel;
    laDenom2: TLabel;
    dbeDenom2: TDBEdit;
    dbeDenom: TDBEdit;
    dbeCodice: TDBEdit;
    paDati: TPanel;
    pctrlDatiForn: TPageControl;
    tabs1: TTabSheet;
    paAnagrafica: TPanel;
    laCodFisc: TLabel;
    laSesso: TLabel;
    laTitolo: TLabel;
    laCognome: TLabel;
    laNome: TLabel;
    laDataDiNasc: TLabel;
    laComuneDiNasc: TLabel;
    laCAPdiNasc: TLabel;
    laNazione: TLabel;
    dbeCodFisc: TDBEdit;
    LookSesso: TDBLookupComboBox;
    dbeCognome: TDBEdit;
    dbeNome: TDBEdit;
    dbeDataDiNascita: TDBEdit;
    dbeComuneDiNascita: TDBEdit;
    bbLookComuneDiNascita: TBitBtn;
    edComuneDiNascita: TEdit;
    edCAPdiNascita: TEdit;
    bbLookCAPdiNascita: TBitBtn;
    edNazione: TEdit;
    dbeNazione: TDBEdit;
    bbLookNazione: TBitBtn;
    dbeTitolo: TDBEdit;
    edTitolo: TEdit;
    bbLookTitolo: TBitBtn;
    tabs2: TTabSheet;
    paIndirizzo: TPanel;
    laIndA1: TLabel;
    laComuneA1: TLabel;
    laTel1A1: TLabel;
    laTel2A1: TLabel;
    laCAPA1: TLabel;
    laNazioneA1: TLabel;
    laFaxA1: TLabel;
    laEMailA1: TLabel;
    laInternetA1: TLabel;
    laPartIVA: TLabel;
    laLocal: TLabel;
    dbeIndirizzo_A1: TDBEdit;
    dbeTel1_A1: TDBEdit;
    dbeTel2_A1: TDBEdit;
    dbeFax_A1: TDBEdit;
    dbeEMail_A1: TDBEdit;
    dbeInternet_A1: TDBEdit;
    dbePartIVA: TDBEdit;
    dbeLocalita: TDBEdit;
    dbeNazioneInd: TDBEdit;
    edNazioneInd: TEdit;
    bbLookNazioneInd: TBitBtn;
    tabs3: TTabSheet;
    paContabili: TPanel;
    Label2: TLabel;
    laCAB: TLabel;
    laContoCorr: TLabel;
    laABI: TLabel;
    LookPCNome: TDBLookupComboBox;
    LookPCDescr: TDBLookupComboBox;
    dbeContoCorr: TDBEdit;
    DBCtrlGrid2: TDBCtrlGrid;
    tabs5: TTabSheet;
    paAltriDati: TPanel;
    laMoneta: TLabel;
    LaPagamento: TLabel;
    laConrag: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    laGiorniEscl: TLabel;
    Label1: TLabel;
    LookMoneta: TDBLookupComboBox;
    LookMonetaDescr: TDBLookupComboBox;
    LookPagamDescr: TDBLookupComboBox;
    LookPaganebto: TDBLookupComboBox;
    dbeFido: TDBEdit;
    LookEsclMese1: TDBLookupComboBox;
    LookEsclMese2: TDBLookupComboBox;
    dbeGGscad1: TDBEdit;
    dbeGGScad2: TDBEdit;
    LookCodRagg: TDBLookupComboBox;
    LookCodRagDescr: TDBLookupComboBox;
    tabs4: TTabSheet;
    paAcquisto: TPanel;
    laPorto: TLabel;
    laZona: TLabel;
    laPiu: TLabel;
    laSconto: TLabel;
    laSottozona: TLabel;
    LookPorto: TDBLookupComboBox;
    LookPortoDescr: TDBLookupComboBox;
    LookZone: TDBLookupComboBox;
    LookZoneDescr: TDBLookupComboBox;
    LookSottoZoneDescr: TDBLookupComboBox;
    LookSottoZone: TDBLookupComboBox;
    dbeSconto2: TDBEdit;
    dbeSconto1: TDBEdit;
    dsoFornitori: TDataSource;
    dsoSesso: TDataSource;
    dsoComuni: TDataSource;
    dsoNazioni: TDataSource;
    dsoPianoConti: TDataSource;
    dsoCAB: TDataSource;
    dsoABI: TDataSource;
    dsoListini: TDataSource;
    dsoCatCli: TDataSource;
    dsoPorto: TDataSource;
    dsoAgente: TDataSource;
    dsoProvvigione: TDataSource;
    dsoSottoZone: TDataSource;
    dsoZone: TDataSource;
    dsoTipo_titolo: TDataSource;
    dsoEsenzione: TDataSource;
    dsoAltreSedi: TDataSource;
    dsoMesi: TDataSource;
    dsoRaggrupCliFor: TDataSource;
    dsoPagamenti: TDataSource;
    dsoMonete: TDataSource;
    dbeComune: TDBEdit;
    edComune: TEdit;
    bbLookComune: TBitBtn;
    edCAP: TEdit;
    bbLookCAP: TBitBtn;
    dsoPersAz: TDataSource;
    Label3: TLabel;
    edPr: TEdit;
    bbLookPr: TBitBtn;
    laProvvigione: TLabel;
    dbeProvvigione: TDBEdit;
    dbeTitolo_descr: TDBEdit;
    dbeComnasc_descr: TDBEdit;
    dbecapnasc_descr: TDBEdit;
    dbeNaznasc_descr: TDBEdit;
    dbecom_descr: TDBEdit;
    dbecap_descr: TDBEdit;
    dbepr_descr: TDBEdit;
    dbenaz_descr: TDBEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tbtnPrn: TToolButton;
    ToolButton2: TToolButton;
    mmForn: TMainMenu;
    File1: TMenuItem;
    miForn_In_PianoConti: TMenuItem;
    DBCheckBox1: TDBCheckBox;
    Label16: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    laAgente: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    IBQuery3: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    SmallintField1: TSmallintField;
    IntegerField1: TIntegerField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IntegerField2: TIntegerField;
    DataSource3: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    DBMemo1: TDBMemo;
    IBQuery5: TIBQuery;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery4: TIBQuery;
    TabSheet1: TTabSheet;
    paAltriSedi: TPanel;
    dbcgAltreSedi: TDBCtrlGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    dbnSediAltri: TDBNavigator;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure dbeTitoloChange(Sender: TObject);
    procedure edTitoloExit(Sender: TObject);
    procedure bbLookTitoloClick(Sender: TObject);
    procedure dbeComuneDiNascitaChange(Sender: TObject);
    procedure bbLookComuneDiNascitaClick(Sender: TObject);
    procedure bbLookCAPdiNascitaClick(Sender: TObject);
    procedure bbLookNazioneClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edComuneExit(Sender: TObject);
    procedure bbLookComuneClick(Sender: TObject);
    procedure edCAPExit(Sender: TObject);
    procedure bbLookCAPClick(Sender: TObject);
    procedure LookSottoZoneCloseUp(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure edPrExit(Sender: TObject);
    procedure bbLookPrClick(Sender: TObject);
    procedure bbLookNazioneIndClick(Sender: TObject);
    procedure edNazioneIndExit(Sender: TObject);
    procedure dbeNazioneIndChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeDenomExit(Sender: TObject);
    procedure dbeDenom2Exit(Sender: TObject);
    procedure tbtnPrnClick(Sender: TObject);
    procedure miForn_In_PianoContiClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure dbeCodiceChange(Sender: TObject);
    procedure dbePartIVAExit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton3Click(Sender: TObject);
    procedure dsoAltreSediUpdateData(Sender: TObject);
   private
    boolNuovo: Boolean;
    Procedure setMode(bStMod: Boolean);
    Procedure Inserire_In_PianoConti;
    Procedure Apri;
   public
  end;

var
  fForn: TfForn;

implementation

uses uAzDM, uRicercaVeloce, uPrnForm;

{$R *.DFM}

{ TfForn }

procedure TfForn.setMode(bStMod: Boolean);
begin
 paView.Enabled:=bStMod;
 paAnagrafica.Enabled:=bStMod;
 paIndirizzo.Enabled:=bStMod;
 paContabili.Enabled:=bStMod;
 paAltriDati.Enabled:=bStMod;
 paAcquisto.Enabled:=bStMod;
 paAltriSedi.Enabled:=bStMod;
end;

procedure TfForn.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 setMode(True);
 pctrlDatiForn.ActivePage:=tabs2;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeDenom.SetFocus;
 dsoFornitori.DataSet.Insert;

 boolNuovo:=True;
 dsoFornitori.DataSet.FieldByName('ACCORPA_ARTICOLI').AsInteger:=0;
 dsoFornitori.DataSet.FieldByName('TIPO').AsInteger:=2;

 LookPCNome.Field.Value:=dsoPersAz.DataSet.FieldByName('CONTO_FORNITORE').Value;
 dsoFornitori.DataSet.fieldByName('FASON').asString:='N'
end;

procedure TfForn.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 setMode(True);
 pctrlDatiForn.ActivePage:=tabs2;
 if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeDenom.SetFocus;
 dsoFornitori.DataSet.Edit;
 boolNuovo:=False;
end;

procedure TfForn.tbtnSalvaClick(Sender: TObject);
var
int_id : integer;
begin
 If (dsoFornitori.DataSet.FieldByName('CONTROPARTITA_ID').AsString='')
  Then Begin
         application.messagebox('Impossibile procedere! La Contropartita non è scelta.','Attendere',
                                MB_OK+MB_ICONEXCLAMATION);
         Exit;
       End;
  inherited;
 setMode(False);
int_id := dsoFornitori.DataSet.FieldByName('ID_CLI_FOR').AsInteger;
 dsoFornitori.DataSet.FieldByName('ABI_ID').AsString:=
    RxDBLookupCombo3.Text;
 dsoFornitori.DataSet.FieldByName('ABI_DESCR').AsString:=
    RxDBLookupCombo4.Text;
 dsoFornitori.DataSet.FieldByName('CAB_DESCR').AsString:=
    RxDBLookupCombo2.Text;
 dsoFornitori.DataSet.FieldByName('CAB_ID').AsString:=
    RxDBLookupCombo1.Text;

try
 begin
 dsoFornitori.DataSet.Post;
 If ( boolNuovo)
    Then Inserire_In_PianoConti;
if not ( boolNuovo) then
begin
with IBQuery5 do begin
Close;
sql.Clear;
SQL.Add('select * from tab_piano_conti');
SQL.Add('where tipo='+inttostr(int_id));
Open;
end;
if IBQuery5.IsEmpty then Inserire_In_PianoConti;
end;
    
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
Apri;
 boolNuovo:=False;
end;

procedure TfForn.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
If (MessageDlg('Annullare ?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;

 dsoFornitori.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 setMode(False);
 Apri;
 boolNuovo:=False;
end;

procedure TfForn.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 If (Application.messagebox('Eliminare?','attenzione',mb_yesno+mb_iconhand)=id_no)
    Then Exit;

 setMode(False);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
try
 begin
 dsoFornitori.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
 dmodAz.ibtrDef.Rollback;
end;
 inherited;
 Apri;
 boolNuovo:=False;
end;

procedure TfForn.dbeTitoloChange(Sender: TObject);
begin
{  inherited;
 // Fill edit with corr value!
 If (dbeTitolo.DataSource.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='TAB_TIPO_TITOLO';
         strCampoWhere:='CODICE';
         //         strCampo2:='DESCR';
         intRichieste:=1;
         strResCampoCodice:='CODICE';
         strValore:=dbeTitolo.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edTitolo.Text:=VarToStr(vaResValore);
         // Destroy
         Free;
        End;
       End;
  }
end;

procedure TfForn.edTitoloExit(Sender: TObject);
begin
  inherited;
 If Not(edTitolo.Text='')
  Then bbLookTitolo.Click;
end;

procedure TfForn.bbLookTitoloClick(Sender: TObject);
begin
//  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='TAB_TIPO_TITOLO';
   strCampoWhere:='DESCR';
   //   strCampo2:='DESCR';
   intRichieste:=1;
   strResCampoCodice:='CODICE';
   strValore:=dbeTitolo_descr.Field.AsString;// olodedTitolo.Text;
  // Show
  ShowModal;
  // Get vals
  dbeTitolo_descr.Field.AsString:=VarToStr(vaResValore);
  // old   edTitolo.Text:=VarToStr(vaResValore);
  dbeTitolo.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfForn.dbeComuneDiNascitaChange(Sender: TObject);
begin
{  inherited;
 // Fill edit with corr value!
 If (dsoFornitori.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='V_COMUNI';
         strCampoWhere:='ID';
         strCampo2:='CAP';
         strResCampoCodice:='COMUNI';
         intRichieste:=2;
         strValore:=dbeComuneDiNascita.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edCAPdiNascita.Text:=VarToStr(vaResValore2);
         edComuneDiNascita.Text:=VarToStr(vaResCodice);
         // Destroy
         Free;
        End;
       End;}
end;

procedure TfForn.bbLookComuneDiNascitaClick(Sender: TObject);
begin
  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='COMUNI';
   strCampo2:='CAP';
   intRichieste:=2;
   strResCampoCodice:='ID';
   strValore:=dbeComnasc_descr.Field.AsString;
  // Show
  ShowModal;
  // Get vals
  dbeComnasc_descr.Field.AsString:=VarToStr(vaResValore);
  dbeComuneDiNascita.Field.AsVariant:=vaResCodice;
  dbecapnasc_descr.Field.AsString:=VarToStr(vaResValore2);
{  edComuneDiNascita.Text:=VarToStr(vaResValore);
  dbeComuneDiNascita.Field.AsVariant:=vaResCodice;
  edCAPdiNascita.Text:=VarToStr(vaResValore2);
}  // Destroy
  Free;
 End;
end;

procedure TfForn.bbLookCAPdiNascitaClick(Sender: TObject);
begin
//  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='CAP';
   strCampo2:='COMUNI';
   intRichieste:=2;
   strResCampoCodice:='ID';
   strValore:=dbecapnasc_descr.field.asstring;//edCAPdiNascita.Text;
  // Show
  ShowModal;
  // Get vals
  dbecapnasc_descr.Field.AsString:=VarToStr(vaResValore);
  dbeComnasc_descr.Field.AsString:=VarToStr(vaResValore2);
  dbeComuneDiNascita.Field.AsVariant:=vaResCodice;


  Free;
 End;
end;

procedure TfForn.bbLookNazioneClick(Sender: TObject);
begin
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_NAZIONI';
   strCampoWhere:='NAZIONE';
   //   strCampo2:='ISO';
   intRichieste:=1;
   strResCampoCodice:='ID';
   strValore:=dbeNaznasc_descr.field.asstring;  // ;;edNazione.Text;
  // Show
  ShowModal;
  // Get vals
  dbeNaznasc_descr.field.asstring:=VarToStr(vaResValore);
  // old edNazione.Text:=VarToStr(vaResValore);
  dbeNazione.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfForn.FormActivate(Sender: TObject);
begin
  inherited;
 pctrlDatiForn.ActivePage:=tabs2;
end;

procedure TfForn.edComuneExit(Sender: TObject);
begin
  inherited;
 If Not(edComune.Text='')
  Then bbLookComune.Click;
end;

procedure TfForn.bbLookComuneClick(Sender: TObject);
begin
  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='COMUNI';
   strCampo2:='CAP';
   strCampo3:='PROVINCE';
   intRichieste:=3;
   strResCampoCodice:='ID';
   strValore:=dbecom_descr.field.asstring;  //edComune.Text;
  // Show
  ShowModal;
  // Get vals
  dbecom_descr.Field.AsString:=VarToStr(vaResValore);
  dbeComune.Field.AsVariant:=vaResCodice;
  dbecap_descr.Field.AsString:=VarToStr(vaResValore2);
  dbepr_descr.Field.AsString:=VarToStr(vaResValore3);
{  edComune.Text:=VarToStr(vaResValore);
  dbeComune.Field.AsVariant:=vaResCodice;
  edCAP.Text:=VarToStr(vaResValore2);
  edPr.Text:=VarToStr(vaResValore3);
}  // Destroy
  Free;
 End;
end;

procedure TfForn.edCAPExit(Sender: TObject);
begin
  inherited;
 If Not(edCAP.Text='')
  Then bbLookCAP.Click;
end;

procedure TfForn.bbLookCAPClick(Sender: TObject);
begin
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='CAP';
   strCampo2:='COMUNI';
   strCampo3:='PROVINCE';
   intRichieste:=3;
   strResCampoCodice:='ID';
   strValore:=dbecap_descr.Field.AsString;// old  edCAP.Text;
  // Show
  ShowModal;
  // Get vals
  dbecap_descr.Field.AsString:=VarToStr(vaResValore);
  dbepr_descr.Field.AsString:=VarToStr(vaResValore3);
  dbecom_descr.Field.AsString:=VarToStr(vaResValore2);
  dbeComune.Field.AsVariant:=vaResCodice;

{  edCAP.Text:=VarToStr(vaResValore);
  edPr.Text:=VarToStr(vaResValore3);
  edComune.Text:=VarToStr(vaResValore2);
  dbeComune.Field.AsVariant:=vaResCodice;
}  // Destroy
  Free;
 End;
end;

procedure TfForn.LookSottoZoneCloseUp(Sender: TObject);
begin
  inherited;
 // set also Zone
 LookZone.DataSource.DataSet.FieldByName('CODICE_ZONA_id').AsString:=
       LookSottoZone.ListSource.DataSet.FieldByName('CODICE_ZONA_id').AsString;
end;

procedure TfForn.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoFornitori.DataSet.Prior;
end;

procedure TfForn.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoFornitori.DataSet.Next;
end;

procedure TfForn.edPrExit(Sender: TObject);
begin
  inherited;
 If Not(edPr.Text='')
  Then bbLookPr.Click;
end;

procedure TfForn.bbLookPrClick(Sender: TObject);
begin
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='PROVINCE';
   strCampo2:='COMUNI';
   strCampo3:='CAP';
   intRichieste:=3;
   strResCampoCodice:='ID';
   strValore:=dbepr_descr.Field.AsString;
  // Show
  ShowModal;
  // Get vals
  dbepr_descr.field.AsString:=VarToStr(vaResValore);
  dbecap_descr.Field.AsString:=VarToStr(vaResValore3);
  dbecom_descr.Field.AsString:=VarToStr(vaResValore2);
  dbeComune.Field.AsVariant:=vaResCodice;

  Free;
 End;
end;

procedure TfForn.bbLookNazioneIndClick(Sender: TObject);
begin
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_NAZIONI';
   strCampoWhere:='NAZIONE';
   //   strCampo2:='ISO';
   strResCampoCodice:='ID';
   intRichieste:=1;
   strValore:=dbenaz_descr.Field.AsString;// edNazioneInd.Text;
  // Show
  ShowModal;
  // Get vals
  // y     edNazioneInd.Text:=VarToStr(vaResValore);
  dbenaz_descr.Field.AsString:=VarToStr(vaResValore);
  dbeNazioneInd.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfForn.edNazioneIndExit(Sender: TObject);
begin
  inherited;
 If Not(edNazioneInd.Text='')
  Then bbLookNazioneInd.Click;
end;

procedure TfForn.dbeNazioneIndChange(Sender: TObject);
begin
{ // Fill edit with corr value!
 If (dbeNazioneInd.DataSource.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='V_NAZIONI';
         strCampoWhere:='ID';
         //      strCampo2:='NAZIONE';
         intRichieste:=1;
         strResCampoCodice:='ID';
         strValore:=dbeNazioneInd.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edNazioneInd.Text:=VarToStr(vaResValore);
         // Destroy
         Free;
        End;
       End;
       }
       end;

procedure TfForn.FormShow(Sender: TObject);
begin
  inherited;
 pctrlDatiForn.ActivePage:=tabs2;
dmodAz.ibqAltreSedi.Open;
end;

procedure TfForn.dbeDenomExit(Sender: TObject);
begin
  inherited;
 If (dsoFornitori.DataSet.State in [dsInsert])
  Then With (dmodAz.ibqRicerca) Do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT DENOMINAZIONE FROM TAB_CLI_FOR');
         SQL.Add('WHERE DENOMINAZIONE Like '''+dbeDenom.Field.AsString+'''');
         Open;
         If Not(IsEmpty)
           Then Application.MessageBox('Denominazione già esistentente!','Attendere',MB_OK);
         Close;
       End;
end;

procedure TfForn.dbeDenom2Exit(Sender: TObject);
begin
  inherited;
 If (dsoFornitori.DataSet.State in [dsInsert])
  Then With (dmodAz.ibqRicerca) Do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT DENOMINAZIONE2 FROM TAB_CLI_FOR');
         SQL.Add('WHERE DENOMINAZIONE2 Like '''+dbeDenom2.Field.AsString+'''');
         Open;
         If Not(IsEmpty)
           Then Application.MessageBox('Denominazione già esistente!','Attendere',MB_OK);
         Close;
       End;
end;

procedure TfForn.tbtnPrnClick(Sender: TObject);
begin
 With (dmodAz) Do
 Begin
  ibqRicerca.Close;
  ibqRicerca.SQL.Clear;
  ibqRicerca.SQL.Add('SELECT * FROM TAB_CLI_FOR ');
  ibqRicerca.SQL.Add('where ID_CLI_FOR = '+ibqTab_ForID_CLI_FOR.AsString);
  ibqRicerca.Open;
 End;


  With (dmodAz.rePRN) Do
  Begin
   LoadFromFile(ExtractFilePath(Application.ExeName)+'frFornCard.frf');
   If (PrepareReport)
    Then ShowReport;
 End;
 dmodAz.ibqRicerca.Close;
end;

procedure TfForn.Inserire_In_PianoConti;
Var
 iPK_CliFor,iID_PianoConti: Integer;
 iIndeducibile,iNatura,iVarFisc,iCapoConto: Integer;
 strGruppo,strConto,strSottoConto: String;
 iSottoConto: Integer;
begin
 iPK_CliFor:=dsoFornitori.DataSet.FieldByName('ID_CLI_FOR').AsInteger;

 If (dsoPianoConti.DataSet.Locate('TIPO',iPK_CliFor,[]))
   Then Begin
          //Silent Exit! 
          Exit;
        End;

 strGruppo:='La Contropartita non è scelta.'+#13+'Codice Fornitore: '+IntToStr(iPK_CliFor);
 If (dsoFornitori.DataSet.FieldByName('CONTROPARTITA_ID').AsString='')
  Then Begin
         application.messagebox(PChar(strGruppo),'Attendere',MB_OK+MB_ICONEXCLAMATION);
         Exit;
       End;

  iID_PianoConti:=dsoFornitori.DataSet.FieldByName('CONTROPARTITA_ID').AsInteger;
  dsoPianoConti.DataSet.Locate('ID_Piano_Conto',iID_PianoConti,[]);
  strGruppo:=dsoPianoConti.DataSet.FieldByName('GRUPPO').AsString;
  strConto:=dsoPianoConti.DataSet.FieldByName('CONTO').AsString;

  iIndeducibile:=dsoPianoConti.DataSet.FieldByName('INDEDUCIBILE').AsInteger;
  iNatura:=dsoPianoConti.DataSet.FieldByName('NATURA').AsInteger;
  iVarFisc:=dsoPianoConti.DataSet.FieldByName('VARIAZIONE_FISCALE').AsInteger;
  iCapoConto:=dsoPianoConti.DataSet.FieldByName('CAPO_CONTO_CLI_FOR').AsInteger;
 

  With (dmodAz) Do
  Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('SELECT * FROM TAB_PIANO_CONTI');
   ibqRicerca.SQL.Add('WHERE GRUPPO LIKE '''+strGruppo+'''');
   ibqRicerca.SQL.Add('AND CONTO LIKE '''+strConto+'''');
   ibqRicerca.SQL.Add('Order By SOTTOCONTO');
   ibqRicerca.Open;
   ibqRicerca.Last;
   strSottoConto:=ibqRicerca.FieldByName('SOTTOCONTO').AsString;
   ibqRicerca.Close;
  End;

   iSottoConto:=StrToInt(strSottoConto);
   Inc(iSottoConto);
   strSottoConto:=IntToStr(iSottoConto);
   While (Length(strSottoConto)<5) Do
      strSottoConto:='0'+strSottoConto;

 // Inserimento
 With (dsoPianoConti.DataSet) Do
 Begin
   Insert;
   // Get the next ID for PC!
   dmodAz.ibSP_New_ID_Piano_Conti.Prepare;
   dmodAz.ibSP_New_ID_Piano_Conti.ExecProc;
   FieldByName('ID_Piano_Conto').AsInteger:=
       dmodAz.ibSP_New_ID_Piano_Conti.Params[0].AsInteger;

   FieldByName('GRUPPO').AsString := strGruppo;
   FieldByName('CONTO').AsString := strConto;
   FieldByName('SOTTOCONTO').AsString := strSottoConto;
   FieldByName('TIPO').Asinteger := iPK_CliFor; // ID_Cli_For
   FieldByName('DESCR').AsString :=
       dsoFornitori.DataSet.FieldByName('DENOMINAZIONE').AsString;
   // da quale conto parte -->
   FieldByName('CONTO_PERSONALIZZATO_ID').AsInteger := iID_PianoConti;
   // portiamo dal capoconto
   FieldByName('INDEDUCIBILE').AsInteger:=iIndeducibile;
   FieldByName('NATURA').AsInteger:=iNatura;
   FieldByName('VARIAZIONE_FISCALE').AsInteger:=iVarFisc;
   FieldByName('CAPO_CONTO_CLI_FOR').AsInteger:=iCapoConto;

   Post;
 End;

end;

procedure TfForn.miForn_In_PianoContiClick(Sender: TObject);
begin
// Ciclo !
 dsoFornitori.DataSet.First;
 While not(dsoFornitori.DataSet.EoF) Do
 Begin
  Inserire_In_PianoConti;
  dsoFornitori.DataSet.Next;
 End;
end;

procedure TfForn.RxDBLookupCombo1Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo2.KeyValue :=RxDBLookupCombo1.KeyValue; 
end;

procedure TfForn.RxDBLookupCombo3Change(Sender: TObject);
begin
  inherited;
  RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfForn.RxDBLookupCombo4Change(Sender: TObject);
begin
  inherited;
  RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfForn.RxDBLookupCombo2Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo1.KeyValue :=RxDBLookupCombo2.KeyValue;
end;

procedure TfForn.Apri;
begin
 dsoFornitori.DataSet.Open;
 dsoPianoConti.DataSet.Open;
 dsoABI.DataSet.Open;
 dsoCAB.DataSet.Open;
 dsoPagamenti.DataSet.Open;
 dsoPorto.DataSet.Open;
 dsoComuni.DataSet.Open;
 dsoZone.DataSet.Open;
 dsoSottoZone.DataSet.Open;
 dsoPersAz.DataSet.Open;
 DataSource3.DataSet.Open;
 dsoRaggrupCliFor.DataSet.Open;
  dsoAltreSedi.DataSet.Open;
end;

procedure TfForn.dbeCodiceChange(Sender: TObject);
begin
DBLookupComboBox1.KeyValue := dbeCodice.Text;
DBLookupComboBox2.KeyValue := dbeCodice.Text;
end;

procedure TfForn.dbePartIVAExit(Sender: TObject);
begin
 If (dsoFornitori.DataSet.State in [dsInsert])
  Then With (dmodAz.ibqRicerca) Do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT DENOMINAZIONE FROM TAB_CLI_FOR');
         SQL.Add('WHERE PARTITA_IVA Like '''+dbePartIVA.Field.AsString+'''');
         Open;
         If Not(IsEmpty)
           Then Application.MessageBox('Partita Iva già esistente!','Attendere',MB_OK);
         Close;
       End;

end;

procedure TfForn.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dsoFornitori.DataSet.Locate('DENOMINAZIONE',Edit1.Text,[loCaseInsensitive, loPartialKey]);

end;

procedure TfForn.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dsoFornitori.DataSet.Locate('PARTITA_IVA',Edit1.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TfForn.ToolButton3Click(Sender: TObject);
var
D1,D2:string;
begin
  inherited;
 If (Application.messagebox('Eliminare documenti e contabilita del fornitore selezionato?','attenzione',mb_yesno+mb_iconhand)=id_no)
    Then Exit;

 setMode(False);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
try
 begin
D1:= InputBox('Data Inizio','Data', '');
D2:= InputBox('Data Fine','Data', '');

IBQuery1.Close;
IBQuery1.ParamByName('clifor').AsInteger := dbecodice.Field.Value;
IBQuery1.ParamByName('DaData').AsDate:=strToDate(D1);
IBQuery1.ParamByName('AData').AsDate:=strToDate(D2);
IBQuery1.Open;

IBQuery2.Close;
IBQuery2.ParamByName('clifor').AsInteger := dbecodice.Field.Value;
IBQuery2.ParamByName('DaData').AsDate:=strToDate(D1);
IBQuery2.ParamByName('AData').AsDate:=strToDate(D2);
IBQuery2.Open;

IBQuery4.Close;
IBQuery4.ParamByName('clifor').AsInteger := dbecodice.Field.Value;
IBQuery4.ParamByName('DaData').AsDate:=strToDate(D1);
IBQuery4.ParamByName('AData').AsDate:=strToDate(D2);
IBQuery4.Open;

 dmodAz.ibtrDef.Commit;
end
except
 dmodAz.ibtrDef.Rollback;
end;
 inherited;
 Apri;
 boolNuovo:=False;

end;

procedure TfForn.dsoAltreSediUpdateData(Sender: TObject);
begin

dsoAltreSedi.DataSet.FieldByName('CLI_FOR_ID').AsInteger :=
 StrToInt(dbeCodice.Text);
end;

END.

