unit uComuniDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfComuniDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    laProvincia: TLabel;
    laCodCom: TLabel;
    laDescr: TLabel;
    laCAP: TLabel;
    LookProv: TDBLookupComboBox;
    dbeCodCom: TDBEdit;
    dbeCAP: TDBEdit;
    dbeDescr: TDBEdit;
    dbnTab_Comuni: TDBNavigator;
    dbeID_Comune: TDBEdit;
    laID_Comune: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeID_ComuneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookProvKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodComKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCAPKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
 end;

Var
 fComuniDB: TfComuniDB;
 
implementation

uses uPubDM;

{$R *.DFM}

procedure TfComuniDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // Action:=caFree;
 
end;

procedure TfComuniDB.dbeID_ComuneKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_Comune,True,True,False).SetFocus;
end;

procedure TfComuniDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfComuniDB.LookProvKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProv,True,True,False).SetFocus;
end;

procedure TfComuniDB.dbeCodComKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodCom,True,True,False).SetFocus;
end;

procedure TfComuniDB.dbeCAPKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCAP,True,True,False).SetFocus;
end;

end.
