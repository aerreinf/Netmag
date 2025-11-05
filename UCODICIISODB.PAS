unit uCodiciISODB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfCodiciISODB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Marca: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    Label1: TLabel;
    dbeNumPartIVA: TDBEdit;
    Label2: TLabel;
    LookNazione: TDBLookupComboBox;
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumPartIVAKeyPress(Sender: TObject; var Key: Char);
    procedure LookNazioneKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCodiciISODB: TfCodiciISODB;

implementation

Uses uPubDM;

{$R *.DFM}

procedure TfCodiciISODB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfCodiciISODB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfCodiciISODB.dbeNumPartIVAKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNumPartIVA,True,True,False).SetFocus;
end;

procedure TfCodiciISODB.LookNazioneKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookNazione,True,True,False).SetFocus;
end;

end.
