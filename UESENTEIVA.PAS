unit uEsenteIva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCAUTRASP, DB, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TfEsenteIva = class(TfCauTrasp)
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEsenteIva: TfEsenteIva;

implementation

uses uPubDM;

{$R *.dfm}

procedure TfEsenteIva.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dsoCauTrasp.DataSet.Insert;
 dbeCodice.SetFocus;
end;

procedure TfEsenteIva.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dsoCauTrasp.DataSet.Edit;
 dbeCodice.SetFocus;
end;

procedure TfEsenteIva.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCauTrasp.DataSet.Post;
 dmodPub.ibTransPub.Commit;
end
except
dmodPub.ibTransPub.Rollback;
end;
 inherited;
 dsoCauTrasp.DataSet.Open;
end;

procedure TfEsenteIva.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoCauTrasp.DataSet.Delete;
 dmodPub.ibTransPub.Commit;
end
except
dmodPub.ibTransPub.Rollback;
end;
 inherited;
 dsoCauTrasp.DataSet.Open;

end;

procedure TfEsenteIva.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoCauTrasp.DataSet.Cancel;
 dmodPub.ibTransPub.Rollback;
 dsoCauTrasp.DataSet.Open;
end;

end.
