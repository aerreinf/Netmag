unit uBitDati;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls;

type
  TfBitDati = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dsoBitDati: TDataSource;
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
  fBitDati: TfBitDati;

implementation

{$R *.DFM}

procedure TfBitDati.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoBitDati.DataSet.Insert;
end;

procedure TfBitDati.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoBitDati.DataSet.Edit;
end;

procedure TfBitDati.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoBitDati.DataSet.Post;
end;

procedure TfBitDati.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoBitDati.DataSet.Cancel;
end;

procedure TfBitDati.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoBitDati.DataSet.Delete;
end;

procedure TfBitDati.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoBitDati.DataSet.Prior;
end;

procedure TfBitDati.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoBitDati.DataSet.Next;
end;

end.
