unit uPersAzDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ComCtrls, ExtCtrls, Mask;

type
  TfPersAzDB = class(TForm)
    paCtrl: TPanel;
    dbnPersAz: TDBNavigator;
    paView: TPanel;
    pctrlPersonalizzazione: TPageControl;
    tabs1: TTabSheet;
    pa1: TPanel;
    tabs2: TTabSheet;
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
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    LookIVAAqcRV: TDBLookupComboBox;
    LookIVAAcqRVD: TDBLookupComboBox;
    LookIVARitD: TDBLookupComboBox;
    LookIVARit: TDBLookupComboBox;
    LookIntPas: TDBLookupComboBox;
    LookIntPasD: TDBLookupComboBox;
    Look_Problem1D: TDBLookupComboBox;
    Look_Problem1: TDBLookupComboBox;
    LookIVAInd: TDBLookupComboBox;
    LookIVAIndD: TDBLookupComboBox;
    LookIVAProVen: TDBLookupComboBox;
    LookIVAProAcq: TDBLookupComboBox;
    LookIVAProAcqD: TDBLookupComboBox;
    LookIVAProVenD: TDBLookupComboBox;
    LookErCIVAD: TDBLookupComboBox;
    LookErCIVA: TDBLookupComboBox;
    LookCorrVent: TDBLookupComboBox;
    LookCoorVentD: TDBLookupComboBox;
    LookCorr: TDBLookupComboBox;
    LookVen: TDBLookupComboBox;
    LookVanD: TDBLookupComboBox;
    LookCooD: TDBLookupComboBox;
    LookIVAVen: TDBLookupComboBox;
    LookIVAVenD: TDBLookupComboBox;
    LookIVACAcqD: TDBLookupComboBox;
    LookIVACAcq: TDBLookupComboBox;
    LookIVASospAqc: TDBLookupComboBox;
    LookIVASospVen: TDBLookupComboBox;
    LookIVASospVenD: TDBLookupComboBox;
    LookIVASospAqcD: TDBLookupComboBox;
    LookCassa: TDBLookupComboBox;
    LookAcq: TDBLookupComboBox;
    LookAcqD: TDBLookupComboBox;
    LookCassaD: TDBLookupComboBox;
    pa2: TPanel;
    Label12: TLabel;
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
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox37: TDBLookupComboBox;
    DBLookupComboBox38: TDBLookupComboBox;
    DBLookupComboBox39: TDBLookupComboBox;
    DBLookupComboBox40: TDBLookupComboBox;
    DBLookupComboBox41: TDBLookupComboBox;
    DBLookupComboBox42: TDBLookupComboBox;
    DBLookupComboBox43: TDBLookupComboBox;
    DBLookupComboBox44: TDBLookupComboBox;
    DBLookupComboBox45: TDBLookupComboBox;
    DBLookupComboBox46: TDBLookupComboBox;
    DBLookupComboBox47: TDBLookupComboBox;
    DBLookupComboBox48: TDBLookupComboBox;
    DBLookupComboBox49: TDBLookupComboBox;
    DBLookupComboBox50: TDBLookupComboBox;
    DBLookupComboBox51: TDBLookupComboBox;
    DBLookupComboBox52: TDBLookupComboBox;
    DBLookupComboBox53: TDBLookupComboBox;
    DBLookupComboBox54: TDBLookupComboBox;
    DBLookupComboBox55: TDBLookupComboBox;
    DBLookupComboBox56: TDBLookupComboBox;
    DBLookupComboBox57: TDBLookupComboBox;
    DBLookupComboBox58: TDBLookupComboBox;
    DBLookupComboBox59: TDBLookupComboBox;
    DBLookupComboBox60: TDBLookupComboBox;
    DBLookupComboBox61: TDBLookupComboBox;
    DBLookupComboBox62: TDBLookupComboBox;
    DBLookupComboBox63: TDBLookupComboBox;
    DBLookupComboBox64: TDBLookupComboBox;
    DBLookupComboBox65: TDBLookupComboBox;
    DBLookupComboBox66: TDBLookupComboBox;
    DBLookupComboBox67: TDBLookupComboBox;
    DBLookupComboBox68: TDBLookupComboBox;
    tabs3: TTabSheet;
    pa3: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBLookupComboBox83: TDBLookupComboBox;
    DBLookupComboBox84: TDBLookupComboBox;
    DBLookupComboBox85: TDBLookupComboBox;
    DBLookupComboBox86: TDBLookupComboBox;
    DBLookupComboBox87: TDBLookupComboBox;
    DBLookupComboBox88: TDBLookupComboBox;
    DBLookupComboBox89: TDBLookupComboBox;
    DBLookupComboBox90: TDBLookupComboBox;
    DBLookupComboBox99: TDBLookupComboBox;
    DBLookupComboBox100: TDBLookupComboBox;
    DBLookupComboBox101: TDBLookupComboBox;
    DBLookupComboBox102: TDBLookupComboBox;
    tabs4: TTabSheet;
    pa4: TPanel;
    Label42: TLabel;
    DBLookupComboBox94: TDBLookupComboBox;
    DBLookupComboBox93: TDBLookupComboBox;
    DBLookupComboBox95: TDBLookupComboBox;
    Label43: TLabel;
    DBLookupComboBox98: TDBLookupComboBox;
    DBLookupComboBox96: TDBLookupComboBox;
    Label44: TLabel;
    DBLookupComboBox97: TDBLookupComboBox;
    DBLookupComboBox80: TDBLookupComboBox;
    DBLookupComboBox81: TDBLookupComboBox;
    DBLookupComboBox79: TDBLookupComboBox;
    DBLookupComboBox82: TDBLookupComboBox;
    DBLookupComboBox77: TDBLookupComboBox;
    DBLookupComboBox78: TDBLookupComboBox;
    DBLookupComboBox76: TDBLookupComboBox;
    DBLookupComboBox75: TDBLookupComboBox;
    DBLookupComboBox69: TDBLookupComboBox;
    DBLookupComboBox70: TDBLookupComboBox;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label45: TLabel;
    Label50: TLabel;
    tabs5: TTabSheet;
    pa5: TPanel;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    GroupBox5: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label62: TLabel;
    DBEdit10: TDBEdit;
    Label63: TLabel;
    DBEdit11: TDBEdit;
    Label64: TLabel;
    DBEdit12: TDBEdit;
    GroupBox6: TGroupBox;
    LabelParity: TLabel;
    LabelStopbits: TLabel;
    LabelDataBits: TLabel;
    LabelBaudrate: TLabel;
    Label65: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    GroupBox1: TGroupBox;
    Label52: TLabel;
    Label47: TLabel;
    Label46: TLabel;
    Label41: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    GroupBox7: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label70: TLabel;
    DBEdit17: TDBEdit;
    procedure dbnPersAzClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure Edit_Mode(bMode:Boolean);
  public
    { Public declarations }
  end;

var
  fPersAzDB: TfPersAzDB;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfPersAzDB.Edit_Mode(bMode: Boolean);
begin
 pa1.Enabled:=bMode;
 pa2.Enabled:=bMode;
 pa3.Enabled:=bMode;
 pa4.Enabled:=bMode;
 pa5.Enabled:=bMode;
end;

procedure TfPersAzDB.dbnPersAzClick(Sender: TObject; Button: TNavigateBtn);
begin
 If (Button=nbEdit) Then
 begin
  Edit_Mode(True);
// if not dmodAz.ibtrDef.InTransaction then
//       dmodAz.ibtrDef.StartTransaction;
 end
 Else Edit_Mode(False)
end;

procedure TfPersAzDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// dbnPersAz.BtnClick(nbCancel);
// dmodAz.ibtrDef.Commit;
end;

procedure TfPersAzDB.FormShow(Sender: TObject);
begin
 pctrlPersonalizzazione.ActivePage:=tabs1;
end;

end.
