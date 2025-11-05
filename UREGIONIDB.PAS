unit uRegioniDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TfRegioniDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    dbnTab_Regioni: TDBNavigator;
    dbeID_Regione: TDBEdit;
    laID_reg: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeID_RegioneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
 end;

Var
 fRegioniDB: TfRegioniDB;

implementation

uses uPubDM;

{$R *.DFM}

procedure TfRegioniDB.FormClose(Sender: TObject; var Action: TCloseAction);
Begin
 dbnTab_Regioni.BtnClick(nbCancel);
End;

procedure TfRegioniDB.dbeID_RegioneKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_Regione,True,True,False).SetFocus;
end;

procedure TfRegioniDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
