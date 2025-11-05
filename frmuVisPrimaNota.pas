unit frmuVisPrimaNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  RxLookup, ToolEdit, CurrEdit, Menus,IBCustomDataSet, IBQuery, FR_Class,Variants,StrUtils,
  FR_Desgn;

type
  TfrmVisPrimaNota = class(TForm)
    pnlCtrl: TPanel;
    dbgContab: TDBGrid;
    pnlInfo: TPanel;
    dsVisContab: TDataSource;
    Label1: TLabel;
    meDataDa: TMaskEdit;
    meDataA: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbnContab: TDBNavigator;
    rxdblcPianoConto: TRxDBLookupCombo;
    dsPianoConto: TDataSource;
    dsDepositi: TDataSource;
    Button2: TButton;
    stTot_Dare: TRxCalcEdit;
    stTot_Avere: TRxCalcEdit;
    stSaldo: TRxCalcEdit;
    ibqRiepilogo: TIBQuery;
    PopupMenu1: TPopupMenu;
    Stampa1: TMenuItem;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Label6: TLabel;
    DD1: TMaskEdit;
    Label7: TLabel;
    DD2: TMaskEdit;
    RadioGroup4: TRadioGroup;
    NumProt: TEdit;
    RadioGroup5: TRadioGroup;
    edNumDoc: TEdit;
    RadioGroup6: TRadioGroup;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RadioGroup7: TRadioGroup;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    RadioGroup8: TRadioGroup;
    RadioGroup1: TRadioGroup;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ibECC: TIBQuery;
    ibECCPK_CODICE: TIntegerField;
    ibECCNUM_PROT: TIntegerField;
    ibECCDATA_MOV: TDateField;
    ibECCDATA_DOC: TDateField;
    ibECCNUM_DOC: TIntegerField;
    ibECCDOC_ID: TIntegerField;
    ibECCDESCR_MOV: TIBStringField;
    ibECCSOTTOCONTO_DESCR: TIBStringField;
    ibECCDARE: TFloatField;
    ibECCAVERE: TFloatField;
    ibECCCLIFOR_ID: TIntegerField;
    ibECCTIPO_CLIFOR: TSmallintField;
    ibECCBANCA_ID: TIntegerField;
    ibECCBANCA_DESCR: TIBStringField;
    ibECCNOTE: TIBStringField;
    ibECCDATA_SCADENZA: TDateField;
    ibECCTOTALE_PAGATO: TFloatField;
    ibECCSBILANCIO: TFloatField;
    ibECCPIANOCONTO_ID: TIntegerField;
    ibECCNOME_CONTO: TIBStringField;
    ibECCCON_DETT: TSmallintField;
    ibECCNUM_FATTURA: TIntegerField;
    ibECCDATA_FATTURA: TDateField;
    ibECCIMPORTO: TFloatField;
    ibECCABBUONO: TFloatField;
    ibECCTIPO_MOV: TSmallintField;
    ibECCIMPONIBILE: TFloatField;
    ibECCIMPOSTA: TFloatField;
    ibECCIVA_PERC: TFloatField;
    ibECCFK_SCADENZA: TIntegerField;
    ibECCASS_DATA_SCAD: TDateField;
    ibECCDEPOSITO_CODICE: TIBStringField;
    ibECCDEPOSITO_DESCR: TIBStringField;
    ibECCNUM_ASS: TIBStringField;
    ibECCID_PIANO_CONTO: TIntegerField;
    ibECCGRUPPO: TIBStringField;
    ibECCCONTO: TIBStringField;
    ibECCSOTTOCONTO: TIBStringField;
    ibECCNOME_CONTO1: TIBStringField;
    ibECCTIPO: TSmallintField;
    ibECCDESCR: TIBStringField;
    ibECCNATURA: TSmallintField;
    ibECCLIVELLO: TSmallintField;
    ibECCRIVENDITA: TSmallintField;
    ibECCSTRUMENTALE: TSmallintField;
    ibECCINDEDUCIBILE: TFloatField;
    ibECCSTAMPA_IN_BILANCIO: TSmallintField;
    ibECCVARIAZIONE_FISCALE: TSmallintField;
    ibECCDICH_REDDITI_ID: TIBStringField;
    ibECCRAGGRUPPAMENTO_ID: TIBStringField;
    ibECCCONTO_PERSONALIZZATO_ID: TIntegerField;
    ibECCCAPO_CONTO_CLI_FOR: TSmallintField;
    ibECCSPECIALE: TIntegerField;
    IBQuery1: TIBQuery;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    ibtotCli: TIBQuery;
    ibtotCliNOME_CONTO: TIBStringField;
    ibtotCliSOTTOCONTO_DESCR: TIBStringField;
    ibtotCliTOTDARE: TFloatField;
    ibtotCliTOTAVERE: TFloatField;
    DBRadioGroup1: TDBRadioGroup;
    ibtotCliPIANOCONTO_ID: TIntegerField;
    SaveDialog1: TSaveDialog;
    ibContrAnal: TIBDataSet;
    ibContrSint: TIBDataSet;
    ibContrAnalPK_CODICE: TIntegerField;
    ibContrAnalNUM_PROT: TIntegerField;
    ibContrAnalDATA_MOV: TDateField;
    ibContrAnalDATA_DOC: TDateField;
    ibContrAnalNUM_DOC: TIntegerField;
    ibContrAnalDOC_ID: TIntegerField;
    ibContrAnalDESCR_MOV: TIBStringField;
    ibContrAnalSOTTOCONTO_DESCR: TIBStringField;
    ibContrAnalDARE: TFloatField;
    ibContrAnalAVERE: TFloatField;
    ibContrAnalCLIFOR_ID: TIntegerField;
    ibContrAnalTIPO_CLIFOR: TSmallintField;
    ibContrAnalBANCA_ID: TIntegerField;
    ibContrAnalBANCA_DESCR: TIBStringField;
    ibContrAnalNOTE: TIBStringField;
    ibContrAnalDATA_SCADENZA: TDateField;
    ibContrAnalTOTALE_PAGATO: TFloatField;
    ibContrAnalSBILANCIO: TFloatField;
    ibContrAnalPIANOCONTO_ID: TIntegerField;
    ibContrAnalNOME_CONTO: TIBStringField;
    ibContrAnalCON_DETT: TSmallintField;
    ibContrAnalNUM_FATTURA: TIntegerField;
    ibContrAnalDATA_FATTURA: TDateField;
    ibContrAnalIMPORTO: TFloatField;
    ibContrAnalABBUONO: TFloatField;
    ibContrAnalTIPO_MOV: TSmallintField;
    ibContrAnalIMPONIBILE: TFloatField;
    ibContrAnalIMPOSTA: TFloatField;
    ibContrAnalIVA_PERC: TFloatField;
    ibContrAnalFK_SCADENZA: TIntegerField;
    ibContrAnalASS_DATA_SCAD: TDateField;
    ibContrAnalDEPOSITO_CODICE: TIBStringField;
    ibContrAnalDEPOSITO_DESCR: TIBStringField;
    ibContrAnalNUM_ASS: TIBStringField;
    ibContrSintPIANOCONTO_ID: TIntegerField;
    ibContrSintSOTTOCONTO_DESCR: TIBStringField;
    ibContrSintNOME_CONTO: TIBStringField;
    ibContrSintTOTDARE: TFloatField;
    ibContrSintTOTAVERE: TFloatField;
    RadioGroup9: TRadioGroup;
    Edit2: TEdit;
    ibECCNUM_PROT2: TIntegerField;
    ibECCNUM_REG: TIntegerField;
    ibECCNUM_DOC_LETT: TIBStringField;
    ibContrAnalNUM_PROT2: TIntegerField;
    ibContrAnalNUM_REG: TIntegerField;
    ibContrAnalNUM_DOC_LETT: TIBStringField;
    ibContrAnalPAGAMENTO_ID: TIBStringField;
    RadioGroup10: TRadioGroup;
    DateEdit1: TDateEdit;
    frReport1: TfrReport;
    frDesigner1: TfrDesigner;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery1ID_PIANO_CONTO: TIntegerField;
    IBQuery1GRUPPO: TIBStringField;
    IBQuery1CONTO: TIBStringField;
    IBQuery1SOTTOCONTO: TIBStringField;
    IBQuery1NOME_CONTO: TIBStringField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1NATURA: TSmallintField;
    IBQuery1LIVELLO: TSmallintField;
    IBQuery1RIVENDITA: TSmallintField;
    IBQuery1STRUMENTALE: TSmallintField;
    IBQuery1INDEDUCIBILE: TFloatField;
    IBQuery1STAMPA_IN_BILANCIO: TSmallintField;
    IBQuery1VARIAZIONE_FISCALE: TSmallintField;
    IBQuery1DICH_REDDITI_ID: TIBStringField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField;
    IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField;
    IBQuery1SPECIALE: TIntegerField;
    DataSource3: TDataSource;
    SpeedButton15: TSpeedButton;
    frReport2: TfrReport;
    frDesigner2: TfrDesigner;
    StMastrino1: TMenuItem;
    StBilancio1: TMenuItem;
    ibContrAnalCOD_ESENZ: TIntegerField;
    ibContrAnalDESCR_ESENZ: TIBStringField;
    ibContrAnalREG_IVA: TIntegerField;
    ibContrAnalMESE_COMP: TIBStringField;
    ibECCFAX: TStringField;
    procedure meDataDaExit(Sender: TObject);
    procedure meDataAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edNumDocChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure dbgContabDblClick(Sender: TObject);
    procedure Stampa1Click(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure rxdblcPianoContoChange(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RadioGroup6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure frReport1DataSetWork(BandName: String; DataSet: TDataSet;
      var RecordCount: Integer; Operation: TfrDataSetOperation);
    procedure frReport2DataSetWork(BandName: String; DataSet: TDataSet;
      var RecordCount: Integer; Operation: TfrDataSetOperation);
    procedure frReport2GetValue(const ParName: String;
      var ParValue: Variant);
    procedure StMastrino1Click(Sender: TObject);
    procedure StBilancio1Click(Sender: TObject);
   private
    dDataDa,dDataA: TDateTime;
    strControPart,conto,DESCR,DESCR2: String;
    dTotale_Dare,dTotale_Avere,dSaldo: Currency;
    intNumDoc,x: Integer;
    sal:Currency;
    Procedure Prepare_SQL_NonFiltr;
    Procedure Prepare_SQL_Filtr;
    Procedure Set_Stats;
    Procedure Set_Zero_Stats;

   public
   dx4 : string;
  end;

var
  frmVisPrimaNota: TfrmVisPrimaNota;

implementation

uses uAzDM, uPrnForm, uVisPC, frmuPNinsMovGener, frmuInsInPNPagamento,
  frmuInsInPN;

{$R *.DFM}

{ TfrmVisPrimaNota }

procedure TfrmVisPrimaNota.Prepare_SQL_NonFiltr;
begin
 With (dmodAz) Do
 Begin
   ibqRicerca2.Close;
   ibqRicerca2.SQL.Clear;
   ibqRicerca2.SQL.Add('Select Sum(Dare) as Tot_Dare, Sum(Avere) As Tot_Avere From CONTABILITA');
   ibqRicerca2.Open;
   If Not(ibqRicerca2.IsEmpty)
    Then Begin
          dTotale_Dare:=ibqRicerca2.FieldByname('Tot_Dare').AsCurrency;
          dTotale_Avere:=ibqRicerca2.FieldByname('Tot_Avere').AsCurrency;
          dSaldo:=dTotale_Dare-dTotale_Avere;
         End
    Else Set_Zero_Stats;
    
   ibqRicerca2.Close;
   Set_Stats;
   ibqryContab2.Close;
   ibqryContab2.SQL.Clear;
   ibqryContab2.SQL.Add('Select * From CONTABILITA');
if RadioGroup10.ItemIndex = 0 then
   ibqryContab2.SQL.Add('Order By DATA_MOV,NUM_REG,NUM_DOC,NUM_PROT');
if RadioGroup10.ItemIndex = 1 then
   ibqryContab2.SQL.Add('Order By DATA_DOC,NUM_REG,NUM_PROT');
if RadioGroup10.ItemIndex = 2 then
   ibqryContab2.SQL.Add('Order By NUM_PROT');

   ibqryContab2.Open;
   x:=ibqryContab2NUM_PROT.AsInteger;
 End;

end;

procedure TfrmVisPrimaNota.meDataDaExit(Sender: TObject);
begin
 Try
  dDataDa:=StrToDate(meDataDa.Text);
 Except
  meDataDa.Text:='01/01/1977';
  dDataDa:=StrToDate(meDataDa.Text);
 End;
end;

procedure TfrmVisPrimaNota.meDataAExit(Sender: TObject);
begin
 Try
  dDataA:=StrToDate(meDataA.Text);
 Except
  meDataA.Text:='01/01/2015';
  dDataA:=StrToDate(meDataA.Text);
 End;
end;

procedure TfrmVisPrimaNota.Prepare_SQL_Filtr;
begin
 With (dmodAz) Do
 Begin
   ibqRicerca2.Close;
   ibqRicerca2.SQL.Clear;
   ibqRicerca2.SQL.Add('Select Sum(Dare) as Tot_Dare, Sum(Avere) As Tot_Avere From CONTABILITA');
   ibqRicerca2.SQL.Add('WHERE TIPO_Mov>-10');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('AND Data_Mov>=:parDataDa And Data_Mov<=:parDataA');
   ibqRicerca2.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibqRicerca2.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('and Data_DOC>=:parDD1 And Data_DOC<=:parDD2');
   ibqRicerca2.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibqRicerca2.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('AND NUM_PROT=:parPROT');
   ibqRicerca2.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('AND NUM_DOC=:parDOC');
   ibqRicerca2.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('AND PIANOCONTO_ID =:parSottoconto');
   ibqRicerca2.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('AND NUM_ASS LIKE:parASS');
   ibqRicerca2.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('AND DEPOSITO_CODICE=:parDEP');
   ibqRicerca2.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   if RadioGroup9.ItemIndex = 1 then
   begin
   ibqRicerca2.SQL.Add('AND NUM_REG=:parnum_reg');
   ibqRicerca2.ParamByName('parnum_reg').AsString:=Edit2.Text;
   end;

   ibqRicerca2.SQL.Add('Order By DATA_DOC,NUM_DOC,NUM_REG,NUM_PROT');

   ibqRicerca2.Open;
   If Not(ibqRicerca2.IsEmpty)
    Then Begin
          dTotale_Dare:=ibqRicerca2.FieldByname('Tot_Dare').AsCurrency;
          dTotale_Avere:=ibqRicerca2.FieldByname('Tot_Avere').AsCurrency;
          dSaldo:=dTotale_Dare-dTotale_Avere;
         End
    Else Set_Zero_Stats;
   ibqRicerca2.Close;
   Set_Stats;

   ibqryContab2.Close;
   ibqryContab2.SQL.Clear;
   ibqryContab2.SQL.Add('Select * From CONTABILITA');
   ibqryContab2.SQL.Add('WHERE TIPO_Mov>-10');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND Data_Mov>=:parDataDa And Data_Mov<=:parDataA');
   ibqryContab2.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibqryContab2.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('and Data_DOC>=:parDD1 And Data_DOC<=:parDD2');
   ibqryContab2.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibqryContab2.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_PROT=:parPROT');
   ibqryContab2.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_DOC=:parDOC');
   ibqryContab2.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND PIANOCONTO_ID =:parSottoconto');
   ibqryContab2.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_ASS LIKE:parASS');
   ibqryContab2.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND DEPOSITO_CODICE=:parDEP');
   ibqryContab2.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   if RadioGroup9.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_REG=:parnum_reg');
   ibqryContab2.ParamByName('parnum_reg').AsString:=Edit2.Text;
   end;
if RadioGroup10.ItemIndex = 0 then
   ibqryContab2.SQL.Add('Order By DATA_MOV,NUM_REG,NUM_DOC,NUM_PROT');
if RadioGroup10.ItemIndex = 1 then
   ibqryContab2.SQL.Add('Order By DATA_DOC,NUM_DOC,NUM_PROT');
if RadioGroup10.ItemIndex = 2 then
   ibqryContab2.SQL.Add('Order By NUM_PROT');
   ibqryContab2.Open;
 End;
end;

procedure TfrmVisPrimaNota.Set_Stats;
begin
 stTot_Dare.Value:=dTotale_Dare;
 stTot_Avere.Value:=dTotale_Avere;
 stSaldo.Value:=(Abs(dSaldo));
end;

procedure TfrmVisPrimaNota.FormCreate(Sender: TObject);
begin
 dTotale_Dare:=0;
 dTotale_Avere:=0;
 dSaldo:=0;
 strControPart:='%';
 dDataDa:=StrToDate('01/01/2004');
 dDataA :=StrToDate('01/01/2015');
 If Not(dsPianoConto.DataSet.Active)
   Then dsPianoConto.DataSet.Active:=True;
   IBQuery3.Active := True;
end;

procedure TfrmVisPrimaNota.edNumDocChange(Sender: TObject);
begin
 If (edNumDoc.Text='')
  Then Exit;
 Try
  intNumDoc:=StrToInt(edNumDoc.Text);
 Except
  intNumDoc:=-1;
  edNumDoc.Text:='0';  
 End;
end;



procedure TfrmVisPrimaNota.Set_Zero_Stats;
begin
 dTotale_Dare:=0;
 dTotale_Avere:=0;
 dSaldo:=0; 
end;

procedure TfrmVisPrimaNota.FormShow(Sender: TObject);
begin
dmodAz.IBQDepositi.Close;
dmodAz.IBQDepositi.Open;
meDataDa.Text := '01/01/2004';
meDataA.Text := '31/12/2004';
DD1.Text := '01/01/2004';
DD2.Text := '31/12/2004';
end;

procedure TfrmVisPrimaNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dsVisContab.DataSet.Close;
end;


procedure TfrmVisPrimaNota.Button2Click(Sender: TObject);
begin
fVisPC := TfVisPC.Create(Self);
fVisPC.Chiama := 0;
fVisPC.ShowModal;
RxDBLookupCombo2.KeyValue := fVisPC.dx5;
fVisPC.Free;
end;

procedure TfrmVisPrimaNota.dbgContabDblClick(Sender: TObject);
begin
//frmPNinsMovGener.intNProt
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger = 1 then
begin
 With (TfrmPNinsMovGener.Create(Self)) Do
 Begin
dmodAz.modifica := True;
//daData
 ShowModal;
  Free;
 End;
end;
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger = 4 then
begin
 With (TfrmInsInPNPagamento.Create(Self)) Do
 Begin
 boolVendita:=True;
 dmodAz.modifica := True;
//daData
 ShowModal;
  Free;
 End;
end;
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger = 5 then
begin
 With (TfrmInsInPNPagamento.Create(Self)) Do
 Begin
dmodAz.modifica := True;
//daData
  boolVendita:=False;
 ShowModal;
  Free;
 End;
end;

if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger = 2 then
begin
 With (TfrmInsInPN.Create(Self)) Do
 Begin
 dmodAz.modifica := True;
 boolVendita:=True;
 ShowModal;
  Free;
 End;
end;
if dsVisContab.DataSet.FieldByName('TIPO_MOV').AsInteger = 3 then
begin
 With (TfrmInsInPN.Create(Self)) Do
 Begin
 dmodAz.modifica := True;
 boolVendita:=False;
 ShowModal;
  Free;
 End;
end;

end;

procedure TfrmVisPrimaNota.Stampa1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfrmVisPrimaNota.RxDBLookupCombo2Change(Sender: TObject);
begin
  rxdblcPianoConto.KeyValue:=RxDBLookupCombo2.KeyValue;

end;

procedure TfrmVisPrimaNota.SpeedButton1Click(Sender: TObject);
begin
 Prepare_SQL_Filtr;
end;

procedure TfrmVisPrimaNota.SpeedButton2Click(Sender: TObject);
begin
 Prepare_SQL_NonFiltr;
end;

procedure TfrmVisPrimaNota.SpeedButton3Click(Sender: TObject);
var
Scelta : string;
begin
scelta:=InputBox('Scegli il tipo di stampa','1) - 2) - 3)Op. Sbil.','1');
if scelta = '1' then
begin
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVis.frf');
     ShowReport;
 End;
end;

if scelta = '2' then
begin
 dmodAz.ibtblContab_Det2.Open;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVis3.frf');
     ShowReport;
 End;
 dmodAz.ibtblContab_Det2.Close;
end;

if scelta = '3' then
begin
   IBQuery2.Close;
   IBQuery2.SQL.Clear;
   IBQuery2.SQL.Add('Select distinct num_prot,sum(dare) as D,sum(avere) as A From CONTABILITA');
   IBQuery2.SQL.Add('group by num_prot');
   IBQuery2.SQL.Add('having sum(dare)-sum(avere)<>0');
   IBQuery2.SQL.Add('Order By num_prot');
   IBQuery2.Open;

  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVis4.frf');
     ShowReport;
 End;

end;
end;

procedure TfrmVisPrimaNota.SpeedButton6Click(Sender: TObject);
Var
 iCodice: Integer;
begin
 If (Application.MessageBox('Sicuro di voler eliminare?','Attendere',MB_yesNo+MB_ICONQUESTION)=ID_NO)
   Then Exit;

 With (dmodAz) Do
 Begin
  iCodice:=ibqryContab2.FieldByName('NUM_PROT').asinteger;
  If (Application.MessageBox(PChar('Eliminare le righe con N° prot.'+
        IntToStr(iCodice)+' ?'),
        'Attendere',MB_yesNo+MB_ICONWARNING)=ID_NO)
    Then Exit;



  DateEdit1.date:=ibqryContab2.FieldByName('DATA_MOV').AsDateTime;
  ibqricerca.Close;
  ibqricerca.SQL.CLEAR;
  ibqricerca.SQL.Add('Delete from contabilita');
  ibqricerca.SQL.Add('Where NUM_PROT='+IntToStr(iCodice));
  ibqricerca.ExecSQL;
  ibqricerca.Close;

  iCodice:=ibqryContab2.FieldByName('NUM_REG').asinteger;  
  ibqricerca.SQL.Clear;
  ibqricerca.SQL.Add('Delete from NUM_REG_DATA');
  ibqricerca.SQL.Add('Where NUMERO=:parnum');
  ibqricerca.SQL.Add('and DATA=:parData');
  ibqricerca.ParamByName('pardata').asdate:=DateEdit1.date;
  ibqricerca.ParamByName('parnum').AsInteger:=iCodice;
  ibqricerca.ExecSQL;
  ibqricerca.Close;
  ibqricerca.SQL.Clear;
{
  ibqricerca.SQL.Clear;
  ibqricerca.SQL.Add('Delete from NUM_REG_DATA');
  ibqricerca.SQL.Add('Where NUMERO=:parnum');
  ibqricerca.SQL.Add('and DATA=:parData');
  ibqricerca.ParamByName('pardata').asdate:=DateEdit1.date;
  ibqricerca.ParamByName('parnum').AsInteger:=iCodice;
  ibqricerca.ExecSQL;
  ibqricerca.Close;
  ibqricerca.SQL.Clear;
 }
 End;
SpeedButton1.Click;
End;


procedure TfrmVisPrimaNota.SpeedButton7Click(Sender: TObject);
begin
ibqRiepilogo.Close;
ibqRiepilogo.SQL.Clear;
ibqRiepilogo.SQL.Add('select distinct DEPOSITO_CODICE,DEPOSITO_DESCR,PIANOCONTO_ID,sottoconto_descr,');
ibqRiepilogo.SQL.Add('nome_conto,SUM(dare) as totdare,SUM(AVERE) as totavere');
ibqRiepilogo.SQL.Add('from contabilita');

if RadioGroup8.ItemIndex = 1 then
begin
ibqRiepilogo.SQL.Add('where DEPOSITO_CODICE =:CODICEDEP');
ibqRiepilogo.ParamByName('CODICEDEP').AsString:=
        RxDBLookupCombo1.LookupSource.DataSet.fieldbyname('CODICE').AsString;
end;

ibqRiepilogo.SQL.Add('group by DEPOSITO_CODICE,DEPOSITO_DESCR,PIANOCONTO_ID,sottoconto_descr,nome_conto');


if RadioGroup1.ItemIndex = 0 then
ibqRiepilogo.SQL.Add('order by DEPOSITO_CODICE,sottoconto_descr')
else
ibqRiepilogo.SQL.Add('order by DEPOSITO_CODICE,nome_conto');
ibqRiepilogo.Open;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frBilancio2.frf');
dmodAz.rePRN.ShowReport;


end;

procedure TfrmVisPrimaNota.SpeedButton8Click(Sender: TObject);
begin
ibqRiepilogo.Close;
ibqRiepilogo.SQL.Clear;
ibqRiepilogo.SQL.Add('select distinct PIANOCONTO_ID,nome_conto,sottoconto_descr,');
ibqRiepilogo.SQL.Add('SUM(dare) as totdare,SUM(AVERE) as totavere');
ibqRiepilogo.SQL.Add('from contabilita');
ibqRiepilogo.SQL.Add('group by PIANOCONTO_ID,nome_conto,sottoconto_descr');
if RadioGroup1.ItemIndex = 0 then
ibqRiepilogo.SQL.Add('order by sottoconto_descr')
else
ibqRiepilogo.SQL.Add('order by nome_conto');
ibqRiepilogo.Open;

frReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'frBilancio.frf');
frReport2.ShowReport;

end;

procedure TfrmVisPrimaNota.SpeedButton9Click(Sender: TObject);
begin
 With (dmodAz) Do
 Begin
   ibqRicerca2.Close;
   ibqRicerca2.SQL.Clear;
   ibqRicerca2.SQL.Add('Select Sum(Dare) as Tot_Dare, Sum(Avere) As Tot_Avere From CONTABILITA');
   ibqRicerca2.SQL.Add('WHERE Data_Mov>= :parDataDa And Data_Mov<= :parDataA');
   ibqRicerca2.SQL.Add('AND DEPOSITO_CODICE =:CODICEDEP');
   ibqRicerca2.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibqRicerca2.ParamByName('parDataA').AsDateTime:=dDataA;
   ibqRicerca2.ParamByName('CODICEDEP').AsInteger:=RxDBLookupCombo1.KeyValue;
   ibqRicerca2.Open;
   If Not(ibqRicerca2.IsEmpty)
    Then Begin
          dTotale_Dare:=ibqRicerca2.FieldByname('Tot_Dare').AsCurrency;
          dTotale_Avere:=ibqRicerca2.FieldByname('Tot_Avere').AsCurrency;
          dSaldo:=dTotale_Dare-dTotale_Avere;
         End
    Else Set_Zero_Stats;
   ibqRicerca2.Close;
   Set_Stats;
   ibqryContab2.Close;
   ibqryContab2.SQL.Clear;
   ibqryContab2.SQL.Add('Select * From CONTABILITA');
   ibqryContab2.SQL.Add('WHERE Data_Mov>= :parDataDa And Data_Mov<= :parDataA');
   ibqryContab2.SQL.Add('AND DEPOSITO_CODICE =:CODICEDEP');
   ibqryContab2.SQL.Add('Order By DATA_DOC,NUM_PROT');
   ibqryContab2.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibqryContab2.ParamByName('parDataA').AsDateTime:=dDataA;
   ibqryContab2.ParamByName('CODICEDEP').AsInteger:=RxDBLookupCombo1.KeyValue;
   ibqryContab2.Open;
 End;

end;

procedure TfrmVisPrimaNota.rxdblcPianoContoChange(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue:=rxdblcPianoConto.KeyValue;
end;

procedure TfrmVisPrimaNota.SpeedButton10Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisPrimaNota.SpeedButton11Click(Sender: TObject);
var
Scelta : String;
begin
scelta:=InputBox('Scegli il tipo di stampa','1)Tutte le Partite - 2)Partite Aperte -  3)Partite Chiuse','1');
if scelta = '1' then
begin
   ibECC.Close;
   ibECC.SQL.Clear;
   ibECC.SQL.Add('Select * From CONTABILITA');
   ibECC.SQL.Add('left join tab_piano_conti');
   ibECC.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   ibECC.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=1)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   ibECC.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibECC.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   ibECC.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibECC.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   ibECC.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   ibECC.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   ibECC.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   ibECC.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   ibECC.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;
end;
if scelta = '2' then
begin
self.Caption:=self.Caption+'         Eleborazione in corso... ATTENDERE prego';
ibECC.SQL.Add('and (contabilita.num_doc in');
ibECC.SQL.Add('(Select distinct num_doc From CONTABILITA');
ibECC.SQL.Add('group by num_doc');
ibECC.SQL.Add('having (sum(dare)-sum(avere)=0)))');

end;

   ibECC.SQL.Add('Order By CONTABILITA.sottoconto_descr,CONTABILITA.NUM_DOC,CONTABILITA.DATA_DOC,CONTABILITA.NUM_PROT');
   ibECC.Open;



   IBQuery1.Close;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('Select sum(dare) as totdare,sum(avere) as totavere from contabilita');
   IBQuery1.SQL.Add('left join tab_piano_conti');
   IBQuery1.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   IBQuery1.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=1)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   IBQuery1.ParamByName('parDataDa').AsDateTime:=dDataDa;
   IBQuery1.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   IBQuery1.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   IBQuery1.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   IBQuery1.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   IBQuery1.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   IBQuery1.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   IBQuery1.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   IBQuery1.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;



   IBQuery1.Open;

