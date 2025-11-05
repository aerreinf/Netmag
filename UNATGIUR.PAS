unit uNatGiur;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls, Db;

type
  TfNatGiur = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    Label1: TLabel;
    dbeSoggRes: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dsoNatGiur: TDataSource;
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
  fNatGiur: TfNatGiur;

implementation

{$R *.DFM}

procedure TfNatGiur.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoNatGiur.DataSet.Insert;
end;

procedure TfNatGiur.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoNatGiur.DataSet.Edit;
end;

procedure TfNatGiur.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoNatGiur.DataSet.Post;
end;

procedure TfNatGiur.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoNatGiur.DataSet.Cancel;
end;

procedure TfNatGiur.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoNatGiur.DataSet.Delete;
end;

procedure TfNatGiur.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoNatGiur.DataSet.Prior;
end;

procedure TfNatGiur.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoNatGiur.DataSet.Next;
end;

end.
