unit uListini;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, ComCtrls, ToolWin, ExtCtrls, Db, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls, IBCustomDataSet, IBQuery, RxLookup;

type
  TfListini = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoListini: TDataSource;
    dsoArtPerListino: TDataSource;
    tbtnRefresh: TToolButton;
    Label1: TLabel;
    dbgListinoDetaglio: TDBGrid;
    tbtnStampa: TToolButton;
    ToolBar1: TToolBar;
    pnlFiltro_Art: TPanel;
    chbxTipo: TCheckBox;
    rxlcTipo: TRxDBLookupCombo;
    rxlcMarca: TRxDBLookupCombo;
    chbxMarca: TCheckBox;
    chbxFamiglia: TCheckBox;
    rxlcFamiglia: TRxDBLookupCombo;
    chbxGruppo: TCheckBox;
    rxlcGruppo: TRxDBLookupCombo;
    tbtnAggiorna: TToolButton;
    dsoMARCA: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoTIPO: TDataSource;
    dsoGRUPPO: TDataSource;
    procedure tbtnRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnStampaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chbxTipoClick(Sender: TObject);
    procedure chbxMarcaClick(Sender: TObject);
    procedure chbxFamigliaClick(Sender: TObject);
    procedure chbxGruppoClick(Sender: TObject);
    procedure tbtnAggiornaClick(Sender: TObject);
    procedure pnlFiltro_ArtExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
   boolTipo,boolMarca,boolFamiglia,boolGruppo: Boolean;
   strTipo,strMarca,strFamiglia,strGruppo: String;
    Procedure Update_Art;
    Procedure Make_SQL;
    procedure Get_params;
  public
    { Public declarations }
  end;

var
  fListini: TfListini;

implementation

uses uAzDM, uPubDM, uCreaListWiz, uPrnForm, frmuListStampa;

{$R *.DFM}

{ TfListini }

procedure TfListini.Update_Art;
begin
 Get_params;
 Make_sql;
 With (dmodaz.ibqShowArtPerListini) Do
 Begin
  Active:=False;
   Unprepare;
    ParamByName('parCodiceListino').AsString:=
      dsoListini.DataSet.FieldByName('CoDiCe').AsString;;
   Prepare;
  Active:=True;
 End;
end;

procedure TfListini.tbtnRefreshClick(Sender: TObject);
begin
  inherited;
 Update_Art;
end;

procedure TfListini.FormActivate(Sender: TObject);
begin
  inherited;
 Update_Art;
end;

procedure TfListini.FormShow(Sender: TObject);
begin
  inherited;
 dsoTIPO.DataSet.Open;
 dsoMARCA.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoGRUPPO.DataSet.Open;

 Update_Art;
 boolTipo:=False;
 boolMarca :=False;
 boolFamiglia :=False;
 boolGruppo :=False;
 strTipo:='-1';
 strMarca:='-1';
 strFamiglia:='-1';
 strGruppo:='-1';
end;

