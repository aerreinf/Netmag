unit uLettBarcode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons, DB,
  RxMemDS, OoMisc, AdPort, ADODB;

type
  TfLettBarcode = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button3: TButton;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ApdComPort1: TApdComPort;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CODICE: TStringField;
    RxMemoryData1QTA: TFloatField;
    RxMemoryData1PREZZO: TCurrencyField;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    RxMemoryData1L: TFloatField;
    Button4: TButton;
    ADODataSet3: TADODataSet;
    ADODataSet111: TADOTable;
    ADODataSet111DEBNR: TWideStringField;
    ADODataSet111ORDER: TWideStringField;
    ADODataSet111DEBNAAM: TWideStringField;
    ADODataSet111FACTNR: TFloatField;
    ADODataSet111FACTDAT: TWideStringField;
    ADODataSet111AFD: TWideStringField;
    ADODataSet111DAG: TWideStringField;
    ADODataSet111KOLLI: TFloatField;
    ADODataSet111INHKOLLI: TFloatField;
    ADODataSet111STUKS: TFloatField;
    ADODataSet111ARTNR: TFloatField;
    ADODataSet111ARTTXT: TWideStringField;
    ADODataSet111PRIJS: TFloatField;
    ADODataSet111BEDRAG: TFloatField;
    ADODataSet111BTW: TFloatField;
    ADODataSet111KLEUR: TWideStringField;
    ADODataSet111S1: TFloatField;
    ADODataSet111S2: TFloatField;
    ADODataSet111S3: TFloatField;
    ADODataSet111KWEKER: TWideStringField;
    ADODataSet111LAND: TWideStringField;
    ADODataSet111FAANTAL: TFloatField;
    ADODataSet111FUST: TFloatField;
    ADODataSet111FPRIJS: TFloatField;
    ADODataSet111DOOSNR: TWideStringField;
    ADODataSet111PAKLIJSTNR: TFloatField;
    ADODataSet111HAND: TWideStringField;
    ADODataSet111CEL: TFloatField;
    ADODataSet111ADVIESPR: TFloatField;
    ADODataSet2: TADODataSet;
    ADODataSet2DEBNR: TWideStringField;
    ADODataSet2ORDER: TWideStringField;
    ADODataSet2DEBNAAM: TWideStringField;
    ADODataSet2FACTNR: TFloatField;
    ADODataSet2FACTDAT: TWideStringField;
    ADODataSet2AFD: TWideStringField;
    ADODataSet2DAG: TWideStringField;
    ADODataSet2KOLLI: TFloatField;
    ADODataSet2INHKOLLI: TFloatField;
    ADODataSet2STUKS: TFloatField;
    ADODataSet2ARTNR: TFloatField;
    ADODataSet2ARTTXT: TWideStringField;
    ADODataSet2PRIJS: TFloatField;
    ADODataSet2BEDRAG: TFloatField;
    ADODataSet2BTW: TFloatField;
    ADODataSet2KLEUR: TWideStringField;
    ADODataSet2S1: TFloatField;
    ADODataSet2S2: TFloatField;
    ADODataSet2S3: TFloatField;
    ADODataSet2KWEKER: TWideStringField;
    ADODataSet2LAND: TWideStringField;
    ADODataSet2FAANTAL: TFloatField;
    ADODataSet2FUST: TFloatField;
    ADODataSet2FPRIJS: TFloatField;
    ADODataSet2DOOSNR: TWideStringField;
    ADODataSet2PAKLIJSTNR: TFloatField;
    ADODataSet2HAND: TWideStringField;
    ADODataSet2CEL: TFloatField;
    ADODataSet2ADVIESPR: TFloatField;
    Button5: TButton;
    Edit1: TEdit;
    Button6: TButton;
    RxMemoryData1A: TStringField;
    RxMemoryData1B: TStringField;
    RxMemoryData1C: TStringField;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure ApdComPort1TriggerAvail(CP: TObject; Count: Word);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipo : integer;
    strCodiceListino : string;
    Procedure Passa;
    Procedure Passa2;
    Procedure PassainDoc;
    Procedure PassainDoc2;
    procedure SetCom;
  end;

