unit uClientiDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, ComCtrls, StdCtrls, Mask, Grids, DBGrids, DBCGrids, Db;

type
  TfClientiDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Clienti: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDenom: TLabel;
    laDenom2: TLabel;
    dbeCodice: TDBEdit;
    dbeDenom: TDBEdit;
    dbeDenom2: TDBEdit;
    paDati: TPanel;
    pctrlDatiCliente: TPageControl;
    tabs1: TTabSheet;
    paAnagrafica: TPanel;
    tabs2: TTabSheet;
    paIndirizzo: TPanel;
    tabs3: TTabSheet;
    paContabili: TPanel;
    tabs4: TTabSheet;
    paVendita: TPanel;
    tabs5: TTabSheet;
    paAltriDati: TPanel;
    tabs6: TTabSheet;
    paAltriSedi: TPanel;
    tabs7: TTabSheet;
    paFatturazione: TPanel;
    laCodFisc: TLabel;
    dbeCodFisc: TDBEdit;
    laSesso: TLabel;
    LookSesso: TDBLookupComboBox;
    laTitolo: TLabel;
    LookTitolo: TDBLookupComboBox;
    dbeCognome: TDBEdit;
    laCognome: TLabel;
    laNome: TLabel;
    dbeNome: TDBEdit;
    laDataDiNasc: TLabel;
    tpDataDiNasc: TDateTimePicker;
    LookComune: TDBLookupComboBox;
    laComuneDiNasc: TLabel;
    laCAPdiNasc: TLabel;
    LookCAPdiNasc: TDBLookupComboBox;
    laNazione: TLabel;
    LookNazione: TDBLookupComboBox;
    dbeDataDiNascita: TDBEdit;
    laIndA1: TLabel;
    dbeIndirizzo_A1: TDBEdit;
    laComuneA1: TLabel;
    LookComune_A1: TDBLookupComboBox;
    laTel1A1: TLabel;
    dbeTel1_A1: TDBEdit;
    dbeTel2_A1: TDBEdit;
    laTel2A1: TLabel;
    LookCAPA1: TDBLookupComboBox;
    laCAPA1: TLabel;
    laProvA1: TLabel;
    LookProvA1: TDBLookupComboBox;
    LookNazione_A1: TDBLookupComboBox;
    laNazioneA1: TLabel;
    laFaxA1: TLabel;
    dbeFax_A1: TDBEdit;
    laEMailA1: TLabel;
    dbeEMail_A1: TDBEdit;
    dbeInternet_A1: TDBEdit;
    laInternetA1: TLabel;
    laPartIVA: TLabel;
    dbePartIVA: TDBEdit;
    laLocal: TLabel;
    dbeLocalita: TDBEdit;
    Label2: TLabel;
    LookPCNome: TDBLookupComboBox;
    LookPCDescr: TDBLookupComboBox;
    laCAB: TLabel;
    laContoCorr: TLabel;
    LookCAB: TDBLookupComboBox;
    LookCABDescr: TDBLookupComboBox;
    dbeContoCorr: TDBEdit;
    laListino: TLabel;
    LookListino: TDBLookupComboBox;
    LookListinoDescr: TDBLookupComboBox;
    laCat: TLabel;
    laAgente: TLabel;
    laProvvigione: TLabel;
    laSconto: TLabel;
    laZona: TLabel;
    laSottozona: TLabel;
    laPorto: TLabel;
    LookCat: TDBLookupComboBox;
    LookCatDescr: TDBLookupComboBox;
    LookPortoDescr: TDBLookupComboBox;
    LookPorto: TDBLookupComboBox;
    LookAgenteDescr: TDBLookupComboBox;
    LookAgente: TDBLookupComboBox;
    LookSottoZoneDescr: TDBLookupComboBox;
    LookSottoZone: TDBLookupComboBox;
    LookZone: TDBLookupComboBox;
    LookZoneDescr: TDBLookupComboBox;
    LookProvvigioneDescr: TDBLookupComboBox;
    LookProvvigione: TDBLookupComboBox;
    dbeSconto1: TDBEdit;
    dbeSconto2: TDBEdit;
    laPiu: TLabel;
    laMoneta: TLabel;
    LaPagamento: TLabel;
    laConrag: TLabel;
    Label6: TLabel;
    laRischio: TLabel;
    LookMoneta: TDBLookupComboBox;
    LookMonetaDescr: TDBLookupComboBox;
    LookPagamDescr: TDBLookupComboBox;
    LookPaganebto: TDBLookupComboBox;
    dbeFido: TDBEdit;
    dbeRischio: TDBEdit;
    Label9: TLabel;
    laGiorniEscl: TLabel;
    LookEsclMese1: TDBLookupComboBox;
    LookEsclMese2: TDBLookupComboBox;
    dbeGGscad1: TDBEdit;
    dbeGGScad2: TDBEdit;
    laIvaEsen: TLabel;
    LookCodIvaEsen: TDBLookupComboBox;
    LookIvaEsenDescr: TDBLookupComboBox;
    gbPosRif: TGroupBox;
    dbragPosRif: TDBRadioGroup;
    gbDescrSu: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    laFattDiff: TLabel;
    laFattImm: TLabel;
    laDDT: TLabel;
    laOrdini: TLabel;
    Label18: TLabel;
    dbcbAccotpArt: TDBCheckBox;
    dbcgAltreSedi: TDBCtrlGrid;
    laABI: TLabel;
    LookABI: TDBLookupComboBox;
    LookABIDescr: TDBLookupComboBox;
    DBCtrlGrid2: TDBCtrlGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    LookCodRagg: TDBLookupComboBox;
    LookCodRagDescr: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    dbnSediAltri: TDBNavigator;
    procedure dbnTab_ClientiClick(Sender: TObject; Button: TNavigateBtn);
    procedure tpDataDiNascChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcgAltreSediEnter(Sender: TObject);
    procedure LookSottoZoneCloseUp(Sender: TObject);
    procedure LookCABCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   Procedure setMode(bStMod: Boolean);
  public
    { Public declarations }
  end;

