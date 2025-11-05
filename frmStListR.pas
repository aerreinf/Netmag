unit frmStListR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RXSpin, ExtCtrls, Db, IBCustomDataSet, IBQuery, Mask,
  ToolEdit, CurrEdit, RxMemDS, IBTable, Grids, DBGrids, ComCtrls,
  Menus, FR_Desgn, DBCtrls, FR_Class;

type
  TFStListR = class(TForm)
    rgStampa: TRadioGroup;
    Panel1: TPanel;
    Label7: TLabel;
    List: TRxSpinEdit;
    Button1: TButton;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Ricar: TRxSpinEdit;
    IBQuery1: TIBQuery;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1PREZZO_BASE: TFloatField;
    IBQuery1UN_MIS2_VAL: TIntegerField;
    IBQuery1Gruppo: TStringField;
    IBQuery1Marca: TStringField;
    IBQuery1Famiglia: TStringField;
    IBQuery1Tipo: TStringField;
    frReport1: TfrReport;
    IBQuery2: TIBQuery;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2DESCR1: TIBStringField;
    IBQuery2DESCR2: TIBStringField;
    IBQuery2Prezzo_Base: TFloatField;
    IBQuery2Conf: TIntegerField;
    IBQuery2Gruppo: TStringField;
    RadioGroup2: TRadioGroup;
    RxCalcEdit1: TRxCalcEdit;
    RxCalcEdit2: TRxCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1Codice: TStringField;
    RxMemoryData1Descrizione: TStringField;
    RxMemoryData1Tg1: TStringField;
    RxMemoryData1Tg2: TStringField;
    RxMemoryData1Tg3: TStringField;
    RxMemoryData1Tg4: TStringField;
    RxMemoryData1Tg5: TStringField;
    RxMemoryData1Tg6: TStringField;
    RxMemoryData1Tg7: TStringField;
    RxMemoryData1Tg8: TStringField;
    RxMemoryData1Tg9: TStringField;
    RxMemoryData1Tg10: TStringField;
    RxMemoryData1Gruppo: TStringField;
    RxMemoryData1Col1: TStringField;
    RxMemoryData1Col2: TStringField;
    RxMemoryData1Col3: TStringField;
    RxMemoryData1Col4: TStringField;
    RxMemoryData1Col5: TStringField;
    RxMemoryData1Col6: TStringField;
    RxMemoryData1Col7: TStringField;
    RxMemoryData1Col8: TStringField;
    RxMemoryData1Col9: TStringField;
    RxMemoryData1Col10: TStringField;
    IBColori: TIBTable;
    DataSource1: TDataSource;
    IBTaglie2: TIBTable;
    DsMemory: TDataSource;
    Button2: TButton;
    DBGrid1: TDBGrid;
    RxMemoryData1Euro: TFloatField;
    RxMemoryData1Prezzo: TFloatField;
    ProgressBar1: TProgressBar;
    Label4: TLabel;
    IBColoriCOLORE: TIBStringField;
    IBColoriDESCR: TIBStringField;
    IBColoriCODICE_ARTICOLO: TIBStringField;
    RxMemoryData1Conf: TIntegerField;
    Edit3: TEdit;
    Label5: TLabel;
    IBGruppo: TIBTable;
    IBQuery1PREZZO_LISTINO: TFloatField;
    IBQuery1RIC: TFloatField;
    IBQuery1CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery1CAT_ART_TIPO_ID: TIntegerField;
    IBQuery1CAT_ART_MARCA_ID: TIntegerField;
    frDesigner1: TfrDesigner;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    IBTaglie2TAGLIA: TFloatField;
    IBTaglie2DESCR: TIBStringField;
    IBTaglie2CODICE_ARTICOLO: TIBStringField;
    IBAss: TIBTable;
    RxMemoryData1ASS1: TIntegerField;
    RxMemoryData1ASS2: TIntegerField;
    RxMemoryData1ASS3: TIntegerField;
    RxMemoryData1ASS4: TIntegerField;
    RxMemoryData1ASS5: TIntegerField;
    RxMemoryData1ASS6: TIntegerField;
    RxMemoryData1ASS7: TIntegerField;
    RxMemoryData1ASS8: TIntegerField;
    RxMemoryData1ASS9: TIntegerField;
    RxMemoryData1ASS10: TIntegerField;
    IBTaglie: TIBQuery;
    IBAss4: TIBQuery;
    DBNavigator1: TDBNavigator;
    Button3: TButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure stampeClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

        i,h,L,V: integer;
        R : Double;
        A : string;
    procedure CreaDati;

  public
    { Public declarations }
  end;

