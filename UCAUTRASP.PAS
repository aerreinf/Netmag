unit uCauTrasp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls;

type
  TfCauTrasp = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoCauTrasp: TDataSource;
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
  fCauTrasp: TfCauTrasp;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfCauTrasp.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCauTrasp.DataSet.Insert;
 dbeCodice.SetFocus;
end;

procedure TfCauTrasp.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCauTrasp.DataSet.Edit;
 dbeCodice.SetFocus;
end;

procedure TfCauTrasp.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCauTrasp.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCauTrasp.DataSet.Open;
end;

procedure TfCauTrasp.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoCauTrasp.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoCauTrasp.DataSet.Open;
end;

procedure TfCauTrasp.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoCauTrasp.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCauTrasp.DataSet.Open;
end;

procedure TfCauTrasp.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoCauTrasp.DataSet.Prior;
end;

procedure TfCauTrasp.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoCauTrasp.DataSet.Next;
end;

end.