var
  fLettBarcode: TfLettBarcode;

  const
  chSOH = #01;
  chSTX = #02;
  chETX = #03;
  chEOT = #04;
  chENQ = #05;
  chACK = #06;
  chLF = #10;
  chCR = #13;
  chNAK = #21;
  chCAN = #24;

  BUFFER_LEN = 300;

  CMD_TX = 'TX';
  CMD_RX = 'RX';
  CMD_END = 'END';
  CMD_TU3 = 'TU3';
  CMD_YMDM = 'YMDM';

  EOL: string = #13#10;

implementation

uses uBaseFormDoc3, uAzDM, UCodAgg, uArticoli;

{$R *.dfm}

procedure TfLettBarcode.ApdComPort1TriggerAvail(CP: TObject; Count: Word);
var
  I: Integer;
  Tmp: string;
  f : Word;
  h:Char;
  FileData: TStringList;
begin
for i:=1 to count do begin
h :=  ApdComPort1.GetChar;
if h = (chSOH) then
Memo1.Lines.Add('1');
if h = (chSTX) then
begin
Memo1.Lines.Add('2');
end;
if h = (chETX) then
begin
Memo1.Lines.Add('3');
ApdComPort1.PutChar(#06);
end;
if h = (chEOT) then
begin
Memo1.Lines.Add('4');
ApdComPort1.PutChar(#06);
if tipo=1 then
passa
else
passa2;
end;
if h = (chENQ) then
begin
ApdComPort1.PutChar(#06);
Memo1.Lines.Add('5');
end;
if h = (chACK) then
Memo1.Lines.Add('6');
if h = (chLF) then
Memo1.Lines.Add('10');
if h = (chCR) then
Memo1.Lines.Add('13');
if h = (chNAK) then
Memo1.Lines.Add('21');
if h = (chCAN) then
Memo1.Lines.Add('24');
Memo1.Lines.Text := Memo1.Lines.Text + h;

//ApdComPort1.PutChar(#06);
end;
end;

procedure TfLettBarcode.passa;
VAR
g,k:INTEGER;
FileData: TStringList;
begin
RxMemoryData1.Open;
RxMemoryData1.EmptyTable;
RxMemoryData1.Open;
g:=Memo1.Lines.Count;
for k:=1 to g do
begin
if Copy(Memo1.Lines[k], 1, 1) ='2' then
begin
RxMemoryData1.Insert;
RxMemoryData1.FieldByName('CODICE').AsString := Copy(Memo1.Lines[k], 8, 12);
RxMemoryData1.FieldByName('QTA').AsInteger := strtoint(trim(Copy(Memo1.Lines[k], 22, 5)));
RxMemoryData1.Post;
end;
end;
ApdComPort1.Open := false;
BitBtn1.Visible := True;
end;

procedure TfLettBarcode.Button2Click(Sender: TObject);
begin
Close;
ApdComPort1.Open := false;
end;

procedure TfLettBarcode.BitBtn2Click(Sender: TObject);
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,art: String;
 boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin
 RxMemoryData1.Open;
 RxMemoryData1.EmptyTable;
 RxMemoryData1.Open;
 FileData := TStringList.Create;
   try
      OpenDialog1.Title := 'Apertura file di documenti';
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
      if OpenDialog1.Execute then begin
      FileData.Clear;
      FileData.LoadFromFile(OpenDialog1.FileName);
      for i := 0 to FileData.Count - 1 do begin
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 12));

try
x:=length(FloatToStr((StrToFloat(RxMemoryData1.FieldByName('CODICE').AsString))));
if x =8 then
RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 7));
except
end;
         RxMemoryData1.FieldByName('QTA').AsInteger := StrToInt(trim(Copy(FileData.Strings[i], 14, 5)));
         RxMemoryData1.Post;
      end;
      end;
   finally
      FileData.Free;
   end;

end;

procedure TfLettBarcode.passainDoc;
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,art: String;
 boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin
if RxMemoryData1.IsEmpty then exit;
boolDoc_Vendita:=fBaseFormDoc3.boolVendita;
 strCodDep:=fBaseFormDoc3.LookNostrDepCod.KeyValue;

iNRiga:=1;
RxMemoryData1.DisableControls;
RxMemoryData1.Last;
fBaseFormDoc3.dsoRigheDoc.DataSet.DisableControls;

  If (fBaseFormDoc3.dsoRigheDoc.DataSet.IsEmpty)
   Then iNRiga:=1
   Else Begin
         fBaseFormDoc3.dsoRigheDoc.DataSet.Last;
         iNRiga:=fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
        End;
