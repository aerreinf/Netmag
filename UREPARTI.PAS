unit uReparti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin, ExtCtrls;

type
  TfReparti = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    Label1: TLabel;
    LookCodIVACod: TDBLookupComboBox;
    LookCodIVADescr: TDBLookupComboBox;
    dbcbDefault: TDBCheckBox;
    dsoReparti: TDataSource;
    dsoCodIVA: TDataSource;
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
  fReparti: TfReparti;

implementation

{$R *.DFM}

procedure TfReparti.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoReparti.DataSet.Insert;
 dbcbDefault.Field.AsInteger:=0;
end;

procedure TfReparti.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeCodice.SetFocus;
 dsoReparti.DataSet.Edit;
end;

procedure TfReparti.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoReparti.DataSet.Post;
end;

procedure TfReparti.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoReparti.DataSet.Cancel;
end;

procedure TfReparti.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoReparti.DataSet.Delete;
end;

procedure TfReparti.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoReparti.DataSet.Prior;
end;

procedure TfReparti.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoReparti.DataSet.Next;
end;

end.
