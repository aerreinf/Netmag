unit uColori;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, IBCustomDataSet, StdCtrls, Mask,
  DBCtrls, ComCtrls, ToolWin, ExtCtrls, FR_Class;

type
  TfColori = class(TfBaseForm3)
    laID_Zone: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    frReport2: TfrReport;
    dsoMarca: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fColori: TfColori;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfColori.FormDestroy(Sender: TObject);
begin
  inherited;
dmodAz.ibTab_Colori.Active := False;
end;

procedure TfColori.FormShow(Sender: TObject);
begin
  inherited;
dmodAz.ibTab_Colori.Active := True;
end;

procedure TfColori.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  dbeDescr.SetFocus;
  dsoMarca.DataSet.Insert;
end;

procedure TfColori.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Next;
end;

procedure TfColori.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Prior;
end;

procedure TfColori.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoMarca.DataSet.Edit;
 dbeDescr.SetFocus;
end;

procedure TfColori.tbtnSalvaClick(Sender: TObject);
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

procedure TfColori.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoMarca.DataSet.Open;
end;

procedure TfColori.tbtnEliminaClick(Sender: TObject);
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

end.