intID_Doc:=fBaseFormDoc3.dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
while not RxMemoryData1.Bof do
begin
fBaseFormDoc3.nuovissimo := True;
strTipo_Serv:='ARTICOLO';
iNRiga:=1+fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
imb:=1;
try
x:=length(FloatToStr((StrToFloat(RxMemoryData1.FieldByName('CODICE').AsString))));
if x =8 then
strcodart := Trim(Copy(RxMemoryData1.FieldByName('CODICE').AsString, 1, 7))
else
strcodart :=RxMemoryData1.FieldByName('CODICE').AsString;
except
strcodart :=RxMemoryData1.FieldByName('CODICE').AsString;
end;
fBaseFormDoc3.IBQuery2.close;
fBaseFormDoc3.IBQuery2.ParamByName('a').AsString := UpperCase(strcodart);
fBaseFormDoc3.IBQuery2.open;

if fBaseFormDoc3.IBQuery2.IsEmpty then
begin
fBaseFormDoc3.IBQuery5.Close;
fBaseFormDoc3.IBQuery5.ParamByName('a').AsString := UpperCase(strcodart);
fBaseFormDoc3.IBQuery5.Open;
if not fBaseFormDoc3.IBQuery5.IsEmpty then
begin
art :=fBaseFormDoc3.IBQuery5.fieldbyname('codice_articolo').AsString;
imb := fBaseFormDoc3.IBQuery5.fieldbyname('quantita').AsFloat;
fBaseFormDoc3.IBQuery2.close;
fBaseFormDoc3.IBQuery2.ParamByName('a').AsString := art;
fBaseFormDoc3.IBQuery2.open;
end;
end;

if not (fBaseFormDoc3.IBQuery2.IsEmpty) then
begin
With fBaseFormDoc3.IBQuery2 do
Begin
fBaseFormDoc3.dsoRigheDoc.DataSet.Insert;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('CODICE_ARTICOLO').AsString:= fieldbyname('CODICE_ARTICOLO').AsString;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('DESCR').AsString:=fieldbyname('DESCR').AsString;
If (boolDoc_Vendita) then
begin
if RxMemoryData1.fieldbyname('PREZZO').AsFloat =0 then
begin
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('PREZZO_BASE').AsFloat;

  if (strCodiceListino = '1') and (dmodAz.Tipo <> 1) then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP2').AsString;
  if (strCodiceListino = '2') and (dmodAz.Tipo <> 1) then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP3').AsString;
  if (strCodiceListino = '3') and (dmodAz.Tipo <> 1) then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP4').AsString;
  if (strCodiceListino = '4') and (dmodAz.Tipo <> 1) then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsString:=
     fieldByname('IMP5').AsString;

if dmodAz.Tipo = 1 then
begin
  if strCodiceListino = '1' then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC21').AsString;
  if strCodiceListino = '2' then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC31').AsString;
  if strCodiceListino = '3' then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC41').AsString;
  if strCodiceListino = '4' then
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsString:=
     fieldByname('SC51').AsString;
end;
end
else
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=RxMemoryData1.fieldbyname('PREZZO').AsFloat;

end
Else
begin
if RxMemoryData1.fieldbyname('PREZZO').AsFloat =0 then
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=fieldbyname('COSTO_STANDART').AsFloat
else
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat :=RxMemoryData1.fieldbyname('PREZZO').AsFloat;
end;
if not VarIsNull(fieldbyname('PROVVIGIONE').AsFloat) then
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('PERC_PROVV').AsFloat:=fieldbyname('PROVVIGIONE').AsFloat;

fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('A').AsString :=RxMemoryData1.fieldbyname('A').AsString;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('B').AsString :=RxMemoryData1.fieldbyname('B').AsString;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('C').AsString :=RxMemoryData1.fieldbyname('C').AsString;

fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('TIPO_SERVIZIO').AsString:=strTipo_Serv;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=fBaseFormDoc3.dbeSconto1.Field.AsInteger;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=fBaseFormDoc3.dbeSconto2.Field.AsInteger;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('DOC_ID').AsInteger:= intID_Doc;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger:=iNRiga;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('DEP').AsString:=strCodDep;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('DATA_REG').AsDateTime:=Now;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('PREZZOLIST').AsFloat:=fieldbyname('PREZZO_BASE').AsFloat;

   If (boolDoc_Vendita)
     Then fBaseFormDoc3.dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_VENDITA').AsInteger
     Else fBaseFormDoc3.dsoRigheDoc.dataset.FieldByName('pianoconto_id').asinteger:=
                 FieldByName('CONTO_ACQUISTO').AsInteger;
