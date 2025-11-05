unit uZoneDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Mask;

type
  TfZoneDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Zone: TDBNavigator;
    paView: TPanel;
    laID_Zone: TLabel;
    laDescr: TLabel;
    dbeID_Codice_Zona: TDBEdit;
    dbeDescr: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeID_Codice_ZonaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fZoneDB: TfZoneDB;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfZoneDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Action:=caFree;
 dbnTab_Zone.BtnClick(nbCancel);
end;

procedure TfZoneDB.dbeID_Codice_ZonaKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_Codice_Zona,True,True,False).SetFocus;
end;

procedure TfZoneDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
