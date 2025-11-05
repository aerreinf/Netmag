unit uVisOrd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, Db, Buttons, ToolEdit,
  RxLookup, IBCustomDataSet, IBQuery, Menus, FR_Desgn,
  RxDBComb, FR_Class;

type
  TfVisOrdini = class(TForm)
    paView: TPanel;
    paCtrl: TPanel;
    dsoAgente: TDataSource;
    dbgDocView: TDBGrid;
    dsoOrd_Filter: TDataSource;
    BitBtn1: TBitBtn;
    bbStampa: TBitBtn;
    bbEsci: TBitBtn;
    dsoForn: TDataSource;
    dsoCli: TDataSource;
    gbTipoCliFor: TGroupBox;
    cbCli: TCheckBox;
    cbForn: TCheckBox;
    LookCliDescr: TRxDBLookupCombo;
    LookFornDescr: TRxDBLookupCombo;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    TotCli_descr: TIBQuery;
    frReport1: TfrReport;
    DataSource1: TDataSource;
    TotCli_descrCLI_NOM: TIBStringField;
    TotCli_descrF_1: TFloatField;
    TotCli_descrF_2: TFloatField;
    BitBtn4: TBitBtn;
    TotFor_descr: TIBQuery;
    DataSource2: TDataSource;
    TotFor_descrFOR_NOM: TIBStringField;
    TotFor_descrF_1: TFloatField;
    TotFor_descrF_2: TFloatField;
    TotArtFor: TIBQuery;
    DataSource3: TDataSource;
    TotArtForCODICE_ART: TIBStringField;
    TotArtForDESCR: TIBStringField;
    TotArtForPREZZO_SCONTATO: TFloatField;
    TotArtForPROVV: TFloatField;
    TotArtForFK_CODICE: TIntegerField;
    TotArtForFornitore: TStringField;
    LookCliCod: TRxDBLookupCombo;
    LookFornCod: TRxDBLookupCombo;
    cbAgente: TCheckBox;
    LookAgCod: TRxDBLookupCombo;
    LookAgDescr: TRxDBLookupCombo;
    laDataDa: TLabel;
    medatada: TDateEdit;
    laDataA: TLabel;
    medataa: TDateEdit;
    CheckBox1: TCheckBox;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    CheckBox2: TCheckBox;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    CheckBox3: TCheckBox;
    RxDBLookupCombo7: TRxDBLookupCombo;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    IBQuery3: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    SmallintField1: TSmallintField;
    IntegerField1: TIntegerField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IntegerField2: TIntegerField;
    DataSource4: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1CODICE_ZONA_ID: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1IMPORTO_FISSO: TFloatField;
    IBQuery1TIPO_CLI_FOR: TSmallintField;
    IBQuery1CLI_FOR_ID: TIntegerField;
    IBQuery1TIPO_SOMMA_PRV: TSmallintField;
    IBQuery1TIPO_PROVVIGIONE: TSmallintField;
    IBQuery1TOTALE_FATTURATO: TFloatField;
    IBQuery1TOTALE_PROVVIGIONE: TFloatField;
    IBQuery1CG: TIBStringField;
    IBQuery1CA: TIBStringField;
    IBQuery1TIPO_AG: TIntegerField;
    DataSource5: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2CODICE: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2CODICE_ZONA_ID: TIBStringField;
    IBQuery2CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery2PROVVIGIONE: TFloatField;
    IBQuery2IMPORTO_FISSO: TFloatField;
    IBQuery2TIPO_CLI_FOR: TSmallintField;
    IBQuery2CLI_FOR_ID: TIntegerField;
    IBQuery2TIPO_SOMMA_PRV: TSmallintField;
    IBQuery2TIPO_PROVVIGIONE: TSmallintField;
    IBQuery2TOTALE_FATTURATO: TFloatField;
    IBQuery2TOTALE_PROVVIGIONE: TFloatField;
    IBQuery2CG: TIBStringField;
    IBQuery2CA: TIBStringField;
    IBQuery2TIPO_AG: TIntegerField;
    DataSource6: TDataSource;
    IBQuery4: TIBQuery;
    DataSource7: TDataSource;
    frDesigner1: TfrDesigner;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    IBQuery4PK_CODICE: TIntegerField;
    IBQuery4NUMERO: TIntegerField;
    IBQuery4AGENTE_ID: TIBStringField;
    IBQuery4AGENTE_NOM: TIBStringField;
    IBQuery4CLI_ID: TIntegerField;
    IBQuery4CLI_NOM: TIBStringField;
    IBQuery4FOR_ID: TIntegerField;
    IBQuery4FOR_NOM: TIBStringField;
    IBQuery4PAGAM_ID: TIBStringField;
    IBQuery4NOTE: TIBStringField;
    IBQuery4BANCA: TIBStringField;
    IBQuery4SPEDOZIONE_ID: TIBStringField;
    IBQuery4CORIERE: TIBStringField;
    IBQuery4PORTO_ID: TIBStringField;
    IBQuery4SCONTO1: TFloatField;
    IBQuery4SCONTO2: TFloatField;
    IBQuery4SCONTO_MON: TFloatField;
    IBQuery4PROVV1: TFloatField;
    IBQuery4PROVV2: TFloatField;
    IBQuery4PROVV_MON: TFloatField;
    IBQuery4PROT: TIBStringField;
    IBQuery4TOTALE_IMPON: TFloatField;
    IBQuery4TOTALE: TFloatField;
    IBQuery4TOTALE_IVA: TFloatField;
    IBQuery4TOTALE_PROVV: TFloatField;
    IBQuery4TOTALE_SCONTO: TFloatField;
    IBQuery4BANCA_NOM: TIBStringField;
    IBQuery4PAGAM_NOM: TIBStringField;
    IBQuery4PORTO_NOM: TIBStringField;
    IBQuery4SPEDIZ_NOM: TIBStringField;
    IBQuery4CLI_IND: TIBStringField;
    IBQuery4FOR_IND: TIBStringField;
    IBQuery4CLI_TEL: TIBStringField;
    IBQuery4FOR_TEL: TIBStringField;
    IBQuery4FOR_PIVA: TIBStringField;
    IBQuery4CLI_PIVA: TIBStringField;
    IBQuery4CLI_IND2: TIBStringField;
    IBQuery4FOR_IND2: TIBStringField;
    IBQuery4DATA_SPEDIZIONE_TEXT: TIBStringField;
    IBQuery4CLI_TEL2: TIBStringField;
    IBQuery4CLI_FAX2: TIBStringField;
    IBQuery4FOR_TEL2: TIBStringField;
    IBQuery4FOR_FAX2: TIBStringField;
    IBQuery4DESTINAZIONE: TIBStringField;
    IBQuery4CABABI: TIBStringField;
    IBQuery4DATA: TDateTimeField;
    IBQuery4DATA_SPEDIZIONE: TDateTimeField;
    IBQuery4SNRP: TIBStringField;
    IBQuery4ACCONTO: TFloatField;
    IBQuery4TIPO: TIBStringField;
    IBQuery4CA_DESCR: TIBStringField;
    IBQuery4CG_DESCR: TIBStringField;
    IBQuery4CA: TIBStringField;
    IBQuery4CG: TIBStringField;
    IBQuery4FK_CODICE: TIntegerField;
    IBQuery4CODICE_ART: TIBStringField;
    IBQuery4DESCR: TIBStringField;
    IBQuery4PREZZO_UNITA: TFloatField;
    IBQuery4SCONTO11: TFloatField;
    IBQuery4SCONTO21: TFloatField;
    IBQuery4SCONTO_MON1: TFloatField;
    IBQuery4PREZZO_TOT: TFloatField;
    IBQuery4SCONTO_TOT: TFloatField;
    IBQuery4PREZZO_SCONTATO: TFloatField;
    IBQuery4PROVV: TFloatField;
    IBQuery4CAPO_AREA: TFloatField;
    IBQuery4CAPO_GRUPPO: TFloatField;
    IBQuery4AGENTE: TFloatField;
    CheckBox4: TCheckBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CheckBox5: TCheckBox;
    IBQuery4ACQ: TIBStringField;
    CheckBox6: TCheckBox;
    RadioGroup2: TRadioGroup;
    TotArtForQTA: TFloatField;
    IBQuery4QQQ: TFloatField;
    IBQuery4TOTALE_QTA: TFloatField;
    IBQuery4QTA: TFloatField;
    IBQuery4ID_CODICE: TFloatField;
    IBQuery4DIAM: TFloatField;
    IBQuery4QUALITA: TIBStringField;
    IBQuery4BARRE: TIBStringField;
    IBQuery4PREZZODEST: TFloatField;
    IBQuery4EXTRA: TFloatField;
    IBQuery4UM: TIBStringField;
    IBQuery4FINITURA: TIBStringField;
    IBQuery4ACCIAIO: TIBStringField;
    IBQuery4NORMA: TIBStringField;
    IBQuery4LATO: TFloatField;
    IBQuery4SPESSORE: TFloatField;
    IBQuery4LUNGHEZZA: TFloatField;
    IBQuery4LARGHEZZA: TFloatField;
    IBQuery4TIPOLOGIA: TFloatField;
    IBQuery4NUMFOGLI: TFloatField;
    IBQuery4COSTO_STANDART: TFloatField;
    CheckBox7: TCheckBox;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    IBQuery5: TIBQuery;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    SmallintField4: TSmallintField;
    IntegerField3: TIntegerField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IntegerField4: TIntegerField;
    DataSource8: TDataSource;
    IBQuery6: TIBQuery;
    IBQuery6CLI_NOM: TIBStringField;
    IBQuery6CLI_ID: TIntegerField;
    DataSource9: TDataSource;
    IBQuery4CR: TIBStringField;
    IBQuery4CAPO_REPARTO: TFloatField;
    IBQuery7: TIBQuery;
    IBQuery8: TIBQuery;
    IBQuery8PK_CODICE: TIntegerField;
    IBQuery8NUMERO: TIntegerField;
    IBQuery8AGENTE_ID: TIBStringField;
    IBQuery8AGENTE_NOM: TIBStringField;
    IBQuery8CLI_ID: TIntegerField;
    IBQuery8CLI_NOM: TIBStringField;
    IBQuery8FOR_ID: TIntegerField;
    IBQuery8FOR_NOM: TIBStringField;
    IBQuery8PAGAM_ID: TIBStringField;
    IBQuery8NOTE: TIBStringField;
    IBQuery8BANCA: TIBStringField;
    IBQuery8SPEDOZIONE_ID: TIBStringField;
    IBQuery8CORIERE: TIBStringField;
    IBQuery8PORTO_ID: TIBStringField;
    IBQuery8SCONTO1: TFloatField;
    IBQuery8SCONTO2: TFloatField;
    IBQuery8SCONTO_MON: TFloatField;
    IBQuery8PROVV1: TFloatField;
    IBQuery8PROVV2: TFloatField;
    IBQuery8PROVV_MON: TFloatField;
    IBQuery8PROT: TIBStringField;
    IBQuery8TOTALE_IMPON: TFloatField;
    IBQuery8TOTALE: TFloatField;
    IBQuery8TOTALE_IVA: TFloatField;
    IBQuery8TOTALE_PROVV: TFloatField;
    IBQuery8TOTALE_SCONTO: TFloatField;
    IBQuery8BANCA_NOM: TIBStringField;
    IBQuery8PAGAM_NOM: TIBStringField;
    IBQuery8PORTO_NOM: TIBStringField;
    IBQuery8SPEDIZ_NOM: TIBStringField;
    IBQuery8CLI_IND: TIBStringField;
    IBQuery8FOR_IND: TIBStringField;
    IBQuery8CLI_TEL: TIBStringField;
    IBQuery8FOR_TEL: TIBStringField;
    IBQuery8FOR_PIVA: TIBStringField;
    IBQuery8CLI_PIVA: TIBStringField;
    IBQuery8CLI_IND2: TIBStringField;
    IBQuery8FOR_IND2: TIBStringField;
    IBQuery8DATA_SPEDIZIONE_TEXT: TIBStringField;
    IBQuery8CLI_TEL2: TIBStringField;
    IBQuery8CLI_FAX2: TIBStringField;
    IBQuery8FOR_TEL2: TIBStringField;
    IBQuery8FOR_FAX2: TIBStringField;
    IBQuery8DESTINAZIONE: TIBStringField;
    IBQuery8CABABI: TIBStringField;
    IBQuery8DATA: TDateTimeField;
    IBQuery8DATA_SPEDIZIONE: TDateTimeField;
    IBQuery8SNRP: TIBStringField;
    IBQuery8ACCONTO: TFloatField;
    IBQuery8TIPO: TIBStringField;
    IBQuery8CA_DESCR: TIBStringField;
    IBQuery8CG_DESCR: TIBStringField;
    IBQuery8CA: TIBStringField;
    IBQuery8CG: TIBStringField;
    IBQuery8ACQ: TIBStringField;
    IBQuery8QQQ: TFloatField;
    IBQuery8TOTALE_QTA: TFloatField;
    IBQuery8CR: TIBStringField;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    ibTotForMen: TIBDataSet;
    ibTotForMenMESE: TSmallintField;
    ibTotForMenFOR_NOM: TIBStringField;
    ibTotForMenTOT_QTA: TFloatField;
    ibTotForMenTOT_SCONTO: TFloatField;
    ibTotForMenTOTALE: TFloatField;
    ibTotCliMen: TIBDataSet;
    SmallintField7: TSmallintField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    ibTotCliMenCLI_NOM: TIBStringField;
    ibTotForMenCOUNT: TIntegerField;
    ibTotCliMenCOUNT: TIntegerField;
    ibTotForMenTOT_PROVV: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure cbCliClick(Sender: TObject);
    procedure cbFornClick(Sender: TObject);
    procedure dsoFornDataChange(Sender: TObject; Field: TField);
    procedure dsoCliDataChange(Sender: TObject; Field: TField);
    procedure dsoAgenteDataChange(Sender: TObject; Field: TField);
    procedure cbAgenteClick(Sender: TObject);
    procedure bbStampaClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure meDataDaChange(Sender: TObject);
    procedure meDataAChange(Sender: TObject);
    procedure dbgDocViewDblClick(Sender: TObject);
    procedure DateEdit2Change(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure LookCliCodChange(Sender: TObject);
    procedure LookCliDescrChange(Sender: TObject);
    procedure LookFornCodChange(Sender: TObject);
    procedure LookFornDescrChange(Sender: TObject);
    procedure LookAgCodChange(Sender: TObject);
    procedure LookAgDescrChange(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure RxDBLookupCombo6Change(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure RxDBLookupCombo9Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
   Private
   Procedure Get_Params;
   Public
    boolAgTutti: Boolean;
    strAgCod: String;
    a,b,c,d,e,f :DOUBLE;
    intCliCod,intForCod: Integer;

    strDataDa,strDataA: String;
  End;

Var
  fVisOrdini: TfVisOrdini;

Implementation

uses uAzDM, uPrnForm, uOrdini;

{$R *.DFM}

Procedure TfVisOrdini.BitBtn1Click(Sender: TObject);
Begin
  Get_Params;
End;

procedure TfVisOrdini.Get_Params;
begin
 With (dmodAz.q_ibqVisOrd) Do
 Begin
  Close;
   SQL.Clear;

   SQL.Add('SELECT *');
   SQL.ADD('FROM ORDINI');
   SQL.Add('WHERE DATA BETWEEN :parDataDa AND :parDataA');

   // Tipo Cli/Forn and Cli/Forn
   If (cbCli.Checked)
      Then SQL.Add('AND CLI_ID = :parCli_ID');
   If (cbForn.Checked)
      Then SQL.Add('AND FOR_ID = :parFor_ID');

   If (cbAgente.Checked)
      Then SQL.Add('AND Agente_ID Like :parAgente_ID');


   SQL.Add('ORDER BY NUMERO,DATA');

   strDataDa:=meDataDa.Text;
   strDataA:=meDataA.Text;

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);

   // Cli/Forn
   If (cbCli.Checked)
     Then ParamByName('parCli_ID').AsInteger:=intCliCod;
   If (cbForn.Checked)
     Then ParamByName('parFor_ID').AsInteger:=intForCod;

   If (cbAgente.Checked)
     Then ParamByName('parAgente_ID').AsString:=strAgCod;

  Open;
 End;


  With (IBQuery4) Do
 Begin
  Close;
   SQL.Clear;

   SQL.Add('SELECT ordini.*,odr_dett.*,tab_articoli.COSTO_STANDART');
   SQL.ADD('FROM ordini ');
   SQL.Add('JOIN odr_dett ON');
   SQL.Add('(ordini.PK_CODICE=odr_dett.FK_CODICE)');
   SQL.Add('left JOIN tab_articoli ON');
   SQL.Add('(odr_dett.CODICE_ART=tab_articoli.codice_Articolo)');
   SQL.Add('WHERE ordini.DATA >=:parDataDa and ordini.DATA <=:parDataA');

   If (cbCli.Checked) Then
   begin
SQL.Add('AND ordini.CLI_NOM =:parCli_ID');
ParamByName('parCli_ID').AsString:=LookCliDescr.KeyValue;
   end;

   If (cbForn.Checked) Then
   begin
SQL.Add('AND ordini.FOR_ID =:parFor_ID');
ParamByName('parFor_ID').AsInteger:=LookFornCod.KeyValue;
   end;

    If (cbAgente.Checked) then
    begin
SQL.Add('AND ordini.Agente_ID=:parAgente_ID');
ParamByName('parAgente_ID').AsString:=LookAgCod.KeyValue;
    end;

    If (CheckBox1.Checked) then
    begin
SQL.Add('AND ordini.CG=:parCG');
ParamByName('parCG').AsString:=RxDBLookupCombo3.KeyValue;
    end;

    If (CheckBox7.Checked) then
    begin
SQL.Add('AND ordini.CR=:parCR');
ParamByName('parCR').AsString:=RxDBLookupCombo8.KeyValue;
    end;

   If (CheckBox2.Checked) then
    begin
SQL.Add('AND ordini.CA=:parCA');
ParamByName('parCA').AsString:=RxDBLookupCombo5.KeyValue;
    end;

   If (CheckBox3.Checked) then
    begin
SQL.Add('AND ordini.Cli_PIVA=:parPIVA');
ParamByName('parPIVA').AsString:=RxDBLookupCombo7.Text;
    end;

   If (CheckBox4.Checked) then
    begin
SQL.Add('AND odr_dett.Codice_art=:parArt');
ParamByName('parArt').AsString:=RxDBLookupCombo1.Value;
    end;

  If (CheckBox5.Checked) then
    begin
SQL.Add('AND ordini.SNRP=:parStato');
if RadioGroup1.ItemIndex = 0 then
ParamByName('parStato').AsString:='S';
if RadioGroup1.ItemIndex = 1 then
ParamByName('parStato').AsString:='N';
if RadioGroup1.ItemIndex = 2 then
ParamByName('parStato').AsString:='R';
if RadioGroup1.ItemIndex = 3 then
ParamByName('parStato').AsString:='P';

    end;

  If (CheckBox6.Checked) then
    begin
SQL.Add('AND ordini.ACQ=:parACQ');
if RadioGroup2.ItemIndex = 0 then
ParamByName('parACQ').AsString:='A';
if RadioGroup2.ItemIndex = 1 then
ParamByName('parACQ').AsString:='B';
if RadioGroup2.ItemIndex = 2 then
ParamByName('parACQ').AsString:='C';
if RadioGroup2.ItemIndex = 3 then
ParamByName('parACQ').AsString:='D';
if RadioGroup2.ItemIndex = 4 then
ParamByName('parACQ').AsString:='E';
if RadioGroup2.ItemIndex = 5 then
ParamByName('parACQ').AsString:='F';

    end;


   SQL.Add('ORDER BY ordini.numero,Ordini.data');

   strDataDa:=meDataDa.Text;
   strDataA:=meDataA.Text;

   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);

   Open;


end;

a:=0;
b:=0;
c:=0;
d:=0;
with IBQuery4 do
begin
First;
WHILE NOT Eof DO
BEGIN
if FieldByName('CA').AsString <>'' then
a:=a+(FieldByName('CAPO_AREA').Asfloat*FieldByName('QTA').Asfloat);
if FieldByName('CG').AsString <>'' then
B:=B+(FieldByName('CAPO_GRUPPO').Asfloat*FieldByName('QTA').Asfloat);
if FieldByName('AGENTE_ID').AsString <>'' then
C:=C+(FieldByName('AGENTE').Asfloat*FieldByName('QTA').Asfloat);
if FieldByName('CR').AsString <>'' then
D:=D+(FieldByName('CAPO_REPARTO').Asfloat*FieldByName('QTA').Asfloat);
Next;
END;
end;

end;

procedure TfVisOrdini.cbCliClick(Sender: TObject);
begin
 IBQuery6.Active:=cbCli.Checked;
 LookCliCod.Enabled:=cbCli.Checked;
 LookCliDescr.Enabled:=cbCli.Checked;
end;

procedure TfVisOrdini.cbFornClick(Sender: TObject);
begin
 dmodAz.ibqTab_For.Active:=cbforn.Checked;
 LookfornCod.Enabled:=cbforn.Checked;
 LookfornDescr.Enabled:=cbforn.Checked;
end;

procedure TfVisOrdini.dsoFornDataChange(Sender: TObject; Field: TField);
begin
 Try
   intForCod:=dsoForn.DataSet.FieldByName('ID_CLI_FOR').asinteger;
 Except
   intForCod:=-1;
 End;
end;

procedure TfVisOrdini.dsoCliDataChange(Sender: TObject; Field: TField);
begin
 Try
   intCliCod:=dsoCli.DataSet.FieldByName('ID_CLI_FOR').asinteger;
 Except
   intCliCod:=-1;
 End;
end;

procedure TfVisOrdini.dsoAgenteDataChange(Sender: TObject; Field: TField);
begin
 Try
  If Not(boolAgTutti)
     Then If Not(LookAgCod.KeyValue='')
             Then strAgCod:=LookAgCod.KeyValue;
 Except
   strAgCod:='';
 End;

end;

procedure TfVisOrdini.cbAgenteClick(Sender: TObject);
begin
 IBQuery3.Active:=cbAgente.Checked;
 LookAgCod.Enabled:=cbAgente.Checked;
 LookAgDescr.Enabled:=cbAgente.Checked;
end;

procedure TfVisOrdini.bbStampaClick(Sender: TObject);
begin
     frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrd1.frf');
     frReport1.ShowReport;
end;

procedure TfVisOrdini.bbEsciClick(Sender: TObject);
begin
 close;
end;

procedure TfVisOrdini.FormDestroy(Sender: TObject);
begin
 dmodAz.r_qCliForn.CLose;
 dsoOrd_Filter.DataSet.Close;
 dsoCli.DataSet.Close;
 dsoForn.DataSet.Close;
 dsoAgente.DataSet.Close;
end;

procedure TfVisOrdini.meDataDaChange(Sender: TObject);
begin
 try
   strDataDa:=meDataDa.Text;
 except

 end;
end;

procedure TfVisOrdini.meDataAChange(Sender: TObject);
begin
 try
   strDataA:=meDataA.Text;
 except

 end;
end;

procedure TfVisOrdini.dbgDocViewDblClick(Sender: TObject);
begin
dmodAz.iord := IBQuery4.fieldbyname('PK_CODICE').AsInteger;
 With (TfOrdini.Create(Self)) Do
 Begin
dmodAz.ibqOrdini.Locate('PK_CODICE',dmodAz.iord,[]);
  ShowModal; Free;
 End;
end;

procedure TfVisOrdini.DateEdit2Change(Sender: TObject);
begin
   strDataA:=meDataA.Text;
end;

procedure TfVisOrdini.DateEdit1Change(Sender: TObject);
begin
   strDatadA:=meDatadA.Text;
end;

procedure TfVisOrdini.BitBtn2Click(Sender: TObject);
begin
TotCli_descr.Close;
TotCli_descr.ParamByName('d1').AsDate:=medatada.Date;
TotCli_descr.ParamByName('d2').AsDate:=medataa.Date;
TotCli_descr.Open;
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'fstampaOrdTotCli.frf');
frReport1.ShowReport;