self.Caption:='Visualizzazione Prima Nota';
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisECC.frf');
     ShowReport;
 End;

end;

procedure TfrmVisPrimaNota.SpeedButton12Click(Sender: TObject);
begin
   ibECC.Close;
   ibECC.SQL.Clear;
   ibECC.SQL.Add('Select * From CONTABILITA');
   ibECC.SQL.Add('left join tab_piano_conti');
   ibECC.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   ibECC.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=2)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   ibECC.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibECC.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   ibECC.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibECC.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   ibECC.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   ibECC.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   ibECC.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   ibECC.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   ibECC.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   ibECC.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   ibECC.SQL.Add('Order By CONTABILITA.sottoconto_descr,CONTABILITA.NUM_DOC,CONTABILITA.DATA_DOC,CONTABILITA.NUM_PROT');
   ibECC.Open;

   IBQuery1.Close;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('Select sum(dare) as totdare,sum(avere) as totavere from contabilita');
   IBQuery1.SQL.Add('left join tab_piano_conti');
   IBQuery1.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   IBQuery1.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=2)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   IBQuery1.ParamByName('parDataDa').AsDateTime:=dDataDa;
   IBQuery1.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   IBQuery1.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   IBQuery1.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   IBQuery1.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   IBQuery1.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   IBQuery1.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   IBQuery1.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   IBQuery1.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;
   IBQuery1.Open;

  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisECF.frf');
     ShowReport;
 End;
