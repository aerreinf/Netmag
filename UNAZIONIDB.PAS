unit uNazioniDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TfNazioniDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Nazioni: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    LookMoneta: TDBLookupComboBox;
    Label1: TLabel;
    cboxMembroCE: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeCodPaese: TDBEdit;
    dbeProvISO: TDBEdit;
    dbeNcarPartIVA: TDBEdit;
    dbcboxMembroCE: TDBCheckBox;
    procedure cboxMembroCEClick(Sender: TObject);
    procedure cboxMembroCEExit(Sender: TObject);
    procedure dbnTab_NazioniClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookMonetaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodPaeseKeyPress(Sender: TObject; var Key: Char);
    procedure cboxMembroCEKeyPress(Sender: TObject; var Key: Char);
    procedure dbeProvISOKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNcarPartIVAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure Set_Membro_CE;
    Procedure Get_Membro_CE;
  public
    { Public declarations }
  end;

var
  fNazioniDB: TfNazioniDB;

implementation

Uses uPubDM;

{$R *.DFM}

{ TfNazioniDB }

procedure TfNazioniDB.Get_Membro_CE;
begin
 If (dbcboxMembroCE.Field.AsInteger=0) Then cboxMembroCE.Checked:=False
                                       Else cboxMembroCE.Checked:=True;
end;

procedure TfNazioniDB.Set_Membro_CE;
begin
 If (cboxMembroCE.Checked) Then dbcboxMembroCE.Field.Value:=1
                           Else dbcboxMembroCE.Field.Value:=0;
// If (cboxMembroCE.Checked) Then dbcboxMembroCE.State:=cbChecked
//                           Else dbcboxMembroCE.State:=cbUnChecked;
end;

procedure TfNazioniDB.cboxMembroCEClick(Sender: TObject);
begin
 Set_Membro_CE;
end;

procedure TfNazioniDB.cboxMembroCEExit(Sender: TObject);
begin
 Set_Membro_CE;
end;

procedure TfNazioniDB.dbnTab_NazioniClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbInsert) Then Set_Membro_CE;
 If (dbnTab_Nazioni.DataSource.DataSet.IsEmpty) Then Exit;
 Get_Membro_CE;
end;

procedure TfNazioniDB.FormShow(Sender: TObject);
begin
 If (dbnTab_Nazioni.DataSource.DataSet.IsEmpty) Then Exit;
 Get_Membro_CE;
end;

procedure TfNazioniDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfNazioniDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfNazioniDB.LookMonetaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookMoneta,True,True,False).SetFocus;
end;

procedure TfNazioniDB.dbeCodPaeseKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodPaese,True,True,False).SetFocus;
end;

procedure TfNazioniDB.cboxMembroCEKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(cboxMembroCE,True,True,False).SetFocus;
end;

procedure TfNazioniDB.dbeProvISOKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeProvISO,True,True,False).SetFocus;
end;

procedure TfNazioniDB.dbeNcarPartIVAKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNcarPartIVA,True,True,False).SetFocus;
end;

end.