end;

procedure TfVisOrdini.BitBtn4Click(Sender: TObject);
begin
TotFor_descr.Close;
TotFor_descr.ParamByName('d1').AsDate:=medatada.Date;
TotFor_descr.ParamByName('d2').AsDate:=medataa.Date;
TotFor_descr.Open;
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'fstampaOrdTotFor.frf');
frReport1.ShowReport;

end;

procedure TfVisOrdini.LookCliCodChange(Sender: TObject);
begin
LookCliDescr.KeyValue := LookCliCod.KeyValue;
end;

procedure TfVisOrdini.LookCliDescrChange(Sender: TObject);
begin
LookCliCod.KeyValue := LookCliDescr.KeyValue;
end;

procedure TfVisOrdini.LookFornCodChange(Sender: TObject);
begin
LookFornDescr.KeyValue := LookFornCod.KeyValue;
end;

procedure TfVisOrdini.LookFornDescrChange(Sender: TObject);
begin
LookFornCod.KeyValue := LookFornDescr.KeyValue;
end;

procedure TfVisOrdini.LookAgCodChange(Sender: TObject);
begin
LookAgDescr.KeyValue := LookAgCod.KeyValue;
end;

procedure TfVisOrdini.LookAgDescrChange(Sender: TObject);
begin
LookAgCod.KeyValue := LookAgDescr.KeyValue;
end;

