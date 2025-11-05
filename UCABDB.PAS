unit uCABDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Mask;

type
  TfCABDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    dbnTab_CAB: TDBNavigator;
    dbeID_CAB: TDBEdit;
    dbeDescr: TDBEdit;
    LookABI_ID: TDBLookupComboBox;
    dbeIndirizzo: TDBEdit;
    dbeLocalita: TDBEdit;
    LookComune_ID: TDBLookupComboBox;
    LookProv_ID: TDBLookupComboBox;
    LookCAP_ID: TDBLookupComboBox;
    laID_CAB: TLabel;
    laDescr: TLabel;
    laABI_ID: TLabel;
    laInd: TLabel;
    laLocalita: TLabel;
    laComune: TLabel;
    laProv: TLabel;
    laCAP: TLabel;
    LookABIDecsr: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeID_CABKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookABI_IDKeyPress(Sender: TObject; var Key: Char);
    procedure LookABIDecsrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeIndirizzoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeLocalitaKeyPress(Sender: TObject; var Key: Char);
    procedure LookComune_IDKeyPress(Sender: TObject; var Key: Char);
    procedure LookProv_IDKeyPress(Sender: TObject; var Key: Char);
    procedure LookCAP_IDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCABDB: TfCABDB;

implementation

uses uAzDM, uPubDM;

{$R *.DFM}

procedure TfCABDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //Action:=caFree;
 dbnTab_CAB.BtnClick(nbCancel);
end;

procedure TfCABDB.dbeID_CABKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_CAB,True,True,False).SetFocus;
end;

procedure TfCABDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfCABDB.LookABI_IDKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookABI_ID,True,True,False).SetFocus;
end;

procedure TfCABDB.LookABIDecsrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookABIDecsr,True,True,False).SetFocus;
end;

procedure TfCABDB.dbeIndirizzoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeIndirizzo,True,True,False).SetFocus;
end;

procedure TfCABDB.dbeLocalitaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeLocalita,True,True,False).SetFocus;
end;

procedure TfCABDB.LookComune_IDKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookComune_ID,True,True,False).SetFocus;
end;

procedure TfCABDB.LookProv_IDKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProv_ID,True,True,False).SetFocus;
end;

procedure TfCABDB.LookCAP_IDKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAP_ID,True,True,False).SetFocus;
end;

end.
