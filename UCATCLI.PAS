unit uCatCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls;

type
  TfCatCli = class(TfBaseForm3)
    laID: TLabel;
    dbeID: TDBEdit;
    laListino: TLabel;
    LookListinoCod: TDBLookupComboBox;
    LookListinoDescr: TDBLookupComboBox;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dsoCatCli: TDataSource;
    dsoListini: TDataSource;
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
  fCatCli: TfCatCli;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfCatCli.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID.SetFocus;
 dsoCatCli.DataSet.Insert;
end;

procedure TfCatCli.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID.SetFocus;
 dsoCatCli.DataSet.Edit;
end;

procedure TfCatCli.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCatCli.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCatCli.DataSet.Open;
 dsoListini.DataSet.Open;
end;

procedure TfCatCli.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoCatCli.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoCatCli.DataSet.Open;
 dsoListini.DataSet.Open;
end;

procedure TfCatCli.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoCatCli.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
 inherited;
end
except
dmodAz.ibtrDef.Rollback;
end;
 dsoCatCli.DataSet.Open;
 dsoListini.DataSet.Open;
end;

procedure TfCatCli.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoCatCli.DataSet.Prior;
end;

procedure TfCatCli.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoCatCli.DataSet.Next;
end;

end.