procedure TfVisOrdini.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.keyValue;
end;

procedure TfVisOrdini.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.keyValue;
end;

procedure TfVisOrdini.RxDBLookupCombo5Change(Sender: TObject);
begin
RxDBLookupCombo6.KeyValue := RxDBLookupCombo5.keyValue;
end;

procedure TfVisOrdini.RxDBLookupCombo6Change(Sender: TObject);
begin
RxDBLookupCombo5.KeyValue := RxDBLookupCombo6.keyValue;
end;

procedure TfVisOrdini.stampeClick(Sender: TObject);
begin
frReport1.DesignReport;
end;

procedure TfVisOrdini.BitBtn5Click(Sender: TObject);

begin
    frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrd2.frf');
     frReport1.ShowReport;
end;

procedure TfVisOrdini.BitBtn6Click(Sender: TObject);
begin
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrd3.frf');
frReport1.ShowReport;

end;

procedure TfVisOrdini.BitBtn7Click(Sender: TObject);
begin
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrd4.frf');
frReport1.ShowReport;
end;

procedure TfVisOrdini.RxDBLookupCombo1Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
end;

procedure TfVisOrdini.RxDBLookupCombo2Change(Sender: TObject);
begin
RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
end;

procedure TfVisOrdini.CheckBox7Click(Sender: TObject);
begin
 RxDBLookupCombo8.Enabled:=CheckBox7.Checked;
 RxDBLookupCombo9.Enabled:=CheckBox7.Checked;
 IBQuery5.Active:=CheckBox7.Checked;

