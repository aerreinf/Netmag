unit uPorteDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfPorteDB = class(TForm)
    paCtrl: TPanel;
    dbnPorte: TDBNavigator;
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
  fPorteDB: TfPorteDB;

implementation

Uses uPubDM;

{$R *.DFM}

end.
