unit uNumDocList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, Grids, DBGrids, ExtCtrls, IBCustomDataSet, IBQuery,
  IBUpdateSQL, IBDatabase, Mask, DBCtrls, DBCGrids;

type
  TfNumDoc_All = class(TForm)
    paND: TPanel;
    paCtrl: TPanel;
    dsoNumDoc: TDataSource;
    bbExit: TBitBtn;
    dbcgNumeriFatt: TDBCtrlGrid;
    dbeNumero: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure bbExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   Private

   Public
    strTabName: String;

  End;

Var
  fNumDoc_All: TfNumDoc_All;

Implementation

Uses uAzDM;

{$R *.DFM}

procedure TfNumDoc_All.bbExitClick(Sender: TObject);
begin
TRY
 dmodAz.ibtrDef.Commit;
EXCEPT
 dmodAz.ibtrDef.Rollback;
END;
 Close;
End;

procedure TfNumDoc_All.FormShow(Sender: TObject);
begin
with dmodAz.ibtNUM_DOC do
begin
close;
SelectSQL.clear;
SelectSQL.add('select * from '+strTabName);
SelectSQL.add('order by numero');

InsertSQL.clear;
InsertSQL.add('insert into '+strTabName);
InsertSQL.add('(NUMERO, DATA)');
InsertSQL.add('values');
InsertSQL.add('(:NUMERO, :DATA)');

DeleteSQL.clear;
DeleteSQL.add('delete from '+strTabName);
DeleteSQL.add('where');
DeleteSQL.add('NUMERO =:OLD_NUMERO');

ModifySQL.clear;
ModifySQL.add('update '+strTabName);
ModifySQL.add('set NUMERO = :NUMERO,');
ModifySQL.add('DATA = :DATA');
ModifySQL.add('where NUMERO = :OLD_NUMERO');

RefreshSQL.clear;
RefreshSQL.add('Select NUMERO,DATA from '+strTabName);
RefreshSQL.add('where NUMERO = :NUMERO');
Open;
end;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

end;

end.