end;

procedure TfVisOrdini.RxDBLookupCombo8Change(Sender: TObject);
begin
RxDBLookupCombo9.KeyValue := RxDBLookupCombo8.KeyValue;
end;

procedure TfVisOrdini.RxDBLookupCombo9Change(Sender: TObject);
begin
RxDBLookupCombo8.KeyValue := RxDBLookupCombo9.KeyValue;
end;

procedure TfVisOrdini.BitBtn3Click(Sender: TObject);
begin
with IBQuery8 do
begin
sql.Clear;
sql.add('Select * from ordini');
SQL.Add('WHERE');
SQL.Add('DATA >=:parDataDa and DATA <=:parDataA and');
SQL.Add('acconto<>0');
SQL.Add('order by data,numero');

   strDataDa:=meDataDa.Text;
   strDataA:=meDataA.Text;
   ParamByName('parDataDa').AsDate:=strToDate(strDataDa);
   ParamByName('parDataA').AsDate:=strToDate(strDataA);
open
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrd6.frf');
     ShowReport;
 End;

end;

procedure TfVisOrdini.BitBtn8Click(Sender: TObject);
begin
// Get_Params;
 // Stampa!

frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrd5.frf');
frReport1.ShowReport;

end;

procedure TfVisOrdini.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
if ParName = 'A' then
ParValue := A;
if ParName = 'B' then
ParValue := B;
if ParName = 'C' then
ParValue := C;
if ParName = 'D' then
ParValue := D;
if ParName = 'E' then
ParValue := E;
if ParName = 'F' then
ParValue := F;

