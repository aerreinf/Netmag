unit frmuVisTgCol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBQuery, Db, IBDatabase, IBCustomDataSet, IBTable, DBGrids, RXDBCtrl,
  StdCtrls, Mask, ExtCtrls, Grids, RxLookup, Buttons, RXSpin,
  DBCtrls, Variants, FR_Desgn, FR_Class;

type
  TfVisTgCol = class(TForm)
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    RxDBGrid5: TRxDBGrid;
    dsoGruppo: TDataSource;
    dstg: TDataSource;
    dsoFamiglia: TDataSource;
    IBTable4: TIBTable;
    IBTable5: TIBTable;
    IBTable7: TIBTable;
    dsoTipo: TDataSource;
    dscol: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    IBTable1: TIBTable;
    IBTable1DESCR: TIBStringField;
    IBTable1CODICE: TIntegerField;
    dsoMarca: TDataSource;
    DataSource10: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    IBTable5DESCR: TIBStringField;
    IBTable5CODICE: TIntegerField;
    IBTable5RIC: TFloatField;
    IBQuery1: TIBQuery;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1CODICE_IVA_ID: TIBStringField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1QTA_X_CONFEZIONE: TIntegerField;
    IBQuery1PREZZO_BASE: TFloatField;
    IBQuery1COSTO_STANDART: TFloatField;
    IBQuery1STAGIONE_ID: TIBStringField;
    IBQuery1PRODUTTORE_ID: TIBStringField;
    IBQuery1CODICE_BASE: TIBStringField;
    IBQuery1DERIVATO: TSmallintField;
    IBQuery1VARIANTE1_ID: TIBStringField;
    IBQuery1VARIANTE2_ID: TIBStringField;
    IBQuery1VARIANTE3_ID: TIBStringField;
    IBQuery1NUM_VARIANTI: TIntegerField;
    IBQuery1CODE_BAR: TIBStringField;
    IBQuery1DESCR_CODE_BAR: TIBStringField;
    IBQuery1NOMENCLATURA: TIntegerField;
    IBQuery1COSTO_ULTIMO: TFloatField;
    IBQuery1DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery1UN_MIS2_VAL: TIntegerField;
    IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery1CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery1CAT_ART_MARCA_ID: TIntegerField;
    IBQuery1FOTO_PERCORSO: TIBStringField;
    IBQuery1CAT_ART_TIPO_ID: TIntegerField;
    IBQuery1FLAG_ACCESSORIE: TIBStringField;
    IBQuery1Gruppo: TStringField;
    IBQuery1Marca: TStringField;
    IBQuery1Famiglia: TStringField;
    IBQuery1Tipo: TStringField;
    IBQuery2: TIBQuery;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2DESCR1: TIBStringField;
    IBQuery2DESCR2: TIBStringField;
    IBQuery2Prezzo_Base: TFloatField;
    IBQuery2Conf: TIntegerField;
    IBQuery2Gruppo: TStringField;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    RxDBGrid6: TRxDBGrid;
    RxDBGrid7: TRxDBGrid;
    IBTable3: TIBDataSet;
    IBTable3CODICE_ARTICOLO: TIBStringField;
    IBTable3DESCR: TIBStringField;
    IBTable3DESCR2: TIBStringField;
    IBTable3CODICE_IVA_ID: TIBStringField;
    IBTable3UNITA_DI_MISURA1_ID: TIBStringField;
    IBTable3UNITA_DI_MISURA2_ID: TIBStringField;
    IBTable3UNITA_DI_MISURA3_ID: TIBStringField;
    IBTable3SCONTO1: TFloatField;
    IBTable3SCONTO2: TFloatField;
    IBTable3SCONTO3: TFloatField;
    IBTable3PROVVIGIONE: TFloatField;
    IBTable3PESO_NETTO_KG: TFloatField;
    IBTable3PESO_LORDO_KG: TFloatField;
    IBTable3SCORTA_MIN: TFloatField;
    IBTable3SCORTA_MAX: TFloatField;
    IBTable3LOTTO_RIORDINO: TFloatField;
    IBTable3GG_APPROVVIGIONAMENTO: TIntegerField;
    IBTable3QTA_X_CONFEZIONE: TIntegerField;
    IBTable3ANNO: TIntegerField;
    IBTable3DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBTable3PREZZO_BASE: TFloatField;
    IBTable3COSTO_STANDART: TFloatField;
    IBTable3TIPO_ARTICOLO_ID: TSmallintField;
    IBTable3FATT_CONV1: TFloatField;
    IBTable3FATT_CONV2: TFloatField;
    IBTable3COSTO_ID: TIntegerField;
    IBTable3RICAVO_ID: TIntegerField;
    IBTable3GIORNI_MAX_INVENDUTO: TIntegerField;
    IBTable3ASPETTO_ID: TIBStringField;
    IBTable3RIORDINO_MESE_DA: TSmallintField;
    IBTable3RIORDINO_MESE_A: TSmallintField;
    IBTable3RIORDINO_GIORNO_DA: TSmallintField;
    IBTable3RIORDINO_GIORNO_A: TSmallintField;
    IBTable3STAGIONE_ID: TIBStringField;
    IBTable3GRUPPO_ALTERNATIVO: TIBStringField;
    IBTable3PRODUTTORE_ID: TIBStringField;
    IBTable3CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBTable3CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBTable3CODICE_BASE: TIBStringField;
    IBTable3DERIVATO: TSmallintField;
    IBTable3VARIANTE1_ID: TIBStringField;
    IBTable3VARIANTE2_ID: TIBStringField;
    IBTable3VARIANTE3_ID: TIBStringField;
    IBTable3NUM_VARIANTI: TIntegerField;
    IBTable3TIPO_COSTO_ID: TSmallintField;
    IBTable3TIPO_RICAVO_ID: TSmallintField;
    IBTable3OMAGGIO: TSmallintField;
    IBTable3TIPO_CLI_FOR_ID: TSmallintField;
    IBTable3CLI_FOR_ID: TIntegerField;
    IBTable3CODE_BAR: TIBStringField;
    IBTable3DESCR_CODE_BAR: TIBStringField;
    IBTable3NON_STAMPA_INVENTARIO: TSmallintField;
    IBTable3NON_STAMPA_REGISTRO: TSmallintField;
    IBTable3NOMENCLATURA: TIntegerField;
    IBTable3FATT_CONV1_NOMENCLATURA: TFloatField;
    IBTable3FATT_CONV2_NOMENCLATURA: TFloatField;
    IBTable3PROV_ORDINE: TIntegerField;
    IBTable3COSTO_ULTIMO: TFloatField;
    IBTable3DATA_COSTO_ULTIMO: TDateTimeField;
    IBTable3NUM_REPARTO: TIntegerField;
    IBTable3TIPO_CODE_BAR_ID: TSmallintField;
    IBTable3CONTO_ACQUISTO: TIntegerField;
    IBTable3CONTO_VENDITA: TIntegerField;
    IBTable3UN_MIS2_VAL: TIntegerField;
    IBTable3UN_MIS3_VAL: TIntegerField;
    IBTable3CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBTable3CAT_ART_GRUPPO_ID: TIntegerField;
    IBTable3CAT_ART_MARCA_ID: TIntegerField;
    IBTable3FOTO_PERCORSO: TIBStringField;
    IBTable3CAT_ART_TIPO_ID: TIntegerField;
    IBTable3FLAG_ACCESSORIE: TIBStringField;
    IBTable3DATAMOD: TDateTimeField;
    IBTable3SCONTO4: TFloatField;
    IBTable3PREZZO_IVATO: TFloatField;
    IBTable3P2IVATO: TFloatField;
    IBTable3P3IVATO: TFloatField;
    IBTable3P4IVATO: TFloatField;
    IBTable3P5IVATO: TFloatField;
    IBTable3SC21: TFloatField;
    IBTable3SC22: TFloatField;
    IBTable3SC23: TFloatField;
    IBTable3SC31: TFloatField;
    IBTable3SC32: TFloatField;
    IBTable3SC33: TFloatField;
    IBTable3SC41: TFloatField;
    IBTable3SC42: TFloatField;
    IBTable3SC43: TFloatField;
    IBTable3SC51: TFloatField;
    IBTable3SC52: TFloatField;
    IBTable3SC53: TFloatField;
    IBTable3R2: TFloatField;
    IBTable3R3: TFloatField;
    IBTable3R4: TFloatField;
    IBTable3R5: TFloatField;
    IBTable3IMP2: TFloatField;
    IBTable3IMP3: TFloatField;
    IBTable3IMP4: TFloatField;
    IBTable3IMP5: TFloatField;
    IBTable3RICARPREC: TFloatField;
    IBTable3P6IVATO: TFloatField;
    IBTable3IMP6: TFloatField;
    IBTable3STRUTT: TFloatField;
    IBTable3CA: TFloatField;
    IBTable3CG: TFloatField;
    IBTable3AG: TFloatField;
    IBTable3CA2: TFloatField;
    IBTable3CG2: TFloatField;
    IBTable3AG2: TFloatField;
    IBTable3CA3: TFloatField;
    IBTable3CG3: TFloatField;
    IBTable3AG3: TFloatField;
    IBTable3CA4: TFloatField;
    IBTable3CG4: TFloatField;
    IBTable3AG4: TFloatField;
    IBTable3CA5: TFloatField;
    IBTable3CG5: TFloatField;
    IBTable3AG5: TFloatField;
    IBTable3CA6: TFloatField;
    IBTable3CG6: TFloatField;
    IBTable3AG6: TFloatField;
    IBTable3ID_OFFERTA: TIntegerField;
    IBTable3CR: TFloatField;
    IBTable3CR2: TFloatField;
    IBTable3CR3: TFloatField;
    IBTable3CR4: TFloatField;
    IBTable3CR5: TFloatField;
    IBTable3CR6: TFloatField;
    IBTable2: TIBDataSet;
    IBTable6: TIBDataSet;
    IBTable2COLORE: TIBStringField;
    IBTable2DESCR: TIBStringField;
    IBTable2CODICE_ARTICOLO: TIBStringField;
    IBTable2PK_CODICE: TIntegerField;
    IBTable6TAGLIA: TFloatField;
    IBTable6DESCR: TIBStringField;
    IBTable6CODICE_ARTICOLO: TIBStringField;
    IBTable6PK_CODICE: TIntegerField;
    IBDataSet1: TIBDataSet;
    IBDataSet2: TIBDataSet;
    IBDataSet1CODICE: TIBStringField;
    IBDataSet1DESCR: TIBStringField;
    IBDataSet1PK_CODICE: TIntegerField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    IBDataSet3: TIBDataSet;
    IBTable6COPPA: TIBStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IBTable2BeforeInsert(DataSet: TDataSet);
    procedure IBTable6BeforeInsert(DataSet: TDataSet);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure IBTable2BeforeDelete(DataSet: TDataSet);
    procedure IBTable2BeforeEdit(DataSet: TDataSet);
    procedure IBTable6BeforeDelete(DataSet: TDataSet);
    procedure IBTable6BeforeEdit(DataSet: TDataSet);
    procedure IBTable6AfterInsert(DataSet: TDataSet);
    procedure IBTable2AfterInsert(DataSet: TDataSet);
    procedure IBTable3AfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
     { Private declarations }
  public
  procedure Apri;
    { Public declarations }
  end;

