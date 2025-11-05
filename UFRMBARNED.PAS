Unit uFrmBarNED;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin;

Type
  TfrmBarNED = Class(TFrame)
    tbarNED: TToolBar;
    sep0: TToolButton;
    tbtnNew: TToolButton;
    tbtnEdit: TToolButton;
    sep1: TToolButton;
    tbtnRefresh: TToolButton;
  Private
    { Private declarations }
  Public
    { Public declarations }
 End;

Implementation

Uses uPubDM;

{$R *.DFM}

End.
