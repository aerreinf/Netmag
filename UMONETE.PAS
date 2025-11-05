unit uMonete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls;

type
  TfMonete = class(TfBaseForm3)
    laCodice: TLabel;
    dbeID_Moneta: TDBEdit;
    laSimbolo: TLabel;
    dbeSimbolo: TDBEdit;
    dbcboxMonetaUE: TDBCheckBox;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    gboxArrotondamento: TGroupBox;
    laTipoArr: TLabel;
    laPosArr: TLabel;
    LookTipoArrot_ID: TDBLookupComboBox;
    dbePosizioneArr: TDBEdit;
    dsoMonete: TDataSource;
    dsoTipoArr: TDataSource;
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
  fMonete: TfMonete;

implementation

{$R *.DFM}

procedure TfMonete.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 dbeID_Moneta.SetFocus;
 dsoMonete.DataSet.Insert;
 dbcboxMonetaUE.Field.AsInteger:=0;
end;

procedure TfMonete.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 dbeID_Moneta.SetFocus;
 dsoMonete.DataSet.Edit;
end;

procedure TfMonete.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoMonete.DataSet.Post;
end;

procedure TfMonete.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoMonete.DataSet.Cancel;
end;

procedure TfMonete.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
 dsoMonete.DataSet.Delete;
end;

procedure TfMonete.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoMonete.DataSet.prior
end;

procedure TfMonete.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoMonete.DataSet.next
end;

end.
