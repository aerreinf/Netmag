unit uCommessiDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uBaseForm3, Mask, DBCtrls, ExtCtrls, ComCtrls, ToolWin, Db,
  ToolEdit, RXDBCtrl;

type
  TfCommessiDB = class(TfBaseForm3)
    Panel1: TPanel;
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
    EditDATAASS: TDBEdit;
    EditTIPOCONT: TDBEdit;
    EditLIBLAV: TDBEdit;
    EditDATALIB: TDBEdit;
    EditNULLAOS: TDBEdit;
    EditDATANULLA: TDBEdit;
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
    dsoCommessi: TDataSource;
   procedure tbtnSalvaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCommessiDB: TfCommessiDB;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfCommessiDB.tbtnSalvaClick(Sender: TObject);
begin
  inherited;
 dsoCommessi.DataSet.Post;
end;


end.
