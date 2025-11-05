unit uBitStop;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls;

type
  TfBitStop = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoBitStop: TDataSource;
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
  fBitStop: TfBitStop;

implementation

{$R *.DFM}

procedure TfBitStop.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoBitStop.DataSet.Insert;
end;

procedure TfBitStop.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoBitStop.DataSet.Edit;
end;

procedure TfBitStop.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoBitStop.DataSet.Post;
end;

procedure TfBitStop.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoBitStop.DataSet.Cancel;
end;

procedure TfBitStop.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoBitStop.DataSet.Delete;
end;

procedure TfBitStop.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoBitStop.DataSet.Prior;
end;

procedure TfBitStop.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoBitStop.DataSet.Next
end;

end.
