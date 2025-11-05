unit uDepositiDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfDepositiDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Dep: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    Label1: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    LookRaggrupp: TDBLookupComboBox;
    cboxMerce: TCheckBox;
    dbcboxMerce: TDBCheckBox;
    LookRaggDescr: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    procedure cboxMerceClick(Sender: TObject);
    procedure cboxMerceExit(Sender: TObject);
    procedure dbnTab_DepClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure dbeCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookRaggruppKeyPress(Sender: TObject; var Key: Char);
    procedure LookRaggDescrKeyPress(Sender: TObject; var Key: Char);
    procedure cboxMerceKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure Set_Merce;
    Procedure Get_Merce;
  public
    { Public declarations }
  end;

var
  fDepositiDB: TfDepositiDB;

implementation

Uses uAzDM;

{$R *.DFM}

{ TfDepositiDB }

procedure TfDepositiDB.Get_Merce;
begin
 If (dbcboxMerce.Field.AsInteger=0) Then cboxMerce.Checked:=False
                                    Else cboxMerce.Checked:=True;
end;

procedure TfDepositiDB.Set_Merce;
begin
 If (cboxMerce.Checked) Then dbcboxMerce.Field.Value:=1
                        Else dbcboxMerce.Field.Value:=0;
end;

procedure TfDepositiDB.cboxMerceClick(Sender: TObject);
begin
 Set_Merce;
end;

procedure TfDepositiDB.cboxMerceExit(Sender: TObject);
begin
 Set_Merce;
end;

procedure TfDepositiDB.dbnTab_DepClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbInsert) Then
 begin
dmodAz.dsoTab_Depositi.DataSet.FieldByName('attivo').AsString := 'N';
 Set_Merce;
 end;
 If (dbnTab_Dep.DataSource.DataSet.IsEmpty) Then Exit;
 Get_Merce;
end;

procedure TfDepositiDB.FormShow(Sender: TObject);
begin
 If (dbnTab_Dep.DataSource.DataSet.IsEmpty) Then Exit;
 Get_Merce;
end;

procedure TfDepositiDB.dbeCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodice,True,True,False).SetFocus;
end;

procedure TfDepositiDB.dbeDescrKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDescr,True,True,False).SetFocus;
end;

procedure TfDepositiDB.LookRaggruppKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookRaggrupp,True,True,False).SetFocus;
end;

procedure TfDepositiDB.LookRaggDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookRaggDescr,True,True,False).SetFocus;
end;

procedure TfDepositiDB.cboxMerceKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(cboxMerce,True,True,False).SetFocus;
end;

end.
