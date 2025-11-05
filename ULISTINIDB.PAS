unit uListiniDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfListinoDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Listino: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    Label1: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    LookMoneta: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListinoDB: TfListinoDB;

implementation

Uses uAzDM;

{$R *.DFM}

end.
