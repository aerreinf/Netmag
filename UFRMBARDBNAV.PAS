unit uFrmBarDBNav;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin;

type
  TfrmBarDBNav = class(TFrame)
    tbarDBNav: TToolBar;
    sep0: TToolButton;
    tbtnExit: TToolButton;
    sep1: TToolButton;
    tbtnOK: TToolButton;
    tbtnCancel: TToolButton;
    sep2: TToolButton;
    sep3: TToolButton;
    sep4: TToolButton;
    tbtnFirst: TToolButton;
    tbtnPrior: TToolButton;
    tbtnNext: TToolButton;
    tbtnLast: TToolButton;
    sep5: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uAnagDM;

{$R *.DFM}

end.
