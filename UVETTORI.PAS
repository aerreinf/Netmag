unit uVettori;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, DBCtrls, ExtCtrls, Mask, ComCtrls, ToolWin, Db;

type
  TfVettori = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    dbcboxAbbonato: TDBCheckBox;
    laRagSoc: TLabel;
    dbeRagSoc: TDBEdit;
    laPartIVA: TLabel;
    dbePartIVA: TDBEdit;
    laCodFisc: TLabel;
    dbeCodFisc: TDBEdit;
    laIndirizzo: TLabel;
    dbeIndirizzo: TDBEdit;
    laStato: TLabel;
    dbeStato: TDBEdit;
    laCAP: TLabel;
    LookCAP: TDBLookupComboBox;
    LookProv: TDBLookupComboBox;
    dbeCitta: TDBEdit;
    laStatoISO: TLabel;
    LookStatoISO: TDBLookupComboBox;
    laTel1: TLabel;
    dbeTel1: TDBEdit;
    dbeTel2: TDBEdit;
    laTel2: TLabel;
    bevIndir: TBevel;
    dbeFax: TDBEdit;
    laMaoneta: TLabel;
    LookMoneta: TDBLookupComboBox;
    laNota: TLabel;
    dbmNote: TDBMemo;
    laFAX: TLabel;
    laCitta: TLabel;
    laProv: TLabel;
    dsoVettori: TDataSource;
    dsoCodISO: TDataSource;
    dsoComuni: TDataSource;
    dsoMonete: TDataSource;
    dbeProv: TDBEdit;
    dsProv: TDataSource;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure LookProvExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVettori: TfVettori;

implementation

uses uAzDM, uPubDM;

{$R *.DFM}

procedure TfVettori.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeCodice.SetFocus;
 dsoVettori.DataSet.Insert;
end;

procedure TfVettori.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeCodice.SetFocus;
 dsoVettori.DataSet.Edit;
end;

procedure TfVettori.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoVettori.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
  dsoVettori.DataSet.Open;
  dsoComuni.DataSet.Open;
  dsoCodISO.DataSet.Open;
  dsoMonete.DataSet.Open;
end;

procedure TfVettori.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoVettori.DataSet.Cancel;
end;

procedure TfVettori.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoVettori.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
  dsoVettori.DataSet.Open;
  dsoComuni.DataSet.Open;
  dsoCodISO.DataSet.Open;
  dsoMonete.DataSet.Open;
end;

procedure TfVettori.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoVettori.DataSet.Prior;
end;

procedure TfVettori.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoVettori.DataSet.Next;
end;

procedure TfVettori.LookProvExit(Sender: TObject);
Begin
 Try
    dbeProv.Field.AsString:=LookProv.ListField;

 Except
 End;  
End;

END.

