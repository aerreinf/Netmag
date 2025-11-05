unit dmZ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ZQuery, ZIbSqlQuery, ZTransact, ZIbSqlTr, ZConnect, ZIbSqlCon;

type
  TDataModule1 = class(TDataModule)
    ZIbSqlDatabase1: TZIbSqlDatabase;
    ZIbSqlTransact1: TZIbSqlTransact;
    ZIbSqlTable1: TZIbSqlTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.DFM}

end.
