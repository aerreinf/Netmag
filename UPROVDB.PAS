unit uProvDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfProvDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LookRegione: TDBLookupComboBox;
    dbeSigla: TDBEdit;
    dbeDescr: TDBEdit;
    dbnTab_Prov: TDBNavigator;
    laProvID: TLabel;
    dbeID_Prov: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeID_ProvKeyPress(Sender: TObject; var Key: Char);
    procedure LookRegioneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSiglaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
 end;

Var
 fProvDB: TfProvDB;

implementation

uses uPubDM;

{$R *.DFM}

procedure TfProvDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //Action:=caFree;
 
end;

procedure TfProvDB.dbeID_ProvKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_Prov,True,True,False).SetFocus;
end;

procedure TfProvDB.LookRegioneKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookRegione,True,True,False).SetFocus;
end;

procedure TfProvDB.dbeSiglaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeSigla,True,True,False).SetFocus;
end;

procedure TfProvDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
