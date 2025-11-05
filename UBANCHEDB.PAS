unit uBancheDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfBancheDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    laCodBanca: TLabel;
    laDescr: TLabel;
    laCodABI: TLabel;
    laCodCAB: TLabel;
    laSportello: TLabel;
    laAzienda: TLabel;
    laCitta: TLabel;
    dbeCodBanca: TDBEdit;
    dbeDescr: TDBEdit;
    dbeSportello: TDBEdit;
    dbeAzienda: TDBEdit;
    dbeCitta: TDBEdit;
    LookCodABI: TDBLookupComboBox;
    LookCodCAB: TDBLookupComboBox;
    laIndA1: TLabel;
    dbeIndirizzo: TDBEdit;
    laTel1A1: TLabel;
    dbeTel1: TDBEdit;
    laEMailA1: TLabel;
    dbeEMail: TDBEdit;
    dbeInternet: TDBEdit;
    laInternetA1: TLabel;
    laFaxA1: TLabel;
    dbeFax: TDBEdit;
    laTel2A1: TLabel;
    dbeTel2: TDBEdit;
    dbnTab_Banche: TDBNavigator;
    procedure dbeCodBancaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSportelloKeyPress(Sender: TObject; var Key: Char);
    procedure dbeAziendaKeyPress(Sender: TObject; var Key: Char);
    procedure LookCodABIKeyPress(Sender: TObject; var Key: Char);
    procedure LookCodCABKeyPress(Sender: TObject; var Key: Char);
    procedure dbeIndirizzoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCittaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeFaxKeyPress(Sender: TObject; var Key: Char);
    procedure dbeEMailKeyPress(Sender: TObject; var Key: Char);
    procedure dbeInternetKeyPress(Sender: TObject; var Key: Char);
    procedure LookCodCABCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
 end;

Var
 fBancheDB: TfBancheDB;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfBancheDB.dbeCodBancaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodBanca,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeSportelloKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeSportello,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeAziendaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeAzienda,True,True,False).SetFocus;
end;

procedure TfBancheDB.LookCodABIKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCodABI,True,True,False).SetFocus;
end;

procedure TfBancheDB.LookCodCABKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCodCAB,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeIndirizzoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeIndirizzo,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeCittaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCitta,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeTel1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel1,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeTel2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel2,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeFaxKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeFax,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeEMailKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeEMail,True,True,False).SetFocus;
end;

procedure TfBancheDB.dbeInternetKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeInternet,True,True,False).SetFocus;
end;

procedure TfBancheDB.LookCodCABCloseUp(Sender: TObject);
begin
 // set also ABI
 LookCodABI.DataSource.DataSet.FieldByName('ABI_ID').AsString:=
       LookCodCAB.ListSource.DataSet.FieldByName('ABI_ID').AsString;
end;

end.
