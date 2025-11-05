unit uABI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls, Db,
  Grids, DBGrids;

type
  TfABI = class(TfBaseForm3)
    laID_ABI: TLabel;
    dbeID_ABI: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dsoABI: TDataSource;
    paSottoZone: TPanel;
    dsgSottoZone: TDBGrid;
    dsoShowCAB: TDataSource;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure dbeID_ABIChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
  private
    { Private declarations }
    procedure Update_Grid;
  public
    { Public declarations }
  end;

var
  fABI: TfABI;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfABI.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID_ABI.SetFocus;
 dsoABI.DataSet.Insert;
end;

procedure TfABI.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID_ABI.SetFocus;
 dsoABI.DataSet.Edit;
end;

procedure TfABI.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoABI.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
dsoABI.DataSet.Open;
end;

procedure TfABI.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoABI.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoABI.DataSet.Open;
end;

procedure TfABI.tbtnEliminaClick(Sender: TObject);
begin
 try
 begin
 dsoABI.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoABI.DataSet.Open;
end;


procedure TfABI.Update_Grid;
begin
 //
 If (dsoABI.DataSet.State in [dsBrowse])
  Then
    With (dmodAz.ibqShowCAB) Do
    Begin
     Close;
      Unprepare;
       ParamByName('parIDABI').AsString:=
         dsoABI.DataSet.FieldByName('ID_ABI').AsString;
      Prepare;
     Open;
    End;
end;

procedure TfABI.dbeID_ABIChange(Sender: TObject);
begin
  inherited;
 Update_Grid;
end;

procedure TfABI.FormActivate(Sender: TObject);
begin
  inherited;
 Update_Grid;
end;

procedure TfABI.FormShow(Sender: TObject);
begin
  inherited;
 Update_Grid;
end;

procedure TfABI.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoABI.DataSet.Prior;
end;

procedure TfABI.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoABI.DataSet.Next;
end;

end.
