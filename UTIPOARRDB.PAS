unit uTipoArrDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfTipoArrotDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Tipo_Arrotondamento: TDBNavigator;
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
  fTipoArrotDB: TfTipoArrotDB;

implementation

uses uPubDM;

{$R *.DFM}

end.
