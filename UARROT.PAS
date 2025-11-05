unit uArrot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls;

type
  TfArrot = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    LookTipoArrot: TDBLookupComboBox;
    LookMonetaDescr: TDBLookupComboBox;
    LookMoneta: TDBLookupComboBox;
    Label1: TLabel;
    laImp1: TLabel;
    laImp2: TLabel;
    laImp3: TLabel;
    laImp4: TLabel;
    laImp5: TLabel;
    laImp6: TLabel;
    dbeImp6: TDBEdit;
    dbeImp5: TDBEdit;
    dbeImp4: TDBEdit;
    dbeImp3: TDBEdit;
    dbeImp2: TDBEdit;
    dbeImp1: TDBEdit;
    laArr1: TLabel;
    laArr2: TLabel;
    laArr3: TLabel;
    laArr4: TLabel;
    laArr5: TLabel;
    laArr6: TLabel;
    dbeArr6: TDBEdit;
    dbeArr5: TDBEdit;
    dbeArr4: TDBEdit;
    dbeArr3: TDBEdit;
    dbeArr2: TDBEdit;
    dbeArr1: TDBEdit;
    dsoArrot: TDataSource;
    dsoMonete: TDataSource;
    dsoTipoArr: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
  fArrot: TfArrot;

implementation

{$R *.DFM}

procedure TfArrot.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeImp1.SetFocus;
 dsoArrot.DataSet.Insert;
end;

procedure TfArrot.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeImp1.SetFocus;
 dsoArrot.DataSet.Edit;
end;

procedure TfArrot.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoArrot.DataSet.Post;
end;

procedure TfArrot.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoArrot.DataSet.Cancel;
end;

procedure TfArrot.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoArrot.DataSet.Delete;
end;

procedure TfArrot.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoArrot.DataSet.Prior;
end;

procedure TfArrot.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoArrot.DataSet.Next;
end;

end.
