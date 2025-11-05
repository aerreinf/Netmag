unit uOperai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, ToolEdit, RXDBCtrl, StdCtrls, Mask, DBCtrls, Db, ComCtrls,
  ToolWin, ExtCtrls, Menus, FR_Class;

type
  TfOperai = class(TfBaseForm3)
    dsoCommessi: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    EditCOD: TDBEdit;
    EditRAGSOC: TDBEdit;
    EditTELEFONO: TDBEdit;
    EditQUALIFICA: TDBEdit;
    EditLIVELLO: TDBEdit;
    EditTIPOCONT: TDBEdit;
    EditLIBLAV: TDBEdit;
    EditNULLAOS: TDBEdit;
    EditFAMILIARI: TDBEdit;
    EditVISITEM: TDBEdit;
    EditRITENUTE: TDBEdit;
    EditINPS: TDBEdit;
    EditINAIL: TDBEdit;
    EditVARIE: TDBEdit;
    EditMALATTIE: TDBEdit;
    EditCARMAL: TDBEdit;
    EditAZIENDA: TDBEdit;
    EditPAGAORD: TDBEdit;
    EditPAGASTRA: TDBEdit;
    EditPAGAFE: TDBEdit;
    EditPAGATRA: TDBEdit;
    EditPAGATRASF: TDBEdit;
    EditPAGASPEC: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    ToolButton1: TToolButton;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure paViewClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
  private
    { Private declarations }
        boolNuovo: Boolean;
  public
    { Public declarations }
  end;

var
  fOperai: TfOperai;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfOperai.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCommessi.DataSet.Insert;
 EditRAGSOC.SetFocus;
 boolNuovo:=True;
end;

procedure TfOperai.tbtnModificaClick(Sender: TObject);
begin
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCommessi.DataSet.Edit;
 EditRAGSOC.SetFocus;
 boolNuovo:=False;
end;

procedure TfOperai.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCommessi.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCommessi.DataSet.Open;
end;

procedure TfOperai.tbtnAnullaClick(Sender: TObject);
begin
 dsoCommessi.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoCommessi.DataSet.Open;
  inherited;
end;

procedure TfOperai.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoCommessi.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCommessi.DataSet.Open;
 boolNuovo:=False;
end;

procedure TfOperai.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoCommessi.DataSet.Prior;
end;

procedure TfOperai.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoCommessi.DataSet.Next;
end;

procedure TfOperai.paViewClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfOperai.ToolButton1Click(Sender: TObject);
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frDipendenti.frf');
dmodAz.rePRN.ShowReport;

end;

procedure TfOperai.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

end.
