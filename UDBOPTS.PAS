unit uDBOpts;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TfDBOpts = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    bbOK: TBitBtn;
    pctrlDBOpt: TPageControl;
    tsGeneral: TTabSheet;
    TabSheet2: TTabSheet;
    paTrans: TPanel;
    cboxTransAuto: TCheckBox;
    gboxTransOpts: TGroupBox;
    laTransType: TLabel;
    cobTransType: TComboBox;
    laTransAutoTimer: TLabel;
    edTransTimeer: TEdit;
    laUnTransTimer: TLabel;
    paGeneral: TPanel;
    procedure cboxTransAutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDBOpts: TfDBOpts;

implementation

{$R *.DFM}

procedure TfDBOpts.cboxTransAutoClick(Sender: TObject);
begin
 gboxTransOpts.Enabled:=cboxTransAuto.Checked;
end;

end.