fBaseFormDoc3.dsoRigheDoc.dataset.FieldByName('CODICE_IVA_ID').asinteger := fieldByname('CODICE_IVA_ID').AsInteger;
Try
fBaseFormDoc3.dsoRigheDoc.DataSet.fieldByName('UNITA_MISURA').AsString:=
 FieldByName('UNITA_DI_MISURA1_ID').AsString;
Except
End;
if tipo = 1 then
begin
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat :=RxMemoryData1.fieldbyname('QTA').AsFloat;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;
fBaseFormDoc3.dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=RxMemoryData1.fieldbyname('QTA').AsFloat*imb;
end;
if tipo = 2 then
begin
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat :=RxMemoryData1.fieldbyname('QTA').AsFloat/1000;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;

fBaseFormDoc3.dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=(RxMemoryData1.fieldbyname('QTA').AsFloat/1000)*imb;
end;


try
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat:=
      fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
//      dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat;

 Except
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat:=0;
 End;

 Try

   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('C').AsString :=RxMemoryData1.fieldbyname('L').AsString;

   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat;

   dSC1 := fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100;
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC1;
   dSC2 := fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat/100;
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC2;
   dSC  := fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat;
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC;
 Except
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=0;
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=0;
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat;
 End;
  Try
     Begin
      fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsFloat:=
         fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat +
         fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat * fieldByname('CODICE_IVA_ID').AsInteger
                /100;
     End;
  Except
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsFloat:=fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat;
   Beep;
  End;

end;
RxMemoryData1.Delete;
end;
RxMemoryData1.Prior;
end;
//end;
RxMemoryData1.EnableControls;
fBaseFormDoc3.dsoRigheDoc.DataSet.EnableControls;
fBaseFormDoc3.Aggiorna_IVA_Totale;
fBaseFormDoc3.Calcola_Totali;

end;

procedure TfLettBarcode.BitBtn1Click(Sender: TObject);
begin
BitBtn1.Visible := False;
tipo:=1;
SetCom;
ApdComPort1.open := true;
end;

procedure TfLettBarcode.SetCom;
begin
 dmodAz.ibTabPersAz.Open;
 dmodAz.ibTabPersAz.First;
 ApdComPort1.ComNumber:=StrToInt(dmodAz.ibTabPersAzCOMPORT.AsString);
 ApdComPort1.Baud:=StrToInt(dmodAz.ibTabPersAzBAUDRATE.AsString);
 ApdComPort1.DataBits:=StrToInt(dmodAz.ibTabPersAzDATABITS.AsString);
 ApdComPort1.StopBits:=StrToInt(dmodAz.ibTabPersAzSTOPBITS.AsString);
 dmodAz.ibTabPersAz.close;
// ApdComPort1.Parity:=(dmodAz.ibTabPersAzPARITY.AsString);
// ApdComPort1.RTS
// ApdComPort1.DTR
 dmodAz.ibTabPersAz.Close;
end;

procedure TfLettBarcode.BitBtn3Click(Sender: TObject);
begin
tipo:=2;
SetCom;
ApdComPort1.open := true;
end;

procedure TfLettBarcode.passa2;
VAR
g,k:INTEGER;
FileData: TStringList;
begin
RxMemoryData1.Open;
RxMemoryData1.EmptyTable;
RxMemoryData1.Open;
g:=Memo1.Lines.Count;
for k:=1 to g do
begin
if Copy(Memo1.Lines[k], 1, 1) ='2' then
begin

if not RxMemoryData1.Locate('CODICE',(Trim(Copy(Memo1.Lines[k], 8, 6))),[]) then
begin
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(Memo1.Lines[k], 8, 6));
try
begin
RxMemoryData1.FieldByName('QTA').AsFloat := StrToFloat(trim(Copy(Memo1.Lines[k], 15, 5)));
end
except
RxMemoryData1.FieldByName('QTA').AsFloat :=0;
end;
end
else begin
         RxMemoryData1.Edit;
try
begin
RxMemoryData1.FieldByName('QTA').AsFloat := RxMemoryData1.FieldByName('QTA').AsFloat+
        StrToFloat(trim(Copy(Memo1.Lines[k], 15, 5)));
