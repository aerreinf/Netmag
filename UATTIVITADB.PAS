unit uAttivitaDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TfAttivitaDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Attivita: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbmDescr: TDBMemo;
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbmDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAttivitaDB: TfAttivitaDB;

implementation

Uses uPubDM;

{$R *.DFM}

procedure TfAttivitaDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfAttivitaDB.dbmDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbmDescr,True,True,False).SetFocus;
end;

end.
