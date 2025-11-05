unit uTipoRegisDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfTipoRegisDB = class(TForm)
    paCtrl: TPanel;
    dbnTipoRegistratore: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    Label1: TLabel;
    dbeDriver: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoRegisDB: TfTipoRegisDB;

implementation

Uses uPubDM;

{$R *.DFM}

end.