end;

procedure TfVisOrdini.BitBtn9Click(Sender: TObject);
var
Scelta1,Scelta2 : String;
begin
scelta2:=InputBox('Tipo Stampa :','1) Totale x Fornitore - 2) Totali Mensili','1');
scelta1:=InputBox('Scegliere l ordinamento :','1) x Ragione Sociale - 2) x Importo - 3) x Provv.','1');
if scelta2='1' then
begin
ibTotForMen.Close;
ibTotForMen.SelectSQL.Clear;
ibTotForMen.SelectSQL.Add('select distinct mese,FOR_NOM,');
ibTotForMen.SelectSQL.Add('sum(TOTALE_QTA) as tot_qta,sum(TOTALE_SCONTO) as tot_sconto,');
ibTotForMen.SelectSQL.Add('sum(TOTALE) as totale,sum(TOTALE_PROVV) as tot_provv,count(*) from ORD_MENSILE_DETT');
ibTotForMen.SelectSQL.Add('where tipo=:a');

ibTotForMen.SelectSQL.Add('group by mese,FOR_NOM');
if scelta1='1' then
ibTotForMen.SelectSQL.Add('order by 1,2 ');
if scelta1='2' then
ibTotForMen.SelectSQL.Add('order by 1,5 desc');
if scelta1='3' then
ibTotForMen.SelectSQL.Add('order by 1,6 desc');

