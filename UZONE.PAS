unit uZone;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids;

type
  TfZone = class(TfBaseForm3)
    laID_Zone: TLabel;
    dbeID_Codice_Zona: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dsoZone: TDataSource;
    paSottoZone: TPanel;
    dsgSottoZone: TDBGrid;
    dsoShowSZone: TDataSource;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure dbeID_Codice_ZonaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Update_Grid;
  public
    { Public declarations }
  end;

var
  fZone: TfZone;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfZone.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoZone.DataSet.Insert;
 dbeID_Codice_Zona.SetFocus;
end;

procedure TfZone.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID_Codice_Zona.SetFocus;
 dsoZone.DataSet.Edit;
end;

procedure TfZone.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoZone.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoZone.DataSet.Open;
 Update_Grid;
end;

procedure TfZone.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoZone.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoZone.DataSet.Open;
 Update_Grid;
end;

procedure TfZone.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoZone.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
 inherited;
end
except
dmodAz.ibtrDef.Rollback;
end;
 dsoZone.DataSet.Open;
 Update_Grid;
end;

procedure TfZone.Update_Grid;
begin
 //
 If (dsoZone.DataSet.State in [dsBrowse])
  Then
    With (dmodAz.ibqShowSZone) Do
    Begin
     Close;
      Unprepare;
       ParamByName('parIDZona').Value:=
         dsoZone.DataSet.FieldByName('ID_CODICE_ZONA').Value;
      Prepare;
     Open;
    End;
end;

procedure TfZone.dbeID_Codice_ZonaChange(Sender: TObject);
begin
  inherited;
 Update_Grid;
end;

procedure TfZone.FormActivate(Sender: TObject);
begin
  inherited;
 Update_Grid;
end;

procedure TfZone.FormShow(Sender: TObject);
begin
  inherited;
 Update_Grid;
end;

procedure TfZone.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoZone.DataSet.Prior;
end;

procedure TfZone.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoZone.DataSet.Next;
end;

end.
