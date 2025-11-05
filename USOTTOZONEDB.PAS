unit uSottoZoneDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Mask;

type
  TfSottoZoneDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    dbnTab_Sotto_Zone: TDBNavigator;
    laID_Sotto_Zone: TLabel;
    dbeID_Codice_Sotto_Zona: TDBEdit;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    LookZona_ID: TDBLookupComboBox;
    laZona: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeID_Codice_Sotto_ZonaKeyPress(Sender: TObject;
      var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookZona_IDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSottoZoneDB: TfSottoZoneDB;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfSottoZoneDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// Action:=caFree;
end;

procedure TfSottoZoneDB.dbeID_Codice_Sotto_ZonaKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_Codice_Sotto_Zona,True,True,False).SetFocus;
end;

procedure TfSottoZoneDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfSottoZoneDB.LookZona_IDKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookZona_ID,True,True,False).SetFocus;
end;

end.