var
  fClientiDB: TfClientiDB;

implementation

Uses uAzDM, uPubDM;

{$R *.DFM}

procedure TfClientiDB.dbnTab_ClientiClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbEdit) Then setMode(True);
 If (Button=nbPost) Then setMode(False);
 If (Button=nbCancel) Then setMode(False);
 If (Button=nbInsert)
  Then
   Begin
    // Get the next ID for PC!
    With (dmodAz.ibSP_New_ID_Cli_For) Do
    Begin
     Prepare;
     ExecProc;
     dbeCodice.Field.AsInteger:=Params[0].AsInteger;
    End;
    dbnTab_Clienti.DataSource.DataSet.
     FieldByName('ACCORPA_ARTICOLI').AsInteger:=0;
    dbnTab_Clienti.DataSource.DataSet.
     FieldByName('TIPO').AsInteger:=1;
    setMode(True);
   End;
end;

procedure TfClientiDB.tpDataDiNascChange(Sender: TObject);
begin
 dbeDataDiNascita.Field.AsDateTime:=tpDataDiNasc.Date;
end;

procedure TfClientiDB.FormCreate(Sender: TObject);
begin
 pctrlDatiCliente.ActivePage:=tabs1;
 tpDataDiNasc.DateTime:=Now;
end;

procedure TfClientiDB.dbcgAltreSediEnter(Sender: TObject);
begin
 If (dbcgAltreSedi.DataSource.DataSet.State In [dsInsert, dsEdit])
    Then dbcgAltreSedi.DataSource.DataSet.FieldByName('CLI_FOR_ID').AsInteger:=
          dbnTab_Clienti.DataSource.DataSet.FieldByName('ID_CLI_FOR').AsInteger;
end;

procedure TfClientiDB.setMode(bStMod: Boolean);
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

procedure TfClientiDB.LookSottoZoneCloseUp(Sender: TObject);
begin
 // set also Zone
 LookZone.DataSource.DataSet.FieldByName('CODICE_ZONA_id').AsString:=
       LookSottoZone.ListSource.DataSet.FieldByName('CODICE_ZONA_id').AsString;
end;

procedure TfClientiDB.LookCABCloseUp(Sender: TObject);
begin
 // set also ABI
 LookABI.DataSource.DataSet.FieldByName('ABI_ID').AsString:=
       LookCAB.ListSource.DataSet.FieldByName('ABI_ID').AsString;
end;

procedure TfClientiDB.FormShow(Sender: TObject);
begin
 With (dmodAz) Do
 Begin
  ibqAltreSedi.Close;
   ibqAltreSedi.UnPrepare;
     ibqAltreSedi.ParamByName('parIDCLIFOR').AsInteger:=
           ibqTab_Cli.fieldbyname('ID_CLI_FOR').AsInteger;
   ibqAltreSedi.Prepare;
  ibqAltreSedi.Open;
 End;
end;

end.
