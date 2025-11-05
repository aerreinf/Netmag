unit uRepartiDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TfRepartiDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Reparti: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    Label1: TLabel;
    LookCodIVACod: TDBLookupComboBox;
    LookCodIVADescr: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookCodIVACodKeyPress(Sender: TObject; var Key: Char);
    procedure LookCodIVADescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepartiDB: TfRepartiDB;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfRepartiDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfRepartiDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfRepartiDB.LookCodIVACodKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCodIVACod,True,True,False).SetFocus;
end;

procedure TfRepartiDB.LookCodIVADescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCodIVADescr,True,True,False).SetFocus;
end;

end.
