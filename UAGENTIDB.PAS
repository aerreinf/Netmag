unit uAgentiDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, DBCtrls, StdCtrls, Mask, ExtCtrls, DBCGrids, db,
  RxLookup, IBCustomDataSet, IBQuery, ToolWin;

type
  TfAgentiDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laProvv: TLabel;
    laImpFisso: TLabel;
    laZona: TLabel;
    laSottoZona: TLabel;
    laTipoSommPRV: TLabel;
    laTipoProvv: TLabel;
    laTotFatt: TLabel;
    laTotRpovv: TLabel;
    dbeImpFisso: TDBEdit;
    dbeTotaleFatturato: TDBEdit;
    dbeTotaleProvvigione: TDBEdit;
    LookZona: TDBLookupComboBox;
    LookZonaDescr: TDBLookupComboBox;
    LookSottoZona: TDBLookupComboBox;
    LookSottoZonaDescr: TDBLookupComboBox;
    LookSommaProvv: TDBLookupComboBox;
    LookTipoProvvigione: TDBLookupComboBox;
    Panel1: TPanel;
    pctrlCategorie: TPageControl;
    tabs1: TTabSheet;
    paCatMerc: TPanel;
    tabs2: TTabSheet;
    paCatCli: TPanel;
    dbgCatMerc: TDBGrid;
    dbgCatCli: TDBGrid;
    dsoCatCliAg: TDataSource;
    dsoCatMercAg: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    RxDBLookupCombo2: TRxDBLookupCombo;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
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
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery3: TIBQuery;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    IBQuery4: TIBQuery;
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
    RxDBLookupCombo13: TRxDBLookupCombo;
    dsoProvvigione: TDataSource;
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
    procedure FormActivate(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeProvvKeyPress(Sender: TObject; var Key: Char);
    procedure dbeImpFissoKeyPress(Sender: TObject; var Key: Char);
    procedure LookZonaKeyPress(Sender: TObject; var Key: Char);
    procedure LookZonaDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookSottoZonaKeyPress(Sender: TObject; var Key: Char);
    procedure LookSottoZonaDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookSommaProvvKeyPress(Sender: TObject; var Key: Char);
    procedure LookTipoProvvigioneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTotaleFatturatoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTotaleProvvigioneKeyPress(Sender: TObject; var Key: Char);
    procedure dbnTab_AgentiClick(Sender: TObject; Button: TNavigateBtn);
    procedure LookSottoZonaCloseUp(Sender: TObject);
    procedure dbgCatMercKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCatCliKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure tbtnEsciClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Edit_Mode(bMode: Boolean);
    Procedure Refresh_Grids;
    Procedure Edit_Mode2(bMode: Boolean);
    Procedure Clean_All_TEdits2;
  public
    { Public declarations }
//    Procedure Edit_Mode(bMode: Boolean);
//    Procedure Clean_All_TEdits;
  end;

var
  fAgentiDB: TfAgentiDB;

  bCanClose: Boolean=True;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfAgentiDB.FormActivate(Sender: TObject);
begin
// Refresh_Grids;
end;

procedure TfAgentiDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfAgentiDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfAgentiDB.dbeProvvKeyPress(Sender: TObject; var Key: Char);
begin
// If (Key=#13) Then FindNextControl(dbeProvv,True,True,False).SetFocus;
end;

procedure TfAgentiDB.dbeImpFissoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeImpFisso,True,True,False).SetFocus;
end;

procedure TfAgentiDB.LookZonaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookZona,True,True,False).SetFocus;
end;

procedure TfAgentiDB.LookZonaDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookZonaDescr,True,True,False).SetFocus;
end;

procedure TfAgentiDB.LookSottoZonaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookSottoZona,True,True,False).SetFocus;
end;

procedure TfAgentiDB.LookSottoZonaDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookSottoZonaDescr,True,True,False).SetFocus;
end;

procedure TfAgentiDB.LookSommaProvvKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookSommaProvv,True,True,False).SetFocus;
end;

procedure TfAgentiDB.LookTipoProvvigioneKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookTipoProvvigione,True,True,False).SetFocus;
end;

procedure TfAgentiDB.dbeTotaleFatturatoKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTotaleFatturato,True,True,False).SetFocus;
end;

procedure TfAgentiDB.dbeTotaleProvvigioneKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTotaleProvvigione,True,True,False).SetFocus;
end;

procedure TfAgentiDB.dbnTab_AgentiClick(Sender: TObject;
  Button: TNavigateBtn);
var
nuovo:bool;
  begin
nuovo:=false;
 Edit_Mode(False);
 If (Button=nbEdit) Then
 begin
   Edit_Mode(True);
  IBQuery1.Close;
  IBQuery2.Close;
  IBQuery1.Open;
  IBQuery2.Open;
  IBQuery4.Close;
  IBQuery4.Open;
  dbeCodice.SetFocus;

 end;
 // If ((Button=nbEdit)And(()Or())) Then

 If (Button=nbInsert) Then Begin
  Refresh_Grids;
  Edit_Mode(True);
  DBRadioGroup1.ItemIndex := 0;
  IBQuery1.Close;
  IBQuery2.Close;
  IBQuery1.Open;
  IBQuery2.Open;
  IBQuery4.Close;
  IBQuery4.Open;
  nuovo:=true;
  dbeCodice.SetFocus;
  End;
 If (Button=nbInsert) and (nuovo=true) Then Begin
 end;
{ If (Button=nbPost) Then
 Begin
  If (dmodAz.ibqCatCli.State in [dsInsert, dsEdit]) Then dmodAz.ibqCatCli.Post;
  If (dmodAz.ibqCatMerc.State in [dsInsert, dsEdit]) Then dmodAz.ibqCatMerc.Post;
 // dmodAz
 End;;    }