end
except
RxMemoryData1.FieldByName('QTA').AsInteger :=RxMemoryData1.FieldByName('QTA').AsInteger;
end;
end;
         RxMemoryData1.Post;
      end;
      end;

ApdComPort1.Open := false;
BitBtn1.Visible := True;
end;

procedure TfLettBarcode.Button4Click(Sender: TObject);
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,art,Scelta: String;
 boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin
tipo:=1;
scelta:=InputBox('Scegliere Import Fornitore :','1)Pack.List - 2)Tmp.xls - 3)Txt','1');

if scelta = '2' then
begin
 RxMemoryData1.Open;
 RxMemoryData1.EmptyTable;
 RxMemoryData1.Open;
      OpenDialog1.Title := 'Apertura file di documenti Fornitore 2 : TMP.XLS';
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
      if OpenDialog1.Execute then begin
    ADODataSet2.Active := False;
    ADODataSet2.ConnectionString :=
        'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+OpenDialog1.FileName+';Extended Properties=Excel 8.0;Persist Security Info=False';
    ADODataSet2.Active := true;
    ADODataSet2.First;
      while not ADODataSet2.Eof do begin
        if ADODataSet2.FieldByName('ARTNR').AsString <> '' then
        begin
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := ADODataSet2.FieldByName('ARTNR').AsString+
                        ADODataSet2.FieldByName('S1').AsString;
         RxMemoryData1.FieldByName('QTA').AsFloat := ADODataSet2.FieldByName('STUKS').AsFloat;
         RxMemoryData1.FieldByName('PREZZO').AsFloat := ADODataSet2.FieldByName('PRIJS').AsFloat;
         RxMemoryData1.FieldByName('L').AsFloat := ADODataSet2.FieldByName('S1').AsFloat;
         RxMemoryData1.Post;
         end;
         ADODataSet2.Next;
      end;
end;
end;

if scelta = '1' then
begin
 RxMemoryData1.Open;
 RxMemoryData1.EmptyTable;
 RxMemoryData1.Open;
      OpenDialog1.Title := 'Apertura file di documenti Fornitore 1: PackList.XLS';
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
      if OpenDialog1.Execute then begin
    ADODataSet3.Active := False;
    ADODataSet3.ConnectionString :=
        'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+OpenDialog1.FileName+';Extended Properties=Excel 8.0;Persist Security Info=False';
    ADODataSet3.Active := true;
    ADODataSet3.First;
      while not ADODataSet3.Eof do begin
        if ADODataSet3.FieldByName('D').AsString <> '' then
        begin
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := ADODataSet3.FieldByName('E').AsString+
          ADODataSet3.FieldByName('G').AsString;
         RxMemoryData1.FieldByName('QTA').AsFloat := ADODataSet3.FieldByName('C').AsFloat*ADODataSet3.FieldByName('D').AsFloat;
         RxMemoryData1.FieldByName('PREZZO').AsFloat := ADODataSet3.FieldByName('H').AsFloat;
         RxMemoryData1.FieldByName('L').AsFloat := ADODataSet3.FieldByName('G').AsFloat;
         RxMemoryData1.Post;
         end;
         ADODataSet3.Next;
      end;
end;
end;

if scelta = '3' then
begin
 RxMemoryData1.Open;
 RxMemoryData1.EmptyTable;
 RxMemoryData1.Open;
 FileData := TStringList.Create;
   try
      OpenDialog1.Title := 'Apertura file di documenti';
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
      if OpenDialog1.Execute then begin
      FileData.Clear;
      FileData.LoadFromFile(OpenDialog1.FileName);
      for i := 0 to FileData.Count - 1 do begin
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 49, 6))+
            Trim(Copy(FileData.Strings[i], 91, 3));

         RxMemoryData1.FieldByName('QTA').AsInteger := StrToInt(trim(Copy(FileData.Strings[i], 13, 7)))*
            StrToInt(trim(Copy(FileData.Strings[i], 20, 7)));
         RxMemoryData1.FieldByName('PREZZO').AsFloat := StrToFloat(trim(Copy(FileData.Strings[i], 108, 4))+
             ','+trim(Copy(FileData.Strings[i], 113, 2)));
         RxMemoryData1.Post;
      end;
      end;
   finally
      FileData.Free;
   end;
end;

end;

procedure TfLettBarcode.Button5Click(Sender: TObject);
begin
tipo:=2;
RxMemoryData1.Active := True;
 Edit1.SetFocus;
end;

