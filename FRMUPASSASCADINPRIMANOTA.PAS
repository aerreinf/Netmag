unit frmuPassaScadInPrimaNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, RxLookup, ExtCtrls, Db;

type
  TfrmPassaScadInPrimaNota = class(TForm)
    dsRicerca: TDataSource;
    dsScadenze: TDataSource;
    dsCli: TDataSource;
    dsForn: TDataSource;
    dsPagamento: TDataSource;
    pnlCtrlScadenze: TPanel;
    cbPagamento: TCheckBox;
    rxdblcPagam: TRxDBLookupCombo;
    gbCliForn: TGroupBox;
    rbTutti: TRadioButton;
    rbSoloCli: TRadioButton;
    rbSoloForn: TRadioButton;
    rbCli: TRadioButton;
    rxdblcCliDescr: TRxDBLookupCombo;
    rxdblcCliID: TRxDBLookupCombo;
    rbForn: TRadioButton;
    rxdblcForID: TRxDBLookupCombo;
    rxdblcForDescr: TRxDBLookupCombo;
    bbEsci: TBitBtn;
    bbAggiorna: TBitBtn;
    bbStampa: TBitBtn;
    rbTutteScad: TRadioButton;
    rbNonPagScad: TRadioButton;
    dbgScadenze: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPassaScadInPrimaNota: TfrmPassaScadInPrimaNota;

implementation

{$R *.DFM}

end.
