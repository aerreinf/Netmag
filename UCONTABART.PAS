unit uContabArt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls, Db,
  Buttons, Grids, DBGrids,Variants;

type
  TfContabArt = class(TfBaseForm3)
    paCondizioni: TPanel;
    laContArt: TLabel;
    laContDep: TLabel;
    LookArtCod: TDBLookupComboBox;
    LookArtDescr: TDBLookupComboBox;
    LookDepCod: TDBLookupComboBox;
    LookDepDescr: TDBLookupComboBox;
    laQtaAcq: TLabel;
    laValAcq: TLabel;
    laDataUltAcq: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    dbeDataUltAcq: TDBEdit;
    dbeValAcq: TDBEdit;
    dbeQtaAcq: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    laQtaVen: TLabel;
    laValVen: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    dbeValVen: TDBEdit;
    dbeQtaVen: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    laQtaGiaIni: TLabel;
    dbeQtaGiaIni: TDBEdit;
    dbeCostGiaIni: TDBEdit;
    laCostGiaIni: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    DBEdit23: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit24: TDBEdit;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit17: TDBEdit;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    dsoContabArt: TDataSource;
    bbVisualizza: TBitBtn;
    bbTuttidep: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure bbVisualizzaClick(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure LookArtCodExit(Sender: TObject);
    procedure LookArtDescrExit(Sender: TObject);
    procedure LookDepCodExit(Sender: TObject);
    procedure LookDepDescrExit(Sender: TObject);
    procedure bbTuttidepClick(Sender: TObject);
    procedure dbeQtaGiaIniExit(Sender: TObject);
    procedure dbeCostGiaIniExit(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnEsciClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
   private

   public

  end;

var
  fContabArt: TfContabArt;

implementation

uses uAzDM, IBCustomDataSet;

{$R *.DFM}

procedure TfContabArt.bbVisualizzaClick(Sender: TObject);
begin
 If (LookDepCod.KeyValue=null)
   Then exit;
with  dmodAz.ibqCont_Art do
begin
Close;
SelectSQL.Clear;
SelectSQL.add('select TAB_CONTABILE_ARTICOLO.*, tab_articoli.descr from TAB_CONTABILE_ARTICOLO inner join tab_articoli on');
SelectSQL.add('TAB_CONTABILE_ARTICOLO.codice_Articolo = tab_articoli.codice_Articolo');
SelectSQL.add('where CODICE_ARTICOLO=:parCod_Art And DEPOSITO_ID=:parCod_Dep');
SelectSQL.add('order by codice_Articolo,deposito_id');
ParamByName('parCod_Art').asstring:=LookArtCod.KeyValue;
ParamByName('parCod_Dep').asstring:=LookDepCod.KeyValue;
Open;
end;

End;

procedure TfContabArt.tbtnNuovoClick(Sender: TObject);
begin
 Inherited;
   dmodAz.ibqRicerca_ContArt.Close;
   dmodAz.ibqRicerca_ContArt.ParamByName('parCod_Art').Value:=LookArtCod.KeyValue;
   dmodAz.ibqRicerca_ContArt.ParamByName('parCod_Dep').Value:=LookDepCod.KeyValue;
   dmodAz.ibqRicerca_ContArt.Open;

   paCondizioni.Enabled:=False;

   If (dmodAz.ibqRicerca_ContArt.FieldByName('Count').AsInteger=0)
     Then // Nuovo
       Begin
         dmodAz.ibqCont_Art.Close;
//         dmodAz.ibqCont_Art.ParamByName('parCod_Art').Value:=0;
//         dmodAz.ibqCont_Art.ParamByName('parCod_Dep').Value:=0;
         dmodAz.ibqCont_Art.ParamByName('parCod_Art').Value:=LookArtCod.KeyValue;
         dmodAz.ibqCont_Art.ParamByName('parCod_Dep').Value:=LookDepCod.KeyValue;
         dmodAz.ibqCont_Art.Open;

         dmodAz.ibqCont_Art.Insert;

           dmodAz.ibqCont_Art.FieldByName('CODICE_ARTICOLO').value:=LookArtCod.KeyValue;
           dmodAz.ibqCont_Art.FieldByName('DEPOSITO_ID').value:=LookDepCod.KeyValue;

       End
     Else // Modifica
       Begin
         bbVisualizza.Click;
         dmodAz.ibqCont_Art.Edit;
       End;

   dmodAz.ibqRicerca_ContArt.Close;
end;

procedure TfContabArt.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
  paCondizioni.Enabled:=True;
 dmodAz.ibqCont_Art.Post;
end;

procedure TfContabArt.tbtnModificaClick(Sender: TObject);
begin
 bbVisualizza.Click;
 If (dmodAz.ibqCont_Art.IsEmpty)
  Then Exit;

  paCondizioni.Enabled:=False;

  inherited;

  dmodAz.ibqCont_Art.Edit;

end;

procedure TfContabArt.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
  paCondizioni.Enabled:=True;
 dmodAz.ibqCont_Art.Cancel;
end;

procedure TfContabArt.tbtnEliminaClick(Sender: TObject);
begin
 If (dmodAz.ibqCont_Art.IsEmpty)
  Then Exit;

  inherited;

  dmodAz.ibqCont_Art.Delete;
  paCondizioni.Enabled:=True;
end;

procedure TfContabArt.LookArtCodExit(Sender: TObject);
begin
 LookArtDescr.KeyValue:=LookArtCod.KeyValue;
end;

procedure TfContabArt.LookArtDescrExit(Sender: TObject);
begin
 LookArtCod.KeyValue:=LookArtDescr.KeyValue;
end;

procedure TfContabArt.LookDepCodExit(Sender: TObject);
begin
 LookDepDescr.KeyValue:=LookDepCod.KeyValue;
End;

procedure TfContabArt.LookDepDescrExit(Sender: TObject);
begin
 LookDepCod.KeyValue:=LookDepDescr.KeyValue;
end;

procedure TfContabArt.bbTuttidepClick(Sender: TObject);
begin
with  dmodAz.ibqCont_Art do
begin
Close;
SelectSQL.Clear;
SelectSQL.add('select TAB_CONTABILE_ARTICOLO.*, tab_articoli.descr from TAB_CONTABILE_ARTICOLO inner join tab_articoli on');
SelectSQL.add('TAB_CONTABILE_ARTICOLO.codice_Articolo = tab_articoli.codice_Articolo');
SelectSQL.add('where CODICE_ARTICOLO=:parCod_Art');
SelectSQL.add('order by codice_Articolo,deposito_id');
//And DEPOSITO_ID=:parCod_Dep');
ParamByName('parCod_Art').asstring:=LookArtCod.KeyValue;
//ParamByName('parCod_Dep').asstring:=LookDepCod.KeyValue;
Open;
end;
end;

procedure TfContabArt.dbeQtaGiaIniExit(Sender: TObject);
begin
  inherited;
dsoContabArt.DataSet.FieldByName('giacenza_Attuale').AsFloat :=
  dsoContabArt.DataSet.FieldByName('QTA_ACQUISTI').AsFloat -
  dsoContabArt.DataSet.FieldByName('QTA_VENDITA').AsFloat+dsoContabArt.DataSet.FieldByName('QTA_ALTRE_ENTRATE').AsFloat+
  dsoContabArt.DataSet.FieldByName('QTA_RESO_CLIENTE').AsFloat-dsoContabArt.DataSet.FieldByName('QTA_RESO_FORNITORE').AsFloat-
  dsoContabArt.DataSet.FieldByName('QTA_ALTRE_USCITE').AsFloat+  dsoContabArt.DataSet.FieldByName('qta_GIACENZA_INIZIALE').AsFloat  ;

  end;

procedure TfContabArt.dbeCostGiaIniExit(Sender: TObject);
begin
  inherited;
dsoContabArt.DataSet.FieldByName('VAL_GIACENZA_INIZIALE').AsFloat :=
  dsoContabArt.DataSet.FieldByName('QTA_GIACENZA_INIZIALE').AsFloat*
  dsoContabArt.DataSet.FieldByName('COSTO_GIACENZA_INIZIALE').AsFloat   ;

end;

procedure TfContabArt.tbtnPrevClick(Sender: TObject);
begin
  inherited;
dmodAz.ibqCont_Art.Prior;
LookDepCod.KeyValue := dmodAz.ibqCont_Art.FieldValues['DEPOSITO_ID'];
LookDepDescr.KeyValue := dmodAz.ibqCont_Art.FieldValues['DEPOSITO_ID'];
end;

procedure TfContabArt.tbtnNextClick(Sender: TObject);
begin
  inherited;
dmodAz.ibqCont_Art.Next;
LookDepCod.KeyValue := dmodAz.ibqCont_Art.FieldValues['DEPOSITO_ID'];
LookDepDescr.KeyValue := dmodAz.ibqCont_Art.FieldValues['DEPOSITO_ID'];
end;

procedure TfContabArt.FormShow(Sender: TObject);
begin
  inherited;
if dmodAz.Acc = 0 then
begin
Label29.Caption := 'Scarico distinte (bl.Prod)';
Label15.Caption := 'Rientro C/L Ext.';
Label24.Caption := 'Rientro C/L Int.';
Label17.Caption := 'C/L Ext.';
Label22.Caption := 'C/L Int.';
end;
dmodAz.IBQDepositi.close;
dmodAz.IBQDepositi.Open;
end;

procedure TfContabArt.tbtnEsciClick(Sender: TObject);
begin
  inherited;
dmodAz.IBQDepositi.close;
end;

procedure TfContabArt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
with  dmodAz.ibqCont_Art do
begin
Close;
SelectSQL.Clear;
SelectSQL.add('select TAB_CONTABILE_ARTICOLO.*, tab_articoli.descr from TAB_CONTABILE_ARTICOLO inner join tab_articoli on');
SelectSQL.add('TAB_CONTABILE_ARTICOLO.codice_Articolo = tab_articoli.codice_Articolo');
SelectSQL.add('where CODICE_ARTICOLO=:parCod_Art And DEPOSITO_ID=:parCod_Dep');
SelectSQL.add('order by codice_Articolo,deposito_id');
//open
end;
end;

procedure TfContabArt.ToolButton2Click(Sender: TObject);
begin
dmodAz.dsoTab_Articoli.DataSet.Prior;
LookArtCod.KeyValue:=dmodAz.dsoTab_Articoli.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
LookArtDescr.KeyValue:=dmodAz.dsoTab_Articoli.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
bbTuttidep.Click;
end;

procedure TfContabArt.ToolButton3Click(Sender: TObject);
begin
dmodAz.dsoTab_Articoli.DataSet.Next;
LookArtCod.KeyValue:=dmodAz.dsoTab_Articoli.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
LookArtDescr.KeyValue:=dmodAz.dsoTab_Articoli.DataSet.fieldbyname('CODICE_ARTICOLO').AsString;
bbTuttidep.Click;

end;

End.

