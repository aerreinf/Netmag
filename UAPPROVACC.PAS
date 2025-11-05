unit uApprovAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RxLookup, Grids, DBGrids, Db, IBCustomDataSet, IBQuery, Mask,
  ToolEdit, CurrEdit, ExtCtrls, RxMemDS, FR_Class, IBSQL, IBScript,
  ComCtrls, Provider, DBClient, DBLocal, IBStoredProc, Menus,Variants,
  IBUpdateSQL;

type
  TfApprovAcc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Button1: TButton;
    Button2: TButton;
    Edit2: TRxCalcEdit;
    Edit3: TRxCalcEdit;
    Edit4: TRxCalcEdit;
    Edit10: TRxCalcEdit;
    Edit9: TRxCalcEdit;
    Edit6: TRxCalcEdit;
    Edit5: TRxCalcEdit;
    Edit11: TRxCalcEdit;
    Edit12: TRxCalcEdit;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    IBQuery3: TIBQuery;
    DataSource3: TDataSource;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    IBQuery4: TIBQuery;
    Button3: TButton;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CODICE: TStringField;
    RxMemoryData1QUANTITA: TFloatField;
    RxMemoryData2: TRxMemoryData;
    RxMemoryData3: TRxMemoryData;
    RxMemoryData2CODICE: TStringField;
    RxMemoryData2QUANTITA: TFloatField;
    RxMemoryData3CODICE: TStringField;
    RxMemoryData3QUANTITA: TFloatField;
    Label13: TLabel;
    RxCalcEdit1: TRxCalcEdit;
    RxCalcEdit2: TRxCalcEdit;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Button4: TButton;
    Label19: TLabel;
    IBQuery5: TIBQuery;
    RxMemoryData4: TRxMemoryData;
    RxMemoryData4Codice: TStringField;
    RxMemoryData4DESCR: TStringField;
    RxMemoryData4ORDINATO: TFloatField;
    RxMemoryData4CONSEGNATO: TFloatField;
    RxMemoryData4DACONS: TFloatField;
    DataSource4: TDataSource;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    dsoMARCA: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoGRUPPO: TDataSource;
    dsoTIPO: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    Label23: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    RadioGroup4: TRadioGroup;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    Button5: TButton;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    DataSource12: TDataSource;
    Label24: TLabel;
    IBQuery6: TIBQuery;
    IBQuery6CODICE_ARTICOLO: TIBStringField;
    IBQuery6DESCR: TIBStringField;
    IBQuery6F_1: TFloatField;
    IBQuery6F_2: TFloatField;
    IBQuery6A: TIBStringField;
    IBQuery6B: TIBStringField;
    IBQuery6C: TIBStringField;
    DataSource13: TDataSource;
    IBQuery7: TIBQuery;
    DataSource14: TDataSource;
    IBQuery6DaCons: TFloatField;
    IBQuery8: TIBQuery;
    IBQuery8CODICE_ARTICOLO: TIBStringField;
    IBQuery8DESCR: TIBStringField;
    IBQuery8F_1: TFloatField;
    IBQuery8F_2: TFloatField;
    IBQuery8A: TIBStringField;
    IBQuery8B: TIBStringField;
    IBQuery8C: TIBStringField;
    IBQuery6Arr: TFloatField;
    IBQuery9: TIBQuery;
    IBQuery10: TIBQuery;
    IBQuery11: TIBQuery;
    IBQuery9CODICE_ARTICOLO: TIBStringField;
    IBQuery9F_1: TFloatField;
    IBQuery10CODICE_ARTICOLO: TIBStringField;
    IBQuery10F_1: TFloatField;
    IBQuery11CODICE_ARTICOLO: TIBStringField;
    IBQuery11F_1: TFloatField;
    IBQuery12: TIBQuery;
    DataSource15: TDataSource;
    IBQuery12COLORE: TIBStringField;
    IBQuery12TAGLIA: TIBStringField;
    IBQuery12F1: TIBStringField;
    IBQuery12F_1: TFloatField;
    IBQuery12CODICE_ARTICOLO: TIBStringField;
    IBQuery13: TIBQuery;
    DataSource16: TDataSource;
    IBQuery13CODICE_ARTICOLO: TIBStringField;
    IBQuery13F1: TIBStringField;
    IBQuery13F_1: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    IBStoredProc1: TIBStoredProc;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    IBQuery14: TIBQuery;
    IBStringField6: TIBStringField;
    FloatField3: TFloatField;
    DataSource17: TDataSource;
    IBQuery15: TIBQuery;
    IBStringField8: TIBStringField;
    FloatField4: TFloatField;
    DataSource18: TDataSource;
    IBQuery14COLORE: TIBStringField;
    IBQuery15TAGLIA: TIBStringField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    IBQuery16: TIBQuery;
    DataSource19: TDataSource;
    IBQuery17: TIBQuery;
    DataSource20: TDataSource;
    IBQuery18: TIBQuery;
    DataSource21: TDataSource;
    IBQuery16CODICE_ARTICOLO: TIBStringField;
    IBQuery16DESCR: TIBStringField;
    IBQuery16F_1: TFloatField;
    IBQuery16F_2: TFloatField;
    IBQuery16A: TIBStringField;
    IBQuery17CODICE_ARTICOLO: TIBStringField;
    IBQuery17DESCR: TIBStringField;
    IBQuery17F_1: TFloatField;
    IBQuery17F_2: TFloatField;
    IBQuery17B: TIBStringField;
    IBQuery18CODICE_ARTICOLO: TIBStringField;
    IBQuery18DESCR: TIBStringField;
    IBQuery18F_1: TFloatField;
    IBQuery18F_2: TFloatField;
    IBQuery18C: TIBStringField;
    PageControl4: TPageControl;
    TabSheet13: TTabSheet;
    DBGrid14: TDBGrid;
    TabSheet14: TTabSheet;
    DBGrid15: TDBGrid;
    TabSheet15: TTabSheet;
    DBGrid16: TDBGrid;
    TabSheet16: TTabSheet;
    DBGrid17: TDBGrid;
    IBQuery19: TIBQuery;
    DataSource22: TDataSource;
    IBStoredProc2: TIBStoredProc;
    IBQuery20: TIBQuery;
    DataSource23: TDataSource;
    IBQuery21: TIBQuery;
    DataSource24: TDataSource;
    IBQuery22: TIBQuery;
    DataSource25: TDataSource;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    DBGrid10: TDBGrid;
    DBGrid11: TDBGrid;
    DBGrid12: TDBGrid;
    DBGrid13: TDBGrid;
    IBStoredProc3: TIBStoredProc;
    IBQuery23: TIBQuery;
    DataSource26: TDataSource;
    IBQuery24: TIBQuery;
    DataSource27: TDataSource;
    IBQuery25: TIBQuery;
    DataSource28: TDataSource;
    IBQuery26: TIBQuery;
    DataSource29: TDataSource;
    ib1: TIBQuery;
    ib2: TIBQuery;
    ib3: TIBQuery;
    IBSQL1: TIBSQL;
    IBSQL2: TIBSQL;
    IBSQL3: TIBSQL;
    Button6: TButton;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    IBQuery19CODICE_ARTICOLO: TIBStringField;
    IBQuery19COLORE: TIBStringField;
    IBQuery19TAGLIA: TIBStringField;
    IBQuery19F1: TIBStringField;
    IBQuery19F_1: TFloatField;
    IBQuery23CODICE_ARTICOLO: TIBStringField;
    IBQuery23COLORE: TIBStringField;
    IBQuery23TAGLIA: TIBStringField;
    IBQuery23F1: TIBStringField;
    IBQuery23F_1: TFloatField;
    IBQuery7CODICE_ARTICOLO: TIBStringField;
    IBQuery7DESCR: TIBStringField;
    IBQuery7F_1: TFloatField;
    IBQuery7ORD: TFloatField;
    IBQuery7F_2: TFloatField;
    IBQuery7A: TIBStringField;
    IBQuery7B: TIBStringField;
    IBQuery7C: TIBStringField;
    RxArriviTot: TRxMemoryData;
    RxArriviTotCODICE_ARTICOLO: TStringField;
    RxArriviTotDESCR: TStringField;
    RxArriviTotORD: TFloatField;
    RxArriviTotA: TStringField;
    RxArriviTotB: TStringField;
    RxArriviTotC: TStringField;
    RxArriviTotArriv: TFloatField;
    RxArriviTotF_1: TFloatField;
    RxArriviF: TRxMemoryData;
    RxArriviFCODICE_ARTICOLO: TStringField;
    RxArriviFDESCR: TStringField;
    RxArriviFF_1: TFloatField;
    RxArriviFF_2: TFloatField;
    RxArriviFC: TStringField;
    RxArriviFORD: TFloatField;
    IBQuery27: TIBQuery;
    IBQuery27CODICE_ARTICOLO: TIBStringField;
    IBQuery27DESCR: TIBStringField;
    IBQuery27F_1: TFloatField;
    IBQuery27F_2: TFloatField;
    IBQuery27C: TIBStringField;
    RxArriviTotPret: TFloatField;
    RxArriviTotTaglio: TFloatField;
    RxArriviTotExt: TFloatField;
    RxArriviFPret: TFloatField;
    RxArriviFTaglio: TFloatField;
    RxArriviFExt: TFloatField;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    IBQuery20CODICE_ARTICOLO: TIBStringField;
    IBQuery20F1: TIBStringField;
    IBQuery20F_1: TFloatField;
    IBQuery24CODICE_ARTICOLO: TIBStringField;
    IBQuery24F1: TIBStringField;
    IBQuery24F_1: TFloatField;
    RxArriviC: TRxMemoryData;
    RxArriviCCODICE_ARTICOLO: TStringField;
    RxArriviCDESCR: TStringField;
    RxArriviCF_1: TFloatField;
    RxArriviCF_2: TFloatField;
    RxArriviCB: TStringField;
    RxArriviCORD: TFloatField;
    RxArriviCPret: TFloatField;
    RxArriviCTaglio: TFloatField;
    RxArriviCExt: TFloatField;
    IBQuery28: TIBQuery;
    IBQuery28CODICE_ARTICOLO: TIBStringField;
    IBQuery28DESCR: TIBStringField;
    IBQuery28F_1: TFloatField;
    IBQuery28F_2: TFloatField;
    IBQuery28B: TIBStringField;
    IBQuery21CODICE_ARTICOLO: TIBStringField;
    IBQuery21COLORE: TIBStringField;
    IBQuery21F_1: TFloatField;
    IBQuery25CODICE_ARTICOLO: TIBStringField;
    IBQuery25COLORE: TIBStringField;
    IBQuery25F_1: TFloatField;
    IBQuery29: TIBQuery;
    RxArriviT: TRxMemoryData;
    RxArriviTCODICE_ARTICOLO: TStringField;
    RxArriviTDESCR: TStringField;
    RxArriviTF_1: TFloatField;
    RxArriviTF_2: TFloatField;
    RxArriviTA: TStringField;
    RxArriviTORD: TFloatField;
    RxArriviTPret: TFloatField;
    RxArriviTTaglio: TFloatField;
    RxArriviTExt: TFloatField;
    IBQuery29CODICE_ARTICOLO: TIBStringField;
    IBQuery29DESCR: TIBStringField;
    IBQuery29F_1: TFloatField;
    IBQuery29F_2: TFloatField;
    IBQuery29A: TIBStringField;
    IBQuery22CODICE_ARTICOLO: TIBStringField;
    IBQuery22TAGLIA: TIBStringField;
    IBQuery22F_1: TFloatField;
    IBQuery26CODICE_ARTICOLO: TIBStringField;
    IBQuery26TAGLIA: TIBStringField;
    IBQuery26F_1: TFloatField;
    IBQuery30: TIBQuery;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    IBQuery31: TIBQuery;
    IBStringField2: TIBStringField;
    FloatField2: TFloatField;
    IBQuery32: TIBQuery;
    IBStringField3: TIBStringField;
    FloatField5: TFloatField;
    IBQuery33: TIBQuery;
    IBStringField4: TIBStringField;
    FloatField6: TFloatField;
    IBQuery34: TIBQuery;
    IBStringField5: TIBStringField;
    FloatField7: TFloatField;
    IBQuery35: TIBQuery;
    IBStringField7: TIBStringField;
    FloatField8: TFloatField;
    IBQuery36: TIBQuery;
    IBStringField9: TIBStringField;
    FloatField9: TFloatField;
    IBQuery37: TIBQuery;
    IBStringField10: TIBStringField;
    FloatField10: TFloatField;
    IBQuery38: TIBQuery;
    IBStringField11: TIBStringField;
    FloatField11: TFloatField;
    Button10: TButton;
    RxArriviCP: TRxMemoryData;
    RxArriviCPCODICE_ARTICOLO: TStringField;
    RxArriviCPDESCR: TStringField;
    RxArriviCPF_1: TFloatField;
    RxArriviCPF_2: TFloatField;
    RxArriviCPA: TStringField;
    RxArriviCPORD: TFloatField;
    RxArriviCPPret: TFloatField;
    RxArriviCPTaglio: TFloatField;
    RxArriviCPExt: TFloatField;
    Button11: TButton;
    IBQuery39: TIBQuery;
    IBQuery40: TIBQuery;
    IBStoredProc4: TIBStoredProc;
    IBStoredProc5: TIBStoredProc;
    IBStoredProc6: TIBStoredProc;
    IBQuery39CODICE_ARTICOLO: TIBStringField;
    IBQuery39COLORE: TIBStringField;
    IBQuery39F_1: TFloatField;
    IBQuery40CODICE_ARTICOLO: TIBStringField;
    IBQuery40COLORE: TIBStringField;
    IBQuery40F_1: TFloatField;
    IBQuery41: TIBQuery;
    IBQuery41CODICE_ARTICOLO: TIBStringField;
    IBQuery41COLORE: TIBStringField;
    IBQuery41F_1: TFloatField;
    IBQuery39COPPA: TIBStringField;
    IBQuery40COPPA: TIBStringField;
    IBQuery41TAGLIA: TIBStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure cbGruppoClick(Sender: TObject);
    procedure cbFamigliaClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcDaArtCodiceExit(Sender: TObject);
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcDaArtExit(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtCodiceExit(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rxdblcAdArtExit(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure IBQuery6CalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button6Click(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      boolTipo,boolFamiglia,boolGruppo,boolMarca: Boolean;
  end;

var
  fApprovAcc: TfApprovAcc;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfApprovAcc.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TfApprovAcc.FormShow(Sender: TObject);
begin
IBQuery4.Close;
IBQuery4.Open;
DataSource1.Enabled := True;
//ib1.Open;
//ib2.Open;
//ib3.Open;
IBStoredProc1.ExecProc;
IBStoredProc2.ExecProc;
IBStoredProc3.ExecProc;
//Button3.Click;
end;

procedure TfApprovAcc.RxDBLookupCombo1Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue:=RxDBLookupCombo1.KeyValue;
Button1.Click;
end;

procedure TfApprovAcc.RxDBLookupCombo2Change(Sender: TObject);
begin
RxDBLookupCombo1.KeyValue:=RxDBLookupCombo2.KeyValue;
//Button1.Click;
end;

procedure TfApprovAcc.Button1Click(Sender: TObject);
var
tag,ext : double;
begin
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =22 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit3.Value := (fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =24 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=RxDBLookupCombo1.Text;
//ParamByName('parPass').AsString:='N';
Open;
edit4.Value := (fieldbyname('F_1').AsFloat);
end;
Edit2.Value := Edit3.Value - Edit4.Value;

if edit2.Value <0 then edit2.Value:=0;

Edit6.Value := edit2.Value;

dmodAz.ibqCont_Art.Close;
dmodAz.ibqCont_Art.ParamByName('parCod_Art').asstring:=RxDBLookupCombo1.Text;
dmodAz.ibqCont_Art.ParamByName('parCod_Dep').asstring:='1';
dmodAz.ibqCont_Art.Open;
edit12.Value := dmodAz.ibqCont_Art.fieldbyname('QTA_GIACENZA_INIZIALE').AsFloat;
dmodAz.ibqCont_Art.Close;

{if RxMemoryData2.Locate('CODICE',RxDBLookupCombo1.Text,[]) then
tag := RxMemoryData2.fieldbyname('QUANTITA').AsFloat
else
tag:=0;

if RxMemoryData3.Locate('CODICE',RxDBLookupCombo1.Text,[]) then
ext := RxMemoryData3.fieldbyname('QUANTITA').AsFloat
else
ext:=0;

Edit5.Value := Edit12.Value + Edit4.Value-tag-ext;

if RxMemoryData1.Locate('CODICE',RxDBLookupCombo1.Text,[]) then
edit9.Value := RxMemoryData1.fieldbyname('QUANTITA').AsFloat
else
edit9.Value:=0;}
IBQuery9.Close;
IBQuery10.Close;
IBQuery11.Close;
IBQuery9.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery10.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery11.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;

IBQuery30.Close;
IBQuery31.Close;
IBQuery32.Close;
IBQuery33.Close;
IBQuery34.Close;
IBQuery35.Close;
IBQuery36.Close;
IBQuery37.Close;
IBQuery38.Close;


IBQuery30.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery31.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery32.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery33.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery34.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery35.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery36.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery37.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery38.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;

IBQuery9.open;
IBQuery10.open;
IBQuery11.open;
IBQuery30.open;
IBQuery31.open;
IBQuery32.open;
IBQuery33.open;
IBQuery34.open;
IBQuery35.open;
IBQuery36.open;
IBQuery37.open;
IBQuery38.open;

tag := IBQuery10.fieldbyname('F_1').AsFloat+IBQuery31.fieldbyname('F_1').AsFloat+
        IBQuery33.fieldbyname('F_1').AsFloat+IBQuery34.fieldbyname('F_1').AsFloat;
ext := IBQuery11.fieldbyname('F_1').AsFloat+IBQuery32.fieldbyname('F_1').AsFloat+
        IBQuery37.fieldbyname('F_1').AsFloat+IBQuery38.fieldbyname('F_1').AsFloat;

Edit5.Value := Edit12.Value + Edit4.Value-tag-ext;
edit9.Value := IBQuery9.fieldbyname('F_1').AsFloat+IBQuery30.fieldbyname('F_1').AsFloat+
        IBQuery35.fieldbyname('F_1').AsFloat+IBQuery36.fieldbyname('F_1').AsFloat;
Edit10.Value := Edit5.Value - Edit9.Value + Edit6.Value;
Edit11.Value :=Edit4.Value -Edit5.Value + Edit12.Value;

RxCalcEdit1.Value := Tag;
RxCalcEdit2.Value := Ext;
IBQuery6.Open;
IBQuery7.Open;

//ibsql1.SQL.LoadFromFile();
//ExecQuery;
//IBScript1.Script.LoadFromFile();
//IBStore dProc1.ExecProc;
IBQuery12.Close;
IBQuery12.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery12.Open;
IBQuery13.Close;
IBQuery13.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery13.Open;
IBQuery14.Close;
IBQuery14.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery14.Open;
IBQuery15.Close;
IBQuery15.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery15.Open;

IBQuery16.Close;
IBQuery17.Close;
IBQuery18.Close;
IBQuery16.Open;
IBQuery17.Open;
IBQuery18.Open;

//IBStoredProc2.ExecProc;
IBQuery19.Close;
IBQuery19.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery19.Open;
IBQuery21.Close;
IBQuery21.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery21.Open;
IBQuery20.Close;
IBQuery20.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery20.Open;
IBQuery22.Close;
IBQuery22.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery22.Open;

//IBStoredProc3.ExecProc;
IBQuery23.Close;
IBQuery23.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery23.Open;
IBQuery24.Close;
IBQuery24.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery24.Open;
IBQuery25.Close;
IBQuery25.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery25.Open;
IBQuery26.Close;
IBQuery26.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery26.Open;

end;

procedure TfApprovAcc.Button3Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal: Integer;
b,c,d,e:Double;
begin
 // Aggiornamento da Distinta degli Accessori.
RxMemoryData1.Active := True;
RxMemoryData1.Open;
with IBQuery2 do
begin
Close;
SQL.Clear;
sql.Add('Select CODICE,TOTALE,SCAT from PRETAGLIO');
SQL.Add('WHERE PASSATA = ''N''');
Open;
end;

RxMemoryData1.EmptyTable;
RxMemoryData1.Close;
RxMemoryData1.Open;
RxMemoryData1.Active := True;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery2.First;
// With (dmodAz) Do
While Not(IBQuery2.EoF) Do
Begin
 Begin
  strCodArt:=IBQuery2.Fieldbyname('CODICE').AsString;
if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not RxMemoryData1.Locate('Codice',a,[]) then
                       begin
                       RxMemoryData1.Append;
                       RxMemoryData1CODICE.AsString:=a;

                    End
               Else RxMemoryData1.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
RxMemoryData1.FieldByName('QUANTITA').AsFloat+((IBQuery2.FieldByName('SCAT').AsFloat) * b)
else
RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
RxMemoryData1.FieldByName('QUANTITA').AsFloat+((IBQuery2.FieldByName('TOTALE').AsFloat) * b);


           RxMemoryData1.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery2.Next;
  End;
// RxMemoryData1.Close;


//////////////////////////TAGLIO
RxMemoryData2.Active := True;
RxMemoryData2.Open;

with IBQuery3 do
begin
Close;
SQL.Clear;
sql.Add('Select CODICE,TOTALE,SCAT from TAGLIO');
//SQL.Add('WHERE PASSATA = ''S''');
Open;
end;

RxMemoryData2.EmptyTable;
RxMemoryData2.Close;
RxMemoryData2.Open;
RxMemoryData2.Active := True;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery3.First;
// With (dmodAz) Do
  While Not(IBQuery3.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery3.Fieldbyname('CODICE').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not RxMemoryData2.Locate('Codice',a,[]) then
                       begin
                       RxMemoryData2.Append;
                       RxMemoryData2CODICE.AsString:=a;

                    End
               Else RxMemoryData2.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
RxMemoryData2.FieldByName('QUANTITA').AsFloat :=
RxMemoryData2.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('SCAT').AsFloat) * b)
else
RxMemoryData2.FieldByName('QUANTITA').AsFloat :=
RxMemoryData2.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('TOTALE').AsFloat) * b);


           RxMemoryData2.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery3.Next;
  End;
// RxMemoryData1.Close;

//////////////////////////TAGLIO FASON
RxMemoryData3.Active := True;
RxMemoryData3.Open;
with IBQuery3 do
begin
Close;
SQL.Clear;
sql.Add('Select CODICE,TOTALE,SCAT from TAGLIOFAS');
//SQL.Add('WHERE PASSATA = ''S''');
Open;
end;



RxMemoryData3.EmptyTable;
RxMemoryData3.Close;
RxMemoryData3.Open;
RxMemoryData3.Active := True;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery3.First;
// With (dmodAz) Do
  While Not(IBQuery3.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery3.Fieldbyname('CODICE').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not RxMemoryData3.Locate('Codice',a,[]) then
                       begin
                       RxMemoryData3.Append;
                       RxMemoryData3CODICE.AsString:=a;

                    End
               Else RxMemoryData3.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
RxMemoryData3.FieldByName('QUANTITA').AsFloat :=
RxMemoryData3.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('SCAT').AsFloat) * b)
else
RxMemoryData3.FieldByName('QUANTITA').AsFloat :=
RxMemoryData3.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('TOTALE').AsFloat) * b);


           RxMemoryData3.Post;

         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery3.Next;
  End;
