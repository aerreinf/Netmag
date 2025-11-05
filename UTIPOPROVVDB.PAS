unit uTipoProvvDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfTipoProvvDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Tipo_Provvigione: TDBNavigator;
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
  fTipoProvvDB: TfTipoProvvDB;

implementation

Uses uAzDM;

{$R *.DFM}

end.
