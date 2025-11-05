unit uMarca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, Mask, DBCtrls, Db, ComCtrls, ToolWin, ExtCtrls,
  IBCustomDataSet, IBQuery;

type
  TfMarca = class(TfBaseForm3)
    dsoMarca: TDataSource;
    laID_Zone: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    IBQuery1: TIBQuery;
    Button1: TButton;
    IBQuery1DESCR: TIBStringField;
    IBQuery1CODICE: TIntegerField;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMarca: TfMarca;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfMarca.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
  dsoMarca.DataSet.Insert;
  dbeDescr.SetFocus;
 end;

procedure TfMarca.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoMarca.DataSet.Edit;
 dbeCodice.SetFocus;
end;

procedure TfMarca.tbtnSalvaClick(Sender: TObject);
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

procedure TfMarca.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoMarca.DataSet.Open;
end;

procedure TfMarca.tbtnEliminaClick(Sender: TObject);
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

procedure TfMarca.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Prior;
end;

procedure TfMarca.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoMarca.DataSet.Next;
end;

procedure TfMarca.Button1Click(Sender: TObject);
begin
IBQuery1.Open;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StampaMarche.frf');
dmodAz.rePRN.ShowReport;
end;

end.