end;

procedure TfAgentiDB.Edit_Mode(bMode: Boolean);
begin
 paView.Enabled:=bMode;
 dbgCatMerc.ReadOnly:=Not(bMode);
 dbgCatCli.ReadOnly:=Not(bMode);
end;

procedure TfAgentiDB.LookSottoZonaCloseUp(Sender: TObject);
begin
 // set also Zone
 LookZona.DataSource.DataSet.FieldByName('CODICE_ZONA_id').AsString:=
       LookSottoZona.ListSource.DataSet.FieldByName('CODICE_ZONA_id').AsString;
end;

procedure TfAgentiDB.dbgCatMercKeyPress(Sender: TObject; var Key: Char);
begin
//    If (dbgCatMerc.DataSource.DataSet.State in [dsInsert, dsEdit])
//      Then dbgCatMerc.DataSource.DataSet.FieldByName('AGENTE_CODICE').AsString:=
//          DBNavigator1.DataSource.DataSet.fieldByName('CODICE').asString;
end;

procedure TfAgentiDB.dbgCatCliKeyPress(Sender: TObject; var Key: Char);
begin
{ If (dbgCatCli.DataSource.DataSet.State in [dsInsert, dsEdit])
  Then dbgCatCli.DataSource.DataSet.FieldByName('AGENTE_CODICE_ID').AsString:=
        dbnTab_Agenti.DataSource.DataSet.fieldByName('CODICE').asString;
}
end;

procedure TfAgentiDB.Refresh_Grids;
begin
{ With (dmodAz.ibqCatMerc) Do
 Begin
  Close;
   Unprepare;
     ParamByName('parAgente').Asstring:=
        dbnTab_Agenti.DataSource.DataSet.FieldByName('CODICE').AsString;
   Prepare;
  Open;
 End;
 With (dmodAz.ibqCatCli) Do
 Begin
  Close;
   Unprepare;
      ParamByName('parAgente').Asstring:=
         dbnTab_Agenti.DataSource.DataSet.FieldByName('CODICE').AsString;
   Prepare;
  Open;
 End;}
end;

procedure TfAgentiDB.FormShow(Sender: TObject);
begin
dsoProvvigione.DataSet.Open;
dmodAz.ibTab_Agenti.Active := True;
IBQuery1.Close;
IBQuery2.Close;
IBQuery4.Close;
IBQuery1.Open;
IBQuery2.Open;
IBQuery4.Open;
end;


procedure TfAgentiDB.tbtnEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfAgentiDB.tbtnPrevClick(Sender: TObject);
begin
 dmodAz.dsoTab_Agenti.DataSet.Prior;
end;

procedure TfAgentiDB.tbtnNextClick(Sender: TObject);
begin
 dmodAz.dsoTab_Agenti.DataSet.Next;
end;

procedure TfAgentiDB.tbtnAnullaClick(Sender: TObject);
begin
Edit_Mode(False);
Edit_Mode2(False);
 dmodAz.dsoTab_Agenti.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dmodAz.dsoTab_Agenti.DataSet.Open;
 IBQuery1.Open;
 IBQuery2.Open;
 IBQuery4.Open;
end;

procedure TfAgentiDB.tbtnEliminaClick(Sender: TObject);
begin
Edit_Mode(False);
try
 begin
 dmodAz.dsoTab_Agenti.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode2(False);
dmodAz.dsoTab_Agenti.DataSet.Open;
 IBQuery1.Close;
 IBQuery2.Close;
 IBQuery4.Close;
 IBQuery1.Open;
 IBQuery2.Open;
 IBQuery4.Open;
end;

procedure TfAgentiDB.tbtnNuovoClick(Sender: TObject);
begin
 Edit_Mode2(True);
 Clean_All_TEdits2;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  Refresh_Grids;
  Edit_Mode(True);
  DBRadioGroup1.ItemIndex := 0;
  IBQuery1.Close;
  IBQuery2.Close;
  IBQuery4.Close;
  IBQuery1.Open;
  IBQuery2.Open;
  IBQuery4.Open;
//  nuovo:=true;
  dbeCodice.SetFocus;
 dmodAz.dsoTab_Agenti.DataSet.Insert;
end;

procedure TfAgentiDB.tbtnModificaClick(Sender: TObject);

begin
Edit_Mode2(True);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
//nuovo:=false;
 Edit_Mode(True);
 IBQuery1.Close;
 IBQuery2.Close;
 IBQuery4.Close;
 IBQuery1.Open;
 IBQuery2.Open;
 IBQuery4.Open;
 dbeCodice.SetFocus;
 dmodAz.dsoTab_Agenti.DataSet.Edit;
end;

Procedure TfAgentiDB.Clean_All_TEdits2;
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

procedure TfAgentiDB.Edit_Mode2(bMode: Boolean);
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

 paView.Enabled:=(bMode);
end;

procedure TfAgentiDB.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dmodAz.dsoTab_Agenti.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode2(False);
dmodAz.dsoTab_Agenti.DataSet.Open;
 IBQuery1.Close;
 IBQuery2.Close;
 IBQuery4.Close;
 IBQuery1.Open;
 IBQuery2.Open;
 IBQuery4.Open;
 dsoProvvigione.DataSet.Open;
end;


end.
