unit uSpLoad01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, RXCtrls;

type
  TfSplLoading = class(TForm)
    paBack: TPanel;
    paOnBack: TPanel;
    stLoadIsOnWay: TStaticText;
    pbarLoadProcess: TProgressBar;
    spInfo: TSecretPanel;
   private
   public
  End;

var
  fSplLoading: TfSplLoading;

implementation

{$R *.DFM}

end.