var
  fVisTgCol: TfVisTgCol;

implementation

uses uAzDM, frmVisListRac, frmStListR, frmuAssortimento, UAssort;

{$R *.DFM}

procedure TfVisTgCol.BitBtn1Click(Sender: TObject);
begin
;
end;

procedure TfVisTgCol.FormShow(Sender: TObject);
begin
Apri;
end;

procedure TfVisTgCol.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
 VK_ESCAPE : begin
         SpeedButton4.Click;
         end;
  else fVisTgCol.KeyPreview := False;
end;
end;

procedure TfVisTgCol.IBTable2BeforeInsert(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfVisTgCol.IBTable6BeforeInsert(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

end;

procedure TfVisTgCol.RxDBLookupCombo1Change(Sender: TObject);
begin
{IBTable2.Close;
IBTable2.ParamByName('parcodart').AsString := RxDBLookupCombo1.Value;
IBTable2.Open;

IBTable6.Close;
IBTable6.ParamByName('parcodart').AsString := RxDBLookupCombo1.Value;
IBTable6.Open;}
end;

procedure TfVisTgCol.IBTable2BeforeDelete(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfVisTgCol.IBTable2BeforeEdit(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfVisTgCol.IBTable6BeforeDelete(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfVisTgCol.IBTable6BeforeEdit(DataSet: TDataSet);
begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfVisTgCol.Apri;
begin
IBTable1.Open;
IBTable2.Open;
IBTable3.Open;
IBTable4.Open;
IBTable5.Open;
IBTable6.Open;
IBTable7.Open;

IBDataSet1.Open;
While not IBDataSet1.Eof do
begin
RxDBGrid6.Columns[0].PickList.Add(IBDataSet1.fieldbyname('DESCR').asstring);
IBDataSet1.Next;
end;
IBDataSet2.Open;
While not IBDataSet2.Eof do
begin
RxDBGrid7.Columns[0].PickList.Add(IBDataSet2.fieldbyname('DESCR').asstring);
IBDataSet2.Next;
end;

end;

procedure TfVisTgCol.IBTable6AfterInsert(DataSet: TDataSet);
begin
IBTable6CODICE_ARTICOLO.Text := IBTable3CODICE_ARTICOLO.Text;
//IBTable6COPPA.Text := IBTable6TAGLIA.Text;
end;

procedure TfVisTgCol.IBTable2AfterInsert(DataSet: TDataSet);
begin
IBTable2CODICE_ARTICOLO.Text := IBTable3CODICE_ARTICOLO.Text;
end;

procedure TfVisTgCol.IBTable3AfterScroll(DataSet: TDataSet);
begin
{
IBTable2.Close;
IBTable2.ParamByName('parcodart').AsString := IBTable3CODICE_ARTICOLO.AsString;
IBTable2.Open;

IBTable6.Close;
IBTable6.ParamByName('parcodart').AsString := IBTable3CODICE_ARTICOLO.AsString;
IBTable6.Open;
}
end;

procedure TfVisTgCol.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
SpeedButton4.Click;
end;

procedure TfVisTgCol.SpeedButton1Click(Sender: TObject);
begin
 FStListR:=TFStListR.Create(Self);
 FStListR.ShowModal;
 FStListR.Free;

end;

procedure TfVisTgCol.SpeedButton2Click(Sender: TObject);
var
  SavePlace: TBookmark;
begin
 SavePlace := IBTable3.GetBookmark;
if dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.Commit;
 Apri;
 IBTable3.GotoBookmark(SavePlace);
 IBTable3.FreeBookmark(SavePlace);

 fAssort:=TfAssort.Create(Self);
 fAssort.ShowModal;
 fAssort.Free;
end;

procedure TfVisTgCol.SpeedButton3Click(Sender: TObject);
begin
fVisListRac:=TfVisListRac.Create(Self);
if not VarIsNull(FloatToStr(DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat)) then
begin
fVisListRac.L6.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat);
fVisListRac.RxCalcEdit9.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat*1936.27);

fVisListRac.L7.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat + dsoGruppo.DataSet.Fieldbyname('Ric').AsFloat);
fVisListRac.RxCalcEdit10.Value := ((DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat + dsoGruppo.DataSet.Fieldbyname('Ric').AsFloat)*1936.27);

fVisListRac.L8.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat + (2* dsoGruppo.DataSet.Fieldbyname('Ric').AsFloat));
fVisListRac.RxCalcEdit11.Value := ((fVisListRac.L8.Value)*1936.27);

fVisListRac.L9.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat + (3* dsoGruppo.DataSet.Fieldbyname('Ric').AsFloat));
fVisListRac.RxCalcEdit12.Value := ((fVisListRac.L9.Value)*1936.27);

