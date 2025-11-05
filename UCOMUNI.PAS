unit uComuni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls;

type
  TfComuni = class(TfBaseForm3)
    laID_Comune: TLabel;
    dbeID_Comune: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    laProvincia: TLabel;
    LookProv: TDBLookupComboBox;
    laCodCom: TLabel;
    dbeCodCom: TDBEdit;
    laCAP: TLabel;
    dbeCAP: TDBEdit;
    dsoComuni: TDataSource;
    dsoProvince: TDataSource;
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
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
  fComuni: TfComuni;

implementation

uses uPubDM;

{$R *.DFM}

procedure TfComuni.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoComuni.DataSet.Prior;
end;

procedure TfComuni.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoComuni.DataSet.Next;
end;

procedure TfComuni.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeID_Comune.SetFocus;
 dsoComuni.DataSet.insert;
end;

procedure TfComuni.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeID_Comune.SetFocus;
 dsoComuni.DataSet.Edit;

end;

procedure TfComuni.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoComuni.DataSet.Post;
 dmodPub.ibTransPub.Commit;
end
except
dmodPub.ibTransPub.Rollback;
end;
 inherited;
 dsoComuni.DataSet.Open;
end;

procedure TfComuni.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoComuni.DataSet.Cancel;
 dmodPub.ibTransPub.Rollback;
 dsoComuni.DataSet.Open;
end;

procedure TfComuni.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoComuni.DataSet.Delete;
 dmodPub.ibTransPub.Commit;
 inherited;
end
except
 dmodPub.ibTransPub.Rollback;
end;
 dsoComuni.DataSet.open;
end;

end.