ibTotForMen.ParamByName('a').AsString:='ORD';
ibTotForMen.Open;
With (dmodAz.rePRN) Do
Begin
LoadFromFile(ExtractFilePath(Application.ExeName)+'fStOrdForMen.frf');
ShowReport;
end;



end;
end;

procedure TfVisOrdini.BitBtn10Click(Sender: TObject);
var
Scelta1,Scelta2 : String;
begin
scelta2:=InputBox('Tipo Stampa :','1) Totale x Clienti - 2) Totali Mensili','1');
scelta1:=InputBox('Scegliere l ordinamento :','1) x Ragione Sociale - 2) x Importo - 3) x Provv.','1');
if scelta2='1' then
begin
ibTotCliMen.Close;
ibTotCliMen.SelectSQL.Clear;
ibTotCliMen.SelectSQL.Add('select distinct mese,CLI_NOM,');
ibTotCliMen.SelectSQL.Add('sum(TOTALE_QTA) as tot_qta,sum(TOTALE_SCONTO) as tot_sconto,');
ibTotCliMen.SelectSQL.Add('sum(TOTALE) as totale,sum(TOTALE_PROVV) as tot_provv,count(*)  from ORD_MENSILE_DETT');
ibTotCliMen.SelectSQL.Add('where tipo=:a');

