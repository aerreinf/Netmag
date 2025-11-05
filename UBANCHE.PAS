unit uBanche;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls,
  RxLookup;

type
  TfBanche = class(TfBaseForm3)
    laCodBanca: TLabel;
    dbeCodBanca: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    laSportello: TLabel;
    dbeSportello: TDBEdit;
    laAzienda: TLabel;
    dbeAzienda: TDBEdit;
    laCodCAB: TLabel;
    laCodABI: TLabel;
    laCitta: TLabel;
    dbeCitta: TDBEdit;
    dbeIndirizzo: TDBEdit;
    laIndA1: TLabel;
    laTel1A1: TLabel;
    dbeTel1: TDBEdit;
    laEMailA1: TLabel;
    dbeEMail: TDBEdit;
    dbeInternet: TDBEdit;
    laInternetA1: TLabel;
    dbeTel2: TDBEdit;
    laTel2A1: TLabel;
    laFaxA1: TLabel;
    dbeFax: TDBEdit;
    dsoBanche: TDataSource;
    dsoABI: TDataSource;
    dsoCAB: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Button1: TButton;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure RxDBLookupCombo2CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBanche: TfBanche;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfBanche.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeCodBanca.SetFocus;
 dsoBanche.DataSet.Insert;
end;

procedure TfBanche.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeCodBanca.SetFocus;
 dsoBanche.DataSet.Edit;
end;

procedure TfBanche.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoBanche.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoBanche.DataSet.Open;
 dmodAz.ibTab_ABI.Open;
dmodAz.ibTab_CAB.Close;
dmodAz.ibTab_CAB.SelectSQL.Clear;
dmodAz.ibTab_CAB.SelectSQL.Add('select * from TAB_CAB');
dmodAz.ibTab_CAB.SelectSQL.Add('order by id_cab,abi_id');
dmodAz.ibTab_CAB.Open;
end;

procedure TfBanche.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoBanche.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoBanche.DataSet.Open;
 dmodAz.ibTab_ABI.Open;
dmodAz.ibTab_CAB.Close;
dmodAz.ibTab_CAB.SelectSQL.Clear;
dmodAz.ibTab_CAB.SelectSQL.Add('select * from TAB_CAB');
dmodAz.ibTab_CAB.SelectSQL.Add('order by id_cab,abi_id');
dmodAz.ibTab_CAB.Open;

end;

procedure TfBanche.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoBanche.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
 inherited;
end
except
dmodAz.ibtrDef.Rollback;
end;
 dsoBanche.DataSet.Open;
 dmodAz.ibTab_ABI.Open;
 dmodAz.ibTab_CAB.Open;
 end;

procedure TfBanche.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoBanche.DataSet.Prior;
end;

procedure TfBanche.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoBanche.DataSet.Next;
end;

procedure TfBanche.Button1Click(Sender: TObject);
begin
dmodAz.ibTab_CAB.Close;
dmodAz.ibTab_CAB.SelectSQL.Clear;
dmodAz.ibTab_CAB.SelectSQL.Add('select * from TAB_CAB');
dmodAz.ibTab_CAB.SelectSQL.Add('where abi_id =:a');
dmodAz.ibTab_CAB.SelectSQL.Add('order by id_cab,abi_id');
dmodAz.ibTab_CAB.ParamByName('a').AsString := RxDBLookupCombo3.KeyValue;
dmodAz.ibTab_CAB.Open;
end;

procedure TfBanche.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
dsoBanche.DataSet.FieldByName('INDIRIZZO').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('INDIRIZZO').AsString;

dsoBanche.DataSet.FieldByName('CITTA').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('COMUNE').AsString;

dsoBanche.DataSet.FieldByName('INTERNET').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAB').AsString;

end;

procedure TfBanche.RxDBLookupCombo2CloseUp(Sender: TObject);
begin
dsoBanche.DataSet.FieldByName('INDIRIZZO').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('INDIRIZZO').AsString;

dsoBanche.DataSet.FieldByName('CITTA').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('COMUNE').AsString;

dsoBanche.DataSet.FieldByName('INTERNET').AsString :=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('ID_CAB').AsString;        
end;

end.
