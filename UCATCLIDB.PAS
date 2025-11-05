unit uCatCliDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfCatCliDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Categoria_Cli: TDBNavigator;
    paView: TPanel;
    laID: TLabel;
    laDescr: TLabel;
    laListino: TLabel;
    dbeID: TDBEdit;
    dbeDescr: TDBEdit;
    LookListinoCod: TDBLookupComboBox;
    LookListinoDescr: TDBLookupComboBox;
    procedure dbeIDKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookListinoCodKeyPress(Sender: TObject; var Key: Char);
    procedure LookListinoDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCatCliDB: TfCatCliDB;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfCatCliDB.dbeIDKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID,True,True,False).SetFocus;
end;

procedure TfCatCliDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfCatCliDB.LookListinoCodKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookListinoCod,True,True,False).SetFocus;
end;

procedure TfCatCliDB.LookListinoDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookListinoDescr,True,True,False).SetFocus;
end;

end.
