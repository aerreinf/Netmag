unit uFrmBarMove;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, ComCtrls, ToolWin;

type
  TfrmBarMove = class(TFrame)
    tbarMOVE: TToolBar;
    sep0: TToolButton;
    sep1: TToolButton;
    tbtnFirst: TToolButton;
    tbtnPrior: TToolButton;
    tbtnNext: TToolButton;
    tbtnLast: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Implementation

Uses uPubDM;

{$R *.DFM}

end.
