unit uGestListCrop;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, RxLookup, IBCustomDataSet, IBQuery, Grids,
  DBGrids, RXSpin, Menus, IBUpdateSQL, ComCtrls, FR_Desgn, FR_Class;

type
  TfGestListCrop = class(TForm)
    RadioGroup1: TRadioGroup;
    cbMarca: TCheckBox;
    Label1: TLabel;
    rxdblcMarca: TRxDBLookupCombo;
    cbFamiglia: TCheckBox;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbTipo: TCheckBox;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcGruppo: TRxDBLookupCombo;
    cbGruppo: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    dsoMARCA: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoTIPO: TDataSource;
    dsoGRUPPO: TDataSource;
    Label7: TLabel;
    List: TRxSpinEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Button5: TButton;
    Label8: TLabel;
    Panel2: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button6: TButton;
    Edit6: TEdit;
    RxSpinEdit1: TRxSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ProgressBar1: TProgressBar;
    Label13: TLabel;
    RxSpinEdit2: TRxSpinEdit;
    Label14: TLabel;
    Panel3: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button7: TButton;
    Button8: TButton;
    Edit9: TEdit;
    RxSpinEdit3: TRxSpinEdit;
    IBQuery1: TIBDataSet;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1DESCR2: TIBStringField;
    IBQuery1CODICE_IVA_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA1_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA2_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA3_ID: TIBStringField;
    IBQuery1SCONTO1: TFloatField;
    IBQuery1SCONTO2: TFloatField;
    IBQuery1SCONTO3: TFloatField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1PESO_NETTO_KG: TFloatField;
    IBQuery1PESO_LORDO_KG: TFloatField;
    IBQuery1SCORTA_MIN: TFloatField;
    IBQuery1SCORTA_MAX: TFloatField;
    IBQuery1LOTTO_RIORDINO: TFloatField;
    IBQuery1GG_APPROVVIGIONAMENTO: TIntegerField;
    IBQuery1QTA_X_CONFEZIONE: TIntegerField;
    IBQuery1ANNO: TIntegerField;
    IBQuery1DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBQuery1PREZZO_BASE: TFloatField;
    IBQuery1COSTO_STANDART: TFloatField;
    IBQuery1TIPO_ARTICOLO_ID: TSmallintField;
    IBQuery1FATT_CONV1: TFloatField;
    IBQuery1FATT_CONV2: TFloatField;
    IBQuery1COSTO_ID: TIntegerField;
    IBQuery1RICAVO_ID: TIntegerField;
    IBQuery1GIORNI_MAX_INVENDUTO: TIntegerField;
    IBQuery1ASPETTO_ID: TIBStringField;
    IBQuery1RIORDINO_MESE_DA: TSmallintField;
    IBQuery1RIORDINO_MESE_A: TSmallintField;
    IBQuery1RIORDINO_GIORNO_DA: TSmallintField;
    IBQuery1RIORDINO_GIORNO_A: TSmallintField;
    IBQuery1STAGIONE_ID: TIBStringField;
    IBQuery1GRUPPO_ALTERNATIVO: TIBStringField;
    IBQuery1PRODUTTORE_ID: TIBStringField;
    IBQuery1CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBQuery1CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBQuery1CODICE_BASE: TIBStringField;
    IBQuery1DERIVATO: TSmallintField;
    IBQuery1VARIANTE1_ID: TIBStringField;
    IBQuery1VARIANTE2_ID: TIBStringField;
    IBQuery1VARIANTE3_ID: TIBStringField;
    IBQuery1NUM_VARIANTI: TIntegerField;
    IBQuery1TIPO_COSTO_ID: TSmallintField;
    IBQuery1TIPO_RICAVO_ID: TSmallintField;
    IBQuery1OMAGGIO: TSmallintField;
    IBQuery1TIPO_CLI_FOR_ID: TSmallintField;
    IBQuery1CLI_FOR_ID: TIntegerField;
    IBQuery1CODE_BAR: TIBStringField;
    IBQuery1DESCR_CODE_BAR: TIBStringField;
    IBQuery1NON_STAMPA_INVENTARIO: TSmallintField;
    IBQuery1NON_STAMPA_REGISTRO: TSmallintField;
    IBQuery1NOMENCLATURA: TIntegerField;
    IBQuery1FATT_CONV1_NOMENCLATURA: TFloatField;
    IBQuery1FATT_CONV2_NOMENCLATURA: TFloatField;
    IBQuery1PROV_ORDINE: TIntegerField;
    IBQuery1COSTO_ULTIMO: TFloatField;
    IBQuery1DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery1NUM_REPARTO: TIntegerField;
    IBQuery1TIPO_CODE_BAR_ID: TSmallintField;
    IBQuery1CONTO_ACQUISTO: TIntegerField;
    IBQuery1CONTO_VENDITA: TIntegerField;
    IBQuery1UN_MIS2_VAL: TIntegerField;
    IBQuery1UN_MIS3_VAL: TIntegerField;
    IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery1CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery1CAT_ART_MARCA_ID: TIntegerField;
    IBQuery1FOTO_PERCORSO: TIBStringField;
    IBQuery1CAT_ART_TIPO_ID: TIntegerField;
    IBQuery1FLAG_ACCESSORIE: TIBStringField;
    IBQuery1DATAMOD: TDateTimeField;
    IBQuery1SCONTO4: TFloatField;
    IBQuery1PREZZO_IVATO: TFloatField;
    IBQuery1P2IVATO: TFloatField;
    IBQuery1P3IVATO: TFloatField;
    IBQuery1P4IVATO: TFloatField;
    IBQuery1P5IVATO: TFloatField;
    IBQuery1SC21: TFloatField;
    IBQuery1SC22: TFloatField;
    IBQuery1SC23: TFloatField;
    IBQuery1SC31: TFloatField;
    IBQuery1SC32: TFloatField;
    IBQuery1SC33: TFloatField;
    IBQuery1SC41: TFloatField;
    IBQuery1SC42: TFloatField;
    IBQuery1SC43: TFloatField;
    IBQuery1SC51: TFloatField;
    IBQuery1SC52: TFloatField;
    IBQuery1SC53: TFloatField;
    IBQuery1R2: TFloatField;
    IBQuery1R3: TFloatField;
    IBQuery1R4: TFloatField;
    IBQuery1R5: TFloatField;
    IBQuery1IMP2: TFloatField;
    IBQuery1IMP3: TFloatField;
    IBQuery1IMP4: TFloatField;
    IBQuery1IMP5: TFloatField;
    IBQuery1RICARPREC: TFloatField;
    IBQuery1P6IVATO: TFloatField;
    IBQuery1IMP6: TFloatField;
    IBQuery1STRUTT: TFloatField;
    IBQuery1CA: TFloatField;
    IBQuery1CG: TFloatField;
    IBQuery1AG: TFloatField;
    IBQuery1CA2: TFloatField;
    IBQuery1CG2: TFloatField;
    IBQuery1AG2: TFloatField;
    IBQuery1CA3: TFloatField;
    IBQuery1CG3: TFloatField;
    IBQuery1AG3: TFloatField;
    IBQuery1CA4: TFloatField;
    IBQuery1CG4: TFloatField;
    IBQuery1AG4: TFloatField;
    IBQuery1CA5: TFloatField;
    IBQuery1CG5: TFloatField;
    IBQuery1AG5: TFloatField;
    IBQuery1CA6: TFloatField;
    IBQuery1CG6: TFloatField;
    IBQuery1AG6: TFloatField;
    IBQuery1ID_OFFERTA: TIntegerField;
    IBQuery1CR: TFloatField;
    IBQuery1CR2: TFloatField;
    IBQuery1CR3: TFloatField;
    IBQuery1CR4: TFloatField;
    IBQuery1CR5: TFloatField;
    IBQuery1CR6: TFloatField;
    IBQuery2: TIBQuery;
    IBQuery1DESCR1: TIBStringField;
    IBQuery1CODICE: TIntegerField;
    IBQuery1DESCR3: TIBStringField;
    IBQuery1CODICE1: TIntegerField;
    IBQuery1DESCR4: TIBStringField;
    IBQuery1CODICE2: TIntegerField;
    IBQuery1RIC: TFloatField;
    IBQuery1SC: TIBStringField;
    IBQuery1DESCR5: TIBStringField;
    IBQuery1CODICE3: TIntegerField;
    RadioGroup2: TRadioGroup;
    IBQuery1CODICE_ARTICOLO1: TIBStringField;
    IBQuery1DEPOSITO_ID: TIBStringField;
    IBQuery1CLI_FOR_ID1: TIntegerField;
    IBQuery1TIPO_CLI_FOR_ID1: TSmallintField;
    IBQuery1QTA_ACQUISTI: TFloatField;
    IBQuery1VAL_ACQUISTI: TFloatField;
    IBQuery1QTA_VENDITA: TFloatField;
    IBQuery1VAL_VENDITA: TFloatField;
    IBQuery1QTA_ALTRE_ENTRATE: TFloatField;
    IBQuery1VAL_ALTRE_ENTRATE: TFloatField;
    IBQuery1QTA_ALTRE_USCITE: TFloatField;
    IBQuery1VAL_ALTRE_USCITA: TFloatField;
    IBQuery1QTA_RESO_CLIENTE: TFloatField;
    IBQuery1VAL_RESO_CLIENTE: TFloatField;
    IBQuery1QTA_RESO_FORNITORE: TFloatField;
    IBQuery1VAL_RESO_FORNITORE: TFloatField;
    IBQuery1QTA_ORDINATO: TFloatField;
    IBQuery1VAL_ORDINATO: TFloatField;
    IBQuery1QTA_IMPEGNATO: TFloatField;
    IBQuery1VAL_QTA_IMPEGNATO: TFloatField;
    IBQuery1QTA_EVASA_CLIENTE: TFloatField;
    IBQuery1VAL_EVASO_CLIENTE: TFloatField;
    IBQuery1QTA_EVASA_FORNITORE: TFloatField;
    IBQuery1VAL_EVASO_FORNITORE: TFloatField;
    IBQuery1QTA_GIACENZA_INIZIALE: TFloatField;
    IBQuery1COSTO_GIACENZA_INIZIALE: TFloatField;
    IBQuery1VAL_GIACENZA_INIZIALE: TFloatField;
    IBQuery1GIACENZA_ATTUALE: TFloatField;
    IBQuery1DISPONIBILITA: TFloatField;
    IBQuery1COSTO_ULTIMO1: TFloatField;
    IBQuery1MED_PREZZO_VEND: TFloatField;
    IBQuery1ULT_COSTO_ACQ: TFloatField;
    IBQuery1MEDIO_COSTO_ACQ: TFloatField;
    IBQuery1ULT_PREZZO_VEND: TFloatField;
    IBQuery1DATA_ULTIMO_ACQUISTO: TDateTimeField;
    IBQuery1DATA_ULTIMA_VENDITA: TDateTimeField;
    IBQuery1PRETAGLIO: TFloatField;
    IBQuery1DESCR6: TIBStringField;
    procedure Button1Click(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure cbFamigliaClick(Sender: TObject);
    procedure cbGruppoClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure rxdblcMarcaChange(Sender: TObject);
    procedure rxdblcMarcaExit(Sender: TObject);
    procedure rxdblcFamigliaChange(Sender: TObject);
    procedure rxdblcFamigliaExit(Sender: TObject);
    procedure rxdblcGruppoChange(Sender: TObject);
    procedure rxdblcGruppoExit(Sender: TObject);
    procedure rxdblcTipoChange(Sender: TObject);
    procedure rxdblcTipoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure RxSpinEdit1Enter(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
 boolTipo,boolFamiglia,boolGruppo,boolMarca: Boolean;
 strMarca, strFamiglia , strGruppo, strTipo: String;
  procedure Calcola_Listini;
  procedure Apri;
  function Arrotondamento(APrezzo, AArrot: Real):Real; Virtual;
  public
    { Public declarations }
  end;

var
  fGestListCrop: TfGestListCrop;

implementation

uses uAzDM;

{$R *.DFM}


procedure TfGestListCrop.Button1Click(Sender: TObject);
begin
Calcola_Listini;

if List.Value = 0 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro0.frf');
dmodAz.rePRN.ShowReport;
end;

if List.Value = 1 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro1.frf');
dmodAz.rePRN.ShowReport;
end;
if List.Value = 2 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro2.frf');
dmodAz.rePRN.ShowReport;
end;
if List.Value = 3 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro3.frf');
dmodAz.rePRN.ShowReport;
end;
if List.Value = 4 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro4.frf');
dmodAz.rePRN.ShowReport;
end;
if List.Value = 5 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcroTutti.frf');
dmodAz.rePRN.ShowReport;
end;
if List.Value = 6 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro6.frf');
dmodAz.rePRN.ShowReport;
end;
if List.Value = 7 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro7.frf');
dmodAz.rePRN.ShowReport;
end;
if List.Value = 7 then
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'stlistcro8.frf');
dmodAz.rePRN.ShowReport;
end;

end;

procedure TfGestListCrop.Calcola_Listini;
BEGIN

IBQuery1.Close;
IBQuery1.SelectSQL.Clear;
IBQuery1.SelectSQL.add('Select * from tab_articoli');
IBQuery1.SelectSQL.add('left join tab_contabile_articolo on');
IBQuery1.SelectSQL.add('tab_articoli.codice_articolo = tab_contabile_articolo.CODICE_ARTICOLO');
IBQuery1.SelectSQL.add('left join tab_marca on tab_articoli.cat_art_marca_id = tab_marca.codice');
IBQuery1.SelectSQL.add('left join tab_famiglia on tab_articoli.cat_art_famiglia_id = tab_famiglia.codice');
IBQuery1.SelectSQL.add('left join tab_gruppo on tab_articoli.cat_art_gruppo_id = tab_gruppo.codice');
IBQuery1.SelectSQL.add('left join tab_tipo on tab_articoli.cat_art_tipo_id = tab_tipo.codice');
IBQuery1.SelectSQL.add('Where FLAG_ACCESSORIE like ''N''');
IBQuery1.SelectSQL.add('and NON_STAMPA_INVENTARIO<>1');

   If (RadioGroup1.ItemIndex = 1)
      Then Begin
            If (boolMarca)
             Then IBQuery1.SelectSQL.Add('And cat_art_marca_id = '+strMarca);
            If (boolTipo)
             Then IBQuery1.SelectSQL.Add('And cat_art_tipo_id ='+strTipo);
            If (boolGruppo)
             Then IBQuery1.SelectSQL.Add('And cat_art_gruppo_id = '+strGruppo);
            If (boolFamiglia)
             Then IBQuery1.SelectSQL.Add('And cat_art_famiglia_id ='+strFamiglia);
//            IBQuery1.SQL.Add('))');
           End;

//IBQuery1.SelectSQL.add('order by codice_articolo');

if RadioGroup2.ItemIndex = 0 then
IBQuery1.SelectSQL.Add('Order By tab_articoli.codice_articolo');
if RadioGroup2.ItemIndex = 1 then
IBQuery1.SelectSQL.Add('Order By tab_marca.descr,tab_articoli.codice_articolo');
if RadioGroup2.ItemIndex = 2 then
IBQuery1.SelectSQL.Add('Order By tab_famiglia.descr,tab_articoli.codice_articolo');
if RadioGroup2.ItemIndex = 3 then
IBQuery1.SelectSQL.Add('Order By tab_gruppo.descr,tab_articoli.codice_articolo');
if RadioGroup2.ItemIndex = 4 then
IBQuery1.SelectSQL.Add('Order By tab_tipo.descr,tab_articoli.codice_articolo');
if RadioGroup2.ItemIndex = 5 then
IBQuery1.SelectSQL.Add('Order By tab_articoli.Descr2');
if RadioGroup2.ItemIndex = 6 then
IBQuery1.SelectSQL.Add('Order By tab_marca.descr,tab_famiglia.descr,tab_articoli.descr2');
if RadioGroup2.ItemIndex = 7 then
IBQuery1.SelectSQL.Add('Order By tab_marca.descr,tab_famiglia.descr,tab_articoli.descr');

IBQuery1.Open;
IBQuery1.Active := True;
END;

procedure TfGestListCrop.cbMarcaClick(Sender: TObject);
begin
 boolMarca:=cbMarca.Checked;
end;

procedure TfGestListCrop.cbFamigliaClick(Sender: TObject);
begin
 boolFamiglia:=cbFamiglia.Checked;
end;

procedure TfGestListCrop.cbGruppoClick(Sender: TObject);
begin
 boolGruppo:=cbGruppo.Checked;
end;

procedure TfGestListCrop.cbTipoClick(Sender: TObject);
begin
 boolTipo:=cbTipo.Checked;
end;

procedure TfGestListCrop.rxdblcMarcaChange(Sender: TObject);
begin
 strMarca:=rxdblcMarca.KeyValue;
end;

procedure TfGestListCrop.rxdblcMarcaExit(Sender: TObject);
begin
 strMarca:=rxdblcMarca.KeyValue;
end;

procedure TfGestListCrop.rxdblcFamigliaChange(Sender: TObject);
begin
 strFamiglia:=rxdblcFamiglia.KeyValue;
end;

procedure TfGestListCrop.rxdblcFamigliaExit(Sender: TObject);
begin
 strFamiglia:=rxdblcFamiglia.KeyValue;
end;

procedure TfGestListCrop.rxdblcGruppoChange(Sender: TObject);
begin
 strGruppo:=rxdblcGruppo.KeyValue;
end;

procedure TfGestListCrop.rxdblcGruppoExit(Sender: TObject);
begin
 strGruppo:=rxdblcGruppo.KeyValue;
end;

procedure TfGestListCrop.rxdblcTipoChange(Sender: TObject);
begin
 strTipo:=rxdblcTipo.KeyValue;
end;

procedure TfGestListCrop.rxdblcTipoExit(Sender: TObject);
begin
 strTipo:=rxdblcTipo.KeyValue;
end;

procedure TfGestListCrop.FormCreate(Sender: TObject);
begin
{
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;
} 
end;

procedure TfGestListCrop.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex =1 then
begin
 rxdblcMarca.Enabled:= True;
 rxdblcFamiglia.Enabled:=True;
 rxdblcGruppo.Enabled:=True;
 rxdblcTipo.Enabled:=True;
 strMarca:='-1';
 strFamiglia:='-1';
 strGruppo:='-1';
 strTipo:='-1';
end
else
begin
 rxdblcMarca.Enabled:= False;
 rxdblcFamiglia.Enabled:=False;
 rxdblcGruppo.Enabled:=False;
 rxdblcTipo.Enabled:=False;

end;


end;

procedure TfGestListCrop.Button2Click(Sender: TObject);
begin
Calcola_Listini;
end;

procedure TfGestListCrop.Button3Click(Sender: TObject);
begin
DataSource1.DataSet.Post;
end;

procedure TfGestListCrop.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfGestListCrop.Edit3Enter(Sender: TObject);
begin
edit3.SelectAll;
end;

procedure TfGestListCrop.Edit3Click(Sender: TObject);
begin
edit3.SelectAll;
end;

procedure TfGestListCrop.Edit4Click(Sender: TObject);
begin
edit4.SelectAll;
end;

procedure TfGestListCrop.Edit4Enter(Sender: TObject);
begin
edit4.SelectAll;
end;

procedure TfGestListCrop.Edit5Click(Sender: TObject);
begin
edit5.SelectAll;
end;

procedure TfGestListCrop.Edit5Enter(Sender: TObject);
begin
edit5.SelectAll;
end;

procedure TfGestListCrop.RxSpinEdit1Enter(Sender: TObject);
begin
RxSpinEdit1.SelectAll;
end;

Function TfGestListCrop.Arrotondamento(APrezzo, AArrot: Real):Real;
var
a,b,c: real;
//d : int64;
begin

if AArrot<>0 then

begin
a := APrezzo/AArrot;
b := int(a);
if a-b = 0 then
result := APrezzo
else
begin
c := b+1;
Result := c*AArrot;
end;
end
else
result := APrezzo;

end;

procedure TfGestListCrop.Button6Click(Sender: TObject);
var
i,h : integer;
L2,L3,L4,L5,I2,I3,I4,I5,ScontoAcq : Currency;
begin
if RxSpinEdit1.Value = 0 then Exit;
Calcola_Listini;
i :=IBQuery1.RecordCount;

    ProgressBar1.Min := 0;
    ProgressBar1.Max := i;
    ProgressBar1.Step := 1;
Label13.Caption := IntToStr(i);
IBQuery1.First;

if RxSpinEdit1.Value = 1 then
begin
while not IBQuery1.Eof do
begin
ProgressBar1.Stepit;
IBQuery1.Edit;
IBQuery1.FieldByName('Sc21').AsFloat := StrToFloat(Edit3.text);
IBQuery1.FieldByName('Sc22').AsFloat := StrToFloat(Edit4.text);
IBQuery1.FieldByName('Sc23').AsFloat := StrToFloat(Edit5.text);
L2:= (IBQuery1.FieldByName('Prezzo_base').AsFloat-
  (IBQuery1.FieldByName('Prezzo_base').AsFloat * StrToFloat(Edit3.text)/100));
L2 := (L2 -(L2*StrToFloat(Edit4.text))/100);
L2 := (L2 -(L2*StrToFloat(Edit5.text))/100);

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit1.Value = 2 then
begin
while not IBQuery1.Eof do
begin
ProgressBar1.Stepit;
IBQuery1.Edit;
IBQuery1.FieldByName('Sc31').AsFloat := StrToFloat(Edit3.text);
IBQuery1.FieldByName('Sc32').AsFloat := StrToFloat(Edit4.text);
IBQuery1.FieldByName('Sc33').AsFloat := StrToFloat(Edit5.text);
L3:= (IBQuery1.FieldByName('Prezzo_base').AsFloat-
  (IBQuery1.FieldByName('Prezzo_base').AsFloat * StrToFloat(Edit3.text)/100));
L3 := (L3 -(L3*StrToFloat(Edit4.text))/100);
L3 := (L3 -(L3*StrToFloat(Edit5.text))/100);

IBQuery1.FieldByName('IMP3').AsFloat := L3;
IBQuery1.FieldByName('P3IVATO').AsFloat := L3 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit1.Value = 3 then
begin
while not IBQuery1.Eof do
begin
ProgressBar1.Stepit;
IBQuery1.Edit;
IBQuery1.FieldByName('Sc41').AsFloat := StrToFloat(Edit3.text);
IBQuery1.FieldByName('Sc42').AsFloat := StrToFloat(Edit4.text);
IBQuery1.FieldByName('Sc43').AsFloat := StrToFloat(Edit5.text);
L4:= (IBQuery1.FieldByName('Prezzo_base').AsFloat-
  (IBQuery1.FieldByName('Prezzo_base').AsFloat * StrToFloat(Edit3.text)/100));
L4 := (L4 -(L4*StrToFloat(Edit4.text))/100);
L4 := (L4 -(L4*StrToFloat(Edit5.text))/100);

IBQuery1.FieldByName('IMP4').AsFloat := L4;
IBQuery1.FieldByName('P4IVATO').AsFloat := L4 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit1.Value = 4 then
begin
while not IBQuery1.Eof do
begin
ProgressBar1.Stepit;
IBQuery1.Edit;
IBQuery1.FieldByName('Sc51').AsFloat := StrToFloat(Edit3.text);
IBQuery1.FieldByName('Sc52').AsFloat := StrToFloat(Edit4.text);
IBQuery1.FieldByName('Sc53').AsFloat := StrToFloat(Edit5.text);
L5:= (IBQuery1.FieldByName('Prezzo_base').AsFloat-
  (IBQuery1.FieldByName('Prezzo_base').AsFloat * StrToFloat(Edit3.text)/100));
L5 := (L5 -(L5*StrToFloat(Edit4.text))/100);
L5 := (L5 -(L5*StrToFloat(Edit5.text))/100);

IBQuery1.FieldByName('IMP5').AsFloat := L5;
IBQuery1.FieldByName('P5IVATO').AsFloat := L5 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;


end;

procedure TfGestListCrop.Button4Click(Sender: TObject);
var
i,h,g : integer;
L2,L3,L4,L5,I2,I3,I4,I5,ScontoAcq : Currency;
begin
Calcola_Listini;

i :=IBQuery1.RecordCount;
h := i;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := i;
    ProgressBar1.Step := 1;
Label13.Caption := IntToStr(i);
 i := 1;
IBQuery1.First;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

if RxSpinEdit2.Value = 0 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('PREZZO_BASE').AsFloat + StrToFloat(Edit2.Text)) *
(1+((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('Prezzo_base').AsFloat := L2;
IBQuery1.FieldByName('Prezzo_ivato').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc21').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc22').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc23').AsFloat)/100);

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc31').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc32').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc33').AsFloat)/100);

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc41').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc42').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc43').AsFloat)/100);

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc51').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc52').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc53').AsFloat)/100);

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;
////////////////////////////
if RxSpinEdit2.Value = 1 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP2').AsFloat + StrToFloat(Edit2.Text)) *
(1+((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit2.Value = 2 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP3').AsFloat + StrToFloat(Edit2.Text)) *
(1+((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit2.Value = 3 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP4').AsFloat + StrToFloat(Edit2.Text)) *
(1+((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit2.Value = 4 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP5').AsFloat + StrToFloat(Edit2.Text)) *
(1+((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

dmodAz.ibtrDef.Commit;
Apri;
end;

procedure TfGestListCrop.Button5Click(Sender: TObject);
var
i,h,g : integer;
L2,L3,L4,L5,I2,I3,I4,I5,ScontoAcq : Currency;
begin
Calcola_Listini;

i :=IBQuery1.RecordCount;
h := i;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := i;
    ProgressBar1.Step := 1;
Label13.Caption := IntToStr(i);
 i := 1;
IBQuery1.First;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

if RxSpinEdit2.Value = 0 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('PREZZO_BASE').AsFloat - StrToFloat(Edit2.Text)) *
(1-((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('Prezzo_base').AsFloat := L2;
IBQuery1.FieldByName('Prezzo_ivato').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc21').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc22').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc23').AsFloat)/100);

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc31').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc32').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc33').AsFloat)/100);

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc41').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc42').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc43').AsFloat)/100);

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc51').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc52').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc53').AsFloat)/100);

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);


IBQuery1.Post;
IBQuery1.Next;
end;
end;
////////////////////////////
if RxSpinEdit2.Value = 1 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP2').AsFloat - StrToFloat(Edit2.Text)) *
(1-((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit2.Value = 2 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP3').AsFloat - StrToFloat(Edit2.Text)) *
(1-((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit2.Value = 3 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP4').AsFloat - StrToFloat(Edit2.Text)) *
(1-((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit2.Value = 4 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('IMP5').AsFloat - StrToFloat(Edit2.Text)) *
(1-((StrToFloat(Edit1.Text))/100)),StrToFloat(Edit6.Text));

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.Post;
IBQuery1.Next;
end;
end;
 dmodAz.ibtrDef.Commit;
 Apri;
end;



procedure TfGestListCrop.Button7Click(Sender: TObject);
var
i,h,g : integer;
L2,L3,L4,L5,I2,I3,I4,I5,ScontoAcq : Currency;
begin
Calcola_Listini;

i :=IBQuery1.RecordCount;
h := i;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := i;
    ProgressBar1.Step := 1;
Label13.Caption := IntToStr(i);
 i := 1;
IBQuery1.First;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

if RxSpinEdit3.Value = 0 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat + StrToFloat(Edit8.Text)) *
(1+((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('Prezzo_base').AsFloat := L2;
IBQuery1.FieldByName('Prezzo_ivato').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc21').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc22').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc23').AsFloat)/100);

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc31').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc32').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc33').AsFloat)/100);

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc41').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc42').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc43').AsFloat)/100);

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc51').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc52').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc53').AsFloat)/100);

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
IBQuery1.Post;
IBQuery1.Next;
end;
end;
////////////////////////////
if RxSpinEdit3.Value = 1 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat + StrToFloat(Edit8.Text)) *
(1+((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));
IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit3.Value = 2 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat + StrToFloat(Edit8.Text)) *
(1+((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit3.Value = 3 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat + StrToFloat(Edit8.Text)) *
(1+((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit3.Value = 4 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat + StrToFloat(Edit8.Text)) *
(1+((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;
 dmodAz.ibtrDef.Commit;
 Apri;
end;

procedure TfGestListCrop.Button8Click(Sender: TObject);
var
i,h,g : integer;
L2,L3,L4,L5,I2,I3,I4,I5,ScontoAcq : Currency;
begin
Calcola_Listini;

i :=IBQuery1.RecordCount;
h := i;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := i;
    ProgressBar1.Step := 1;
Label13.Caption := IntToStr(i);
 i := 1;
IBQuery1.First;

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;

if RxSpinEdit3.Value = 0 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat - StrToFloat(Edit8.Text)) *
(1-((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('Prezzo_base').AsFloat := L2;
IBQuery1.FieldByName('Prezzo_ivato').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc21').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc22').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc23').AsFloat)/100);

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc31').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc32').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc33').AsFloat)/100);

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc41').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc42').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc43').AsFloat)/100);

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

L2 := 0;
L2:= (IBQuery1.FieldByName('PREZZO_BASE').AsFloat-
  (IBQuery1.FieldByName('PREZZO_BASE').AsFloat * IBQuery1.FieldByName('Sc51').AsFloat/100));
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc52').AsFloat)/100);
L2 := (L2 -(L2*IBQuery1.FieldByName('Sc53').AsFloat)/100);

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;
////////////////////////////
if RxSpinEdit3.Value = 1 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat - StrToFloat(Edit8.Text)) *
(1-((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('IMP2').AsFloat := L2;
IBQuery1.FieldByName('P2IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit3.Value = 2 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat - StrToFloat(Edit8.Text)) *
(1-((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('IMP3').AsFloat := L2;
IBQuery1.FieldByName('P3IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit3.Value = 3 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat - StrToFloat(Edit8.Text)) *
(1-((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('IMP4').AsFloat := L2;
IBQuery1.FieldByName('P4IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;

if RxSpinEdit3.Value = 4 then
begin
while not IBQuery1.Eof do
//for g := 1 to h do
begin
i := i+1;
ProgressBar1.Stepit;
IBQuery1.Edit;
L2 := 0;
L2 := Arrotondamento((IBQuery1.FieldByName('COSTO_STANDART').AsFloat - StrToFloat(Edit8.Text)) *
(1-((StrToFloat(Edit7.Text))/100)),StrToFloat(Edit9.Text));

IBQuery1.FieldByName('IMP5').AsFloat := L2;
IBQuery1.FieldByName('P5IVATO').AsFloat := L2 * (1+IBQuery1.FieldByName('Codice_IVa_id').AsFloat/100);

IBQuery1.FieldByName('DATAMOD').AsDateTime:= StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));

IBQuery1.Post;
IBQuery1.Next;
end;
end;
 dmodAz.ibtrDef.Commit;
 Apri;
end;

procedure TfGestListCrop.Apri;
begin
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;
end;

end.