procedure TfLettBarcode.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
begin
  Edit1.SetFocus;
  RxMemoryData1.Append;
  RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(Edit1.Text, 1, 6));
try
begin
RxMemoryData1.FieldByName('QTA').AsFloat := StrToFloat(trim(Copy(Edit1.Text, 8, 5)));
end
except
RxMemoryData1.FieldByName('QTA').AsFloat :=1;
end;
  RxMemoryData1.Post;
  edit1.Text := '-';
  Edit1.SelectAll;
 end;
end;

procedure TfLettBarcode.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
tipo:=1;
end;

procedure TfLettBarcode.Button6Click(Sender: TObject);
begin
PassainDoc;
ApdComPort1.Open := false;
if RxMemoryData1.IsEmpty then
Close;

end;

procedure TfLettBarcode.Button3Click(Sender: TObject);
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,art: String;
 boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin
 RxMemoryData1.Open;
 RxMemoryData1.EmptyTable;
 RxMemoryData1.Open;
 FileData := TStringList.Create;
   try
      OpenDialog1.Title := 'Apertura file di documenti';
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
      if OpenDialog1.Execute then begin
      FileData.Clear;
      FileData.LoadFromFile(OpenDialog1.FileName);
      for i := 0 to FileData.Count - 1 do begin
         RxMemoryData1.Insert;
         RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 13));

try
x:=length(FloatToStr((StrToFloat(RxMemoryData1.FieldByName('CODICE').AsString))));
if x =8 then
RxMemoryData1.FieldByName('CODICE').AsString := Trim(Copy(FileData.Strings[i], 1, 7));
except
end;
         RxMemoryData1.FieldByName('QTA').AsFloat := StrToFloat(trim(Copy(FileData.Strings[i], 14, 11)));
         RxMemoryData1.FieldByName('PREZZO').AsFloat := StrToFloat(trim(Copy(FileData.Strings[i], 25, 7)));
         RxMemoryData1.FieldByName('A').AsString := (trim(Copy(FileData.Strings[i], 28, 29)));
         RxMemoryData1.FieldByName('B').AsString := (trim(Copy(FileData.Strings[i], 58, 29)));
         RxMemoryData1.FieldByName('C').AsString := (trim(Copy(FileData.Strings[i], 88, 29)));
         RxMemoryData1.Post;

      end;
      end;
   finally
      FileData.Free;
   end;
if FileExists(OpenDialog1.FileName) then
//if MessageDlg('Vuoi Cancellare il file ' + ExtractFileName(OpenDialog1.FileName) + '?'), mtConfirmation, [mbYes, mbNo]) = IDYes then
//    DeleteFile(OpenDialog1.FileName);
    DeleteFile(OpenDialog1.FileName);
end;

procedure TfLettBarcode.Button8Click(Sender: TObject);
begin
fCodAgg:=TfCodAgg.Create(Self);
fCodAgg.ShowModal;
fCodAgg.Free;
end;

procedure TfLettBarcode.Button7Click(Sender: TObject);
begin
fArticoli:=TfArticoli.Create(Self);
//bCanClose:=True;
fArticoli.boolVendita:=True;
fArticoli.ChiChiama := 1;
//dmodAz.ibTab_Articoli.Locate('CODICE_ARTICOLO',f,[]);
fArticoli.ShowModal;
fArticoli.Free;


end;

procedure TfLettBarcode.Button9Click(Sender: TObject);
begin
PassainDoc2;
ApdComPort1.Open := false;
if RxMemoryData1.IsEmpty then
Close;
end;

procedure TfLettBarcode.passainDoc2;
var
 FileData: TStringList;
 x,i, iNRiga,intID_Doc: integer;
 strTipo_Serv,strCodDep,strCodArt,art: String;
 boolDoc_Vendita: Boolean;
 dSC1,dSC2,dSC,imb: Double;
begin
if RxMemoryData1.IsEmpty then exit;
boolDoc_Vendita:=fBaseFormDoc3.boolVendita;
 strCodDep:=fBaseFormDoc3.LookNostrDepCod.KeyValue;

iNRiga:=1;
RxMemoryData1.DisableControls;
RxMemoryData1.Last;
fBaseFormDoc3.dsoRigheDoc.DataSet.DisableControls;

  If (fBaseFormDoc3.dsoRigheDoc.DataSet.IsEmpty)
   Then iNRiga:=1
   Else Begin
         fBaseFormDoc3.dsoRigheDoc.DataSet.Last;
         iNRiga:=fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
        End;