ibTotCliMen.SelectSQL.Add('group by mese,CLI_NOM');
if scelta1='1' then
ibTotCliMen.SelectSQL.Add('order by 1,2 ');
if scelta1='2' then
ibTotCliMen.SelectSQL.Add('order by 1,5 desc');
if scelta1='3' then
ibTotCliMen.SelectSQL.Add('order by 1,6 desc');

ibTotCliMen.ParamByName('a').AsString:='ORD';
ibTotCliMen.Open;
With (dmodAz.rePRN) Do
Begin
LoadFromFile(ExtractFilePath(Application.ExeName)+'fStOrdCLIMen.frf');
ShowReport;
end;



end;
end;

procedure TfVisOrdini.FormShow(Sender: TObject);
begin
 boolAgTutti:=True;
  strAgCod:='';

 medatada.Date:=StrToDate('01/01/2004');
 strDataA:=DateToStr(Date);
 meDataA.Date:=Now;

  intCliCod:=-1;
  intForCod:=-1;

// dsoCli.DataSet.Close;
// dsoForn.DataSet.Close;
// dsoAgente.DataSet.Close;
// dsoOrd_Filter.DataSet.Close;
// dmodAz.r_qCliForn.CLose;

// dmodAz.r_qCliForn.Open;
// dsoOrd_Filter.DataSet.Open;