var
  FStListR: TFStListR;

implementation

uses frmuVisTgCol, uAzDM;

{$R *.DFM}

procedure TFStListR.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 1 then
begin
Label8.Enabled := True;
Label9.Enabled := True;
Edit1.Enabled := True;
Edit2.Enabled := True;
end
else
begin
Label8.Enabled := False;
Label9.Enabled := False;
Edit1.Enabled := False;
Edit2.Enabled := False;

end;
end;

procedure TFStListR.Button1Click(Sender: TObject);
begin
CreaDati;

if rgStampa.ItemIndex = 0 then
begin
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'RStampaArticoli.frf');
frReport1.ShowReport;
end;

if rgStampa.ItemIndex = 1 then
begin
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'RStampaArticoliTg.frf');
frReport1.ShowReport;
end;

if rgStampa.ItemIndex = 2 then
begin
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'RStampaListiniTg.frf');
frReport1.ShowReport;
end;

if rgStampa.ItemIndex = 3 then
begin
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'RStampaListiniTgCol.frf');
frReport1.ShowReport;
end;

if rgStampa.ItemIndex = 4 then
begin
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'RStampaListiniTgColAss.frf');
frReport1.ShowReport;
end;

end;

procedure TFStListR.Edit1Click(Sender: TObject);
begin
Edit1.SelectAll;
end;

procedure TFStListR.Edit1Enter(Sender: TObject);
begin
Edit1.SelectAll;
end;

procedure TFStListR.Edit2Click(Sender: TObject);
begin
Edit2.SelectAll;
end;

procedure TFStListR.Edit2Enter(Sender: TObject);
begin
Edit2.SelectAll;
end;

procedure TFStListR.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 1 then
begin
Label2.Enabled := True;
Label3.Enabled := True;
RxCalcEdit1.Enabled := True;
RxCalcEdit2.Enabled := True;
end
else
begin
Label2.Enabled := False;
Label3.Enabled := False;
RxCalcEdit1.Enabled := False;
RxCalcEdit2.Enabled := False;
end;
end;

Procedure TFStListR.CreaDati;
var
itotale1,itotale2,itotale3,itotale4,itotale5,itotale6 : integer;
itotale7,itotale8,itotale9,itotale10 : integer;
begin
RxMemoryData1.DisableControls;
IBAss.Active := True;
if List.AsInteger<6 then
L := 2
else
L := 1;

V := List.AsInteger;
if V < 6 then V := v+6;

R := Ricar.AsInteger;

//Prezzo := PRezzo_base +((V-6)*R))/L;

RxMemoryData1.EmptyTable;
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select A.CODICE_ARTICOLO,A.PREZZO_BASE,A.DESCR,A.UN_MIS2_VAL,B.RIC,');
IBQuery1.SQL.Add('A.CAT_ART_GRUPPO_ID,A.CAT_ART_FAMIGLIA_ID,A.CAT_ART_TIPO_ID,A.CAT_ART_MARCA_ID');
IBQuery1.SQL.Add('from TAB_ARTICOLI A LEFT JOIN TAB_GRUPPO B ON B.CODICE = A.CAT_ART_GRUPPO_ID');
IBQuery1.SQL.Add('Where A.FLAG_ACCESSORIE=''N''');
IBQuery1.SQL.Add('and A.NON_STAMPA_INVENTARIO=''0''');

  if RadioGroup1.ItemIndex = 1 then
begin
IBQuery1.SQL.Add('AND CODICE_ARTICOLO >=:daArticolo AND CODICE_ARTICOLO <=:adArticolo');
IBQuery1.ParamByName('daArticolo').AsString := Edit1.Text;
IBQuery1.ParamByName('adArticolo').AsString := Edit2.Text;
end;
{
  if RadioGroup2.ItemIndex = 1 then
begin
IBQuery1.SQL.Add('AND PREZZO_LISTINO >=:daPrezzo AND PREZZO_LISTINO <=:aPrezzo');
IBQuery1.ParamByName('daPrezzo').AsFloat := StrToFloat(RxCalcEdit1.Text);
IBQuery1.ParamByName('aPrezzo').AsFloat := StrToFloat(RxCalcEdit2.Text);
end;
}
IBQuery1.SQL.Add('Order By CODICE_ARTICOLO');

