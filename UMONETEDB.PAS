unit uMoneteDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask,
  Grids,db, DBGrids;

type
  TfMoneteDB = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    dbnMonete: TDBNavigator;
    dbeID_Moneta: TDBEdit;
    dbeDescr: TDBEdit;
    dbeSimbolo: TDBEdit;
    cboxMoneta_UE: TCheckBox;
    laCodice: TLabel;
    laDescr: TLabel;
    laSimbolo: TLabel;
    gboxArrotondamento: TGroupBox;
    laTipoArr: TLabel;
    LookTipoArrot_ID: TDBLookupComboBox;
    dbePosizioneArr: TDBEdit;
    laPosArr: TLabel;
    dbcboxMonetaUE: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboxMoneta_UEClick(Sender: TObject);
    procedure cboxMoneta_UEExit(Sender: TObject);
    procedure dbnMoneteClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure dbePosizioneArrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookTipoArrot_IDKeyPress(Sender: TObject; var Key: Char);
    procedure dbeID_MonetaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSimboloKeyPress(Sender: TObject; var Key: Char);
    procedure cboxMoneta_UEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure Set_Moneta_UE;
    Procedure Get_Moneta_UE;
  public
    { Public declarations }
  end;

var
  fMoneteDB: TfMoneteDB;

implementation

uses uPubDM;

{$R *.DFM}

procedure TfMoneteDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Action:=caFree;
end;

procedure TfMoneteDB.Set_Moneta_UE;
begin
 If (cboxMoneta_UE.Checked) Then dbcboxMonetaUE.Field.Value:=1
                            Else dbcboxMonetaUE.Field.Value:=0;
// If (cboxMoneta_UE.Checked) Then dbcboxMonetaUE.State:=cbChecked
//                            Else dbcboxMonetaUE.State:=cbUnChecked;
end;

procedure TfMoneteDB.cboxMoneta_UEClick(Sender: TObject);
begin
 Set_Moneta_UE;
end;

procedure TfMoneteDB.cboxMoneta_UEExit(Sender: TObject);
begin
 Set_Moneta_UE;
end;

procedure TfMoneteDB.dbnMoneteClick(Sender: TObject; Button: TNavigateBtn);
begin
 If (Button=nbInsert) Then Set_Moneta_UE;
 If (dbnMonete.DataSource.DataSet.IsEmpty) Then Exit;
 Get_Moneta_UE;
end;

procedure TfMoneteDB.Get_Moneta_UE;
begin
 If (dbcboxMonetaUE.Field.AsInteger=0) Then cboxMoneta_UE.Checked:=False
                                       Else cboxMoneta_UE.Checked:=True;
end;

procedure TfMoneteDB.FormShow(Sender: TObject);
begin
 If (dbnMonete.DataSource.DataSet.IsEmpty) Then Exit;
 Get_Moneta_UE;
end;

procedure TfMoneteDB.dbePosizioneArrKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (Key=#13) Then dbeID_Moneta.SetFocus;
end;

procedure TfMoneteDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then LookTipoArrot_ID.SetFocus;
end;

procedure TfMoneteDB.LookTipoArrot_IDKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookTipoArrot_ID,True,True,False).SetFocus;
end;

procedure TfMoneteDB.dbeID_MonetaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeID_Moneta,True,True,False).SetFocus;
end;

procedure TfMoneteDB.dbeSimboloKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeSimbolo,True,True,False).SetFocus;
end;

procedure TfMoneteDB.cboxMoneta_UEKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(cboxMoneta_UE,True,True,False).SetFocus;
end;

end.
