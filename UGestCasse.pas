unit UGestCasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, IBCustomDataSet, DBSumLst, RxMemDS, IBQuery, OoMisc,
  AdPort, OleCtrls, COECRCOMLib_TLB, ComCtrls, StdCtrls, CurrEdit, Grids,
  DBGrids, ExtCtrls, Mask, ToolEdit,IniFiles;

type
  TfGestCasse = class(TForm)
    Label20: TLabel;
    Label21: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    Edit6: TEdit;
    Button3: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Button4: TButton;
    Edit9: TEdit;
    Button6: TButton;
    DateEdit1: TDateEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label24: TLabel;
    DBGrid2: TDBGrid;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    Button5: TButton;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    Edit10: TEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    CurrencyEdit11: TCurrencyEdit;
    CurrencyEdit12: TCurrencyEdit;
    CurrencyEdit13: TCurrencyEdit;
    Button7: TButton;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    Button8: TButton;
    Edit11: TEdit;
    Panel2: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    Button9: TButton;
    Button10: TButton;
    ComboBox3: TComboBox;
    CoEcrCom1: TCoEcrCom;
    ApdComPort1: TApdComPort;
    IBQuery1: TIBQuery;
    IBDataSet1: TIBDataSet;
    IBDataSet1PK_CODICE: TIntegerField;
    IBDataSet1DATA_MOV: TDateField;
    IBDataSet1CONTANTE: TFloatField;
    IBDataSet1CREDITI: TFloatField;
    IBDataSet1ASSEGNI: TFloatField;
    IBDataSet1BUONI: TFloatField;
    IBDataSet1CARTACRED: TFloatField;
    IBDataSet1VALUTA1: TFloatField;
    IBDataSet1VALUTA2: TFloatField;
    IBDataSet1VALUTA3: TFloatField;
    IBDataSet1VALUTA4: TFloatField;
    IBDataSet1UF1: TFloatField;
    IBDataSet1UF2: TFloatField;
    IBDataSet1UF3: TFloatField;
    IBDataSet1CHIP_CARD: TFloatField;
    IBDataSet1NETTE: TFloatField;
    IBDataSet1LORDE: TFloatField;
    IBDataSet1CONTANTI: TFloatField;
    IBDataSet1CREDITO: TFloatField;
    IBDataSet1INASSEGNI: TFloatField;
    IBDataSet1INBUONI: TFloatField;
    IBDataSet1CARTE_CREDITO: TFloatField;
    IBDataSet1RICEVUTE_FISCALI: TFloatField;
    IBDataSet1FATTURE_RICEVUTE: TFloatField;
    IBDataSet1FATTURE: TFloatField;
    IBDataSet1PRELIEVI: TFloatField;
    IBDataSet1VERSAMENTI: TFloatField;
    IBDataSet1FONDO_CASSA: TFloatField;
    IBDataSet1ACC1: TFloatField;
    IBDataSet1ACC2: TFloatField;
    IBDataSet1ACC_CHIP_CARD: TFloatField;
    IBDataSet1UF4: TFloatField;
    IBDataSet1SCONTRINI: TFloatField;
    IBDataSet1CLIENTI_SERVITI: TFloatField;
    IBDataSet1RESI: TFloatField;
    IBDataSet1CORREZIONI: TFloatField;
    IBDataSet1SCONTI: TFloatField;
    IBDataSet1MAGGIORAZIONI: TFloatField;
    IBDataSet1TOTAL_VOIDS: TFloatField;
    IBDataSet1STORNI: TFloatField;
    IBDataSet1UF5: TFloatField;
    IBDataSet1NON_RISCOSSI: TFloatField;
    IBDataSet1SC_ASS_ITEM: TFloatField;
    IBDataSet1PERCA_SU_ITEM: TFloatField;
    IBDataSet1PERCB_SU_ITEM: TFloatField;
    IBDataSet1SCONTI_SUBT: TFloatField;
    IBDataSet1PERCA_SUBTOT: TFloatField;
    IBDataSet1PERCB_SUBTOT: TFloatField;
    IBDataSet1MAGG_ITEM: TFloatField;
    IBDataSet1MAGG_SUBT: TFloatField;
    IBDataSet1UF6: TFloatField;
    IBDataSet1TOT_RESTI: TFloatField;
    IBDataSet1ENTRANCE_TICKETS: TFloatField;
    IBDataSet1UF7: TFloatField;
    IBDataSet1TAVOLI_ANNULLATI: TFloatField;
    IBDataSet1TOT_COMM_OPERAT: TFloatField;
    IBDataSet1NUMCASSA: TIntegerField;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1Field1: TStringField;
    RxMemoryData1Field2: TFloatField;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    DataSource2: TDataSource;
    DBSumList1: TDBSumList;
    IBDataSet2: TIBDataSet;
    IBDataSet2PK_CODICE: TIntegerField;
    IBDataSet2DATA_MOV: TDateField;
    IBDataSet2NUMCASSA: TIntegerField;
    IBDataSet2QTA: TFloatField;
    IBDataSet2VALORE: TFloatField;
    IBDataSet2DESCR: TIBStringField;
    IBDataSet2PASSATO: TIBStringField;
    IBDataSet2CODICE: TIBStringField;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery2CODICE: TIBStringField;
    IBQuery2F_1: TFloatField;
    IBQuery2F_2: TFloatField;
    ADOQuery2: TADOQuery;
    ADOQuery2PK_CODICE: TAutoIncField;
    ADOQuery2DATA_MOV: TDateTimeField;
    ADOQuery2NUMCASSA: TSmallintField;
    ADOQuery2QTA: TBCDField;
    ADOQuery2VALORE: TBCDField;
    ADOQuery2CODICE: TWideStringField;
    ADOQuery2PASSATO: TWideStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1PK_CODICE: TAutoIncField;
    ADOQuery1DATA_MOV: TDateTimeField;
    ADOQuery1CONTANTE: TBCDField;
    ADOQuery1CREDITI: TBCDField;
    ADOQuery1ASSEGNI: TBCDField;
    ADOQuery1BUONI: TBCDField;
    ADOQuery1CARTACRED: TBCDField;
    ADOQuery1VALUTA1: TBCDField;
    ADOQuery1VALUTA2: TBCDField;
    ADOQuery1VALUTA3: TBCDField;
    ADOQuery1UF1: TBCDField;
    ADOQuery1UF2: TBCDField;
    ADOQuery1UF3: TBCDField;
    ADOQuery1CHIP_CARD: TBCDField;
    ADOQuery1NETTE: TBCDField;
    ADOQuery1LORDE: TBCDField;
    ADOQuery1CONTANTI: TBCDField;
    ADOQuery1CREDITO: TBCDField;
    ADOQuery1INASSEGNI: TBCDField;
    ADOQuery1INBUONI: TBCDField;
    ADOQuery1CARTE_CREDITO: TBCDField;
    ADOQuery1RICEVUTE_FISCALI: TBCDField;
    ADOQuery1FATTURE_RICEVUTE: TBCDField;
    ADOQuery1FATTURE: TBCDField;
    ADOQuery1PRELIEVI: TBCDField;
    ADOQuery1VERSAMENTI: TBCDField;
    ADOQuery1FONDO_CASSA: TBCDField;
    ADOQuery1ACC1: TBCDField;
    ADOQuery1ACC2: TBCDField;
    ADOQuery1ACC_CHIP_CARD: TBCDField;
    ADOQuery1UF4: TBCDField;
    ADOQuery1SCONTRINI: TBCDField;
    ADOQuery1CLIENTI_SERVITI: TBCDField;
    ADOQuery1RESI: TBCDField;
    ADOQuery1CORREZIONI: TBCDField;
    ADOQuery1SCONTI: TBCDField;
    ADOQuery1MAGGIORAZIONI: TBCDField;
    ADOQuery1TOTAL_VOIDS: TBCDField;
    ADOQuery1STORNI: TBCDField;
    ADOQuery1UF5: TBCDField;
    ADOQuery1NON_RISCOSSI: TBCDField;
    ADOQuery1SC_ASS_ITEM: TBCDField;
    ADOQuery1PERCA_SU_ITEM: TBCDField;
    ADOQuery1PERCB_SU_ITEM: TBCDField;
    ADOQuery1SCONTI_SUBT: TBCDField;
    ADOQuery1PERCA_SUBTOT: TBCDField;
    ADOQuery1PERCB_SUBTOT: TBCDField;
    ADOQuery1MAGG_ITEM: TBCDField;
    ADOQuery1MAGG_SUBT: TBCDField;
    ADOQuery1UF6: TBCDField;
    ADOQuery1TOT_RESTI: TBCDField;
    ADOQuery1ENTRANCE_TICKETS: TBCDField;
    ADOQuery1UF7: TBCDField;
    ADOQuery1TAVOLI_ANNULLATI: TBCDField;
    ADOQuery1TOT_COMM_OPERAT: TBCDField;
    ADOQuery1NUMCASSA: TBCDField;
    ADOQuery3: TADOQuery;
    ADOQuery3CODICE: TWideStringField;
    ADOQuery3Expr1001: TBCDField;
    ADOQuery3Expr1002: TBCDField;
    ADOConnection1: TADOConnection;
    IBQuery5: TIBQuery;
    IBQuery5CODICE_ARTICOLO: TIBStringField;
    IBQuery5CLI_FOR_ID: TIntegerField;
    IBQuery5CODICE_AGGIUNTIVO: TIBStringField;
    IBQuery5TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField;
    IBQuery5QUANTITA: TFloatField;
    IBQuery5DESCR: TIBStringField;
    ADOQuery4: TADOQuery;
    WideStringField1: TWideStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    Button11: TButton;
    Button12: TButton;
    procedure CoEcrCom1FileExtEnq(Sender: TObject; EcrNum,
      ArtType: Integer; const ArtCode: WideString; Qty: Double;
      var pRecType: Integer; var pRecord: WideString);
    procedure CoEcrCom1FileExtUpd(Sender: TObject; EcrNum,
      ArtType: Integer; const ArtCode: WideString; Qty, Value: Double);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBSumList1SumListChanged(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
        cassax,Y,M,D,DATA,Tipo : string;
        result : WideString;
        Year, Month, Day : Word;
        Procedure PASSAFILE_AZZ;
        Procedure APRI_CONN;

  public
    { Public declarations }
  end;

var
  fGestCasse: TfGestCasse;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfGestCasse.CoEcrCom1FileExtEnq(Sender: TObject; EcrNum,
  ArtType: Integer; const ArtCode: WideString; Qty: Double;
  var pRecType: Integer; var pRecord: WideString);
var
result : WideString;
sr,e1,e2,e3,e4:string;
ix:integer;
begin
Edit2.Text :='';
Edit2.Text := floattoStr(EcrNum) + ' : ' + 'F Tipo=' + inttostr(ArtType) + ' Cod=' + ArtCode + ' Qty=' + floattoStr(Qty);

if Tipo = '1' then
begin
IBQuery1.Active := False;
IBQuery1.ParamByName('CODART').AsString :=ArtCode;
IBQuery1.Active := True;
if IBQuery1.IsEmpty then
begin
IBQuery5.Close;
IBQuery5.ParamByName('a').AsString := ArtCode;
IBQuery5.Open;
if IBQuery5.IsEmpty then exit
else
begin
IBQuery1.close;
IBQuery1.ParamByName('CODART').AsString := IBQuery5.Fieldbyname('CODICE_ARTICOLO').AsString;
IBQuery1.open;
end;
end;
if not VarIsNull(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger) then
  E1 := IntToStr(IBQuery1.Fieldbyname('NUM_REPARTO').AsInteger)
  else
  E1 := '1';

if  (IBQuery1.Fieldbyname('ID_OFFERTA').AsInteger>0) then
  E3 := IBQuery1.Fieldbyname('ID_OFFERTA').AsString
  else
  E3 := '0';

E4 := FloatToStr(StrToFloat(FormatFloat('0.00',IBQuery1.Fieldbyname('PREZZO_IVATO').AsFloat))*100);


sr := ArtCode;
//sR := sR + ', ''ARTICOLO DA PC'', 4, 0, 2, 15500, , , ';
sr := sr +', '''+ ibquery1.fieldbyname('Descr').AsString+''', '+E1+', '+E3+', '+'1, '+E4+', , ,';
end;

if Tipo = '2' then
sR := sR + ', ''ARTICOLO DA PC'', 4, 0, 2, 15500, , , ';

pRecType := 0;
pRecord := sR;
edit5.Text := sr;

end;


procedure TfGestCasse.CoEcrCom1FileExtUpd(Sender: TObject; EcrNum,
  ArtType: Integer; const ArtCode: WideString; Qty, Value: Double);
  var
  x:string;
  F: TextFile;
  begin

edit6.Text :=' Cod=' + ArtCode + ' Q.tà=' + FloatToStr(Qty) + ' Val=' + FloatToStr(Value);

 x:=ExtractFilePath(Application.Exename)+'Movim.dat';
  AssignFile(F, x);
 if FileExists(x) then
  append(F)
  else
  Rewrite(F);
  Writeln(F, dateedit1.text+','+ComboBox1.Text+','+ ArtCode + ',' + FloatToStr(Qty)+','+FloatToStr(Value/100));
  CloseFile(F);

if Tipo = '1' then
begin
ibdataset2.Open;
ibdataset2.insert;
ibdataset2.FieldByName('DATA_MOV').asdatetime :=dateedit1.Date;
ibdataset2.FieldByName('NUMCASSA').AsInteger :=strtoint(ComboBox1.Text);
ibdataset2.FieldByName('VALORE').asfloat :=Value/100;
ibdataset2.FieldByName('QTA').asfloat :=qty;
ibdataset2.FieldByName('CODICE').AsString :=ArtCode;
ibdataset2.post;
end;
end;


procedure TfGestCasse.FormShow(Sender: TObject);
begin
ApdComPort1.Open := True;
ApdComPort1.Open := False;

dateedit1.Date := now;
dateedit2.Date := now;
dateedit3.Date := now;
With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
Try
cassax := ReadString('INFO','REG','.');
//tipo:=ReadString('INFO','Type','.');
tipo:='1';
Finally
Free;
End;
edit1.text := 'Port='+cassax+',CURDIR='+''''+ExtractFilePath(Application.Exename)+'''';
edit7.text := 'LEGGI NF=20,FILE='+''''+ExtractFilePath(Application.Exename)+'TOT.DAT'+'''';
edit8.text := 'LEGGI NF=22,FILE='+''''+ExtractFilePath(Application.Exename)+'TOTREP.DAT'+''''+',APPEND';
Edit9.Text:= 'Today is  ' + DateToStr(Date);

DecodeDate(date, Year, Month, Day);
y:=IntToStr(Year);
m:=IntToStr(Month);
d:=IntToStr(Day);
DATA:=d+'-'+M+'-'+y;
ComboBox1.ItemIndex := strtoint(cassax)-1;

if Tipo = '1' then
begin
ibdataset1.Open;
IBDataSet2.Open;
IBQuery2.Open;
end;
end;


procedure TfGestCasse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ApdComPort1.Open := False;
CoEcrCom1.Close();
end;

procedure TfGestCasse.Button1Click(Sender: TObject);
var
result : WideString;
sr:string;
begin
CoEcrCom1.OperatingMode := 1;
if (CoEcrCom1.Open(Edit1.Text)) = 0 then
begin
Label14.Visible := True;
label14.Caption := 'Connessione ECR Aperta'
end
else
begin
Label14.Visible := True;
label14.Caption := 'E R R O R E  connessione ECR';
ShowMessage('E R R O R E  connessione ECR!!');
Label14.Visible := False;
Exit;
end;

label16.Caption := 'Matricola : '+CoEcrCom1.EcrConfStr(1);

CoEcrCom1.EcrCmd(('@scontrino.ecr'),result);
CoEcrCom1.Close();
label14.Caption := 'Fine Connessione ECR' ;
end;


procedure TfGestCasse.Button2Click(Sender: TObject);
var
result : WideString;
begin
APRI_CONN;
label16.Caption := 'Matricola : '+CoEcrCom1.EcrConfStr(1);

CoEcrCom1.EcrCmd(('@INTEST.TXT'),result);
CoEcrCom1.Close();
label14.Caption := 'Fine Connessione ECR' ;

end;

procedure TfGestCasse.Button3Click(Sender: TObject);
begin
APRI_CONN;
edit7.text := 'LEGGI NF=20,FILE='+''''+ExtractFilePath(Application.Exename)+DATA+'_TOT'+'.dat'+'''';
edit8.text := 'LEGGI NF=22,FILE='+''''+ExtractFilePath(Application.Exename)+DATA+'.dat'+'''';
CoEcrCom1.EcrCmd((edit7.Text),result);
CoEcrCom1.EcrCmd((edit8.Text),result);
CoEcrCom1.Close();
end;

procedure TfGestCasse.Button4Click(Sender: TObject);
begin

edit7.text := 'LEGGI NF=20,FILE='+''''+ExtractFilePath(Application.Exename)+DATA+'_TOT'+'.dat'+'''';
edit8.text := 'LEGGI NF=22,FILE='+''''+ExtractFilePath(Application.Exename)+DATA+'.dat'+''''+',APPEND';

APRI_CONN;
CoEcrCom1.EcrCmd((edit8.Text),result);
CoEcrCom1.EcrCmd((edit7.Text),result);

CoEcrCom1.EcrCmd(('AZZGIO'),result);
CoEcrCom1.EcrCmd(('CHIAVE REG'),result);
CoEcrCom1.Close();
PASSAFILE_AZZ;

end;

procedure TfGestCasse.Button6Click(Sender: TObject);
var FileData: TStringList;
    r, i,l,j,g,op: integer;
    x,y:string;
    OldDecimalSeparator : Char;
    po : double;
begin
OldDecimalSeparator := DecimalSeparator;
DecimalSeparator := '.';
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
      for i := FileData.Count - 1 downto 0 do
      begin
         RxMemoryData1.Insert;
l:= length(FileData.Strings[i]);
g:=0;
while not g <> l do begin
x:= (Copy(FileData.Strings[i], l-g, 1));
if x='=' then begin
j:=l-g;
break;
end;
g:= g+1;
end;
y:=(Copy(FileData.Strings[i],j+1,l));
         RxMemoryData1.FieldByName('1').AsString := (Copy(FileData.Strings[i],j+1,l));
         val(Copy(FileData.Strings[i],j+1,l),po,op);
         RxMemoryData1.FieldByName('2').Asfloat := po;
         RxMemoryData1.post;
   end;
   end;
  finally
    FileData.Free;
  end;
DecimalSeparator := OldDecimalSeparator;

ibdataset1.Open;
RxMemoryData1.First;
ibdataset1.insert;
ibdataset1.FieldByName('DATA_MOV').asdatetime :=dateedit1.Date;
ibdataset1.FieldByName('NUMCASSA').AsInteger :=strtoint(ComboBox1.Text);
//StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
//
g:=0;
while not RxMemoryData1.eof do begin
ibdataset1.fields[g+2].asfloat :=StrToFloat(FormatFloat('0.00',RxMemoryData1.FieldByName('2').Asfloat));
g:=g+1;
RxMemoryData1.Next;
end;
ibdataset1.post;
end;

Procedure TfGestCasse.PASSAFILE_AZZ;
var FileData: TStringList;
    r, i,l,j,g,op: integer;
    x,y:string;
    OldDecimalSeparator : Char;
    po : double;
begin
OldDecimalSeparator := DecimalSeparator;
DecimalSeparator := '.';
 RxMemoryData1.Open;
 RxMemoryData1.EmptyTable;
 RxMemoryData1.Open;
   FileData := TStringList.Create;
   try
      FileData.Clear;
      FileData.LoadFromFile(ExtractFilePath(Application.Exename)+DATA+'_TOT'+'.dat');
      for i := FileData.Count - 1 downto 0 do
      begin
         RxMemoryData1.Insert;
l:= length(FileData.Strings[i]);
g:=0;
while not g <> l do begin
x:= (Copy(FileData.Strings[i], l-g, 1));
if x='=' then begin
j:=l-g;
break;
end;
g:= g+1;
end;
y:=(Copy(FileData.Strings[i],j+1,l));
         RxMemoryData1.FieldByName('1').AsString := (Copy(FileData.Strings[i],j+1,l));
         val(Copy(FileData.Strings[i],j+1,l),po,op);
         RxMemoryData1.FieldByName('2').Asfloat := po;
         RxMemoryData1.post;
         end;
  finally
    FileData.Free;
  end;
DecimalSeparator := OldDecimalSeparator;
if Tipo = '1' then
begin
IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.Add('select * from CASSA_TOT_AZZ');
IBDataSet1.SelectSQL.Add('order by pk_codice,DATA_MOV');
IBDataSet1.Open;
RxMemoryData1.First;
ibdataset1.insert;
ibdataset1.FieldByName('DATA_MOV').asdatetime :=dateedit1.Date;
ibdataset1.FieldByName('NUMCASSA').AsInteger :=strtoint(cassax);
//StrToDateTime(FormatDateTime('dd/mm/yyyy',Now));
//
g:=0;
while not RxMemoryData1.eof do begin
ibdataset1.fields[g+2].asfloat :=StrToFloat(FormatFloat('0.00',RxMemoryData1.FieldByName('2').Asfloat));
g:=g+1;
RxMemoryData1.Next;
end;
ibdataset1.post;
end;
end;


procedure TfGestCasse.Button5Click(Sender: TObject);
begin
IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.Add('select * from CASSA_TOT_AZZ');
IBDataSet1.SelectSQL.Add('where (data_mov >=:a) and (data_mov <=:b)');
IBDataSet1.SelectSQL.Add('order by pk_codice,DATA_MOV');

IBDataSet1.ParamByName('a').AsDateTime := DateEdit2.Date;
IBDataSet1.ParamByName('b').AsDateTime := DateEdit3.Date;

IBDataSet1.Open;

end;

procedure TfGestCasse.DBSumList1SumListChanged(Sender: TObject);
begin
CurrencyEdit1.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[0].SumValue);
currencyEdit2.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[1].SumValue);
CurrencyEdit3.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[2].SumValue);
CurrencyEdit4.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[3].SumValue);
CurrencyEdit5.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[4].SumValue);
CurrencyEdit6.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[5].SumValue);
CurrencyEdit7.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[6].SumValue);
EDIT10.Text := FormatFloat('#,##',DBSumList1.SumCollection.Items[7].SumValue);
CurrencyEdit8.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[8].SumValue);
currencyEdit9.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[9].SumValue);
CurrencyEdit10.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[10].SumValue);
CurrencyEdit11.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[11].SumValue);
CurrencyEdit12.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[12].SumValue);
CurrencyEdit13.Text := FormatFloat('#,##0.00',DBSumList1.SumCollection.Items[13].SumValue);

end;

procedure TfGestCasse.Button8Click(Sender: TObject);
begin
APRI_CONN;

end;

procedure TfGestCasse.APRI_CONN;
begin
edit1.text := 'Port='+ComboBox1.Text +',CURDIR='+''''+ExtractFilePath(Application.Exename)+'''';
CoEcrCom1.Close();
//CoEcrCom1.OperatingMode := 1;
CoEcrCom1.OperatingMode := 0;
//CoEcrCom1.EventMask:=eventmask();
//Abilita la traduzione dei messaggi data-collection Y
CoEcrCom1.EnableTradDC:=true;

if (CoEcrCom1.Open(Edit1.Text)) = 0 then
begin
Label14.Visible := True;
label14.Caption := 'Connessione ECR Aperta'
end
else
begin
Label14.Visible := True;
label14.Caption := 'E R R O R E  connessione ECR';
ShowMessage('E R R O R E  connessione ECR!!');
Label14.Visible := False;
Exit;
end;
label16.Caption := CoEcrCom1.EcrConfStr(1);
CoEcrCom1.EventMask := 255;
edit11.Text := inttostr(CoEcrCom1.EventMask);
end;

procedure TfGestCasse.Button11Click(Sender: TObject);
var
a1,a2,a3,a4,a5,a6,a7,a8,a9 : string;
begin
APRI_CONN;
a1:='LEGGI NF=1,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',SETPROG';  //Leggi REPARTI
a2:='LEGGI NF=2,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG';  //;Leggi PLU
a3:='LEGGI NF=3,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG';  //;Leggi IVA
a4:='LEGGI NF=4,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG';  //;Leggi INTESTAZIONE
a5:='LEGGI NF=6,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG';  //;Leggi OPZIONI
a6:='LEGGI NF=7,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG';  //;Leggi VALUTE
a7:='LEGGI NF=8,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG';  //;Leggi GRUPPI
a8:='LEGGI NF=9,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG';  //;Leggi SUBTENDERS
a9:='LEGGI NF=10,FILE='+''''+ExtractFilePath(Application.Exename)+'ECR.dat'+''''+',APPEND,SETPROG'; //;Leggi TASTIERA

CoEcrCom1.EcrCmd((a1),result);
CoEcrCom1.EcrCmd((a2),result);
CoEcrCom1.EcrCmd((a3),result);
CoEcrCom1.EcrCmd((a4),result);
CoEcrCom1.EcrCmd((a5),result);
CoEcrCom1.EcrCmd((a6),result);
CoEcrCom1.EcrCmd((a7),result);
CoEcrCom1.EcrCmd((a8),result);
CoEcrCom1.EcrCmd((a9),result);
CoEcrCom1.Close();


end;

procedure TfGestCasse.Button12Click(Sender: TObject);
var
a1 : string;
begin
a1 := '@'+ExtractFilePath(Application.Exename)+'ECR.dat';
APRI_CONN;
CoEcrCom1.EcrCmd((a1),result);
CoEcrCom1.Close();
end;

end.
