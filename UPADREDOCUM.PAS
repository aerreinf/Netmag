unit uPadreDocum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, Grids, DBGrids, Buttons;

type
  TfPadreDocum = class(TForm)
    paCtrl: TPanel;
    paAdds: TPanel;
    Panel1: TPanel;
    pctrlMain: TPageControl;
    tabs1: TTabSheet;
    tabs2: TTabSheet;
    tabs3: TTabSheet;
    tabs4: TTabSheet;
    pa1: TPanel;
    pa2: TPanel;
    pa3: TPanel;
    pa4: TPanel;
    laOra: TLabel;
    dbeOra: TDBEdit;
    dbeDataDoc: TDBEdit;
    laDataDoc: TLabel;
    laDataReg: TLabel;
    dbeDataReg: TDBEdit;
    laDataCons: TLabel;
    dbeDataCons: TDBEdit;
    laNumero: TLabel;
    laSerie: TLabel;
    laFornitore: TLabel;
    dbeNumero: TDBEdit;
    dbeSerie: TDBEdit;
    LookFornitoreCod: TDBLookupComboBox;
    LookFornitoreDescr: TDBLookupComboBox;
    dbeIndir: TDBEdit;
    LookNostrDepCod: TDBLookupComboBox;
    LookNostrDepDescr: TDBLookupComboBox;
    laIndirizzo: TLabel;
    laNostroDeposito: TLabel;
    laMoneta: TLabel;
    LookMonetaCod: TDBLookupComboBox;
    LookMonetaDescr: TDBLookupComboBox;
    laPagamento: TLabel;
    LookPagCod: TDBLookupComboBox;
    LookPagDescr: TDBLookupComboBox;
    dbeSconto1: TDBEdit;
    dbeSconto2: TDBEdit;
    dbeImportoSconto: TDBEdit;
    laSconto: TLabel;
    laPIUTraSconti: TLabel;
    laImportoSconto: TLabel;
    laBolli: TLabel;
    laAccessor: TLabel;
    dbeBolli: TDBEdit;
    dbeAccessor: TDBEdit;
    laIncasso: TLabel;
    laImballo: TLabel;
    dbeImballo: TDBEdit;
    dbeIncasso: TDBEdit;
    laSpediz: TLabel;
    laContrass: TLabel;
    dbeContras: TDBEdit;
    dbeSpediz: TDBEdit;
    laPorto: TLabel;
    lookPortoCod: TDBLookupComboBox;
    LookPortoDescr: TDBLookupComboBox;
    laCauMag: TLabel;
    LookCauMagCod: TDBLookupComboBox;
    LookCauMagDescr: TDBLookupComboBox;
    dbeNrColl: TDBEdit;
    laNrColli: TLabel;
    tabs5: TTabSheet;
    pa5: TPanel;
    laBancaForn: TLabel;
    laListino: TLabel;
    LookBancaFornCod: TDBLookupComboBox;
    LookBancaFornDescr: TDBLookupComboBox;
    LookListinoCod: TDBLookupComboBox;
    LookListinoDescr: TDBLookupComboBox;
    laAltraDest: TLabel;
    LookAltraDestCod: TDBLookupComboBox;
    LookAltraDestDescr: TDBLookupComboBox;
    paGrid: TPanel;
    pctrlRighe: TPageControl;
    tabs21: TTabSheet;
    tabs22: TTabSheet;
    tabs23: TTabSheet;
    tabs24: TTabSheet;
    paRighe: TPanel;
    paCastIVA: TPanel;
    paContabili: TPanel;
    paAltro: TPanel;
    dbgRighe: TDBGrid;
    dbrCastIVA: TDBGrid;
    Label27: TLabel;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    DBEdit21: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    Label33: TLabel;
    DBEdit24: TDBEdit;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    Label35: TLabel;
    DBEdit26: TDBEdit;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    Label38: TLabel;
    DBEdit29: TDBEdit;
    Label39: TLabel;
    DBEdit30: TDBEdit;
    Label41: TLabel;
    DBEdit32: TDBEdit;
    Label42: TLabel;
    DBEdit33: TDBEdit;
    dbcbRilevaAcconto: TDBCheckBox;
    Label49: TLabel;
    DBLookupComboBox25: TDBLookupComboBox;
    DBLookupComboBox26: TDBLookupComboBox;
    gbCodIVASpese: TGroupBox;
    Label46: TLabel;
    DBLookupComboBox20: TDBLookupComboBox;
    DBLookupComboBox19: TDBLookupComboBox;
    Label43: TLabel;
    Label44: TLabel;
    DBLookupComboBox24: TDBLookupComboBox;
    DBLookupComboBox22: TDBLookupComboBox;
    DBLookupComboBox21: TDBLookupComboBox;
    DBLookupComboBox23: TDBLookupComboBox;
    Label47: TLabel;
    Label48: TLabel;
    Label45: TLabel;
    DBLookupComboBox27: TDBLookupComboBox;
    DBLookupComboBox28: TDBLookupComboBox;
    DBLookupComboBox29: TDBLookupComboBox;
    DBLookupComboBox30: TDBLookupComboBox;
    DBLookupComboBox31: TDBLookupComboBox;
    DBLookupComboBox32: TDBLookupComboBox;
    Label40: TLabel;
    DBLookupComboBox33: TDBLookupComboBox;
    DBLookupComboBox34: TDBLookupComboBox;
    Label50: TLabel;
    Label51: TLabel;
    DBLookupComboBox35: TDBLookupComboBox;
    DBLookupComboBox36: TDBLookupComboBox;
    Label52: TLabel;
    DBLookupComboBox37: TDBLookupComboBox;
    DBLookupComboBox38: TDBLookupComboBox;
    Label53: TLabel;
    DBLookupComboBox39: TDBLookupComboBox;
    DBLookupComboBox40: TDBLookupComboBox;
    Label54: TLabel;
    BitBtn1: TBitBtn;
    DBEdit31: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPadreDocum: TfPadreDocum;

implementation

{$R *.DFM}

end.
