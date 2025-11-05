unit uTaglie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, IBCustomDataSet, IBQuery, StdCtrls, Mask,
  DBCtrls, ComCtrls, ToolWin, ExtCtrls, FR_Class;

type
  TfTaglie = class(TfBaseForm3)
    laID_Zone: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    frReport2: TfrReport;
    dsoMarca: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTaglie: TfTaglie;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfTaglie.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  dsoMarca.DataSet.Insert;
  dbeDescr.SetFocus;
end;

procedure TfTaglie.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Prior
end;

procedure TfTaglie.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Next;
end;

procedure TfTaglie.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoMarca.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoMarca.DataSet.Open;
end;

procedure TfTaglie.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoMarca.DataSet.Open;
end;

procedure TfTaglie.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoMarca.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoMarca.DataSet.Open;
end;

procedure TfTaglie.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoMarca.DataSet.Edit;
 dbeDescr.SetFocus;
end;

procedure TfTaglie.FormShow(Sender: TObject);
begin
  inherited;
dmodAz.ibTab_Taglie.Open;
end;

procedure TfTaglie.FormDestroy(Sender: TObject);
begin
  inherited;
dmodAz.ibTab_Taglie.Close;
end;

end.