intID_Doc:=fBaseFormDoc3.dsoDocumento.dataset.FieldByName('ID_Documento').AsInteger;
while not RxMemoryData1.Bof do
begin
fBaseFormDoc3.nuovissimo := True;
strTipo_Serv:='ARTICOLO';
iNRiga:=1+fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('NUM_RIGA_ID').AsInteger;
imb:=1;
try
x:=length(FloatToStr((StrToFloat(RxMemoryData1.FieldByName('CODICE').AsString))));
if x =8 then
strcodart := Trim(Copy(RxMemoryData1.FieldByName('CODICE').AsString, 1, 7))
else
strcodart :=RxMemoryData1.FieldByName('CODICE').AsString;
except
strcodart :=RxMemoryData1.FieldByName('CODICE').AsString;
end;
fBaseFormDoc3.IBQuery2.close;
fBaseFormDoc3.IBQuery2.ParamByName('a').AsString := UpperCase(strcodart);
fBaseFormDoc3.IBQuery2.open;

if fBaseFormDoc3.IBQuery2.IsEmpty then
begin
fBaseFormDoc3.IBQuery5.Close;
fBaseFormDoc3.IBQuery5.ParamByName('a').AsString := UpperCase(strcodart);
fBaseFormDoc3.IBQuery5.Open;
if not fBaseFormDoc3.IBQuery5.IsEmpty then
begin
art :=fBaseFormDoc3.IBQuery5.fieldbyname('codice_articolo').AsString;
imb := fBaseFormDoc3.IBQuery5.fieldbyname('quantita').AsFloat;
fBaseFormDoc3.IBQuery2.close;
fBaseFormDoc3.IBQuery2.ParamByName('a').AsString := art;
fBaseFormDoc3.IBQuery2.open;
end;
end;

if not (fBaseFormDoc3.IBQuery2.IsEmpty) then
begin
With fBaseFormDoc3.IBQuery2 do
Begin
if fBaseFormDoc3.dsoRigheDoc.DataSet.Locate('CODICE_ARTICOLO',fieldbyname('CODICE_ARTICOLO').AsString,[loCaseInsensitive, loPartialKey]) then
begin
fBaseFormDoc3.dsoRigheDoc.DataSet.edit;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat :=
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat -
RxMemoryData1.fieldbyname('QTA').AsFloat;
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;
fBaseFormDoc3.dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=
fBaseFormDoc3.dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat-
RxMemoryData1.fieldbyname('QTA').AsFloat*imb;

{
if tipo = 2 then
begin
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat :=
fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QTA_UM').AsFloat -
RxMemoryData1.fieldbyname('QTA').AsFloat/1000;

fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('FATTCONV').AsFloat :=imb;

fBaseFormDoc3.dsoRigheDoc.DataSet.fieldByName('QUANTITA').asfloat:=(RxMemoryData1.fieldbyname('QTA').AsFloat/1000)*imb;
end;
}

try
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat:=
      fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('QUANTITA').AsFloat *
  fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('COSTO').AsFloat;
//      dsoDet_Doc.DataSet.FieldByName('COSTO').AsFloat;

 Except
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat:=0;
 End;

 Try

   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('C').AsString :=RxMemoryData1.fieldbyname('L').AsString;

   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat;

   dSC1 := fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat/100;
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC1;
   dSC2 := fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat*fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat/100;
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC2;
   dSC  := fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat;
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
     fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat-dSC;
 Except
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO1').AsFloat:=0;
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO2').AsFloat:=0;
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('SCONTO_EQ').AsFloat:=0;
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat:=
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO').AsFloat;
 End;
  Try
     Begin
      fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsFloat:=
         fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat +
         fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat * fieldByname('CODICE_IVA_ID').AsInteger
                /100;
     End;
  Except
   fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('importo_con_iva').AsFloat:=fBaseFormDoc3.dsoRigheDoc.DataSet.FieldByName('IMPORTO_SCONTO').AsFloat;
   Beep;
  End;

end;
end;
RxMemoryData1.Delete;
end;
RxMemoryData1.Prior;
end;
//end;
RxMemoryData1.EnableControls;
fBaseFormDoc3.dsoRigheDoc.DataSet.EnableControls;
fBaseFormDoc3.Aggiorna_IVA_Totale;
fBaseFormDoc3.Calcola_Totali;

end;

end.
