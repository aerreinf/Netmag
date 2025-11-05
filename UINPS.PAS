unit uINPS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls;

type
  TfINPS = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dsoINPS: TDataSource;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fINPS: TfINPS;

implementation

{$R *.DFM}

procedure TfINPS.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoINPS.DataSet.Insert;
end;

procedure TfINPS.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoINPS.DataSet.Edit;
end;

procedure TfINPS.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoINPS.DataSet.Post;
end;

procedure TfINPS.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoINPS.DataSet.Cancel;
end;

procedure TfINPS.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoINPS.DataSet.Delete;
end;

procedure TfINPS.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoINPS.DataSet.Next;
end;

procedure TfINPS.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoINPS.DataSet.Prior;
end;

end.
