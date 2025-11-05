unit uUnitMis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TfUnitMis = class(TfBaseForm3)
    dsoUnMis: TDataSource;
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUnitMis: TfUnitMis;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfUnitMis.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoUnMis.DataSet.Prior;
end;

procedure TfUnitMis.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoUnMis.DataSet.Next;
end;

procedure TfUnitMis.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoUnMis.DataSet.Insert;
 dbeCodice.SetFocus;

end;

procedure TfUnitMis.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoUnMis.DataSet.Edit;
 dbeCodice.SetFocus;
end;

procedure TfUnitMis.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoUnMis.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoUnMis.DataSet.Open;
end;

procedure TfUnitMis.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoUnMis.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoUnMis.DataSet.Open;
end;

procedure TfUnitMis.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoUnMis.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoUnMis.DataSet.Open;
end;

end.
