unit uDescrAgg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin, ExtCtrls;

type
  TfDescrAgg = class(TfBaseForm3)
    laCod: TLabel;
    dbeCodice: TDBEdit;
    Label1: TLabel;
    D1: TDBMemo;
    d2: TDBMemo;
    d4: TDBMemo;
    d3: TDBMemo;
    d5: TDBMemo;
    d6: TDBMemo;
    d8: TDBMemo;
    d7: TDBMemo;
    d9: TDBMemo;
    dsoDescrAgg: TDataSource;
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
  fDescrAgg: TfDescrAgg;

implementation

{$R *.DFM}

procedure TfDescrAgg.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoDescrAgg.DataSet.Insert;
end;

procedure TfDescrAgg.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoDescrAgg.DataSet.Edit;
end;

procedure TfDescrAgg.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoDescrAgg.DataSet.Post;
end;

procedure TfDescrAgg.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoDescrAgg.DataSet.Cancel;
end;

procedure TfDescrAgg.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoDescrAgg.DataSet.Delete;
end;

procedure TfDescrAgg.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoDescrAgg.DataSet.Prior;
end;

procedure TfDescrAgg.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoDescrAgg.DataSet.Next;
end;

end.