fVisListRac.L10.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat + (4* dsoGruppo.DataSet.Fieldbyname('Ric').AsFloat));
fVisListRac.RxCalcEdit13.Value := ((fVisListRac.L10.Value)*1936.27);

fVisListRac.L11.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat + (5* dsoGruppo.DataSet.Fieldbyname('Ric').AsFloat));
fVisListRac.RxCalcEdit14.Value := ((fVisListRac.L11.Value)*1936.27);


fVisListRac.PrezzoVendita.Value := (DataSource10.DataSet.Fieldbyname('Prezzo_Base').AsFloat  /2);
fVisListRac.RxCalcEdit3.Value := ((fVisListRac.PrezzoVendita.Value)*1936.27);

fVisListRac.L1.Value := ((fVisListRac.L7.Value)/2);
fVisListRac.RxCalcEdit4.Value := ((fVisListRac.L7.Value)/2*1936.27);

fVisListRac.L2.Value := ((fVisListRac.L8.Value)/2);
fVisListRac.RxCalcEdit5.Value := ((fVisListRac.L8.Value)/2*1936.27);

fVisListRac.L3.Value := ((fVisListRac.L9.Value)/2);
fVisListRac.RxCalcEdit6.Value := ((fVisListRac.L9.Value)/2*1936.27);