end;

procedure TfApprovAcc.Button4Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal: Integer;
b,c,d,e:Double;
begin
 // Aggiornamento da Distinta degli Accessori.
RxMemoryData1.Active := True;
RxMemoryData1.Open;
with IBQuery2 do
begin
Close;
SQL.Clear;
sql.Add('Select CODICE,TOTALE,SCAT from PRETAGLIO');
SQL.Add('WHERE PASSATA = ''N''');
Open;
end;



RxMemoryData1.EmptyTable;
RxMemoryData1.Close;
RxMemoryData1.Open;
RxMemoryData1.Active := True;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery2.First;
// With (dmodAz) Do
  While Not(IBQuery2.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery2.Fieldbyname('CODICE').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;

if a=RxDBLookupCombo1.Text  then
begin
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not RxMemoryData1.Locate('Codice',a,[]) then
                       begin
                       RxMemoryData1.Append;
                       RxMemoryData1CODICE.AsString:=a;

                    End
               Else RxMemoryData1.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
RxMemoryData1.FieldByName('QUANTITA').AsFloat+((IBQuery2.FieldByName('SCAT').AsFloat) * b)
else
RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
RxMemoryData1.FieldByName('QUANTITA').AsFloat+((IBQuery2.FieldByName('TOTALE').AsFloat) * b);


           RxMemoryData1.Post;
end;
       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery2.Next;
  End;
// RxMemoryData1.Close;


//////////////////////////TAGLIO
RxMemoryData2.Active := True;
RxMemoryData2.Open;
with IBQuery3 do
begin
Close;
SQL.Clear;
sql.Add('Select CODICE,TOTALE,SCAT from TAGLIO');
//SQL.Add('WHERE PASSATA = ''S''');
Open;
end;



RxMemoryData2.EmptyTable;
RxMemoryData2.Close;
RxMemoryData2.Open;
RxMemoryData2.Active := True;
//dmodAz.ibqryDistinte.Open;
//dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery3.First;
// With (dmodAz) Do
  While Not(IBQuery3.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery3.Fieldbyname('CODICE').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
if a=RxDBLookupCombo1.Text  then
begin
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not RxMemoryData2.Locate('Codice',a,[]) then
                       begin
                       RxMemoryData2.Append;
                       RxMemoryData2CODICE.AsString:=a;

                    End
               Else RxMemoryData2.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
RxMemoryData2.FieldByName('QUANTITA').AsFloat :=
RxMemoryData2.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('SCAT').AsFloat) * b)
else
RxMemoryData2.FieldByName('QUANTITA').AsFloat :=
RxMemoryData2.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('TOTALE').AsFloat) * b);


           RxMemoryData2.Post;
