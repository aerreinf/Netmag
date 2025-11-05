unit uSubCat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBASEFORM3, ComCtrls, ToolWin, ExtCtrls, DB, StdCtrls, Mask,
  DBCtrls;

type
  TfSubCat = class(TfBaseForm3)
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoMarca: TDataSource;
    laID_Zone: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBECODICE: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSubCat: TfSubCat;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfSubCat.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  dsoMarca.DataSet.Insert;
  dbeCodice.SetFocus;

end;

procedure TfSubCat.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoMarca.DataSet.Edit;
 dbeCodice.SetFocus;

end;

procedure TfSubCat.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
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

procedure TfSubCat.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoMarca.DataSet.Open;

end;

procedure TfSubCat.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
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

procedure TfSubCat.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Prior;
end;

procedure TfSubCat.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Next;
end;

end.
