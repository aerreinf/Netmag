unit uGruppoDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfGruppoDB = class(TForm)
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    paCtrl: TPanel;
    dbnTab_Gruppo: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGruppoDB: TfGruppoDB;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfGruppoDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dbnTab_Gruppo.BtnClick(nbCancel);
end;

procedure TfGruppoDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfGruppoDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