procedure TfListini.tbtnNuovoClick(Sender: TObject);
begin
 // --- Creare nuovo listino ---- \\
{
 dmodAz.ibTab_Famiglia.Open;
 dmodAz.ibTab_Gruppo.Open;
 dmodAz.ibTab_Marca.Open;
 dmodAz.ibTab_Tipo.Open;
 With (dmodAz) Do
 Begin
  ibTab_Articoli.Close;
  ibTab_Articoli.SelectSQL.Clear;
  ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
  ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE=''N''');
  ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO');
  ibTab_Articoli.Open;
 End;

 dmodPub.ibTab_Monete.Open;
 dmodPub.ibTab_Arrotondamenti.Open;

 //Creare Nuovo Listino
 fCreaListWiz:=TfCreaListWiz.Create(Self);
 fCreaListWiz.ShowModal;
 fCreaListWiz.Free;

 dmodPub.ibTab_Monete.Close;
 dmodPub.ibTab_Arrotondamenti.Close;
// dmodAz.ibTab_Articoli.Close;

{ dmodAz.ibTab_Famiglia.close;
 dmodAz.ibTab_Gruppo.close;
 dmodAz.ibTab_Marca.close;
 dmodAz.ibTab_Tipo.close;}
{
 Update_Art;
 dmodAz.ibqContabile_Articolo.Open;
 Close;
}
end;

procedure TfListini.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 // delete all detailed!
 TRY
  Begin
   With (dmodAz.ibSQL) Do
   Begin
    SQL.Clear;
    SQL.Add('DELETE FROM TAB_DET_LISTINO WHERE CODICE_LISTINO='''+
           dsoListini.DataSet.FieldByName('CODICE').AsString+'''');
    Prepare;
    ExecQuery;
    Close;
   End;
   dsoListini.DataSet.Delete;
   (dsoListini.DataSet as TIBQUERY).ApplyUpdates;
  End
 EXCEPT
  BEEP;BEEP;BEEP;BEEP;BEEP;BEEP;BEEP;
  BEEP;
 END;

 Update_Art;

end;

procedure TfListini.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoListini.DataSet.Next;
 Update_Art;
end;

procedure TfListini.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoListini.DataSet.Prior;
  Update_Art;

end;

procedure TfListini.tbtnStampaClick(Sender: TObject);
begin
 // Stampa listini
 With (TfrmListiniStampa.Create(self)) Do
 Begin
  ShowModal;
  Free;
 End;
 dmodAz.ibTab_Listino.Open;
end;

procedure TfListini.FormDestroy(Sender: TObject);
begin
  inherited;
 With (dmodaz.ibqShowArtPerListini) Do
 Begin
  Active:=False;
  SQL.Clear;
  SQL.Add('select * from TAB_DET_LISTINO');
  SQL.Add('WHERE TAB_DET_LISTINO.CODICE_LISTINO=:parCodiceListino');
 End;
end;

procedure TfListini.Make_SQL;
begin
 With (dmodaz.ibqShowArtPerListini) Do
 Begin
  Active:=False;
  SQL.Clear;
  SQL.Add('select * from TAB_DET_LISTINO');
  SQL.Add('WHERE TAB_DET_LISTINO.CODICE_LISTINO=:parCodiceListino');

  SQL.Add('AND (TAB_DET_LISTINO.codice_articolo in');
  SQL.Add('(select codice_articolo from tab_articoli');
  SQL.Add('Where codice_articolo is not null');
  If (boolMarca)
    Then SQL.Add('And cat_art_marca_id = '+strMarca);
  If (boolTipo)
    Then SQL.Add('And cat_art_tipo_id ='+strTipo);
  If (boolGruppo)
    Then SQL.Add('And cat_art_gruppo_id = '+strGruppo);
  If (boolFamiglia)
    Then SQL.Add('And cat_art_famiglia_id ='+strFamiglia);
  SQL.Add('))');
 End;
end;

procedure TfListini.chbxTipoClick(Sender: TObject);
begin
 rxlcTipo.Enabled:=chbxTipo.checked;
 boolTipo:=chbxTipo.checked;
end;

procedure TfListini.chbxMarcaClick(Sender: TObject);
begin
 rxlcMarca.Enabled:=chbxMarca.checked;
 boolMarca:=chbxMarca.checked;
end;

procedure TfListini.chbxFamigliaClick(Sender: TObject);
begin
 rxlcFamiglia.Enabled:=chbxFamiglia.checked;
 boolFamiglia:=chbxFamiglia.checked;
end;

procedure TfListini.chbxGruppoClick(Sender: TObject);
begin
 rxlcGruppo.Enabled:=chbxGruppo.checked;
 boolGruppo:=chbxGruppo.checked;
end;

procedure TfListini.tbtnAggiornaClick(Sender: TObject);
begin
 Update_Art;
end;

procedure TfListini.pnlFiltro_ArtExit(Sender: TObject);
begin
 Get_params;
end;

procedure TfListini.Get_params;
begin
 If (boolTipo) Then
  Try    strTipo:=rxlcTipo.KeyValue;
  Except strTipo:='-1';  End;
 If (boolMarca) Then
  Try    strMarca:=rxlcMarca.KeyValue;
  Except strMarca:='-1'; End;
 If (boolFamiglia) Then
  Try    strFamiglia:=rxlcFamiglia.KeyValue;
  Except strFamiglia:='-1'; End;
 If (boolGruppo) Then
  Try    strGruppo:=rxlcGruppo.KeyValue;
  Except strGruppo:='-1'; End;
end;

procedure TfListini.FormCreate(Sender: TObject);
begin
 boolTipo:=False;
 boolMarca :=False;
 boolFamiglia :=False;
 boolGruppo :=False;
  inherited;
end;

END.

