unit UvisBolRac;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, Buttons, RxLookup, Mask, DBCtrls;

type
  TfVisDocrac = class(TForm)
    gbCausale: TGroupBox;
    rabCauTutti: TRadioButton;
    rabCauSc: TRadioButton;
    LookCauCod: TDBLookupComboBox;
    LookCauDescr: TDBLookupComboBox;
    gbData: TGroupBox;
    laDataDa: TLabel;
    laDataA: TLabel;
    meDataDa: TMaskEdit;
    meDataA: TMaskEdit;
    gbDeposito: TGroupBox;
    rabDepTutti: TRadioButton;
    rabDepScegli: TRadioButton;
    LookDepCod: TDBLookupComboBox;
    LookDepDescr: TDBLookupComboBox;
    gbTipoCliFor: TGroupBox;
    rabTipoCliFornTutti: TRadioButton;
    rabTipoFornTutti: TRadioButton;
    rabTipoFornSc: TRadioButton;
    rabTipoCliTutti: TRadioButton;
    rabTipoCliSc: TRadioButton;
    LookCliCod: TDBLookupComboBox;
    LookCliDescr: TDBLookupComboBox;
    LookFornDescr: TDBLookupComboBox;
    LookFornCod: TDBLookupComboBox;
    gbArticoli: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rabArtTutti: TRadioButton;
    rabArtDaA: TRadioButton;
    rabArtCat: TRadioButton;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    gbTipoStampa: TGroupBox;
    rabTSAn: TRadioButton;
    rabTSSin: TRadioButton;
    bbEsci: TBitBtn;
    bbStampa: TBitBtn;
    IBQuery2: TIBQuery;
    IBQuery2CODICE: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2DETAGLIO: TSmallintField;
    IBQuery2MERCE_NS: TSmallintField;
    IBQuery2RAGGRUPPAMENTO_DEPOSITI_ID: TIBStringField;
    IBQuery2INDIRIZZO: TIBStringField;
    IBQuery2CITTA: TIBStringField;
    IBQuery2CAP: TIBStringField;
    IBQuery2PROV: TIBStringField;
    dsoDep: TDataSource;
    dsoCLIFORN: TDataSource;
    dsoCli: TDataSource;
    dsoForn: TDataSource;
    dsoCauMag: TDataSource;
    dsArticoli: TDataSource;
    dsoGRUPPO: TDataSource;
    dsoTIPO: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoMARCA: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1Nome_Deposito: TStringField;
    IBQuery1DEP: TIBStringField;
    IBQuery1CAUSALE_MAGAZZINO: TIBStringField;
    IBQuery1SOMMA1: TFloatField;
    IBQuery1SOMMA2: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gbCausaleExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVisDocrac: TfVisDocrac;

implementation

{$R *.DFM}

procedure TfVisDocrac.FormCreate(Sender: TObject);
begin
 boolCauTutti := True;
 strCauMagCod:='';

 strDataDa := '01/01/1980';
 strDataA  := DateToStr(Date);
 meDataA.Text:=DateToStr(Date);

 boolDepTutti := True;
 strDepCod := '';

 boolArtTutti := True;

 boolCliForTutti:=True;
 intCliForCod:=-1;
 intTipo:=0;


 // close and open all dataset
 dsoCli.dataset.Close;
 dsArticoli.DataSet.Close;
 dsoForn.Dataset.Close;
 dsoCauMag.DataSet.cLOSE;
 dsoDep.DataSet.Close;
 dsoCLIFORN.dataset.Close;
 dsoCli.dataset.Open;
 dsoForn.Dataset.Open;
 dsoCauMag.DataSet.Open;
 dsoDep.DataSet.Open;
 dsoCLIFORN.dataset.Open;
 dsArticoli.DataSet.Open;
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;

end;

procedure TfVisDocrac.FormDestroy(Sender: TObject);
begin
 dsoCli.dataset.Close;
 dsoForn.Dataset.Close;
 dsoCauMag.DataSet.cLOSE;
 dsoDep.DataSet.Close;
 dsoCLIFORN.dataset.Close;

end;

procedure TfVisDocrac.gbCausaleExit(Sender: TObject);
begin
 //
 Try
  strCauMagCod:='%';
  If Not(boolCauTutti)
   Then If Not(LookCauCod.KeyValue='')
         Then strCauMagCod:=LookCauCod.KeyValue
   
 Except
   strCauMagCod:='%';
 End;

end;

end.
