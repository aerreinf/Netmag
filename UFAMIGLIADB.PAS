unit uFamigliaDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfFamigliaDB = class(TForm)
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    paCtrl: TPanel;
    dbnTab_Famiglia: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFamigliaDB: TfFamigliaDB;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfFamigliaDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// Action:=caFree;
end;

procedure TfFamigliaDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfFamigliaDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
