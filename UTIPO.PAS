unit uTipo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uMarca, Db, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, ExtCtrls,
  IBCustomDataSet, IBQuery, uBaseForm3;

type
  TfTipo = class(TfBaseForm3)
    laID_Zone: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    dsoMarca: TDataSource;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipo: TfTipo;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfTipo.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  dsoMarca.DataSet.Insert;
  dbeDescr.SetFocus;end;

procedure TfTipo.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Next;
end;

procedure TfTipo.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Prior;
end;

procedure TfTipo.tbtnEliminaClick(Sender: TObject);
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

procedure TfTipo.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoMarca.DataSet.Open;
end;

procedure TfTipo.tbtnSalvaClick(Sender: TObject);
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

procedure TfTipo.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoMarca.DataSet.Edit;
 dbeCodice.SetFocus;

end;

end.
