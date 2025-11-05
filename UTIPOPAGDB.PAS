unit uTipoPagDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfTipoPagDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Tipo_Pagamento: TDBNavigator;
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
  fTipoPagDB: TfTipoPagDB;

implementation

Uses uPubDM;

{$R *.DFM}

end.