fVisListRac.L4.Value := ((fVisListRac.L10.Value)/2);
fVisListRac.RxCalcEdit7.Value := ((fVisListRac.L10.Value)/2*1936.27);

fVisListRac.L5.Value := ((fVisListRac.L11.Value)/2);
fVisListRac.RxCalcEdit8.Value := ((fVisListRac.L11.Value)/2*1936.27);

end;
 fVisListRac.ShowModal;

 fVisListRac.Free;
end;

procedure TfVisTgCol.SpeedButton4Click(Sender: TObject);
begin
if dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.Commit;
Close
end;


procedure TfVisTgCol.SpeedButton5Click(Sender: TObject);
var
a,b,c : string;
x,y : integer;
z,w : string;
begin
IBTable2.First;
IBTable6.First;
while not IBTable2.Eof do
begin
IBTable6.First;
while not IBTable6.Eof do
begin
a:=IBTable3CODICE_articolo.AsString;
b:=IBTable2COlore.AsString;
c:=IBTable6descr.AsString;

if not dmodAz.ibTab_Cod_Agg_D.Locate('codice_Articolo;VAR2_COL;VAR1_TG',vararrayof([a,b,c]),[])  then
begin
IBDataSet3.Open;
with dmodAz do
begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('SELECT Count(*) From CODART');
   ibqRicerca.open;
   If (ibqRicerca.FieldByname('Count').AsInteger>0) Then
     Begin

