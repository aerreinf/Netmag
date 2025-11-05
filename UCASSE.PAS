unit uCasse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls, Db;

type
  TfCasse = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    laNumSer: TLabel;
    dbeSerialNumber: TDBEdit;
    gbComunic: TGroupBox;
    laBaud: TLabel;
    laParity: TLabel;
    laStopBit: TLabel;
    laDataBit: TLabel;
    laPort: TLabel;
    LookBaud: TDBLookupComboBox;
    LookParita: TDBLookupComboBox;
    LookStopBit: TDBLookupComboBox;
    LookDataBit: TDBLookupComboBox;
    LookPort: TDBLookupComboBox;
    gbConfig: TGroupBox;
    laModECR: TLabel;
    laTimeOut: TLabel;
    laNumCa: TLabel;
    laNumRep: TLabel;
    dbeTimeOut: TDBEdit;
    dbeNumCar: TDBEdit;
    dbeNumRep: TDBEdit;
    LookModelloECR: TDBLookupComboBox;
    dsoCasse: TDataSource;
    dsoBaud: TDataSource;
    dsoParita: TDataSource;
    dsoBitDati: TDataSource;
    dsoBitStop: TDataSource;
    dsoPorte: TDataSource;
    dsoModECR: TDataSource;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
  private
    { Private declarations }
    procedure Apri;
  public
    { Public declarations }
  end;

var
  fCasse: TfCasse;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfCasse.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCasse.DataSet.Insert;
 dbeCodice.SetFocus;
end;

procedure TfCasse.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCasse.DataSet.Edit;
 dbeCodice.SetFocus;
end;

procedure TfCasse.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCasse.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
Apri;
end;

procedure TfCasse.tbtnAnullaClick(Sender: TObject);
begin
 dsoCasse.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
  inherited;
Apri;
end;

procedure TfCasse.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoCasse.DataSet.delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
Apri;

end;

procedure TfCasse.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoCasse.DataSet.Prior;
end;

procedure TfCasse.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoCasse.DataSet.Next;
end;

procedure TfCasse.Apri;
begin
 dsoCasse.DataSet.open;
 dsoBaud.DataSet.open;
 dsoParita.DataSet.open;
 dsoBitDati.DataSet.open;
 dsoBitStop.DataSet.open;
 dsoModECR.DataSet.open;
 dsoPorte.DataSet.open;
end;
end.
