unit UCauInt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBASEFORM3, StdCtrls, Mask, DBCtrls, DB, ComCtrls, ToolWin,
  ExtCtrls;

type
  TfCauInt = class(TfBaseForm3)
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
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
  fCauInt: TfCauInt;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfCauInt.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  DataSource1.DataSet.Insert;
  DBEdit1.SetFocus;
end;

procedure TfCauInt.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 DataSource1.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 DataSource1.DataSet.Open;
end;

procedure TfCauInt.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 DataSource1.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 DataSource1.DataSet.Open;

end;

procedure TfCauInt.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 DataSource1.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 DataSource1.DataSet.Open;
end;

procedure TfCauInt.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 DataSource1.DataSet.Edit;
 DBEdit1.SetFocus;
end;

end.