IBQuery1.Open;
IBColori.Open;
IBTaglie.Open;
RxMemoryData1.Active := True;
IBQuery1.Last;
i :=IBQuery1.RecordCount;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := i;
    ProgressBar1.Step := 1;
Label4.Caption := IntToStr(i);


 i := 1;
while not IBQuery1.Bof do
begin
i := i+1;
ProgressBar1.Stepit;
if (RadioGroup2.ItemIndex = 0) or ((RadioGroup2.ItemIndex = 1) and
   (IBQuery1.FieldbyName('Prezzo_LISTINO').AsFloat>=RxCalcEdit1.Value) and
   (IBQuery1.FieldbyName('Prezzo_LISTINO').AsFloat<=RxCalcEdit2.Value)) then
begin
RxMemoryData1.Insert;
RxMemoryData1.FieldByName('Codice').AsString := IBQuery1.FieldbyName('Codice_Articolo').AsString;
RxMemoryData1.FieldByName('Descrizione').AsString := IBQuery1.FieldbyName('Descr').AsString;
RxMemoryData1.FieldByName('Conf').AsInteger := IBQuery1.FieldbyName('UN_MIS2_VAL').AsInteger;
RxMemoryData1.FieldByName('Prezzo').AsFloat := IBQuery1.FieldbyName('Prezzo_LISTINO').AsFloat;

//RxMemoryData1.FieldByName('Euro').AsFloat := IBQuery1.FieldbyName('Prezzo_LISTINO').AsFloat * (1936.27);

IBColori.First;
h:=1;
A := 'col1';
while not IBColori.eof do
begin
RxMemoryData1.FieldByName(A).AsString := IBColori.FieldbyName('Colore').AsString;
h := h+1;
A := 'Col'+ IntToStr(h);
IBColori.next;
end;

IBTaglie.Close;
IBTaglie.ParamByName('CA').AsString := IBQuery1.FieldbyName('Codice_Articolo').AsString;
IBTaglie.Open;
IBTaglie.First;
h:=1;
A := 'Tg1';
while not IBTaglie.Eof do
begin
RxMemoryData1.FieldByName(A).AsString := IBTaglie.FieldbyName('Descr').AsString;
h := h+1;
A := 'Tg'+ IntToStr(h);
IBTaglie.Next;
end;
////////////////////
if (rgStampa.ItemIndex = 4) or (rgStampa.ItemIndex = 1) then
begin
 iTotale1:=0;
 iTotale2:=0;
 iTotale3:=0;
 iTotale4:=0;
 iTotale5:=0;
 iTotale6:=0;
 iTotale7:=0;
 iTotale8:=0;
 iTotale9:=0;
 iTotale10:=0;
IBAss.First;
 While Not(IBAss.Eof) Do
 Begin
  If Not(IBAss.FieldByName('TAGLIA01').AsString='')
    Then iTotale1:=iTotale1+IBAss.FieldByName('TAGLIA01').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA02').AsString='')
    Then iTotale2:=iTotale2+IBAss.FieldByName('TAGLIA02').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA03').AsString='')
    Then iTotale3:=iTotale3+IBAss.FieldByName('TAGLIA03').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA04').AsString='')
    Then iTotale4:=iTotale4+IBAss.FieldByName('TAGLIA04').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA05').AsString='')
    Then iTotale5:=iTotale5+IBAss.FieldByName('TAGLIA05').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA06').AsString='')
    Then iTotale6:=iTotale6+IBAss.FieldByName('TAGLIA06').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA07').AsString='')
    Then iTotale7:=iTotale7+IBAss.FieldByName('TAGLIA07').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA08').AsString='')
    Then iTotale8:=iTotale8+IBAss.FieldByName('TAGLIA08').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA09').AsString='')
    Then iTotale9:=iTotale9+IBAss.FieldByName('TAGLIA09').AsInteger;
  If Not(IBAss.FieldByName('TAGLIA10').AsString='')
    Then iTotale10:=iTotale10+IBAss.FieldByName('TAGLIA10').AsInteger;
  IBAss.Next;
 End;
 if itotale1 >0 then
 RxMemoryData1.FieldByName('ASS1').AsString:=IntToStr(itotale1)
 else
RxMemoryData1.FieldByName('ASS1').AsString:='';


 if itotale2 >0 then