// dmodAz.ibqTab_Cli.Close;
// dmodAz.ibqTab_Cli.Open;

//dmodAz.ibqTab_For.Close;
//dmodAz.ibqTab_For.Open;

// dsoCli.DataSet.Open;
// dsoForn.DataSet.Open;
// dsoAgente.DataSet.Open;
//IBQuery1.Close;
//IBQuery1.Open;
//IBQuery2.Close;
//IBQuery2.Open;
//IBQuery3.Close;
//IBQuery3.Open;
//IBQuery4.Close;
//IBQuery4.Open;
//IBQuery5.Close;
//IBQuery5.Open;

//dmodAz.ibTab_Articoli.Close;
//dmodAz.ibTab_Articoli.Open;

end;

procedure TfVisOrdini.CheckBox1Click(Sender: TObject);
begin
IBQuery1.Active := CheckBox1.Checked;
RxDBLookupCombo3.Enabled:=CheckBox1.Checked;
RxDBLookupCombo4.Enabled:=CheckBox1.Checked;
end;

procedure TfVisOrdini.CheckBox2Click(Sender: TObject);
begin
IBQuery2.Active:=CheckBox2.Checked;
RxDBLookupCombo5.Enabled :=CheckBox2.Checked;
RxDBLookupCombo6.Enabled :=CheckBox2.Checked;
end;

procedure TfVisOrdini.CheckBox4Click(Sender: TObject);
begin
RxDBLookupCombo1.Enabled := CheckBox4.Checked;
RxDBLookupCombo2.Enabled := CheckBox4.Checked;
dmodAz.dsoTab_Articoli.DataSet.Active := CheckBox4.Checked;
end;

End.

