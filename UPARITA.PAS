unit uParita;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls, Db;

type
  TfParita = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoParita: TDataSource;
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
  fParita: TfParita;

implementation

{$R *.DFM}

procedure TfParita.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoParita.DataSet.Insert;
end;

procedure TfParita.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoParita.DataSet.Edit;
end;

procedure TfParita.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoParita.DataSet.Post;
end;

procedure TfParita.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoParita.DataSet.Cancel;
end;

procedure TfParita.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoParita.DataSet.Delete;
end;

procedure TfParita.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoParita.DataSet.Prior;
end;

procedure TfParita.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoParita.DataSet.Next;
end;

end.
