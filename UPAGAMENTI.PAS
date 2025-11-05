unit uPagamenti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin;

type
  TfPagamenti = class(TfBaseForm3)
    laID_Comune: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    Label2: TLabel;
    LookTipoPag: TDBLookupComboBox;
    LookTipoPagDescr: TDBLookupComboBox;
    dbePrimaRata: TDBEdit;
    Label3: TLabel;
    dbcbGiorniComm: TDBCheckBox;
    dbcbPersonRata: TDBCheckBox;
    dbeNumRate: TDBEdit;
    Label1: TLabel;
    dbcbEsclSabat: TDBCheckBox;
    dbcbEsclFesta: TDBCheckBox;
    Label5: TLabel;
    dbeSpese: TDBEdit;
    gbScadenze: TGroupBox;
    Label4: TLabel;
    dbragScadenze: TDBRadioGroup;
    dbeGiorn1rata: TDBEdit;
    dsoPagam: TDataSource;
    dsoTipoPagam: TDataSource;
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
  fPagamenti: TfPagamenti;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfPagamenti.tbtnNuovoClick(Sender: TObject);
begin
 inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeCodice.SetFocus;
 dsoPagam.DataSet.Insert;
end;

procedure TfPagamenti.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeCodice.SetFocus;
 dsoPagam.DataSet.Edit;
end;

procedure TfPagamenti.tbtnSalvaClick(Sender: TObject);
var
savep : TBookmark;
begin
try
 begin
 dsoPagam.DataSet.Post;
 savep := dsoPagam.DataSet.GetBookmark;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoPagam.DataSet.Open;
 dsoPagam.DataSet.GotoBookmark(savep);
 dsoPagam.DataSet.FreeBookmark(savep);
end;

procedure TfPagamenti.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoPagam.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoPagam.DataSet.Open;
end;

procedure TfPagamenti.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoPagam.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
 inherited;
end
except
dmodAz.ibtrDef.Rollback;
end;
 dsoPagam.DataSet.Open;
end;

procedure TfPagamenti.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoPagam.DataSet.Prior;
end;

procedure TfPagamenti.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoPagam.DataSet.Next;
end;

end.
