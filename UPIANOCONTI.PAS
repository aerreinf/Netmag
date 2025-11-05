unit uPianoConti;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, StdCtrls, ExtCtrls, DBCtrls, Mask, ComCtrls, ToolWin, Db,
  IBCustomDataSet, IBQuery;

type
  TfPianoConti = class(TfBaseForm3)
    dbeID_Piano_Conti: TDBEdit;
    Label4: TLabel;
    dbeGruppo: TDBEdit;
    Label2: TLabel;
    dbeConto: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    dbeSottoConto: TDBEdit;
    Label6: TLabel;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    dbragNatura: TDBRadioGroup;
    dbragCapoconto: TDBRadioGroup;
    laIndeduc: TLabel;
    dbePercIndeduc: TDBEdit;
    dbragVarFiscale: TDBRadioGroup;
    dsoPianoConti: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1COUNT: TIntegerField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Edit1: TEdit;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure dbeGruppoExit(Sender: TObject);
    procedure dbeContoExit(Sender: TObject);
    procedure dbeSottoContoExit(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    a: integer;
    Procedure Apri;

  public
    { Public declarations }
  end;

var
  fPianoConti: TfPianoConti;

implementation

uses uAzDM, uVisPC;

{$R *.DFM}

procedure TfPianoConti.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
a:=1;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoPianoConti.DataSet.Insert;
 dbeGruppo.SetFocus;
end;

procedure TfPianoConti.tbtnModificaClick(Sender: TObject);
begin
  inherited;
a:=2;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoPianoConti.DataSet.Edit;
 dbeGruppo.SetFocus;
end;

procedure TfPianoConti.tbtnSalvaClick(Sender: TObject);
var
id : integer;
begin
if a= 1 then
begin
  with IBQuery1 do
  begin
  Close;
  ParamByName('parConto').AsString := dbeConto.Text;
  ParamByName('parGruppo').AsString := dbeGruppo.Text;
  ParamByName('parSottoConto').AsString := dbeSottoConto.Text;
  open;
  if FieldByName('COUNT').AsInteger >0 then
  begin
  ShowMessage ('Conto già esistente!!');
  exit;
  end
  end;
end;
id := dbeID_Piano_Conti.Field.AsInteger;
try
 begin
 dsoPianoConti.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 Apri;
dsoPianoConti.DataSet.Locate('ID_PIANO_CONTO',id,[]);
  inherited;
end;

procedure TfPianoConti.tbtnAnullaClick(Sender: TObject);
begin
 dsoPianoConti.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 Apri;
 inherited;
end;

procedure TfPianoConti.tbtnEliminaClick(Sender: TObject);
begin
 If (Application.messagebox('Eliminare?','attenzione',mb_yesno+mb_iconhand)=id_no)
    Then Exit;
try
 begin
 dsoPianoConti.DataSet.delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
Apri;
  inherited;
end;

procedure TfPianoConti.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoPianoConti.DataSet.Prior;
end;

procedure TfPianoConti.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoPianoConti.DataSet.Next;
end;

procedure TfPianoConti.dbeGruppoExit(Sender: TObject);
begin
 Try
   StrToInt(dbeGruppo.Field.AsString);
 Except
   dbeGruppo.Field.AsString:='00';
   dbeGruppo.SetFocus;
 End;
end;

procedure TfPianoConti.dbeContoExit(Sender: TObject);
begin
 Try
   StrToInt(dbeConto.Field.AsString);
 Except
   dbeConto.Field.AsString:='000';
   dbeConto.SetFocus;
 End;
end;

procedure TfPianoConti.dbeSottoContoExit(Sender: TObject);
begin
 Try
   StrToInt(dbeSottoConto.Field.AsString);
 Except
   dbeSottoConto.Field.AsString:='00000';
   dbeSottoConto.SetFocus;   
 End;
end;

procedure TfPianoConti.Apri;
begin
dsoPianoConti.DataSet.Open;
end;

procedure TfPianoConti.ToolButton1Click(Sender: TObject);
begin
fVisPC := TfVisPC.Create(Self);
fVisPC.Chiama := 1;
fVisPC.ShowModal;
dsoPianoConti.DataSet.Locate('ID_PIANO_CONTO',fVisPC.dx7,[]);
fVisPC.Free;

end;

procedure TfPianoConti.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
If (Key=#13) Then dsoPianoConti.DataSet.Locate('DESCR',Edit1.Text,[loCaseInsensitive, loPartialKey]);
end;

end.
