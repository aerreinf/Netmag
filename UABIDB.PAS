unit uABIDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TfABIDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    dbnTab_ABI: TDBNavigator;
    dbeID_ABI: TDBEdit;
    dbeDescr: TDBEdit;
    laID_ABI: TLabel;
    laDescr: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeID_ABIKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fABIDB: TfABIDB;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfABIDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //Action:=caFree;
 dbnTab_ABI.BtnClick(nbCancel);
end;

procedure TfABIDB.dbeID_ABIKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_ABI,True,True,False).SetFocus;
end;

procedure TfABIDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

end.
