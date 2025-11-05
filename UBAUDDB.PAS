unit uBaudDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfBaudDB = class(TForm)
    paCtrl: TPanel;
    dbnBaud: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBaudDB: TfBaudDB;

implementation

Uses uPubDM;

{$R *.DFM}

end.
