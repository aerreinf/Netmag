unit uCasseDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfCasseDB = class(TForm)
    paCtrl: TPanel;
    dbnCasse: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeID_Moneta: TDBEdit;
    dbeDescr: TDBEdit;
    laNumSer: TLabel;
    dbeSerialNumber: TDBEdit;
    gbComunic: TGroupBox;
    gbConfig: TGroupBox;
    laBaud: TLabel;
    LookBaud: TDBLookupComboBox;
    laParity: TLabel;
    LookParita: TDBLookupComboBox;
    laStopBit: TLabel;
    LookStopBit: TDBLookupComboBox;
    LookDataBit: TDBLookupComboBox;
    laDataBit: TLabel;
    LookPort: TDBLookupComboBox;
    laPort: TLabel;
    dbeTimeOut: TDBEdit;
    dbeNumCar: TDBEdit;
    dbeNumRep: TDBEdit;
    laModECR: TLabel;
    LookModelloECR: TDBLookupComboBox;
    laTimeOut: TLabel;
    laNumCa: TLabel;
    laNumRep: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCasseDB: TfCasseDB;

implementation

Uses uAzDM, uPubDM;

{$R *.DFM}

end.
