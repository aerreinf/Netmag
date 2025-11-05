unit uFamiglia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uMarca, Db, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, ExtCtrls,
  IBCustomDataSet, IBQuery, uBaseForm3;

type
  TfFamiglia = class(TfBaseForm3)
    dsoMarca: TDataSource;
    laID_Zone: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFamiglia: TfFamiglia;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfFamiglia.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Prior;
end;

procedure TfFamiglia.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Next;
end;

procedure TfFamiglia.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  dsoMarca.DataSet.Insert;
  dbeDescr.SetFocus;
end;


procedure TfFamiglia.tbtnSalvaClick(Sender: TObject);
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

procedure TfFamiglia.tbtnEliminaClick(Sender: TObject);
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

procedure TfFamiglia.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoMarca.DataSet.Open;

end;

procedure TfFamiglia.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoMarca.DataSet.Edit;
 dbeCodice.SetFocus;
end;

end.
