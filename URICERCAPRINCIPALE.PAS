Unit uRicercaPrincipale;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, IBCustomDataSet, IBQuery;

Type
 TfRicercaPrincipale = Class(TForm)
    paView: TPanel;
    dbgDati: TDBGrid;
    dsoRicercaPrincipale: TDataSource;
    Procedure dbgDatiDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   Private
    { Private declarations }
   Public
    { Public declarations }
    strTable, strField, strParam: String;
    Procedure Do_Search;
    Procedure Set_DataSet(bPublic: Boolean);
  End;

Var
  fRicercaPrincipale: TfRicercaPrincipale;

Implementation

uses uPubDM, uAzDM;

{$R *.DFM}

Procedure TfRicercaPrincipale.dbgDatiDblClick(Sender: TObject);
Begin
 // Locate in main window
 Close;
End;

procedure TfRicercaPrincipale.Do_Search;
begin
 // Prepare SQL
 With (dsoRicercaPrincipale.DataSet as TIBQuery) Do
 Begin
  Active:=False;
  SQL.Clear;
  SQL.Add('SELECT * FROM '+strTable+' Where '+strField+' Like "%'+strParam+'%"');
  Active:=True;
 End;
end;

procedure TfRicercaPrincipale.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=VK_ESCAPE)
  Then Close;
end;

procedure TfRicercaPrincipale.Set_DataSet(bPublic: Boolean);
begin
 If (bPublic)
  Then dsoRicercaPrincipale.DataSet:=dmodPub.ibqRicerca
  Else dsoRicercaPrincipale.DataSet:=dmodAz.ibqRicerca;
end;

End.
