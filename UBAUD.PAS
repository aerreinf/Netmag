unit uBaud;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls, Db;

type
  TfBaud = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoBaud: TDataSource;
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
  fBaud: TfBaud;

implementation

{$R *.DFM}

procedure TfBaud.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoBaud.DataSet.Insert;
end;

procedure TfBaud.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoBaud.DataSet.Edit;
end;

procedure TfBaud.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoBaud.DataSet.Post;
end;

procedure TfBaud.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoBaud.DataSet.Cancel;
end;

procedure TfBaud.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoBaud.DataSet.Delete;
end;

procedure TfBaud.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoBaud.DataSet.Prior;
end;

procedure TfBaud.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoBaud.DataSet.next;
end;

end.
