unit uBitDiStopDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfBitDiStopDB = class(TForm)
    paCtrl: TPanel;
    dbnBitDiStop: TDBNavigator;
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
  fBitDiStopDB: TfBitDiStopDB;

implementation

Uses uPubDM;

{$R *.DFM}

end.
 