IBDataSet3.First;
x:=length(IBDataSet3.FieldByName('CODICE').AsString);

z := copy((IBDataSet3.FieldByName('CODICE').AsString),(x-4),5);
w := copy((IBDataSet3.FieldByName('CODICE').AsString),1,(x-5));

    End
     else
begin
//ibqRicerca.CLose;

ibTabPersAz.Open;
ibTabPersAz.First;
x:= length(ibTabPersAz.FieldByName('DESCR_ZOOM_ART').AsString);
z := copy((ibTabPersAz.FieldByName('DESCR_ZOOM_ART').AsString),(x-4),5);
w := copy((ibTabPersAz.FieldByName('DESCR_ZOOM_ART').AsString),1,(x-5));
end;
end;
IBDataSet3.Insert;
IBDataSet3.FieldByName('CODICE').AsString := w+IntToStr(StrToInt(z)+1);
IBDataSet3.Post;
IBDataSet3.Close;

dmodAz.ibTab_Cod_Agg_D.Insert;
dmodAz.ibTab_Cod_Agg_DCODICE_AGGIUNTIVO.AsString := w+IntToStr(StrToInt(z)+1);
dmodAz.ibTab_Cod_Agg_DCODICE_ARTICOLO.AsString := IBTable3COdice_articolo.AsString;
dmodAz.ibTab_Cod_Agg_DVAR2_COL.AsString := IBTable2COLORE.AsString;
dmodAz.ibTab_Cod_Agg_DVAR1_TG.AsString := IBTable6DESCR.AsString;
dmodAz.ibTab_Cod_Agg_DQUANTITA.AsFloat := 1;
dmodAz.ibTab_Cod_Agg_DDESCR.AsString := IBTable3DESCR.AsString;
dmodAz.ibTab_Cod_Agg_D.Post;
end;
IBTable6.Next;
end;
IBTable2.Next;
end;

end;


end.
