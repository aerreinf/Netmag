unit uParitaDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfParitaDB = class(TForm)
    paCtrl: TPanel;
    dbnParita: TDBNavigator;
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
  fParitaDB: TfParitaDB;

implementation

uSES UpUBdm;

{$R *.DFM}

end.
