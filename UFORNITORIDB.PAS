unit uFornitoriDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DBCGrids;

type
  TfFornitoriDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Fornitori: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDenom: TLabel;
    laDenom2: TLabel;
    dbeCodice: TDBEdit;
    dbeDenom: TDBEdit;
    dbeDenom2: TDBEdit;
    paDati: TPanel;
    pctrlDatiForn: TPageControl;
    tabs1: TTabSheet;
    paAnagrafica: TPanel;
    tabs2: TTabSheet;
    paIndirizzo: TPanel;
    tabs3: TTabSheet;
    paContabili: TPanel;
    tabs4: TTabSheet;
    paAcquisto: TPanel;
    tabs5: TTabSheet;
    paAltriDati: TPanel;
    laCodFisc: TLabel;
    dbeCodFisc: TDBEdit;
    laSesso: TLabel;
    LookSesso: TDBLookupComboBox;
    laNome: TLabel;
    dbeNome: TDBEdit;
    dbeCognome: TDBEdit;
    laCognome: TLabel;
    laTitolo: TLabel;
    LookTitolo: TDBLookupComboBox;
    laDataDiNasc: TLabel;
    tpDataDiNasc: TDateTimePicker;
    dbeDataDiNascita: TDBEdit;
    LookNazione: TDBLookupComboBox;
    LookComune: TDBLookupComboBox;
    laComuneDiNasc: TLabel;
    LookCAPdiNasc: TDBLookupComboBox;
    laCAPdiNasc: TLabel;
    laNazione: TLabel;
    laIndA1: TLabel;
    dbeIndirizzo_A1: TDBEdit;
    laComuneA1: TLabel;
    LookComune_A1: TDBLookupComboBox;
    laCAPA1: TLabel;
    LookCAPA1: TDBLookupComboBox;
    LookProvA1: TDBLookupComboBox;
    laProvA1: TLabel;
    laNazioneA1: TLabel;
    LookNazione_A1: TDBLookupComboBox;
    dbeLocalita: TDBEdit;
    laLocal: TLabel;
    laFaxA1: TLabel;
    dbeFax_A1: TDBEdit;
    dbeTel2_A1: TDBEdit;
    laInternetA1: TLabel;
    dbeInternet_A1: TDBEdit;
    laTel2A1: TLabel;
    dbeEMail_A1: TDBEdit;
    laEMailA1: TLabel;
    dbeTel1_A1: TDBEdit;
    laTel1A1: TLabel;
    dbePartIVA: TDBEdit;
    laPartIVA: TLabel;
    Label2: TLabel;
    laContoCorr: TLabel;
    dbeContoCorr: TDBEdit;
    LookPCNome: TDBLookupComboBox;
    LookPCDescr: TDBLookupComboBox;
    laPorto: TLabel;
    LookPorto: TDBLookupComboBox;
    LookPortoDescr: TDBLookupComboBox;
    laZona: TLabel;
    LookZone: TDBLookupComboBox;
    LookZoneDescr: TDBLookupComboBox;
    LookSottoZoneDescr: TDBLookupComboBox;
    LookSottoZone: TDBLookupComboBox;
    dbeSconto2: TDBEdit;
    laPiu: TLabel;
    dbeSconto1: TDBEdit;
    laSconto: TLabel;
    laSottozona: TLabel;
    Label3: TLabel;
    LookMoneteCod: TDBLookupComboBox;
    LookMoneteDescr: TDBLookupComboBox;
    LookPagamDescr: TDBLookupComboBox;
    LookPagamCod: TDBLookupComboBox;
    Label4: TLabel;
    dbeRischioCli: TDBEdit;
    Label7: TLabel;
    dbeFIDO: TDBEdit;
    Label6: TLabel;
    Label9: TLabel;
    LookMese1: TDBLookupComboBox;
    LookMese2: TDBLookupComboBox;
    dbeGG2: TDBEdit;
    dbeGG1: TDBEdit;
    Label10: TLabel;
    laConrag: TLabel;
    LookCodRagg: TDBLookupComboBox;
    LookCodRaggDescr: TDBLookupComboBox;
    laCAB: TLabel;
    laABI: TLabel;
    LookABI: TDBLookupComboBox;
    LookCAB: TDBLookupComboBox;
    LookCABDescr: TDBLookupComboBox;
    LookABIDescr: TDBLookupComboBox;
    DBCtrlGrid2: TDBCtrlGrid;
    procedure FormCreate(Sender: TObject);
    procedure tpDataDiNascChange(Sender: TObject);
    procedure dbnTab_FornitoriClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LookCABCloseUp(Sender: TObject);
    procedure LookSottoZoneCloseUp(Sender: TObject);
  private
    { Private declarations }
   Procedure setMode(bStMod: Boolean);
  public
    { Public declarations }
  end;

var
  fFornitoriDB: TfFornitoriDB;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfFornitoriDB.FormCreate(Sender: TObject);
begin
 pctrlDatiForn.ActivePage:=tabs1;
 tpDataDiNasc.DateTime:=Now;
end;

procedure TfFornitoriDB.setMode(bStMod: Boolean);
begin
 paView.Enabled:=bStMod;
 paAnagrafica.Enabled:=bStMod;
 paContabili.Enabled:=bStMod;
 paAltriDati.Enabled:=bStMod;
 paIndirizzo.Enabled:=bStMod;
 paAcquisto.Enabled:=bStMod;
end;

procedure TfFornitoriDB.tpDataDiNascChange(Sender: TObject);
begin
 dbeDataDiNascita.Field.AsDateTime:=tpDataDiNasc.Date;
end;

procedure TfFornitoriDB.dbnTab_FornitoriClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbEdit) Then begin setMode(True);dbeDenom.SetFocus;End;

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
    dbnTab_Fornitori.DataSource.DataSet.
     FieldByName('ACCORPA_ARTICOLI').AsInteger:=0;
    dbnTab_Fornitori.DataSource.DataSet.
     FieldByName('TIPO').AsInteger:=2;
    setMode(True);
    dbeDenom.SetFocus;
   End;
 If (Button=nbPost) Then setMode(False);
 If (Button=nbCancel) Then setMode(False);

end;

procedure TfFornitoriDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dbnTab_Fornitori.BtnClick(nbCancel);
end;

procedure TfFornitoriDB.LookCABCloseUp(Sender: TObject);
begin
 // set also ABI
 LookABI.DataSource.DataSet.FieldByName('ABI_ID').AsString:=
       LookCAB.ListSource.DataSet.FieldByName('ABI_ID').AsString;
end;

procedure TfFornitoriDB.LookSottoZoneCloseUp(Sender: TObject);
begin
 // set also Zone
 LookZone.DataSource.DataSet.FieldByName('CODICE_ZONA_ID').AsString:=
       LookSottoZone.ListSource.DataSet.FieldByName('CODICE_ZONA_ID').AsString;
end;

end.
