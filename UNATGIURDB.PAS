unit uNatGiurDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfNatGiurDB = class(TForm)
    paCtrl: TPanel;
    dbnNatGiur: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    dbeSoggRes: TDBEdit;
    Label1: TLabel;
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSoggResKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNatGiurDB: TfNatGiurDB;

implementation

Uses uPubDM;

{$R *.DFM}

procedure TfNatGiurDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfNatGiurDB.dbeSoggResKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeSoggRes,True,True,False).SetFocus;
end;

procedure TfNatGiurDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