end;

procedure TfrmVisPrimaNota.SpeedButton13Click(Sender: TObject);
var
Scelta,A, b, c, x,d,e,f,s1 : String;
FT: TextFile;
m1:integer;
begin
   ibtotCli.Close;
   ibtotCli.SQL.Clear;
   ibtotCli.SQL.Add('Select nome_conto,sottoconto_descr,PIANOCONTO_ID, sum(dare) as totdare, sum(avere) as totavere From CONTABILITA');
   ibtotCli.SQL.Add('left join tab_piano_conti');
   ibtotCli.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   ibtotCli.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=1)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   ibtotCli.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibtotCli.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   ibtotCli.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibtotCli.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   ibtotCli.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   ibtotCli.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   ibtotCli.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   ibtotCli.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   ibtotCli.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   ibtotCli.SQL.Add('group by nome_conto,sottoconto_descr,PIANOCONTO_ID');
   ibtotCli.SQL.Add('Order By sottoconto_descr');
   ibtotCli.Open;


   IBQuery1.Close;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('Select sum(dare) as totdare,sum(avere) as totavere from contabilita');
   IBQuery1.SQL.Add('left join tab_piano_conti');
   IBQuery1.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   IBQuery1.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=1)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   IBQuery1.ParamByName('parDataDa').AsDateTime:=dDataDa;
   IBQuery1.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   IBQuery1.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   IBQuery1.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   IBQuery1.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   IBQuery1.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   IBQuery1.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   IBQuery1.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   IBQuery1.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;
   IBQuery1.Open;

