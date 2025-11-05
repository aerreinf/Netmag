unit uPortoDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfPortoDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Porto: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    Label1: TLabel;
    LookModoCons: TDBLookupComboBox;
    LookModConsCod: TDBLookupComboBox;
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookModConsCodKeyPress(Sender: TObject; var Key: Char);
    procedure LookModoConsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPortoDB: TfPortoDB;

implementation

Uses uPubDM, uAzDM;

{$R *.DFM}

procedure TfPortoDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfPortoDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfPortoDB.LookModConsCodKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookModConsCod,True,True,False).SetFocus;
end;

procedure TfPortoDB.LookModoConsKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookModoCons,True,True,False).SetFocus;
end;

end.