end;
       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery3.Next;
  End;
// RxMemoryData1.Close;

//////////////////////////TAGLIO FASON
RxMemoryData3.Active := True;
RxMemoryData3.Open;
with IBQuery3 do
begin
Close;
SQL.Clear;
sql.Add('Select CODICE,TOTALE,SCAT from TAGLIOFAS');
//SQL.Add('WHERE PASSATA = ''S''');
Open;
end;



RxMemoryData3.EmptyTable;
RxMemoryData3.Close;
RxMemoryData3.Open;
RxMemoryData3.Active := True;
//dmodAz.ibqryDistinte.Open;
//dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
IBQuery3.First;
// With (dmodAz) Do
  While Not(IBQuery3.EoF) Do
  Begin
       Begin
           strCodArt:=IBQuery3.Fieldbyname('CODICE').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
if a=RxDBLookupCombo1.Text  then
begin
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not RxMemoryData3.Locate('Codice',a,[]) then
                       begin
                       RxMemoryData3.Append;
                       RxMemoryData3CODICE.AsString:=a;

                    End
               Else RxMemoryData3.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
RxMemoryData3.FieldByName('QUANTITA').AsFloat :=
RxMemoryData3.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('SCAT').AsFloat) * b)
else
RxMemoryData3.FieldByName('QUANTITA').AsFloat :=
RxMemoryData3.FieldByName('QUANTITA').AsFloat+((IBQuery3.FieldByName('TOTALE').AsFloat) * b);


           RxMemoryData3.Post;

       //  Except
    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    IBQuery3.Next;
  End;
