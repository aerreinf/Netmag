unit uBitDiDatiDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfBitDiDatiDB = class(TForm)
    paCtrl: TPanel;
    dbnBitDiDati: TDBNavigator;
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
  fBitDiDatiDB: TfBitDiDatiDB;

implementation

Uses uPubDM;

{$R *.DFM}

end.
