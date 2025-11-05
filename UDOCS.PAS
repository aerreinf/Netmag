unit uDocs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseFormDoc3, Db, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, Mask,
  ComCtrls, ToolWin, ExtCtrls, Menus, RxLookup, IBCustomDataSet, IBQuery,
  FR_Class, RxMemDS;

type
  TfDocs = class(TfBaseFormDoc3)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDocs: TfDocs;

implementation

uses uAzDM;

{$R *.DFM}

end.
