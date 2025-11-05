unit uBaseFormGrid1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls;

type
  TfBaseFormGrid1 = class(TfBaseForm3)
    dbgData: TDBGrid;
    dsoDataLink: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBaseFormGrid1: TfBaseFormGrid1;

implementation

{$R *.DFM}

end.
