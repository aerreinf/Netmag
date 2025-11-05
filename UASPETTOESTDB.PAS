unit uAspettoEstDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfAspettoEstDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_AspEst: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAspettoEstDB: TfAspettoEstDB;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfAspettoEstDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfAspettoEstDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
