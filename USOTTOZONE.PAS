unit uSottoZone;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls, Db,
  Buttons, Variants;

type
  TfSottoZone = class(TfBaseForm3)
    laID_Sotto_Zone: TLabel;
    dbeID_Codice_Sotto_Zona: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    laZona: TLabel;
    dsoSottoZone: TDataSource;
    edZona: TEdit;
    bbLoozZona: TBitBtn;
    dbeZona: TDBEdit;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure bbLoozZonaClick(Sender: TObject);
    procedure dbeZonaChange(Sender: TObject);
    procedure edZonaExit(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSottoZone: TfSottoZone;

implementation

uses uRicercaVeloceAZ, uAzDM;

{$R *.DFM}

procedure TfSottoZone.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID_Codice_Sotto_Zona.SetFocus;
 dsoSottoZone.DataSet.Insert;
end;

procedure TfSottoZone.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dbeID_Codice_Sotto_Zona.SetFocus;
 dsoSottoZone.DataSet.Edit;
end;

procedure TfSottoZone.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoSottoZone.DataSet.Post;
 dmodAz.ibtrDef.Commit;
 end
except
dmodAz.ibtrDef.Rollback;
end;
  inherited;
 dsoSottoZone.DataSet.Open;
end;

procedure TfSottoZone.tbtnAnullaClick(Sender: TObject);
begin
  inherited;
 dsoSottoZone.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoSottoZone.DataSet.Open;
end;

procedure TfSottoZone.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoSottoZone.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
 end
except
dmodAz.ibtrDef.Rollback;
end;
  inherited;
 dsoSottoZone.DataSet.Open;
end;

procedure TfSottoZone.bbLoozZonaClick(Sender: TObject);
begin
  inherited;
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
  boolAdditionalWhere:=False;
  strTabella:='TAB_ZONE';
  strCampoWhere:='DESCR';
  strCampo2:='DESCR';
  strResCampoCodice:='ID_CODICE_ZONA';
  strValore:=edZona.Text;
  // Show
  ShowModal;
  // Get vals
  edZona.Text:=VarToStr(vaResValore);
  dbeZona.Field.AsVariant:=vaResCodice;
  // Destroy
  Free;
 End;
end;

procedure TfSottoZone.dbeZonaChange(Sender: TObject);
begin
  inherited;
 // Fill edit with corr value!
 If (dsoSottoZone.DataSet.State in [dsBrowse])
  Then Begin
        With (TfRicercaVeloceAZSQL.Create(Self)) Do
        Begin             boolAdditionalWhere:=False;

         // Pass vals
         strTabella:='TAB_ZONE';
         strCampoWhere:='ID_CODICE_ZONA';
         strCampo2:='DESCR';
         strResCampoCodice:='DESCR';
         strValore:=dbeZona.Field.AsString;
         //     get
         GetValues;
         // Get vals
         edZona.Text:=VarToStr(vaResCodice);
         // Destroy
         Free;
        End;
       End;
End;

procedure TfSottoZone.edZonaExit(Sender: TObject);
begin
  inherited;
 If Not(edZona.Text='')
  Then bbLoozZona.Click;
end;

procedure TfSottoZone.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoSottoZone.DataSet.Prior;
end;

procedure TfSottoZone.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoSottoZone.DataSet.Next;
end;

end.
