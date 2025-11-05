unit uCAB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls, Db,
  RxLookup;

type
  TfCAB = class(TfBaseForm3)
    laID_CAB: TLabel;
    dbeID_CAB: TDBEdit;
    laABI_ID: TLabel;
    LookABI_ID: TDBLookupComboBox;
    laInd: TLabel;
    dbeIndirizzo: TDBEdit;
    laComune: TLabel;
    laProv: TLabel;
    dbeLocalita: TDBEdit;
    laLocalita: TLabel;
    LookABIDecsr: TDBLookupComboBox;
    Label1: TLabel;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dsoCAB: TDataSource;
    dsoABI: TDataSource;
    dsoComuni: TDataSource;
    LookComune_ID: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
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
  fCAB: TfCAB;

implementation

uses uAzDM, uPubDM;

{$R *.DFM}

procedure TfCAB.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID_CAB.SetFocus;
 dsoCAB.DataSet.Insert;
end;

procedure TfCAB.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID_CAB.SetFocus;
 dsoCAB.DataSet.Edit;
end;

procedure TfCAB.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCAB.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCAB.DataSet.Open;
end;

procedure TfCAB.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoCAB.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoCAB.DataSet.Open;

end;

procedure TfCAB.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoCAB.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
 inherited;
end
except
dmodAz.ibtrDef.Rollback;
end;
 dsoCAB.DataSet.Open;
end;

procedure TfCAB.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoCAB.DataSet.Prior;
end;

procedure TfCAB.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoCAB.DataSet.Next;
end;

end.
