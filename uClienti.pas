unit uClienti;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, DBCtrls, ExtCtrls, DBCGrids, Mask, ComCtrls,
  ToolWin, Buttons, RxLookup, Menus, IBCustomDataSet, IBQuery, DBIndex,
  Grids, DBGrids, RXDBCtrl, Variants;


  type
  TfClienti = class(TfBaseForm3)
    paDati: TPanel;
    pctrlDatiClienti: TPageControl;
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
    tabs3: TTabSheet;
    paContabili: TPanel;
    Label2: TLabel;
    laCAB: TLabel;
    laContoCorr: TLabel;
    laABI: TLabel;
    LookPCNome: TDBLookupComboBox;
    LookPCDescr: TDBLookupComboBox;
    dbeContoCorr: TDBEdit;
    tabs4: TTabSheet;
    paVendita: TPanel;
    laListino: TLabel;
    laCat: TLabel;
    laAgente: TLabel;
    laProvvigione: TLabel;
    laSconto: TLabel;
    laZona: TLabel;
    laSottozona: TLabel;
    laPorto: TLabel;
    laPiu: TLabel;
    dbeSconto1: TDBEdit;
    dbeSconto2: TDBEdit;
    tabs5: TTabSheet;
    paAltriDati: TPanel;
    laMoneta: TLabel;
    LaPagamento: TLabel;
    laConrag: TLabel;
    Label6: TLabel;
    laRischio: TLabel;
    Label9: TLabel;
    laGiorniEscl: TLabel;
    LookMoneta: TDBLookupComboBox;
    LookMonetaDescr: TDBLookupComboBox;
    LookPagamDescr: TDBLookupComboBox;
    LookPaganebto: TDBLookupComboBox;
    dbeFido: TDBEdit;
    dbeRischio: TDBEdit;
    LookEsclMese1: TDBLookupComboBox;
    LookEsclMese2: TDBLookupComboBox;
    dbeGGscad1: TDBEdit;
    dbeGGScad2: TDBEdit;
    LookCodRagg: TDBLookupComboBox;
    LookCodRagDescr: TDBLookupComboBox;
    tabs6: TTabSheet;
    paAltriSedi: TPanel;
    dbcgAltreSedi: TDBCtrlGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dbnSediAltri: TDBNavigator;
    tabs7: TTabSheet;
    paFatturazione: TPanel;
    laIvaEsen: TLabel;
    Label18: TLabel;
    gbPosRif: TGroupBox;
    dbragPosRif: TDBRadioGroup;
    gbDescrSu: TGroupBox;
    laFattDiff: TLabel;
    laFattImm: TLabel;
    laDDT: TLabel;
    laOrdini: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    dbcbAccotpArt: TDBCheckBox;
    dbcbFattRiepil: TDBCheckBox;
    dsoClienti: TDataSource;
    dsoComuni: TDataSource;
    dsoSesso: TDataSource;
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
    dsoMonete: TDataSource;
    Label1: TLabel;
    dsoPagamenti: TDataSource;
    dsoRaggrupCliFor: TDataSource;
    dsoMesi: TDataSource;
    dsoEsenzione: TDataSource;
    dsoAltreSedi: TDataSource;
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDenom: TLabel;
    laDenom2: TLabel;
    dbeDenom2: TDBEdit;
    dbeDenom: TDBEdit;
    dsoTipo_titolo: TDataSource;
    dbeComuneDiNascita: TDBEdit;
    bbLookComuneDiNascita: TBitBtn;
    edComuneDiNascita: TEdit;
    edCAPdiNascita: TEdit;
    bbLookCAPdiNascita: TBitBtn;
    edNazione: TEdit;
    dbeNazione: TDBEdit;
    bbLookNazione: TBitBtn;
    dbeNazioneInd: TDBEdit;
    edNazioneInd: TEdit;
    bbLookNazioneInd: TBitBtn;
    dbeTitolo: TDBEdit;
    edTitolo: TEdit;
    bbLookTitolo: TBitBtn;
    tbtnPrn: TToolButton;
    dbeComune: TDBEdit;
    edComune: TEdit;
    bbLookComune: TBitBtn;
    edCAP: TEdit;
    bbLookCAP: TBitBtn;
    dsoPersAz: TDataSource;
    Label7: TLabel;
    edPr: TEdit;
    bbLookPr: TBitBtn;
    bbLookCABDescr: TBitBtn;
    bbLookABIDescr: TBitBtn;
    dso_1temp: TDataSource;
    dbeTitolo_descr: TDBEdit;
    dbeComNasc_descr: TDBEdit;
    dbecapnasc_descr: TDBEdit;
    dbeNazNasc_descr: TDBEdit;
    dbecom_descr: TDBEdit;
    dbeCap_descr: TDBEdit;
    dbePR_descr: TDBEdit;
    dbeNaz_descr: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    mmCli: TMainMenu;
    File1: TMenuItem;
    miCli_In_PianoConti: TMenuItem;
    Label8: TLabel;
    Label12: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    IBQuery2: TIBQuery;
    IBQuery2CODICE: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2CODICE_ZONA_ID: TIBStringField;
    IBQuery2CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery2PROVVIGIONE: TFloatField;
    IBQuery2IMPORTO_FISSO: TFloatField;
    IBQuery2TIPO_CLI_FOR: TSmallintField;
    IBQuery2CLI_FOR_ID: TIntegerField;
    IBQuery2TIPO_SOMMA_PRV: TSmallintField;
    IBQuery2TIPO_PROVVIGIONE: TSmallintField;
    IBQuery2TOTALE_FATTURATO: TFloatField;
    IBQuery2TOTALE_PROVVIGIONE: TFloatField;
    IBQuery2CG: TIBStringField;
    IBQuery2CA: TIBStringField;
    IBQuery2TIPO_AG: TIntegerField;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1CODICE_ZONA_ID: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1IMPORTO_FISSO: TFloatField;
    IBQuery1TIPO_CLI_FOR: TSmallintField;
    IBQuery1CLI_FOR_ID: TIntegerField;
    IBQuery1TIPO_SOMMA_PRV: TSmallintField;
    IBQuery1TIPO_PROVVIGIONE: TSmallintField;
    IBQuery1TOTALE_FATTURATO: TFloatField;
    IBQuery1TOTALE_PROVVIGIONE: TFloatField;
    IBQuery1CG: TIBStringField;
    IBQuery1CA: TIBStringField;
    IBQuery1TIPO_AG: TIntegerField;
    DataSource1: TDataSource;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
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
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    RxDBGrid1: TRxDBGrid;
    Label15: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    DataSource4: TDataSource;
    IBQuery4: TIBQuery;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    SmallintField4: TSmallintField;
    IntegerField3: TIntegerField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IntegerField4: TIntegerField;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Label16: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxDBLookupCombo15: TRxDBLookupCombo;
    LookZone: TRxDBLookupCombo;
    LookZoneDescr: TRxDBLookupCombo;
    LookSottoZone: TRxDBLookupCombo;
    dd: TRxDBLookupCombo;
    RxDBLookupCombo20: TRxDBLookupCombo;
    RxDBLookupCombo21: TRxDBLookupCombo;
    RxDBLookupCombo22: TRxDBLookupCombo;
    RxDBLookupCombo23: TRxDBLookupCombo;
    DBCheckBox3: TDBCheckBox;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    RxDBLookupCombo16: TRxDBLookupCombo;
    RxDBLookupCombo17: TRxDBLookupCombo;
    ToolButton3: TToolButton;
    Edit1: TEdit;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    IBQuery5: TIBQuery;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    TabSheet1: TTabSheet;
    DBMemo1: TDBMemo;

    procedure tbtnNuovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure LookSottoZoneCloseUp(Sender: TObject);
    procedure LookCABCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edComuneDiNascitaExit(Sender: TObject);
    procedure bbLookComuneDiNascitaClick(Sender: TObject);
    procedure dbeComuneDiNascitaChange(Sender: TObject);
    procedure bbLookCAPdiNascitaClick(Sender: TObject);
    procedure edCAPdiNascitaExit(Sender: TObject);
    procedure bbLookNazioneClick(Sender: TObject);
    procedure edNazioneExit(Sender: TObject);
    procedure dbeNazioneChange(Sender: TObject);
    procedure dbeNazioneIndChange(Sender: TObject);
    procedure bbLookNazioneIndClick(Sender: TObject);
    procedure edTitoloExit(Sender: TObject);
    procedure bbLookTitoloClick(Sender: TObject);
    procedure dbeTitoloChange(Sender: TObject);
    procedure tbtnPrnClick(Sender: TObject);
    procedure dbeComuneChange(Sender: TObject);
    procedure bbLookComuneClick(Sender: TObject);
    procedure bbLookCAPClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure bbLookPrClick(Sender: TObject);
    procedure dbeCABChange(Sender: TObject);
    procedure dbeABIChange(Sender: TObject);
    procedure bbLookCABDescrClick(Sender: TObject);
    procedure bbLookABIDescrClick(Sender: TObject);
    procedure dbeDenomExit(Sender: TObject);
    procedure dbeDenom2Exit(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure miCli_In_PianoContiClick(Sender: TObject);
    procedure RxDBLookupCombo3CloseUp(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    Function CheckPIVA(Const Codice:string):boolean;

    procedure dbePartIVAExit(Sender: TObject);
    procedure dsoAltreSediUpdateData(Sender: TObject);
    procedure dbeCodiceChange(Sender: TObject);
    procedure ddCloseUp(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure stampeClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure dbeCodFiscExit(Sender: TObject);
  private
    boolNuovo: Boolean;
    Procedure setMode(bStMod: Boolean);
    Procedure Inserire_In_PianoConti;
    Procedure Apri;
  public
    { Public declarations }
  end;

var
  fClienti: TfClienti;

implementation

uses uAzDM, uRicercaVeloce, uPrnForm, uRicercaVeloceAZ, uPrnCustCliFor,
  uVerifCodici;

{$R *.DFM}

Function TfClienti.CheckPIVA(Const Codice:string):boolean;
Var
 c, j, i : integer;
begin
 Result := False;
 if Length(Codice) <> 11 then Exit;
 for i := 1 to Length(Codice) do
  if not (Codice[i] in ['0'..'9']) then Exit;

 j := 0;
 c := 0;
 for i := 1 to 10 do begin
  if Odd(i) then begin
   j := j + Ord(Codice[i]) - 48
  end else begin
   c := 2 * (Ord(Codice[i]) - 48);
   j := j + (c div 10) + (c mod 10);
  end;
 end;

 c := j mod 10;
 if c <> 0 then c := 10 - c;
 if (Codice[11] = Chr(c + 48)) then Result := True;
end; //CheckPIVA


procedure TfClienti.setMode(bStMod: Boolean);
begin
 paView.Enabled:=bStMod;
 paAnagrafica.Enabled:=bStMod;
 paIndirizzo.Enabled:=bStMod;
 paContabili.Enabled:=bStMod;
 paVendita.Enabled:=bStMod;
 paAltriDati.Enabled:=bStMod;
 paAltriSedi.Enabled:=bStMod;
 paFatturazione.Enabled:=bStMod;
end;

procedure TfClienti.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 setMode(True);
 pctrlDatiClienti.ActivePage:=tabs2;
 if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeDenom.SetFocus;
 dsoClienti.DataSet.Insert;
 boolNuovo:=True;
 dsoClienti.DataSet.FieldByName('ACCORPA_ARTICOLI').AsInteger:=0;

 dsoClienti.DataSet.FieldByName('RIP_RIF_ORDINI').AsInteger:=0; // Paese Extra CEE

 dsoClienti.DataSet.FieldByName('TIPO').AsInteger:=1;
 LookPCNome.Field.Value:=dsoPersAz.DataSet.FieldByName('CONTO_CLIENTE').Value;

end;

procedure TfClienti.FormActivate(Sender: TObject);
begin
  inherited;
 pctrlDatiClienti.ActivePage:=tabs2;
end;

procedure TfClienti.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 setMode(True);
 pctrlDatiClienti.ActivePage:=tabs2;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeDenom.SetFocus;
 dsoClienti.DataSet.Edit;
 boolNuovo:=False;
end;

procedure TfClienti.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 If (Application.messagebox('Eliminare?','attenzione',mb_yesno+mb_iconhand)=id_no)
    Then Exit;

 setMode(False);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
try
 begin
 dsoClienti.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
 dmodAz.ibtrDef.Rollback;
end;
 inherited;
 Apri;
 boolNuovo:=False;

end;

procedure TfClienti.tbtnAnullaClick(Sender: TObject);
var
int_id : integer;
begin
  inherited;
  If (MessageDlg('Annullare ?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;

  int_id := dsoClienti.DataSet.FieldByName('ID_CLI_FOR').AsInteger;
 dsoClienti.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 setMode(False);
 Apri;
 dmodAz.ibTab_CAB.Close;
dmodAz.ibTab_CAB.SelectSQL.Clear;
dmodAz.ibTab_CAB.SelectSQL.Add('select * from TAB_CAB');
dmodAz.ibTab_CAB.SelectSQL.Add('order by id_cab,abi_id');
dmodAz.ibTab_CAB.Open;
dsoClienti.DataSet.Locate('ID_CLI_FOR',int_ID,[]);
end;

procedure TfClienti.tbtnSalvaClick(Sender: TObject);
var
int_id : integer;
begin
 If (dsoClienti.DataSet.FieldByName('CONTROPARTITA_ID').AsString='')
  Then Begin
         application.messagebox('Impossibile procedere! La Contropartita non è stata scelta.','Attendere',MB_OK+MB_ICONEXCLAMATION);
         Exit;
       End;
  inherited;
 setMode(False);

int_id := dsoClienti.DataSet.FieldByName('ID_CLI_FOR').AsInteger;

dsoClienti.DataSet.FieldByName('ABI_ID').AsString:=
    RxDBLookupCombo3.Text;
dsoClienti.DataSet.FieldByName('ABI_DESCR').AsString:=
    RxDBLookupCombo4.Text;
dsoClienti.DataSet.FieldByName('CAB_DESCR').AsString:=
    RxDBLookupCombo2.Text;
dsoClienti.DataSet.FieldByName('CAB_ID').AsString:=
     RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('PK_CODICE').AsString;


try
 begin
 dsoClienti.DataSet.Post;
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

dmodAz.ibTab_CAB.Close;
dmodAz.ibTab_CAB.SelectSQL.Clear;
dmodAz.ibTab_CAB.SelectSQL.Add('select * from TAB_CAB');
dmodAz.ibTab_CAB.SelectSQL.Add('order by id_cab,abi_id');
dmodAz.ibTab_CAB.Open;
dsoClienti.DataSet.Locate('ID_CLI_FOR',int_ID,[]);
end;

procedure TfClienti.LookSottoZoneCloseUp(Sender: TObject);
begin
//  inherited;
 // set also Zone
LookZone.KeyValue:=
 LookSottoZone.LookupSource.DataSet.FieldByName('CODICE_ZONA_id').AsString;
LookZoneDescr.KeyValue:=
 LookSottoZone.LookupSource.DataSet.FieldByName('CODICE_ZONA_id').AsString;

end;

procedure TfClienti.LookCABCloseUp(Sender: TObject);
begin
  inherited;
 // set also ABI
// LookABI.DataSource.DataSet.FieldByName('ABI_ID').AsString:=       LookCAB.ListSource.DataSet.FieldByName('ABI_ID').AsString;
end;

procedure TfClienti.FormShow(Sender: TObject);
begin
  inherited;
dmodAz.ibqAltreSedi.Open;
dmodAz.ibTab_CAB.Open;
IBQuery1.Close;
IBQuery2.Close;
IBQuery1.Open;
IBQuery2.Open;
IBQuery4.Close;
IBQuery4.Open;
pctrlDatiClienti.ActivePage:=tabs2;
end;

procedure TfClienti.edComuneDiNascitaExit(Sender: TObject);
begin
{  inherited;
 If Not(edComuneDiNascita.Text='')
  Then bbLookComuneDiNascita.Click;}
end;

procedure TfClienti.bbLookComuneDiNascitaClick(Sender: TObject);
begin
//  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='COMUNI';
   strCampo2:='CAP';
   intRichieste:=2;
   strResCampoCodice:='ID';
   strValore:=dbeComNasc_descr.field.AsString;//edComuneDiNascita.Text;
  // Show
  ShowModal;
  // Get vals
  dbeComNasc_descr.field.AsString:=VarToStr(vaResValore);
  // old edComuneDiNascita.Text:=VarToStr(vaResValore);
  dbeComuneDiNascita.Field.AsVariant:=vaResCodice;
  dbecapnasc_descr.Field.AsString:=VarToStr(vaResValore2);
 // old edCAPdiNascita.Text:=VarToStr(vaResValore2);
  // Destroy
  Free;
 End;
end;

procedure TfClienti.dbeComuneDiNascitaChange(Sender: TObject);
begin
  inherited;
{ // Fill edit with corr value!
 If (dsoClienti.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='V_COMUNI';
         strCampoWhere:='ID';
         strCampo2:='CAP';
         intRichieste:=2;
         strResCampoCodice:='COMUNI';
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

procedure TfClienti.bbLookCAPdiNascitaClick(Sender: TObject);
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
   strValore:=dbecapnasc_descr.Field.AsString;//old edCAPdiNascita.Text;
  // Show
  ShowModal;
  // Get vals
  dbecapnasc_descr.Field.AsString:=VarToStr(vaResValore);
  // old edCAPdiNascita.Text:=VarToStr(vaResValore);
  dbeComNasc_descr.Field.AsString:=VarToStr(vaResValore2);
  // oldedComuneDiNascita.Text:=VarToStr(vaResValore2);
  dbeComuneDiNascita.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfClienti.edCAPdiNascitaExit(Sender: TObject);
begin
  inherited;
 If Not(edCAPDiNascita.Text='')
  Then bbLookCAPdiNascita.Click;
end;

procedure TfClienti.bbLookNazioneClick(Sender: TObject);
begin
  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_NAZIONI';
   strCampoWhere:='NAZIONE';
   //   strCampo2:='ISO';
   intRichieste:=1;
   strResCampoCodice:='ID';
   strValore:=dbeNazNasc_descr.Field.AsString ;// oldedNazione.Text;
  // Show
  ShowModal;
  // Get vals
  dbeNazNasc_descr.Field.AsString:=VarToStr(vaResValore);
  // old edNazione.Text:=VarToStr(vaResValore);
  dbeNazione.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfClienti.edNazioneExit(Sender: TObject);
begin
  inherited;
 If Not(edNazione.Text='')
  Then bbLookNazione.Click;
end;

procedure TfClienti.dbeNazioneChange(Sender: TObject);
begin
{  inherited;
 // Fill edit with corr value!
 If (dbeNazione.DataSource.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='V_NAZIONI';
         strCampoWhere:='ID';
         //         strCampo2:='NAZIONE';
         intRichieste:=1;
         strResCampoCodice:='ID';
         strValore:=dbeNazione.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edNazione.Text:=VarToStr(vaResValore);
         // Destroy
         Free;
        End;
       End;}
end;

procedure TfClienti.dbeNazioneIndChange(Sender: TObject);
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

procedure TfClienti.bbLookNazioneIndClick(Sender: TObject);
begin
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_NAZIONI';
   strCampoWhere:='NAZIONE';
   //   strCampo2:='ISO';
   strResCampoCodice:='ID';
   intRichieste:=1;
   strValore:=edNazioneInd.Text;
  // Show
  ShowModal;
  // Get vals
  // old  edNazioneInd.Text:=VarToStr(vaResValore);
  dbeNaz_descr.Field.AsString:=VarToStr(vaResValore);
  dbeNazioneInd.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfClienti.edTitoloExit(Sender: TObject);
begin
  inherited;
 If Not(edTitolo.Text='')
  Then bbLookTitolo.Click;
end;

procedure TfClienti.bbLookTitoloClick(Sender: TObject);
begin
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='TAB_TIPO_TITOLO';
   strCampoWhere:='DESCr';
   //   strCampo2:='DESCR';
   intRichieste:=1;
   strResCampoCodice:='CODICE';
   strValore:=dbeTitolo_descr.field.AsString;//edTitolo.Text;
  // Show
  ShowModal;
  // Get vals
  dbeTitolo_descr.field.AsString:=VarToStr(vaResValore);
  // old edTitolo.Text:=VarToStr(vaResValore);
  dbeTitolo.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfClienti.dbeTitoloChange(Sender: TObject);
begin
  inherited;
 // Fill edit with corr value!
{ If (dbeTitolo.DataSource.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='TAB_TIPO_TITOLO';
         strCampoWhere:='CODICE';
         //  strCampo2:='DESCR';
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
       End;}
end;

procedure TfClienti.tbtnPrnClick(Sender: TObject);
begin
  inherited;
 With (dmodAz) Do
 Begin
  ibqRicerca.Close;
  ibqRicerca.SQL.Clear;
  ibqRicerca.SQL.Add('SELECT * FROM TAB_CLI_FOR');
  ibqRicerca.SQL.Add('join tab_pagamenti');
  ibqRicerca.SQL.Add('on tab_cli_for.PAGAMENTO_ID = tab_pagamenti.id_Pagamento');
  ibqRicerca.SQL.Add('join tab_CAB');
  ibqRicerca.SQL.Add('on tab_cli_for.CAB_ID = tab_cab.pk_codice');

  ibqRicerca.SQL.Add('where ID_CLI_FOR ='+ibqTab_CliID_CLI_FOR.AsString);
//  ibqRicerca.SQL.Add('');
  ibqRicerca.Open;
 End;

  With (dmodAz.rePRN) Do
  Begin
   LoadFromFile(ExtractFilePath(Application.ExeName)+'frCliCard.frf');
   If (PrepareReport)
    Then ShowReport;
  End;
 dmodAz.ibqRicerca.Close;
end;

procedure TfClienti.dbeComuneChange(Sender: TObject);
begin
{  inherited;
 // Fill edit with corr value!
 If (dsoClienti.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='V_COMUNI';
         strCampoWhere:='ID';
         strCampo2:='CAP';
         strCampo3:='PROVINCE';
         intRichieste:=3;
         strResCampoCodice:='COMUNI';
         strValore:=dbeComune.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edCAP.Text:=VarToStr(vaResValore2);
         edPr.Text:=VarToStr(vaResValore3);
         edComune.Text:=VarToStr(vaResCodice);
         // Destroy
         Free;
        End;
       End;}
end;

procedure TfClienti.bbLookComuneClick(Sender: TObject);
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
   strValore:=edComune.Text;
  // Show
  ShowModal;
  // Get vals
  dbecom_descr.Field.AsString:=VarToStr(vaResValore);
  dbeComune.Field.AsVariant:=vaResCodice;
  dbeCap_descr.Field.AsString:=VarToStr(vaResValore2);
  dbePR_descr.Field.AsString:=VarToStr(vaResValore3);

{  edComune.Text:=VarToStr(vaResValore);
  dbeComune.Field.AsVariant:=vaResCodice;
  edCAP.Text:=VarToStr(vaResValore2);
  edPr.Text:=VarToStr(vaResValore3);
}
  // Destroy
  Free;
 End;
end;

procedure TfClienti.bbLookCAPClick(Sender: TObject);
begin
  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='CAP';
   strCampo2:='COMUNI';
   strCampo3:='PROVINCE';
   intRichieste:=3;
   strResCampoCodice:='ID';
   strValore:=edCAP.Text;
  // Show
  ShowModal;
  // Get vals
  dbeCap_descr.Field.AsString:=VarToStr(vaResValore);
  dbePR_descr.Field.AsString:=VarToStr(vaResValore3);
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

procedure TfClienti.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoClienti.DataSet.Prior;
end;

procedure TfClienti.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoClienti.DataSet.Next;
end;

procedure TfClienti.bbLookPrClick(Sender: TObject);
begin
  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='V_COMUNI';
   strCampoWhere:='PROVINCE';
   strCampo2:='COMUNI';
   strCampo3:='CAP';
   intRichieste:=3;
   strResCampoCodice:='ID';
   strValore:=edPr.Text;
  // Show
  ShowModal;
  // Get vals
  dbePR_descr.Field.AsString:=VarToStr(vaResValore);
  dbeCap_descr.Field.AsString:=VarToStr(vaResValore3);
  dbecom_descr.Field.AsString:=VarToStr(vaResValore2);
  dbeComune.Field.AsVariant:=vaResCodice;

{  edPr.Text:=VarToStr(vaResValore);
  edCAP.Text:=VarToStr(vaResValore3);
  edComune.Text:=VarToStr(vaResValore2);
  dbeComune.Field.AsVariant:=vaResCodice;
}  // Destroy
  Free;
 End;
end;

procedure TfClienti.dbeCABChange(Sender: TObject);
begin
{
 // Fill edit with corr value!
 If (dsoClienti.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceAZSQL.Create(Self)) Do
        Begin
         boolAdditionalWhere:=False;
         // Pass vals
         strTabella:='TAB_CAB';
         strCampoWhere:='ID_CAB';
         intRichieste:=1;
         strResCampoCodice:='Descr';
         strValore:=dbeCAB.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edCABDescr.Text:=VarToStr(vaResCodice);
         // Destroy
         Free;
        End;
       End;}
End;

procedure TfClienti.dbeABIChange(Sender: TObject);
begin
{ // Fill edit with corr value!
 If (dsoClienti.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceAZSQL.Create(Self)) Do
        Begin
         boolAdditionalWhere:=False;
         // Pass vals
         strTabella:='TAB_ABI';
         strCampoWhere:='ID_ABI';
         intRichieste:=1;
         strResCampoCodice:='DESCR';
         strValore:=dbeABI.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edABIDescr.Text:=VarToStr(vaResCodice);
         // Destroy
         Free;
        End;
       End;
 }
end;

procedure TfClienti.bbLookCABDescrClick(Sender: TObject);
begin
{ With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
  // Pass vals
   strTabella:='TAB_CAB';
   strCampoWhere:='DESCR';
   intRichieste:=1;
   strResCampoCodice:='ID_CAB';
   strValore:=dbeCAB_descr.Field.AsString;// descr edCABDescr.Text;
  // Show
  ShowModal;
  // Get vals
  // old  edCABDescr.Text:=VarToStr(vaResValore);
  dbeCAB_descr.Field.AsString:=VarToStr(vaResValore);
  dbeCAB.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;}
end;

procedure TfClienti.bbLookABIDescrClick(Sender: TObject);
begin
dmodAz.ibTab_CAB.Close;
dmodAz.ibTab_CAB.SelectSQL.Clear;
dmodAz.ibTab_CAB.SelectSQL.Add('select * from TAB_CAB');
dmodAz.ibTab_CAB.SelectSQL.Add('where abi_id =:a');
dmodAz.ibTab_CAB.SelectSQL.Add('order by id_cab,abi_id');
dmodAz.ibTab_CAB.ParamByName('a').AsString := RxDBLookupCombo3.KeyValue;
dmodAz.ibTab_CAB.Open;
end;

procedure TfClienti.dbeDenomExit(Sender: TObject);
begin
  inherited;
 If (dsoClienti.DataSet.State in [dsInsert])
  Then With (dmodAz.ibqRicerca) Do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT DENOMINAZIONE FROM TAB_CLI_FOR');
         SQL.Add('WHERE DENOMINAZIONE Like '''+dbeDenom.Field.AsString+'''');
         Open;
         If Not(IsEmpty)
           Then Application.MessageBox('Denominazione già esistente!','Attendere',MB_OK);
         Close;
       End;
End;

procedure TfClienti.dbeDenom2Exit(Sender: TObject);
begin
  inherited;
 If (dsoClienti.DataSet.State in [dsInsert])
  Then With (dmodAz.ibqRicerca) Do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT DENOMINAZIONE2 FROM TAB_CLI_FOR');
         SQL.Add('WHERE DENOMINAZIONE2 Like '''+dbeDenom2.field.AsString+'''');
         Open;
         If Not(IsEmpty)
           Then Application.MessageBox('Denominazione già esistente!','Attendere',MB_OK);
         Close;
       End;
end;

procedure TfClienti.RxDBLookupCombo4Exit(Sender: TObject);
begin
  inherited;
{
 Try
  dsoClienti.DataSet.FieldByName('ABI_ID').AsString:=
    dsoABI.DataSet.FieldByName('ID_ABI').AsString;
  dsoClienti.DataSet.FieldByName('ABI_DESCR').AsString:=
    dsoABI.DataSet.FieldByName('DESCR').AsString;

 Except

 End;
} 
end;

procedure TfClienti.Inserire_In_PianoConti;
Var
 iPK_CliFor,iID_PianoConti: Integer;
 iIndeducibile,iNatura,iVarFisc,iCapoConto: Integer;
 strGruppo,strConto,strSottoConto: String;
 iSottoConto: Integer;
begin
 iPK_CliFor:=dsoClienti.DataSet.FieldByName('ID_CLI_FOR').AsInteger;

 If (dsoPianoConti.DataSet.Locate('TIPO',iPK_CliFor,[]))
   Then Begin
          //Silent Exit! 
          Exit;
        End;
 strGruppo:='La Contropartita non è scelta.'+#13+'Codice Cliente: '+IntToStr(iPK_CliFor);
 If (dsoClienti.DataSet.FieldByName('CONTROPARTITA_ID').AsString='')
  Then Begin
         application.messagebox(PChar(strGruppo),'Attendere',MB_OK+MB_ICONEXCLAMATION);
         Exit;
       End;
  iID_PianoConti:=dsoClienti.DataSet.FieldByName('CONTROPARTITA_ID').AsInteger;
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
       dsoClienti.DataSet.FieldByName('DENOMINAZIONE').AsString;
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

procedure TfClienti.miCli_In_PianoContiClick(
  Sender: TObject);
begin
// Ciclo !
 dsoClienti.DataSet.First;
 While not(dsoClienti.DataSet.EoF) Do
 Begin
  Inserire_In_PianoConti;
  dsoClienti.DataSet.Next;
 End;
End;

procedure TfClienti.RxDBLookupCombo3CloseUp(Sender: TObject);
begin
  inherited;
//RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfClienti.ToolButton2Click(Sender: TObject);
begin
 With (TfPrnCustCliFor.Create(Self)) Do
 Begin
  bPerCli:=True;
  Per_Clienti;
  ShowModal;

  Free;
 End;
end;

procedure TfClienti.RxDBLookupCombo3Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
{
  dsoClienti.DataSet.FieldByName('ABI_ID').AsString:=
    dsoABI.DataSet.FieldByName('ID_ABI').AsString;
  dsoClienti.DataSet.FieldByName('ABI_DESCR').AsString:=
    dsoABI.DataSet.FieldByName('DESCR').AsString;
}
end;

procedure TfClienti.RxDBLookupCombo4Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;

end;

procedure TfClienti.RxDBLookupCombo1Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo2.KeyValue :=RxDBLookupCombo1.KeyValue;
dsoClienti.DataSet.FieldByName('NOME_ALTRO').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAB').AsString;

end;

procedure TfClienti.RxDBLookupCombo2Change(Sender: TObject);
begin
  inherited;
RxDBLookupCombo1.KeyValue :=RxDBLookupCombo2.KeyValue;
dsoClienti.DataSet.FieldByName('NOME_ALTRO').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAB').AsString;
end;

procedure TfClienti.RxDBGrid1DblClick(Sender: TObject);
begin

RxDBLookupCombo2.KeyValue:= dsoCAB.DataSet.FieldByName('ID_CAB').AsString;
RxDBLookupCombo1.KeyValue:= dsoCAB.DataSet.FieldByName('ID_CAB').AsString; ;

end;

procedure TfClienti.dbePartIVAExit(Sender: TObject);
begin
if not CheckPIVA(dbePartIVA.Text) then
ShowMessage ('P.I. Errata !!');

 If (dsoClienti.DataSet.State in [dsInsert])
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

procedure TfClienti.Apri;
begin
 dsoClienti.DataSet.Open;
 dsoABI.DataSet.Open;
 dsoAgente.DataSet.Open;
 dsoAltreSedi.DataSet.Open;
 dsoCAB.DataSet.Open;
 dsoCatCli.DataSet.Open;
 dsoComuni.DataSet.Open;
 dsoEsenzione.DataSet.Open;
 dsoListini.DataSet.Open;
 dsoPersAz.DataSet.Open;

 dsoMesi.DataSet.Open;
 dsoMonete.DataSet.Open;
 dsoNazioni.DataSet.Open;
 dsoPagamenti.DataSet.Open;
 dsoPianoConti.DataSet.Open;
 dsoPorto.DataSet.Open;
 dsoProvvigione.DataSet.Open;
 dsoSottoZone.DataSet.Open;
 dsoZone.DataSet.Open;
 dsoRaggrupCliFor.DataSet.Open;
 DataSource1.DataSet.Open;
 DataSource2.DataSet.Open;
 DataSource3.DataSet.Open;
 DataSource4.DataSet.Open;

end;

procedure TfClienti.dsoAltreSediUpdateData(Sender: TObject);
begin
dsoAltreSedi.DataSet.FieldByName('CLI_FOR_ID').AsInteger :=
 StrToInt(dbeCodice.Text);
end;

procedure TfClienti.dbeCodiceChange(Sender: TObject);
begin
DBLookupComboBox1.KeyValue := dbeCodice.Text;
DBLookupComboBox2.KeyValue := dbeCodice.Text;

end;

procedure TfClienti.ddCloseUp(Sender: TObject);
begin
LookZone.KeyValue:=
 LookSottoZone.LookupSource.DataSet.FieldByName('CODICE_ZONA_id').AsString;
LookZoneDescr.KeyValue:=
 LookSottoZone.LookupSource.DataSet.FieldByName('CODICE_ZONA_id').AsString;

end;

procedure TfClienti.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dsoClienti.DataSet.Locate('DENOMINAZIONE',Edit2.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TfClienti.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dsoClienti.DataSet.Locate('PARTITA_IVA',Edit1.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TfClienti.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;

end;

procedure TfClienti.ToolButton5Click(Sender: TObject);
begin
with IBQuery5 do begin
Close;
sql.Clear;
SQL.Add('select id_cli_for,denominazione,tab_piano_conti.tipo from tab_cli_for');
SQL.Add('left join tab_piano_conti on');
SQL.Add('tab_cli_for.id_cli_for =tab_piano_conti.tipo');
SQL.Add('where tab_piano_conti.tipo is null');
SQL.Add('order by id_cli_for');
Open;
end;
  With (dmodAz.rePRN) Do
  Begin
   LoadFromFile(ExtractFilePath(Application.ExeName)+'frVERCLI.frf');
   If (PrepareReport)
    Then ShowReport;
  End;
end;

procedure TfClienti.dbeCodFiscExit(Sender: TObject);
begin
if not VerificaCodiceFiscale(dbeCodFisc.Text) then
ShowMessage ('C.F. Errato !!');

 If (dsoClienti.DataSet.State in [dsInsert])
  Then With (dmodAz.ibqRicerca) Do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT DENOMINAZIONE FROM TAB_CLI_FOR');
         SQL.Add('WHERE CODICE_FISCALE Like '''+dbeCodFisc.Field.AsString+'''');
         Open;
         If Not(IsEmpty)
           Then Application.MessageBox('Codice Fiscale già esistente!','Attendere',MB_OK);
         Close;
       End;



end;

End.