RxMemoryData1.FieldByName('ASS2').AsString:= IntToStr(itotale2)
else
RxMemoryData1.FieldByName('ASS2').AsString:='';

 if itotale3 >0 then
RxMemoryData1.FieldByName('ASS3').AsString:= IntToStr(itotale3)
else
RxMemoryData1.FieldByName('ASS3').AsString:='';

 if itotale4 >0 then
RxMemoryData1.FieldByName('ASS4').AsString:= IntToStr(itotale4)
else
RxMemoryData1.FieldByName('ASS4').AsString:='';

 if itotale5 >0 then
RxMemoryData1.FieldByName('ASS5').AsString:= IntToStr(itotale5)
else
RxMemoryData1.FieldByName('ASS5').AsString:='';

 if itotale6 >0 then
RxMemoryData1.FieldByName('ASS6').AsString:= IntToStr(itotale6)
else
RxMemoryData1.FieldByName('ASS6').AsString:='';

 if itotale7 >0 then
RxMemoryData1.FieldByName('ASS7').AsString:= IntToStr(itotale7)
else
RxMemoryData1.FieldByName('ASS7').AsString:='';

 if itotale8 >0 then
RxMemoryData1.FieldByName('ASS8').AsString:= IntToStr(itotale8)
else
RxMemoryData1.FieldByName('ASS8').AsString:='';

 if itotale9 >0 then
RxMemoryData1.FieldByName('ASS9').AsString:= IntToStr(itotale9)
else
RxMemoryData1.FieldByName('ASS9').AsString:='';

 if itotale10 >0 then
RxMemoryData1.FieldByName('ASS10').AsString:= IntToStr(itotale10)
else
RxMemoryData1.FieldByName('ASS10').AsString:='';
end;

////////////////
RxMemoryData1.Post;
end;
IBQuery1.Prior;
end;

{  if RadioGroup2.ItemIndex = 1 then
begin
RxMemoryData1.Filtered := False;
RxMemoryData1.Filter := '(Prezzo >= '''+RxCalcEdit1.Text+''') AND (Prezzo <= '''+
                RxCalcEdit2.Text+''')';
//RxMemoryData1.Filter := 'Prezzo >='+RxCalcEdit1.Text+'and Prezzo <='+RxCalcEdit2.Text;
RxMemoryData1.Filtered := True;
end;
RxMemoryData1.Active := True;}
RxMemoryData1.EnableControls;
end;

procedure TFStListR.Button2Click(Sender: TObject);
begin
CreaDati;
end;

procedure TFStListR.IBQuery1CalcFields(DataSet: TDataSet);
var
vo : single;
begin
try
vo := ((IBQuery1PREZZO_BASE.AsFloat +((V-6)*IBQuery1RIC.AsFloat))/L);
IBQuery1PREZZO_LISTINO.AsFloat := VO + (VO*R/100);
Except
IBQuery1PREZZO_LISTINO.AsFloat := 0;
end;
end;
procedure TFStListR.stampeClick(Sender: TObject);
begin
frReport1.DesignReport;
end;

procedure TFStListR.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin

if List.AsInteger = 0 then
begin
  if ParName = 'Listino' then
    ParValue := '';
end;
if List.AsInteger = 1 then
begin
  if ParName = 'Listino' then
    ParValue := '.';
end;
if List.AsInteger = 2 then
begin
  if ParName = 'Listino' then
    ParValue := '..';
end;
if List.AsInteger = 3 then
begin
  if ParName = 'Listino' then
    ParValue := '...';
end;
if List.AsInteger = 4 then
begin
  if ParName = 'Listino' then
    ParValue := '....';
end;
if List.AsInteger = 5 then
begin
  if ParName = 'Listino' then
    ParValue := '.....';
end;
if List.AsInteger = 6 then
begin
  if ParName = 'Listino' then
    ParValue := '';
end;
if List.AsInteger = 7 then
begin
  if ParName = 'Listino' then
    ParValue := '.';
end;
if List.AsInteger = 8 then
begin
  if ParName = 'Listino' then
    ParValue := '..';
end;
if List.AsInteger = 9 then
begin
  if ParName = 'Listino' then
    ParValue := '...';
end;
if List.AsInteger = 10 then
begin
  if ParName = 'Listino' then
    ParValue := '....';
end;
if List.AsInteger = 11 then
begin
  if ParName = 'Listino' then
    ParValue := '.....';
end;


end;

procedure TFStListR.Button3Click(Sender: TObject);
begin
Close;
end;

end.



