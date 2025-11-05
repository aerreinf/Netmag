unit uModCons;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls;

type
  TfModCons = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dsoModoCons: TDataSource;
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
  fModCons: TfModCons;

implementation

{$R *.DFM}

procedure TfModCons.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoModoCons.DataSet.Insert;
end;

procedure TfModCons.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoModoCons.DataSet.Edit;
end;

procedure TfModCons.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoModoCons.DataSet.Post;
end;

procedure TfModCons.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoModoCons.DataSet.Cancel;
end;

procedure TfModCons.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoModoCons.DataSet.Delete;
end;

procedure TfModCons.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoModoCons.DataSet.Prior;
end;

procedure TfModCons.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoModoCons.DataSet.Next;
end;

end.
