unit uRegioni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls;

type
  TfRegioni = class(TfBaseForm3)
    laID_reg: TLabel;
    dbeID_Regione: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoRegioni: TDataSource;
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
  fRegioni: TfRegioni;

implementation

uses uPubDM;

{$R *.DFM}

procedure TfRegioni.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeID_Regione.SetFocus;
 dsoRegioni.DataSet.Insert;
end;

procedure TfRegioni.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeID_Regione.SetFocus;
 dsoRegioni.DataSet.Edit;
end;

procedure TfRegioni.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoRegioni.DataSet.Post;
 dmodPub.ibTransPub.Commit;
end
except
dmodPub.ibTransPub.Rollback;
end;
 inherited;
 dsoRegioni.DataSet.Open;
end;

procedure TfRegioni.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoRegioni.DataSet.Cancel;
 dmodPub.ibTransPub.Rollback;
 dsoRegioni.DataSet.Open;
end;

procedure TfRegioni.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoRegioni.DataSet.Delete;
 dmodPub.ibTransPub.Commit;
 inherited;
end
except
 dmodPub.ibTransPub.Rollback;
end;
 dsoRegioni.DataSet.Open;
end;

procedure TfRegioni.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoRegioni.DataSet.Prior;
end;

procedure TfRegioni.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoRegioni.DataSet.Next;
end;

end.
