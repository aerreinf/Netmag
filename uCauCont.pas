unit uCauCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBASEFORM3, DB, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin,
  ExtCtrls, RxLookup, IBCustomDataSet, IBQuery;

type
  TfCauCont = class(TfBaseForm3)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1ID_PIANO_CONTO: TIntegerField;
    IBQuery1GRUPPO: TIBStringField;
    IBQuery1CONTO: TIBStringField;
    IBQuery1SOTTOCONTO: TIBStringField;
    IBQuery1NOME_CONTO: TIBStringField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1NATURA: TSmallintField;
    IBQuery1LIVELLO: TSmallintField;
    IBQuery1RIVENDITA: TSmallintField;
    IBQuery1STRUMENTALE: TSmallintField;
    IBQuery1INDEDUCIBILE: TFloatField;
    IBQuery1STAMPA_IN_BILANCIO: TSmallintField;
    IBQuery1VARIAZIONE_FISCALE: TSmallintField;
    IBQuery1DICH_REDDITI_ID: TIBStringField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField;
    IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField;
    IBQuery1SPECIALE: TIntegerField;
    dsPianoDeiConti: TDataSource;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure APRI;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCauCont: TfCauCont;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfCauCont.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 DataSource1.DataSet.Insert;
 DBEdit1.SetFocus;

end;

procedure TfCauCont.APRI;
begin
dmodAz.dsoTab_Codici_IVA.DataSet.Open;
dmodAz.ibqCaucont.Open;
DataSource2.DataSet.Open;
dsPianoDeiConti.DataSet.Open;
end;
procedure TfCauCont.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 DataSource1.DataSet.Edit;
end;

procedure TfCauCont.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
try
 begin
 DataSource1.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
apri;
end;

procedure TfCauCont.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 DataSource1.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
APRI;

end;

procedure TfCauCont.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 try
 begin
 DataSource1.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
apri;
end;

procedure TfCauCont.FormShow(Sender: TObject);
begin
  inherited;
APRI;
end;

end.
