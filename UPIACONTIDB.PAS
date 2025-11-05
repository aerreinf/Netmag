unit uPiaContiDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, DBActns, ActnList;

type
  TfPiaContiDB = class(TForm)
    paCtrl: TPanel;
    dbnPianoDeiConti: TDBNavigator;
    paView: TPanel;
    laDescr: TLabel;
    dbeDescr: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbeGruppo: TDBEdit;
    dbeConto: TDBEdit;
    dbeSottoConto: TDBEdit;
    dbragNatura: TDBRadioGroup;
    dbeID_Piano_Conti: TDBEdit;
    dbragVarFiscale: TDBRadioGroup;
    dbragCapoconto: TDBRadioGroup;
    laIndeduc: TLabel;
    dbePercIndeduc: TDBEdit;
    procedure dbnPianoDeiContiClick(Sender: TObject; Button: TNavigateBtn);
    procedure dbeGruppoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeContoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSottoContoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
   Procedure setMode(bStMod: Boolean);
  end;

Var
  fPiaContiDB: TfPiaContiDB;

Implementation

Uses uAzDM;

{$R *.DFM}


procedure TfPiaContiDB.setMode(bStMod: Boolean);
begin
 paView.Enabled:=bStMod;
end;


procedure TfPiaContiDB.dbnPianoDeiContiClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbEdit) Then setMOde(True);
 If (Button=nbInsert)
  Then
   Begin
    // Get the next ID for PC!
    With (dmodAz.ibSP_New_ID_Piano_Conti) Do
    Begin
     Prepare;
     ExecProc;
     dbeID_Piano_Conti.Field.AsInteger:=Params[0].AsInteger;
    End;
    setMOde(True);
   End;
 If ((Button=nbPost) OR (Button=nbCancel)) Then setMOde(False);

end;

procedure TfPiaContiDB.dbeGruppoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeGruppo,True,True,False).SetFocus;
end;

procedure TfPiaContiDB.dbeContoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeConto,True,True,False).SetFocus;
end;

procedure TfPiaContiDB.dbeSottoContoKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeSottoConto,True,True,False).SetFocus;
end;

procedure TfPiaContiDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

End.
