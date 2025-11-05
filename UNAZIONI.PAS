unit uNazioni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin, ExtCtrls,
  Buttons, Variants;

type
  TfNazioni = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    dbeProvISO: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    dbeCodPaese: TDBEdit;
    dbcboxMembroCE: TDBCheckBox;
    dbeNcarPartIVA: TDBEdit;
    dsoNazioni: TDataSource;
    edMoneta: TEdit;
    bbLookMoneta: TBitBtn;
    dbeMoneta: TDBEdit;
    procedure bbLookMonetaClick(Sender: TObject);
    procedure edMonetaExit(Sender: TObject);
    procedure dbeMonetaChange(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNazioni: TfNazioni;

implementation

uses uRicercaVeloce, uPubDM;

{$R *.DFM}

procedure TfNazioni.bbLookMonetaClick(Sender: TObject);
begin
  inherited;
 With (TfRicercaVeloceSQL.Create(Self)) Do
 Begin
  // Pass vals
   strTabella:='TAB_MONETE';
   strCampoWhere:='DESCR';
   strCampo2:='DESCR';
   strResCampoCodice:='ID_MONETA';
   strValore:=edMoneta.Text;
  // Show
  ShowModal;
  // Get vals
  edMoneta.Text:=VarToStr(vaResValore);
  dbeMoneta.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfNazioni.edMonetaExit(Sender: TObject);
begin
  inherited;
 If Not(edMoneta.Text='')
  Then bbLookMoneta.Click;
end;

procedure TfNazioni.dbeMonetaChange(Sender: TObject);
begin
  inherited;
 // Fill edit with corr value!
 If (dbeMoneta.DataSource.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceSQL.Create(Self)) Do
        Begin
         // Pass vals
         strTabella:='TAB_MONETE';
         strCampoWhere:='ID_MONETA';
         strCampo2:='DESCR';
         strResCampoCodice:='DESCR';
         strValore:=dbeMoneta.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edMoneta.Text:=VarToStr(vaResCodice);
         // Destroy
         Free;
        End;
       End;
end;

procedure TfNazioni.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoNazioni.DataSet.Prior;
end;

procedure TfNazioni.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoNazioni.DataSet.Next;
end;

procedure TfNazioni.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeCodice.SetFocus;
 dsoNazioni.DataSet.Insert;
end;

procedure TfNazioni.tbtnModificaClick(Sender: TObject);
begin
if not dmodPub.ibTransPub.InTransaction then
       dmodPub.ibTransPub.StartTransaction;
 dbeCodice.SetFocus;
 dsoNazioni.DataSet.Edit;
end;

procedure TfNazioni.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoNazioni.DataSet.Post;
 dmodPub.ibTransPub.Commit;
end
except
dmodPub.ibTransPub.Rollback;
end;
 inherited;
 dsoNazioni.DataSet.Open;

end;

procedure TfNazioni.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoNazioni.DataSet.Cancel;
 dmodPub.ibTransPub.Rollback;
 dsoNazioni.DataSet.Open;
end;

procedure TfNazioni.tbtnEliminaClick(Sender: TObject);
begin
try
begin
 dsoNazioni.DataSet.Delete;
 dmodPub.ibTransPub.Commit;
 inherited;
end
except
 dmodPub.ibTransPub.Rollback;
end;
 dsoNazioni.DataSet.Open;

end;

end.