end;


procedure TfApprovAcc.cbMarcaClick(Sender: TObject);
begin
 boolMarca:=cbMarca.Checked;
end;

procedure TfApprovAcc.cbGruppoClick(Sender: TObject);
begin
 boolGruppo:=cbGruppo.Checked;
end;

procedure TfApprovAcc.cbFamigliaClick(Sender: TObject);
begin
 boolFamiglia:=cbFamiglia.Checked;
end;

procedure TfApprovAcc.cbTipoClick(Sender: TObject);
begin
 boolTipo:=cbTipo.Checked;
end;

procedure TfApprovAcc.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfApprovAcc.rxdblcDaArtCodiceExit(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfApprovAcc.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfApprovAcc.rxdblcDaArtExit(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfApprovAcc.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfApprovAcc.rxdblcAdArtCodiceExit(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfApprovAcc.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfApprovAcc.rxdblcAdArtExit(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfApprovAcc.RadioGroup4Click(Sender: TObject);
begin
if RadioGroup4.ItemIndex = 1 then
begin
rxdblcAdArt.Enabled := True;
rxdblcAdArtCodice.Enabled := True;
rxdblcDaArt.Enabled := True;
rxdblcDaArtCodice.Enabled := True;
end
else
begin
rxdblcAdArt.Enabled := False;
rxdblcAdArtCodice.Enabled := False;
rxdblcDaArt.Enabled := False;
rxdblcDaArtCodice.Enabled := False;
end;

if RadioGroup4.ItemIndex = 2 then
begin
 rxdblcMarca.Enabled:=True;
 rxdblcFamiglia.Enabled:=True;
 rxdblcGruppo.Enabled:=True;
 rxdblcTipo.Enabled:=True;
end
else
begin
 rxdblcMarca.Enabled:=False;
 rxdblcFamiglia.Enabled:=False;
 rxdblcGruppo.Enabled:=False;
 rxdblcTipo.Enabled:=False;

 rxdblcMarca.KeyValue:=-1;
 rxdblcFamiglia.KeyValue:=-1;
 rxdblcGruppo.KeyValue:=-1;
 rxdblcTipo.KeyValue:=-1;

end;

end;

procedure TfApprovAcc.Button5Click(Sender: TObject);
var
a,b : double;
begin
IBQuery5.Close;
IBQuery5.SQL.Clear;
IBQuery5.SQL.add('Select * from tab_articoli');
IBQuery5.SQL.add('Where FLAG_ACCESSORIE = ''S''');


   If (RadioGroup4.ItemIndex = 2)
      Then Begin
            If (boolMarca)
             Then IBQuery5.SQL.Add('And cat_art_marca_id = '+rxdblcMarca.Value);
            If (boolTipo)
             Then IBQuery5.SQL.Add('And cat_art_tipo_id ='+rxdblcTipo.Value);
            If (boolGruppo)
             Then IBQuery5.SQL.Add('And cat_art_gruppo_id = '+rxdblcGruppo.Value);
            If (boolFamiglia)
             Then IBQuery5.SQL.Add('And cat_art_famiglia_id ='+rxdblcFamiglia.Value);
//            IBQuery1.SQL.Add('))');
           End;

IBQuery5.SQL.add('order by codice_articolo');
IBQuery5.Open;
IBQuery5.Active := True;
IBQuery5.First;

RxMemoryData4.EmptyTable;
RxMemoryData4.Open;
RxMemoryData4.Active := True;

while not IBQuery5.Eof do
begin

RxMemoryData4.Append;
RxMemoryData4.FieldByName('CODICE').AsString := IBQuery5.FieldByName('CODICE_ARTICOLO').AsString;
RxMemoryData4.FieldByName('DESCR').AsString := IBQuery5.FieldByName('DESCR').AsString;
with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =22 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=IBQuery5.FieldByName('CODICE_ARTICOLO').AsString;
//ParamByName('parPass').AsString:='N';
Open;
RxMemoryData4.FieldByName('ORDINATO').AsFloat :=(fieldbyname('F_1').AsFloat);
a:= (fieldbyname('F_1').AsFloat);
end;

with IBQuery1 do
begin
Close;
SQL.Clear;
   SQL.Add('SELECT ');
   SQL.Add('sum(QUANTITA) as F_1 FROM TAB_DET_DOC');
   SQL.Add('JOIN TAB_DOCUMENTI ON');
   SQL.Add('(TAB_DOCUMENTI.id_documento=TAB_DET_DOC.doc_id)');
   SQL.Add('WHERE TAB_DOCUMENTI.TIPO_DOC =24 ');
   SQL.Add('AND TAB_DET_DOC.codice_articolo =:parArt');

ParamByName('parArt').AsString:=IBQuery5.FieldByName('CODICE_ARTICOLO').AsString;
//ParamByName('parPass').AsString:='N';
Open;
RxMemoryData4.FieldByName('CONSEGNATO').AsFloat := (fieldbyname('F_1').AsFloat);
b:= (fieldbyname('F_1').AsFloat);
end;
RxMemoryData4.FieldByName('DACONS').AsFloat := a-b;

if (a-b)<0 then RxMemoryData4.FieldByName('DACONS').AsFloat:=0;
RxMemoryData4.Post;

IBQuery5.Next;
end;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frSitAccR.frf');
dmodAz.rePRN.ShowReport;
END;




procedure TfApprovAcc.IBQuery6CalcFields(DataSet: TDataSet);
begin
//IBQuery6Arr.AsFloat := IBQuery8F_2.AsFloat;
IBQuery8.Close;
IBQuery8.SQL.Clear;
IBQuery8.SQL.Add('select distinct codice_articolo,descr,avg(costo) as F_1,sum(quantita) as F_2,a,b,c from tab_det_doc');
IBQuery8.SQL.Add('join tab_documenti on');
IBQuery8.SQL.Add('tab_det_doc.doc_id=tab_documenti.id_documento');
IBQuery8.SQL.Add('where (tab_documenti.tipo_doc=24) and (tab_det_doc.codice_articolo=:CODICE_ARTICOLO)');
if not ((IBQuery6A.AsString)= '') then
begin
IBQuery8.SQL.Add(' and (tab_det_doc.A=:A)');
IBQuery8.ParamByName('A').AsString :=IBQuery6A.AsString;
end;

if not ((IBQuery6B.AsString)= '') then
begin
IBQuery8.SQL.Add(' and (tab_det_doc.B=:B)');
IBQuery8.ParamByName('B').AsString :=IBQuery6B.AsString;
end;

if not ((IBQuery6C.AsString)= '') then
begin
IBQuery8.SQL.Add(' and (tab_det_doc.C=:C)');
IBQuery8.ParamByName('C').AsString :=IBQuery6C.AsString;
end;
IBQuery8.SQL.Add(' group by tipo_doc,codice_articolo,descr,a,b,c');
IBQuery8.SQL.Add(' order by codice_articolo,b,a,c');

IBQuery8.ParamByName('CODICE_ARTICOLO').AsString :=IBQuery6CODICE_ARTICOLO.AsString;
IBQuery8.Open;
IBQuery6Arr.AsFloat := IBQuery8.fieldbyname('F_2').AsFloat;
IBQuery6DaCons.AsFloat := IBQuery6F_2.AsFloat - IBQuery8.fieldbyname('F_2').AsFloat;
end;

procedure TfApprovAcc.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
IBSQL1.ExecQuery;
IBSQL2.ExecQuery;
IBSQL3.ExecQuery;
end;

procedure TfApprovAcc.Button6Click(Sender: TObject);
begin

//////////////////// 1
ibquery7.First;
RxArriviTot.EmptyTable;
RxArriviTot.open;
while not ibquery7.Eof do
begin
RxArriviTot.insert;
RxArriviTot.fieldbyname('CODICE_ARTICOLO').Asstring:=ibquery7.fieldbyname('CODICE_ARTICOLO').Asstring;
RxArriviTot.fieldbyname('DESCR').Asstring:=ibquery7.fieldbyname('DESCR').Asstring;
RxArriviTot.fieldbyname('A').Asstring:=IBQuery7.fieldbyname('A').Asstring;
RxArriviTot.fieldbyname('B').Asstring:=ibquery7.fieldbyname('B').Asstring;
RxArriviTot.fieldbyname('C').Asstring:=ibquery7.fieldbyname('C').Asstring;
RxArriviTot.fieldbyname('F_1').Asfloat:=ibquery7.fieldbyname('F_1').Asfloat;
RxArriviTot.fieldbyname('ORD').Asfloat:=0;
RxArriviTot.fieldbyname('Arriv').Asfloat:=ibquery7.fieldbyname('F_2').Asfloat;
RxArriviTot.post;
ibquery7.Next;
end;


IBQuery6.First;
while not IBQuery6.Eof do
begin

if RxArriviTot.Locate('A;B;C',VarArrayOf([uppercase(IBQuery6A.AsString),
  uppercase(IBQuery6B.AsString),uppercase(IBQuery6C.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotOrd.AsFloat := IBQuery6.fieldbyname('F_2').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := IBQuery6.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(IBQuery6.fieldbyname('A').AsString);
RxArriviTotB.AsString := uppercase(IBQuery6.fieldbyname('B').AsString);
RxArriviTotC.AsString := uppercase(IBQuery6.fieldbyname('C').AsString);
RxArriviTotOrd.AsFloat := IBQuery6.fieldbyname('F_2').AsFloat;
RxArriviTotF_1.AsFloat := 0;
RxArriviTotArriv.AsFloat := 0;
end;
RxArriviTot.post;
IBQuery6.next;
end;

{
RxArriviTot.First;
rxraggruppa.EmptyTable;
rxraggruppa.open;
while not RxArriviTot.Eof do
begin
rxraggruppa.insert;
rxraggruppa.fieldbyname('CODICE_ARTICOLO').Asstring:=RxArriviTot.fieldbyname('CODICE_ARTICOLO').Asstring;
rxraggruppa.fieldbyname('DESCR').Asstring:=RxArriviTot.fieldbyname('DESCR').Asstring;
rxraggruppa.fieldbyname('A').Asstring:=RxArriviTot.fieldbyname('A').Asstring;
rxraggruppa.fieldbyname('B').Asstring:=RxArriviTot.fieldbyname('B').Asstring;
rxraggruppa.fieldbyname('C').Asstring:=RxArriviTot.fieldbyname('C').Asstring;
rxraggruppa.fieldbyname('F_2').Asfloat:=RxArriviTot.fieldbyname('ORD').Asfloat;
//rxraggruppa.fieldbyname('DaCons').Asfloat:=RxArriviTot.fieldbyname('DaCons').Asfloat;
rxraggruppa.fieldbyname('Arr').Asfloat:=RxArriviTot.fieldbyname('Arriv').Asfloat;
Rxraggruppa.post;
RxArriviTot.Next;
end;
}
ibquery12.First;
while not ibquery12.Eof do
begin

if RxArriviTot.Locate('A;B;C',VarArrayOf([uppercase(ibquery12TAGLIA.AsString),
  uppercase(ibquery12COLORE.AsString),uppercase(ibquery12F1.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotPret.AsFloat := IBQuery12.fieldbyname('F_1').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := ibquery12.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(ibquery12.fieldbyname('TAGLIA').AsString);
RxArriviTotB.AsString := uppercase(ibquery12.fieldbyname('COLORE').AsString);
RxArriviTotC.AsString := uppercase(ibquery12.fieldbyname('F1').AsString);
RxArriviTotPret.AsFloat := IBQuery12.fieldbyname('F_1').AsFloat;
end;
RxArriviTot.post;
ibquery12.next;
end;

ibquery19.First;
while not ibquery19.Eof do
begin

if RxArriviTot.Locate('A;B;C',VarArrayOf([uppercase(IBQuery19TAGLIA.AsString),
  uppercase(ibquery19COLORE.AsString),uppercase(ibquery19F1.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotTaglio.AsFloat := ibquery19.fieldbyname('F_1').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := ibquery19.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(ibquery19.fieldbyname('TAGLIA').AsString);
RxArriviTotB.AsString := uppercase(ibquery19.fieldbyname('COLORE').AsString);
RxArriviTotC.AsString := uppercase(ibquery19.fieldbyname('F1').AsString);
RxArriviTotTaglio.AsFloat := ibquery19.fieldbyname('F_1').AsFloat;
end;
RxArriviTot.post;
ibquery19.next;
end;


ibquery23.First;
while not ibquery23.Eof do
begin

if RxArriviTot.Locate('A;B;C',VarArrayOf([uppercase(ibquery23TAGLIA.AsString),
  uppercase(ibquery23COLORE.AsString),uppercase(ibquery23F1.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotExt.AsFloat := ibquery23.fieldbyname('F_1').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := ibquery23.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(ibquery23.fieldbyname('TAGLIA').AsString);
RxArriviTotB.AsString := uppercase(ibquery23.fieldbyname('COLORE').AsString);
RxArriviTotC.AsString := uppercase(ibquery23.fieldbyname('F1').AsString);
RxArriviTotExt.AsFloat := ibquery23.fieldbyname('F_1').AsFloat;
end;
RxArriviTot.post;
ibquery23.next;
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'ApprovAcc.frf');
     ShowReport;
End;


end;

procedure TfApprovAcc.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfApprovAcc.Button7Click(Sender: TObject);
begin
///////////////////////////////////// F E R R E T T I

ibquery18.First;
RxArriviF.EmptyTable;
RxArriviF.open;
while not ibquery18.Eof do
begin
RxArriviF.insert;
RxArriviF.fieldbyname('CODICE_ARTICOLO').Asstring:=ibquery18.fieldbyname('CODICE_ARTICOLO').Asstring;
RxArriviF.fieldbyname('DESCR').Asstring:=ibquery18.fieldbyname('DESCR').Asstring;
RxArriviF.fieldbyname('C').Asstring:=ibquery18.fieldbyname('C').Asstring;
RxArriviF.fieldbyname('F_1').Asfloat:=ibquery18.fieldbyname('F_1').Asfloat;
RxArriviF.fieldbyname('F_2').Asfloat:=ibquery18.fieldbyname('F_2').Asfloat;
RxArriviF.fieldbyname('Ord').Asfloat:=0;
RxArriviF.post;
ibquery18.Next;
end;

IBQuery27.Open;
IBQuery27.First;
while not IBQuery27.Eof do
begin

if RxArriviF.Locate('C',uppercase(IBQuery27C.AsString),[]) then
begin
RxArriviF.Edit;
RxArriviFOrd.AsFloat := IBQuery27.fieldbyname('F_2').AsFloat;
end
else
begin
RxArriviF.Insert;
RxArriviFCODICE_ARTICOLO.AsString := IBQuery27.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviFDESCR.AsString := RxDBLookupCombo2.text;
RxArriviFC.AsString := uppercase(IBQuery27.fieldbyname('C').AsString);
RxArriviFOrd.AsFloat := IBQuery27.fieldbyname('F_2').AsFloat;
RxArriviFF_1.AsFloat := 0;
RxArriviFF_2.AsFloat := 0;
end;
RxArriviF.post;
IBQuery27.next;
end;

//
//
ibquery13.First;
while not ibquery13.Eof do
begin

if RxArriviF.Locate('C',uppercase(ibquery13F1.AsString),[]) then
begin
RxArriviF.Edit;
RxArriviFPret.AsFloat := IBQuery13.fieldbyname('F_1').AsFloat+RxArriviFPret.AsFloat;
end
else
begin
RxArriviF.Insert;
RxArriviFCODICE_ARTICOLO.AsString := ibquery13.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviFDESCR.AsString := RxDBLookupCombo2.text;
RxArriviFC.AsString := uppercase(ibquery13.fieldbyname('F1').AsString);
RxArriviFPret.AsFloat := IBQuery13.fieldbyname('F_1').AsFloat;
end;
RxArriviF.post;
ibquery13.next;
end;

ibquery20.First;
while not ibquery20.Eof do
begin

if RxArriviF.Locate('C',uppercase(ibquery20F1.AsString),[]) then
begin
RxArriviF.Edit;
RxArriviFTaglio.AsFloat := ibquery20.fieldbyname('F_1').AsFloat+RxArriviFTaglio.AsFloat;
end
else
begin
RxArriviF.Insert;
RxArriviFCODICE_ARTICOLO.AsString := ibquery20.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviFDESCR.AsString := RxDBLookupCombo2.text;
RxArriviFC.AsString := uppercase(ibquery20.fieldbyname('F1').AsString);
RxArriviFTaglio.AsFloat := ibquery20.fieldbyname('F_1').AsFloat;
end;
RxArriviF.post;
ibquery20.next;
end;


ibquery24.First;
while not ibquery24.Eof do
begin

if RxArriviF.Locate('C',uppercase(ibquery24F1.AsString),[]) then
begin
RxArriviF.Edit;
RxArriviFExt.AsFloat := ibquery24.fieldbyname('F_1').AsFloat+RxArriviFExt.AsFloat;
end
else
begin
RxArriviF.Insert;
RxArriviFCODICE_ARTICOLO.AsString := ibquery24.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviFDESCR.AsString := RxDBLookupCombo2.text;
RxArriviFC.AsString := uppercase(ibquery24.fieldbyname('F1').AsString);
RxArriviFExt.AsFloat := ibquery24.fieldbyname('F_1').AsFloat;
end;
RxArriviF.post;
ibquery24.next;
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'ApprovAccF.frf');
     ShowReport;
End;

end;

procedure TfApprovAcc.Button8Click(Sender: TObject);
begin
///////////////////// c O L O R I

ibquery17.First;
RxArriviC.EmptyTable;
RxArriviC.open;
while not ibquery17.Eof do
begin
RxArriviC.insert;
RxArriviC.fieldbyname('CODICE_ARTICOLO').Asstring:=ibquery17.fieldbyname('CODICE_ARTICOLO').Asstring;
RxArriviC.fieldbyname('DESCR').Asstring:=ibquery17.fieldbyname('DESCR').Asstring;
RxArriviC.fieldbyname('B').Asstring:=ibquery17.fieldbyname('B').Asstring;
RxArriviC.fieldbyname('F_1').Asfloat:=ibquery17.fieldbyname('F_1').Asfloat;
RxArriviC.fieldbyname('F_2').Asfloat:=ibquery17.fieldbyname('F_2').Asfloat;
RxArriviC.fieldbyname('Ord').Asfloat:=0;
RxArriviC.post;
ibquery17.Next;
end;

IBQuery28.Open;
IBQuery28.First;
while not IBQuery28.Eof do
begin

if RxArriviC.Locate('B',uppercase(IBQuery28B.AsString),[]) then
begin
RxArriviC.Edit;
RxArriviCOrd.AsFloat := IBQuery28.fieldbyname('F_2').AsFloat;
end
else
begin
RxArriviC.Insert;
RxArriviCCODICE_ARTICOLO.AsString := IBQuery28.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCB.AsString := uppercase(IBQuery28.fieldbyname('B').AsString);
RxArriviCOrd.AsFloat := IBQuery28.fieldbyname('F_2').AsFloat;
RxArriviCF_1.AsFloat := 0;
RxArriviCF_2.AsFloat := 0;
end;
RxArriviC.post;
IBQuery28.next;
end;

//
//
ibquery14.First;
while not ibquery14.Eof do
begin

if RxArriviC.Locate('B',uppercase(ibquery14COLORE.AsString),[]) then
begin
RxArriviC.Edit;
RxArriviCPret.AsFloat := ibquery14.fieldbyname('F_1').AsFloat+RxArriviCPret.AsFloat;
end
else
begin
RxArriviC.Insert;
RxArriviCCODICE_ARTICOLO.AsString := ibquery14.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCB.AsString := uppercase(ibquery14.fieldbyname('COLORE').AsString);
RxArriviCPret.AsFloat := ibquery14.fieldbyname('F_1').AsFloat;
end;
RxArriviC.post;
ibquery14.next;
end;

ibquery21.First;
while not ibquery21.Eof do
begin

if RxArriviC.Locate('B',uppercase(ibquery21COLORE.AsString),[]) then
begin
RxArriviC.Edit;
RxArriviCTaglio.AsFloat := ibquery21.fieldbyname('F_1').AsFloat+RxArriviCTaglio.AsFloat;
end
else
begin
RxArriviC.Insert;
RxArriviCCODICE_ARTICOLO.AsString := ibquery21.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCB.AsString := uppercase(ibquery21.fieldbyname('COLORE').AsString);
RxArriviCTaglio.AsFloat := ibquery21.fieldbyname('F_1').AsFloat;
end;
RxArriviC.post;
ibquery21.next;
end;


ibquery25.First;
while not ibquery25.Eof do
begin

if RxArriviC.Locate('B',uppercase(ibquery25COLORE.AsString),[]) then
begin
RxArriviC.Edit;
RxArriviCExt.AsFloat := ibquery25.fieldbyname('F_1').AsFloat+RxArriviCExt.AsFloat;
end
else
begin
RxArriviC.Insert;
RxArriviCCODICE_ARTICOLO.AsString := ibquery25.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCB.AsString := uppercase(ibquery25.fieldbyname('COLORE').AsString);
RxArriviCExt.AsFloat := ibquery25.fieldbyname('F_1').AsFloat;
end;
RxArriviC.post;
ibquery25.next;
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'ApprovAccC.frf');
     ShowReport;
End;

end;

procedure TfApprovAcc.Button9Click(Sender: TObject);
begin
///////////////////// T A G L I E

ibquery16.First;
RxArriviT.EmptyTable;
RxArriviT.open;
while not ibquery16.Eof do
begin
RxArriviT.insert;
RxArriviT.fieldbyname('CODICE_ARTICOLO').Asstring:=ibquery16.fieldbyname('CODICE_ARTICOLO').Asstring;
RxArriviT.fieldbyname('DESCR').Asstring:=ibquery16.fieldbyname('DESCR').Asstring;
RxArriviT.fieldbyname('A').Asstring:=ibquery16.fieldbyname('A').Asstring;
RxArriviT.fieldbyname('F_1').Asfloat:=ibquery16.fieldbyname('F_1').Asfloat;
RxArriviT.fieldbyname('F_2').Asfloat:=ibquery16.fieldbyname('F_2').Asfloat;
RxArriviT.fieldbyname('Ord').Asfloat:=0;
RxArriviT.post;
ibquery16.Next;
end;

IBQuery29.Open;
IBQuery29.First;
while not IBQuery29.Eof do
begin

if RxArriviT.Locate('A',uppercase(IBQuery29A.AsString),[]) then
begin
RxArriviT.Edit;
RxArriviTOrd.AsFloat := IBQuery29.fieldbyname('F_2').AsFloat;
end
else
begin
RxArriviT.Insert;
RxArriviTCODICE_ARTICOLO.AsString := IBQuery29.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTA.AsString := uppercase(IBQuery29.fieldbyname('A').AsString);
RxArriviTOrd.AsFloat := IBQuery29.fieldbyname('F_2').AsFloat;
RxArriviTF_1.AsFloat := 0;
RxArriviTF_2.AsFloat := 0;
end;
RxArriviT.post;
IBQuery29.next;
end;

//
//
ibquery15.First;
while not ibquery15.Eof do
begin

if RxArriviT.Locate('A',uppercase(ibquery15TAGLIA.AsString),[]) then
begin
RxArriviT.Edit;
RxArriviTPret.AsFloat := ibquery15.fieldbyname('F_1').AsFloat+RxArriviTPret.AsFloat;
end
else
begin
RxArriviT.Insert;
RxArriviTCODICE_ARTICOLO.AsString := ibquery15.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTA.AsString := uppercase(ibquery15.fieldbyname('TAGLIA').AsString);
RxArriviTPret.AsFloat := ibquery15.fieldbyname('F_1').AsFloat;
end;
RxArriviT.post;
ibquery15.next;
end;

ibquery22.First;
while not ibquery22.Eof do
begin

if RxArriviT.Locate('A',uppercase(ibquery22TAGLIA.AsString),[]) then
begin
RxArriviT.Edit;
RxArriviTTaglio.AsFloat := ibquery22.fieldbyname('F_1').AsFloat+RxArriviTTaglio.AsFloat;
end
else
begin
RxArriviT.Insert;
RxArriviTCODICE_ARTICOLO.AsString := ibquery22.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTA.AsString := uppercase(ibquery22.fieldbyname('TAGLIA').AsString);
RxArriviTTaglio.AsFloat := ibquery22.fieldbyname('F_1').AsFloat;
end;
RxArriviT.post;
ibquery22.next;
end;


ibquery26.First;
while not ibquery26.Eof do
begin

if RxArriviT.Locate('A',uppercase(ibquery26TAGLIA.AsString),[]) then
begin
RxArriviT.Edit;
RxArriviTExt.AsFloat := ibquery26.fieldbyname('F_1').AsFloat+RxArriviTExt.AsFloat;
end
else
begin
RxArriviT.Insert;
RxArriviTCODICE_ARTICOLO.AsString := ibquery26.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTA.AsString := uppercase(ibquery26.fieldbyname('TAGLIA').AsString);
RxArriviTExt.AsFloat := ibquery26.fieldbyname('F_1').AsFloat;
end;
RxArriviT.post;
ibquery26.next;
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'ApprovAccT.frf');
     ShowReport;
End;


end;

procedure TfApprovAcc.Button10Click(Sender: TObject);
begin
///////////////////// C O P P E

ibquery16.First;
RxArriviCP.EmptyTable;
RxArriviCP.open;
while not ibquery16.Eof do
begin
RxArriviCP.insert;
RxArriviCP.fieldbyname('CODICE_ARTICOLO').Asstring:=ibquery16.fieldbyname('CODICE_ARTICOLO').Asstring;
RxArriviCP.fieldbyname('DESCR').Asstring:=ibquery16.fieldbyname('DESCR').Asstring;
RxArriviCP.fieldbyname('A').Asstring:=ibquery16.fieldbyname('A').Asstring;
RxArriviCP.fieldbyname('F_1').Asfloat:=ibquery16.fieldbyname('F_1').Asfloat;
RxArriviCP.fieldbyname('F_2').Asfloat:=ibquery16.fieldbyname('F_2').Asfloat;
RxArriviCP.fieldbyname('Ord').Asfloat:=0;
RxArriviCP.post;
ibquery16.Next;
end;

IBQuery29.Open;
IBQuery29.First;
while not IBQuery29.Eof do
begin

if RxArriviCP.Locate('A',uppercase(IBQuery29A.AsString),[]) then
begin
RxArriviCP.Edit;
RxArriviCPOrd.AsFloat := IBQuery29.fieldbyname('F_2').AsFloat;
end
else
begin
RxArriviCP.Insert;
RxArriviCPCODICE_ARTICOLO.AsString := IBQuery29.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCPDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCPA.AsString := uppercase(IBQuery29.fieldbyname('A').AsString);
RxArriviCPOrd.AsFloat := IBQuery29.fieldbyname('F_2').AsFloat;
RxArriviCPF_1.AsFloat := 0;
RxArriviCPF_2.AsFloat := 0;
end;
RxArriviCP.post;
IBQuery29.next;
end;

//
//
ibquery15.First;
while not ibquery15.Eof do
begin

if RxArriviCP.Locate('A',uppercase(ibquery15TAGLIA.AsString),[]) then
begin
RxArriviCP.Edit;
RxArriviCPPret.AsFloat := ibquery15.fieldbyname('F_1').AsFloat+RxArriviTPret.AsFloat;
end
else
begin
RxArriviCP.Insert;
RxArriviCPCODICE_ARTICOLO.AsString := ibquery15.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCPDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCPA.AsString := uppercase(ibquery15.fieldbyname('TAGLIA').AsString);
RxArriviCPPret.AsFloat := ibquery15.fieldbyname('F_1').AsFloat;
end;
RxArriviCP.post;
ibquery15.next;
end;

ibquery22.First;
while not ibquery22.Eof do
begin

if RxArriviCP.Locate('A',uppercase(ibquery22TAGLIA.AsString),[]) then
begin
RxArriviCP.Edit;
RxArriviCPTaglio.AsFloat := ibquery22.fieldbyname('F_1').AsFloat+RxArriviTTaglio.AsFloat;
end
else
begin
RxArriviCP.Insert;
RxArriviCPCODICE_ARTICOLO.AsString := ibquery22.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCPDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCPA.AsString := uppercase(ibquery22.fieldbyname('TAGLIA').AsString);
RxArriviCPTaglio.AsFloat := ibquery22.fieldbyname('F_1').AsFloat;
end;
RxArriviCP.post;
ibquery22.next;
end;


ibquery26.First;
while not ibquery26.Eof do
begin

if RxArriviCP.Locate('A',uppercase(ibquery26TAGLIA.AsString),[]) then
begin
RxArriviCP.Edit;
RxArriviCPExt.AsFloat := ibquery26.fieldbyname('F_1').AsFloat+RxArriviTExt.AsFloat;
end
else
begin
RxArriviCP.Insert;
RxArriviCPCODICE_ARTICOLO.AsString := ibquery26.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviCPDESCR.AsString := RxDBLookupCombo2.text;
RxArriviCPA.AsString := uppercase(ibquery26.fieldbyname('TAGLIA').AsString);
RxArriviCPExt.AsFloat := ibquery26.fieldbyname('F_1').AsFloat;
end;
RxArriviCP.post;
ibquery26.next;
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'ApprovAccT.frf');
     ShowReport;
End;


end;

procedure TfApprovAcc.Button11Click(Sender: TObject);
begin
IBSQL1.ExecQuery;
IBSQL2.ExecQuery;
IBSQL3.ExecQuery;

IBStoredProc4.ExecProc;
IBStoredProc5.ExecProc;
IBStoredProc6.ExecProc;


//////////////////// 1
ibquery7.First;
RxArriviTot.EmptyTable;
RxArriviTot.open;
while not ibquery7.Eof do
begin
RxArriviTot.insert;
RxArriviTot.fieldbyname('CODICE_ARTICOLO').Asstring:=ibquery7.fieldbyname('CODICE_ARTICOLO').Asstring;
RxArriviTot.fieldbyname('DESCR').Asstring:=ibquery7.fieldbyname('DESCR').Asstring;
RxArriviTot.fieldbyname('A').Asstring:=IBQuery7.fieldbyname('A').Asstring;
RxArriviTot.fieldbyname('B').Asstring:=ibquery7.fieldbyname('B').Asstring;
//RxArriviTot.fieldbyname('C').Asstring:=ibquery7.fieldbyname('C').Asstring;
RxArriviTot.fieldbyname('F_1').Asfloat:=ibquery7.fieldbyname('F_1').Asfloat;
RxArriviTot.fieldbyname('ORD').Asfloat:=0;
RxArriviTot.fieldbyname('Arriv').Asfloat:=ibquery7.fieldbyname('F_2').Asfloat;
RxArriviTot.post;
ibquery7.Next;
end;


IBQuery6.First;
while not IBQuery6.Eof do
begin

if RxArriviTot.Locate('A;B',VarArrayOf([uppercase(IBQuery6A.AsString),
  uppercase(IBQuery6B.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotOrd.AsFloat := IBQuery6.fieldbyname('F_2').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := IBQuery6.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(IBQuery6.fieldbyname('A').AsString);
RxArriviTotB.AsString := uppercase(IBQuery6.fieldbyname('B').AsString);
//RxArriviTotC.AsString := uppercase(IBQuery6.fieldbyname('C').AsString);
RxArriviTotOrd.AsFloat := IBQuery6.fieldbyname('F_2').AsFloat;
RxArriviTotF_1.AsFloat := 0;
RxArriviTotArriv.AsFloat := 0;
end;
RxArriviTot.post;
IBQuery6.next;
end;

{
RxArriviTot.First;
rxraggruppa.EmptyTable;
rxraggruppa.open;
while not RxArriviTot.Eof do
begin
rxraggruppa.insert;
rxraggruppa.fieldbyname('CODICE_ARTICOLO').Asstring:=RxArriviTot.fieldbyname('CODICE_ARTICOLO').Asstring;
rxraggruppa.fieldbyname('DESCR').Asstring:=RxArriviTot.fieldbyname('DESCR').Asstring;
rxraggruppa.fieldbyname('A').Asstring:=RxArriviTot.fieldbyname('A').Asstring;
rxraggruppa.fieldbyname('B').Asstring:=RxArriviTot.fieldbyname('B').Asstring;
rxraggruppa.fieldbyname('C').Asstring:=RxArriviTot.fieldbyname('C').Asstring;
rxraggruppa.fieldbyname('F_2').Asfloat:=RxArriviTot.fieldbyname('ORD').Asfloat;
//rxraggruppa.fieldbyname('DaCons').Asfloat:=RxArriviTot.fieldbyname('DaCons').Asfloat;
rxraggruppa.fieldbyname('Arr').Asfloat:=RxArriviTot.fieldbyname('Arriv').Asfloat;
Rxraggruppa.post;
RxArriviTot.Next;
end;
}

IBQuery39.Close;
IBQuery39.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;

IBQuery39.open;
ibquery39.First;
while not ibquery39.Eof do
begin

if RxArriviTot.Locate('A;B',VarArrayOf([uppercase(ibquery39coppa.AsString),
  uppercase(ibquery39COLORE.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotPret.AsFloat := IBQuery39.fieldbyname('F_1').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := ibquery39.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(ibquery39.fieldbyname('coppa').AsString);
RxArriviTotB.AsString := uppercase(ibquery39.fieldbyname('COLORE').AsString);
//RxArriviTotC.AsString := uppercase(ibquery39.fieldbyname('F1').AsString);
RxArriviTotPret.AsFloat := IBQuery39.fieldbyname('F_1').AsFloat;
end;
RxArriviTot.post;
ibquery39.next;
end;


IBQuery40.Close;
IBQuery40.ParamByName('cod_acc').AsString :=RxDBLookupCombo1.Text;
IBQuery40.Open;
ibquery40.First;
while not ibquery40.Eof do
begin

if RxArriviTot.Locate('A;B',VarArrayOf([uppercase(IBQuery40coppa.AsString),
  uppercase(ibquery40COLORE.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotTaglio.AsFloat := ibquery40.fieldbyname('F_1').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := ibquery40.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(ibquery40.fieldbyname('coppa').AsString);
RxArriviTotB.AsString := uppercase(ibquery40.fieldbyname('COLORE').AsString);

RxArriviTotTaglio.AsFloat := ibquery40.fieldbyname('F_1').AsFloat;
end;
RxArriviTot.post;
ibquery40.next;
end;

ibquery41.Open;
ibquery41.First;
while not ibquery41.Eof do
begin

if RxArriviTot.Locate('A;B',VarArrayOf([uppercase(ibquery41taglia.AsString),
  uppercase(ibquery41COLORE.AsString)]),[]) then
begin
RxArriviTot.Edit;
RxArriviTotExt.AsFloat := ibquery41.fieldbyname('F_1').AsFloat;
end
else
begin
RxArriviTot.Insert;
RxArriviTotCODICE_ARTICOLO.AsString := ibquery41.fieldbyname('CODICE_ARTICOLO').AsString;
RxArriviTotDESCR.AsString := RxDBLookupCombo2.text;
RxArriviTotA.AsString := uppercase(ibquery41.fieldbyname('taglia').AsString);
RxArriviTotB.AsString := uppercase(ibquery41.fieldbyname('COLORE').AsString);
//RxArriviTotC.AsString := uppercase(ibquery23.fieldbyname('F1').AsString);
RxArriviTotExt.AsFloat := ibquery41.fieldbyname('F_1').AsFloat;
end;
RxArriviTot.post;
ibquery41.next;
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'ApprovAccx.frf');
     ShowReport;
End;


end;

end.
