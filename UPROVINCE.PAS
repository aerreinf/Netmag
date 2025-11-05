unit uProvince;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls, Db;

type
  TfProvince = class(TfBaseForm3)
    laProvID: TLabel;
    dbeID_Prov: TDBEdit;
    Label1: TLabel;
    LookRegione: TDBLookupComboBox;
    Label2: TLabel;
    dbeSigla: TDBEdit;
    dbeDescr: TDBEdit;
    Label3: TLabel;
    dsoProvince: TDataSource;
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
  fProvince: TfProvince;

implementation

uses uPubDM;

{$R *.DFM}

procedure TfProvince.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeID_Prov.SetFocus;
 dsoProvince.DataSet.Insert;
end;

procedure TfProvince.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeID_Prov.SetFocus;
 dsoProvince.DataSet.Edit;
end;

procedure TfProvince.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoProvince.DataSet.Post;
 dmodPub.ibTransPub.Commit;
end
except
dmodPub.ibTransPub.Rollback;
end;
 inherited;
 dsoProvince.DataSet.Open;
end;

procedure TfProvince.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoProvince.DataSet.Cancel;
 dmodPub.ibTransPub.Rollback;
 dsoProvince.DataSet.Open;
end;

procedure TfProvince.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoProvince.DataSet.Delete;
 dmodPub.ibTransPub.Commit;
 inherited;
end
except
 dmodPub.ibTransPub.Rollback;
end;
 dsoProvince.DataSet.Open;
end;

procedure TfProvince.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoProvince.DataSet.Prior;
end;

procedure TfProvince.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoProvince.DataSet.Next;
end;

end.
