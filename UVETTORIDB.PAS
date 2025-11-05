unit uVettoriDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Mask;

type
  TfVettoriDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    dbnTab_Vettori: TDBNavigator;
    laCodice: TLabel;
    laRagSoc: TLabel;
    laPartIVA: TLabel;
    laIndirizzo: TLabel;
    dbeIndirizzo: TDBEdit;
    laTel1: TLabel;
    dbeTel1: TDBEdit;
    dbeTel2: TDBEdit;
    laTel2: TLabel;
    laCitta: TLabel;
    dbeCitta: TDBEdit;
    laFAX: TLabel;
    dbeFax: TDBEdit;
    laStato: TLabel;
    laProv: TLabel;
    cboxAbbonato: TCheckBox;
    laCAP: TLabel;
    laCodFisc: TLabel;
    laMaoneta: TLabel;
    laNota: TLabel;
    dbeCodice: TDBEdit;
    dbeRagSoc: TDBEdit;
    dbcboxAbbonato: TDBCheckBox;
    dbePartIVA: TDBEdit;
    dbeCodFisc: TDBEdit;
    laStatoISO: TLabel;
    dbeStato: TDBEdit;
    LookCAP: TDBLookupComboBox;
    LookProv: TDBLookupComboBox;
    LookStatoISO: TDBLookupComboBox;
    LookMoneta: TDBLookupComboBox;
    dbmNote: TDBMemo;
    bevIndir: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboxAbbonatoClick(Sender: TObject);
    procedure dbnTab_VettoriBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure cboxAbbonatoExit(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure cboxAbbonatoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeRagSocKeyPress(Sender: TObject; var Key: Char);
    procedure dbePartIVAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodFiscKeyPress(Sender: TObject; var Key: Char);
    procedure dbeIndirizzoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCittaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeStatoKeyPress(Sender: TObject; var Key: Char);
    procedure LookStatoISOKeyPress(Sender: TObject; var Key: Char);
    procedure LookProvKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel1KeyPress(Sender: TObject; var Key: Char);
    procedure LookCAPKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel2KeyPress(Sender: TObject; var Key: Char);
    procedure LookMonetaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeFaxKeyPress(Sender: TObject; var Key: Char);
    procedure dbmNoteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure Set_Abbonato;

  public
    { Public declarations }
  end;

var
  fVettoriDB: TfVettoriDB;

implementation

uses uAzDM, uPubDM;

{$R *.DFM}

procedure TfVettoriDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Action:=caFree;
end;

procedure TfVettoriDB.cboxAbbonatoClick(Sender: TObject);
begin
 Set_Abbonato;
end;

procedure TfVettoriDB.dbnTab_VettoriBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
 Set_Abbonato;
end;

procedure TfVettoriDB.Set_Abbonato;
begin
 If (cboxAbbonato.Checked) Then dbcboxAbbonato.State:=cbChecked
                           Else dbcboxAbbonato.State:=cbUnchecked;
end;

procedure TfVettoriDB.cboxAbbonatoExit(Sender: TObject);
begin
 Set_Abbonato;
end;

procedure TfVettoriDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfVettoriDB.cboxAbbonatoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(cboxAbbonato,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeRagSocKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeRagSoc,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbePartIVAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbePartIVA,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeCodFiscKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodFisc,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeIndirizzoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeIndirizzo,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeCittaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCitta,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeStatoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeStato,True,True,False).SetFocus;
end;

procedure TfVettoriDB.LookStatoISOKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookStatoISO,True,True,False).SetFocus;
end;

procedure TfVettoriDB.LookProvKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProv,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeTel1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel1,True,True,False).SetFocus;
end;

procedure TfVettoriDB.LookCAPKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAP,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeTel2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel2,True,True,False).SetFocus;
end;

procedure TfVettoriDB.LookMonetaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookMoneta,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbeFaxKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeFax,True,True,False).SetFocus;
end;

procedure TfVettoriDB.dbmNoteKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbmNote,True,True,False).SetFocus;
end;

end.
