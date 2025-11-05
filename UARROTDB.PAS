unit uArrotDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfArrotDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Arrotondamento: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    LookTipoArrot: TDBLookupComboBox;
    Label1: TLabel;
    laImp1: TLabel;
    LookMoneta: TDBLookupComboBox;
    laArr1: TLabel;
    laArr2: TLabel;
    laImp2: TLabel;
    laArr4: TLabel;
    laImp4: TLabel;
    laImp3: TLabel;
    laArr3: TLabel;
    laArr6: TLabel;
    laImp6: TLabel;
    laImp5: TLabel;
    laArr5: TLabel;
    dbeImp1: TDBEdit;
    dbeArr1: TDBEdit;
    dbeImp2: TDBEdit;
    dbeArr2: TDBEdit;
    dbeImp4: TDBEdit;
    dbeImp3: TDBEdit;
    dbeArr3: TDBEdit;
    dbeArr4: TDBEdit;
    dbeImp6: TDBEdit;
    dbeImp5: TDBEdit;
    dbeArr5: TDBEdit;
    dbeArr6: TDBEdit;
    LookMonetaDescr: TDBLookupComboBox;
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure LookTipoArrotKeyPress(Sender: TObject; var Key: Char);
    procedure LookMonetaKeyPress(Sender: TObject; var Key: Char);
    procedure LookMonetaDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeImp1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeImp2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeImp3KeyPress(Sender: TObject; var Key: Char);
    procedure dbeImp4KeyPress(Sender: TObject; var Key: Char);
    procedure dbeImp5KeyPress(Sender: TObject; var Key: Char);
    procedure dbeImp6KeyPress(Sender: TObject; var Key: Char);
    procedure dbeArr1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeArr2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeArr3KeyPress(Sender: TObject; var Key: Char);
    procedure dbeArr4KeyPress(Sender: TObject; var Key: Char);
    procedure dbeArr5KeyPress(Sender: TObject; var Key: Char);
    procedure dbeArr6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fArrotDB: TfArrotDB;

implementation

Uses uPubDM;

{$R *.DFM}

procedure TfArrotDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfArrotDB.LookTipoArrotKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookTipoArrot,True,True,False).SetFocus;
end;

procedure TfArrotDB.LookMonetaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookMoneta,True,True,False).SetFocus;
end;

procedure TfArrotDB.LookMonetaDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookMonetaDescr,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeImp1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeImp1,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeImp2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeImp2,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeImp3KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeImp3,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeImp4KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeImp4,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeImp5KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeImp5,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeImp6KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeImp6,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeArr1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeArr1,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeArr2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeArr2,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeArr3KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeArr3,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeArr4KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeArr4,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeArr5KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeArr5,True,True,False).SetFocus;
end;

procedure TfArrotDB.dbeArr6KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeArr6,True,True,False).SetFocus;
end;

end.
