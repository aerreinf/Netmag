unit uCauTraspDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfCauTraspDB = class(TForm)
    paCtrl: TPanel;
    dbnCau_Trasp: TDBNavigator;
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
  fCauTraspDB: TfCauTraspDB;

implementation

Uses uAzDM;

{$R *.DFM}

end.