scelta:=InputBox('Scegli il tipo di stampa','1)Tutte le Partite - 2)Partite Aperte -  3)Partite Chiuse - 4)Esporta Partite aperte','1');
  With (dmodAz.rePRN) Do
  Begin
if scelta = '1' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisTotECC.frf');
if scelta = '2' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisTotECC1.frf');
if scelta = '3' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisTotECC2.frf');

     ShowReport;
 End;
if scelta = '4' then
begin
if Savedialog1.execute then
if FileExists(SaveDialog1.FileName) then
If (MessageDlg('File ESISTENTE.. Riscriverlo?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;
x:=Savedialog1.FileName;


  AssignFile(FT, x);
  Rewrite(FT);
  ibtotCli.First;
  while not (ibtotCli.Eof) do
  begin

  b := ibtotCli.Fieldbyname('NOME_CONTO').asstring;
  S1:='            ';
  m1:=Length(b);
  if m1>=12 then
  b:=leftstr(b,12)
  else
  begin
  m1:=12-m1;
  b:=b+leftstr(S1,m1);
  end;

  c := ibtotCli.Fieldbyname('SOTTOCONTO_DESCR').asstring;
  S1:='                                                                                                    ';
  m1:=Length(c);
  if m1>=100 then
  c:=leftstr(c,100)
  else
  begin
  m1:=100-m1;
  c:=c+leftstr(S1,m1);
  end;

  d := ibtotCli.Fieldbyname('PIANOCONTO_ID').asstring;
  S1:='         ';
  m1:=Length(d);
  if m1>=10 then
  d:=leftstr(d,10)
  else
  begin
  m1:=10-m1;
  d:=d+leftstr(S1,m1);
  end;

 if not VarIsNull(ibtotCli.Fieldbyname('TOTDARE').AsCurrency) then
  e := FormatFloat('0.00',ibtotCli.Fieldbyname('TOTDARE').AsCurrency)
else
e := '0';
  S1:='                    ';
  m1:=Length(e);
  if m1>=12 then
  e:=leftstr(e,12)
  else
  begin
  m1:=12-m1;
  e:=e+leftstr(S1,m1);
  end;

 if not VarIsNull(ibtotCli.Fieldbyname('TOTAVERE').AsCurrency) then
  f := FormatFloat('0.00',ibtotCli.Fieldbyname('TOTAVERE').AsCurrency)
else
f := '0';
  S1:='                    ';
  m1:=Length(f);
  if m1>=12 then
  e:=leftstr(f,12)
  else
  begin
  m1:=12-m1;
  f:=f+leftstr(S1,m1);
  end;


  Writeln(FT, b + c+d+e+f);
  ibtotCli.Next;
  end;
  CloseFile(FT);


end;

end;

procedure TfrmVisPrimaNota.SpeedButton14Click(Sender: TObject);
var
Scelta,A, b, c, x,d,e,f,s1 : String;
FT: TextFile;
m1:integer;
begin
   ibtotCli.Close;
   ibtotCli.SQL.Clear;
   ibtotCli.SQL.Add('Select nome_conto,sottoconto_descr,PIANOCONTO_ID, sum(dare) as totdare, sum(avere) as totavere From CONTABILITA');
   ibtotCli.SQL.Add('left join tab_piano_conti');
   ibtotCli.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   ibtotCli.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=2)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   ibtotCli.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibtotCli.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   ibtotCli.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibtotCli.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   ibtotCli.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   ibtotCli.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   ibtotCli.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   ibtotCli.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   ibtotCli.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   ibtotCli.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   ibtotCli.SQL.Add('group by nome_conto,sottoconto_descr,PIANOCONTO_ID');
   ibtotCli.SQL.Add('Order By sottoconto_descr');
   ibtotCli.Open;


   IBQuery1.Close;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Add('Select sum(dare) as totdare,sum(avere) as totavere from contabilita');
   IBQuery1.SQL.Add('left join tab_piano_conti');
   IBQuery1.SQL.Add('on contabilita.pianoconto_id=tab_piano_conti.id_piano_conto');
   IBQuery1.SQL.Add('WHERE (Tab_piano_conti.tipo>4) and (Tab_piano_conti.capo_conto_cli_for=1)');

   if RadioGroup2.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   IBQuery1.ParamByName('parDataDa').AsDateTime:=dDataDa;
   IBQuery1.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   IBQuery1.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   IBQuery1.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_PROT=:parPROT');
   IBQuery1.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_DOC=:parDOC');
   IBQuery1.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.PIANOCONTO_ID =:parSottoconto');
   IBQuery1.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.NUM_ASS LIKE:parASS');
   IBQuery1.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   IBQuery1.SQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   IBQuery1.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;
   IBQuery1.Open;

scelta:=InputBox('Scegli il tipo di stampa','1)Tutte le Partite - 2)Partite Aperte -  3)Partite Chiuse - 4)Esporta Partite aperte','1');
  With (dmodAz.rePRN) Do
  Begin
if scelta = '1' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisTotECF.frf');
if scelta = '2' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisTotECF1.frf');
if scelta = '3' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVisTotECF2.frf');

     ShowReport;
 End;
 if scelta = '4' then
begin
if Savedialog1.execute then
if FileExists(SaveDialog1.FileName) then
If (MessageDlg('File ESISTENTE.. Riscriverlo?',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
Then Exit;
x:=Savedialog1.FileName;


  AssignFile(FT, x);
  Rewrite(FT);
  ibtotCli.First;
  while not (ibtotCli.Eof) do
  begin

  b := ibtotCli.Fieldbyname('NOME_CONTO').asstring;
  S1:='            ';
  m1:=Length(b);
  if m1>=12 then
  b:=leftstr(b,12)
  else
  begin
  m1:=12-m1;
  b:=b+leftstr(S1,m1);
  end;

  c := ibtotCli.Fieldbyname('SOTTOCONTO_DESCR').asstring;
  S1:='                                                                                                    ';
  m1:=Length(c);
  if m1>=100 then
  c:=leftstr(c,100)
  else
  begin
  m1:=100-m1;
  c:=c+leftstr(S1,m1);
  end;

  d := ibtotCli.Fieldbyname('PIANOCONTO_ID').asstring;
  S1:='         ';
  m1:=Length(d);
  if m1>=10 then
  d:=leftstr(d,10)
  else
  begin
  m1:=10-m1;
  d:=d+leftstr(S1,m1);
  end;

 if not VarIsNull(ibtotCli.Fieldbyname('TOTDARE').AsCurrency) then
  e := FormatFloat('0.00',ibtotCli.Fieldbyname('TOTDARE').AsCurrency)
else
e := '0';
  S1:='                    ';
  m1:=Length(e);
  if m1>=12 then
  e:=leftstr(e,12)
  else
  begin
  m1:=12-m1;
  e:=e+leftstr(S1,m1);
  end;

 if not VarIsNull(ibtotCli.Fieldbyname('TOTAVERE').AsCurrency) then
  f := FormatFloat('0.00',ibtotCli.Fieldbyname('TOTAVERE').AsCurrency)
else
f := '0';
  S1:='                    ';
  m1:=Length(f);
  if m1>=12 then
  e:=leftstr(f,12)
  else
  begin
  m1:=12-m1;
  f:=f+leftstr(S1,m1);
  end;


  Writeln(FT, b + c+d+e+f);
  ibtotCli.Next;
  end;
  CloseFile(FT);


end;

end;

procedure TfrmVisPrimaNota.MenuItem1Click(Sender: TObject);
begin
fVisPC := TfVisPC.Create(Self);
fVisPC.Chiama := 1;
fVisPC.ShowModal;
 If (Application.messagebox('Proseguire ?','attenzione',mb_yesno+mb_iconhand)=id_no)
    Then
    begin
     Exit;
     fVisPC.Free;
    end;

dbgContab.DataSource.DataSet.Edit;
dbgContab.DataSource.DataSet.fieldbyname('NOME_CONTO').AsString:=fVisPC.dx5;
dbgContab.DataSource.DataSet.fieldbyname('PIANOCONTO_ID').Asinteger:=fVisPC.dx7;
dbgContab.DataSource.DataSet.fieldbyname('SOTTOCONTO_DESCR').AsString:=fVisPC.dx6;
//dbgContab.DataSource.DataSet.fieldbyname('TIPO').Asinteger:=fVisPC.dx8;

dbgContab.DataSource.DataSet.Post;
//xxx := fVisPC.dx5;
fVisPC.Free;

end;

procedure TfrmVisPrimaNota.SpeedButton4Click(Sender: TObject);
var
Scelta : string;
begin
if RadioGroup6.ItemIndex = 0 then exit;
scelta:=InputBox('Controp. Correlate','1) Analitica - 2) Sintetica','1');
if scelta = '1' then
begin
   ibContrAnal.Close;
   ibContrAnal.SelectSQL.Clear;
   ibContrAnal.SelectSQL.Add('select * from contabilita');
   ibContrAnal.SelectSQL.Add('where num_prot in (select num_prot from contabilita where');
   ibContrAnal.SelectSQL.Add('pianoconto_id=:pc');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibContrAnal.SelectSQL.Add(' AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibContrAnal.SelectSQL.Add(' and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   end;


   if RadioGroup8.ItemIndex = 1 then
   begin
   ibContrAnal.SelectSQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   end;

   ibContrAnal.SelectSQL.Add(')');
   ibContrAnal.SelectSQL.Add('order by sottoconto_descr');
 ibContrAnal.ParamByName('pc').AsInteger:=
     RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibContrAnal.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibContrAnal.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibContrAnal.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibContrAnal.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;


   if RadioGroup8.ItemIndex = 1 then
   begin
   ibContrAnal.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   ibContrAnal.Open;

  With (dmodAz.rePRN) Do begin
  LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabContrAnal.frf');
  ShowReport;
  end;
end;

if scelta = '2' then
begin
ibContrSint.Close;
ibContrSint.SelectSQL.Clear;
ibContrSint.SelectSQL.Add('select distinct pianoconto_id,sottoconto_descr,nome_conto,sum(dare) as TOTDARE,sum(avere) as TOTAVERE from contabilita');
ibContrSint.SelectSQL.Add('where num_prot in (select num_prot from contabilita where');
ibContrSint.SelectSQL.Add('pianoconto_id=:pc');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibContrSint.SelectSQL.Add(' AND CONTABILITA.Data_Mov>=:parDataDa And CONTABILITA.Data_Mov<=:parDataA');
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibContrSint.SelectSQL.Add(' and CONTABILITA.Data_DOC>=:parDD1 And CONTABILITA.Data_DOC<=:parDD2');
   end;


   if RadioGroup8.ItemIndex = 1 then
   begin
   ibContrSint.SelectSQL.Add('AND CONTABILITA.DEPOSITO_CODICE=:parDEP');
   end;

   ibContrSint.SelectSQL.Add(')');

ibContrSint.SelectSQL.Add('group by pianoconto_id,sottoconto_descr,nome_conto');
ibContrSint.SelectSQL.Add('order by sottoconto_descr');

 ibContrSint.ParamByName('pc').AsInteger:=
     RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibContrSint.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibContrSint.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibContrSint.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibContrSint.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;


   if RadioGroup8.ItemIndex = 1 then
   begin
   ibContrSint.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   ibContrSint.Open;

  With (dmodAz.rePRN) Do begin
  LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabContrSint.frf');
  ShowReport;
  end;
end;

end;

procedure TfrmVisPrimaNota.RadioGroup6Click(Sender: TObject);
begin
if RadioGroup6.ItemIndex = 1 then
 If Not(dsPianoConto.DataSet.Active)
   Then dsPianoConto.DataSet.Active:=True;
end;

procedure TfrmVisPrimaNota.SpeedButton5Click(Sender: TObject);
begin
 With (dmodAz) Do
 Begin
   ibqryContab2.Close;
   ibqryContab2.SQL.Clear;
   ibqryContab2.SQL.Add('Select * From CONTABILITA');
   ibqryContab2.SQL.Add('WHERE TIPO_Mov>-10');

   if RadioGroup2.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND Data_Mov>=:parDataDa And Data_Mov<=:parDataA');
   ibqryContab2.ParamByName('parDataDa').AsDateTime:=dDataDa;
   ibqryContab2.ParamByName('parDataA').AsDateTime:=dDataA;
   end;

   if RadioGroup3.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('and Data_DOC>=:parDD1 And Data_DOC<=:parDD2');
   ibqryContab2.ParamByName('parDD1').AsDateTime:=StrToDate(DD1.Text);
   ibqryContab2.ParamByName('parDD2').AsDateTime:=StrToDate(DD2.Text);
   end;

   if RadioGroup4.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_PROT=:parPROT');
   ibqryContab2.ParamByName('parPROT').AsInteger:=StrToInt(NumProt.Text);
   end;

   if RadioGroup5.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_DOC=:parDOC');
   ibqryContab2.ParamByName('parDOC').AsInteger:=StrToInt(edNumDoc.Text);
   end;

   if RadioGroup6.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND PIANOCONTO_ID =:parSottoconto');
   ibqryContab2.ParamByName('parSottoconto').AsInteger:=
    RxDBLookupCombo2.LookupSource.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
   end;

   if RadioGroup7.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_ASS LIKE:parASS');
   ibqryContab2.ParamByName('parASS').AsString:=(Edit1.Text);
   end;

   if RadioGroup8.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND DEPOSITO_CODICE=:parDEP');
   ibqryContab2.ParamByName('parDEP').AsString:=RxDBLookupCombo1.KeyValue;
   end;

   if RadioGroup9.ItemIndex = 1 then
   begin
   ibqryContab2.SQL.Add('AND NUM_REG=:parnum_reg');
   ibqryContab2.ParamByName('parnum_reg').AsString:=Edit2.Text;
   end;

//   ibqryContab2.SQL.Add('Order By nome_conto,DATA_MOV,NUM_REG,DATA_DOC,NUM_DOC,NUM_PROT');
   ibqryContab2.SQL.Add('Order By DATA_MOV,NUM_DOC,NUM_REG,nome_conto,DATA_DOC,NUM_PROT');

   ibqryContab2.Open;
 End;

  With (frReport1) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frContabVis2.frf');
     ShowReport;
 End;

end;


procedure TfrmVisPrimaNota.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
if ParName = 'SALDO' then
ParValue :=sal;
end;

procedure TfrmVisPrimaNota.frReport1DataSetWork(BandName: String;
  DataSet: TDataSet; var RecordCount: Integer;
  Operation: TfrDataSetOperation);
begin
bandname := 'band3';
Case Operation Of
OpInit :  sal:=0;
OpFirst : begin sal:=dmodAz.ibqryContab2DARE.AsCurrency-dmodAz.ibqryContab2AVERE.AsCurrency;conto :=dmodAz.ibqryContab2NOME_CONTO.AsString; end;
OpNext :begin
if dmodAz.ibqryContab2NOME_CONTO.AsString = conto then
sal := sal+(dmodAz.ibqryContab2DARE.AsCurrency-dmodAz.ibqryContab2AVERE.AsCurrency)
else begin
sal:=0;
conto :=dmodAz.ibqryContab2NOME_CONTO.asstring;
sal:=(dmodAz.ibqryContab2DARE.AsCurrency-dmodAz.ibqryContab2AVERE.AsCurrency)-(dmodAz.ibqryContab2DARE.AsCurrency-dmodAz.ibqryContab2AVERE.AsCurrency);
end;
end;
end;

end;

procedure TfrmVisPrimaNota.frReport2DataSetWork(BandName: String;
  DataSet: TDataSet; var RecordCount: Integer;
  Operation: TfrDataSetOperation);
begin
bandname := 'band2';
Case Operation Of
OpInit :  DESCR:='';
OpFirst : begin
dmodAz.ibTab_Piano_Conti.Locate('NOME_CONTO',(leftstr(ibqRiepilogo.fieldbyname('nome_CONTO').AsString,2)+'.000.00000'),[]);
DESCR:=dmodAz.ibTab_Piano_Conti.fieldbyname('DESCR').AsString;
end;
OpNext :begin
dmodAz.ibTab_Piano_Conti.Locate('NOME_CONTO',(leftstr(ibqRiepilogo.fieldbyname('nome_CONTO').AsString,2)+'.000.00000'),[]);
DESCR:=dmodAz.ibTab_Piano_Conti.fieldbyname('DESCR').AsString;
end
else begin
DESCR:='';
dmodAz.ibTab_Piano_Conti.Locate('NOME_CONTO',(leftstr(ibqRiepilogo.fieldbyname('nome_CONTO').AsString,2)+'.000.00000'),[]);
DESCR:=dmodAz.ibTab_Piano_Conti.fieldbyname('DESCR').AsString;

end;
end;

bandname := 'band4';
Case Operation Of
OpInit :  DESCR2:='';
OpFirst : begin
dmodAz.ibTab_Piano_Conti.Locate('NOME_CONTO',(leftstr(ibqRiepilogo.fieldbyname('nome_CONTO').AsString,6)+'.00000'),[]);
DESCR2:=dmodAz.ibTab_Piano_Conti.fieldbyname('DESCR').AsString;
end;
OpNext :begin
dmodAz.ibTab_Piano_Conti.Locate('NOME_CONTO',(leftstr(ibqRiepilogo.fieldbyname('nome_CONTO').AsString,6)+'.00000'),[]);
DESCR2:=dmodAz.ibTab_Piano_Conti.fieldbyname('DESCR').AsString;
end
else begin
DESCR2:='';
dmodAz.ibTab_Piano_Conti.Locate('NOME_CONTO',(leftstr(ibqRiepilogo.fieldbyname('nome_CONTO').AsString,6)+'.00000'),[]);
DESCR2:=dmodAz.ibTab_Piano_Conti.fieldbyname('DESCR').AsString;

end;
end;


end;


procedure TfrmVisPrimaNota.frReport2GetValue(const ParName: String;
  var ParValue: Variant);
begin
if ParName = 'DESC_CONTO' then
ParValue :=DESCR;
if ParName = 'DESC_CONTO2' then
ParValue :=DESCR2;

end;

procedure TfrmVisPrimaNota.StMastrino1Click(Sender: TObject);
begin
frReport1.DesignReport;
end;

procedure TfrmVisPrimaNota.StBilancio1Click(Sender: TObject);
begin
frReport2.DesignReport;
end;

END.

