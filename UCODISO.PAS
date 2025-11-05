unit uCodISO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls;

type
  TfCodISO = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dbeNumPartIVA: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    LookNazione: TDBLookupComboBox;
    dsoCodISO: TDataSource;
    dsoNazioni: TDataSource;
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
  fCodISO: TfCodISO;

implementation

uses uPubDM;

{$R *.DFM}

procedure TfCodISO.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeCodice.SetFocus;
 dsoCodISO.DataSet.Insert;
end;

procedure TfCodISO.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeCodice.SetFocus;
 dsoCodISO.DataSet.Edit;
end;

procedure TfCodISO.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCodISO.DataSet.Post;
 dmodPub.ibTransPub.Commit;
end
except
dmodPub.ibTransPub.Rollback;
end;
 inherited;
 dsoCodISO.DataSet.Open;
end;

procedure TfCodISO.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoCodISO.DataSet.Cancel;
 dmodPub.ibTransPub.Rollback;
 dsoCodISO.DataSet.Open;

end;

procedure TfCodISO.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoCodISO.DataSet.Delete;
 dmodPub.ibTransPub.Commit;
 inherited;
end
except
 dmodPub.ibTransPub.Rollback;
end;
 dsoCodISO.DataSet.Open;
end;

procedure TfCodISO.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoCodISO.DataSet.Prior;
end;

procedure TfCodISO.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoCodISO.DataSet.Next;
end;

end.
