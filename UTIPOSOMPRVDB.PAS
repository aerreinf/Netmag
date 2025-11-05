unit uTipoSomPrvDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfTipoSommaPrvDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Tipo_Somma_Provvigione: TDBNavigator;
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
  fTipoSommaPrvDB: TfTipoSommaPrvDB;

implementation

Uses uAzDM;

{$R *.DFM}

end.
