unit uVisPretFit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, IBCustomDataSet, IBQuery, DBCtrls, StdCtrls,
  Buttons, Grids, DBGrids, RxLookup, ExtCtrls, Mask, ToolEdit, FR_Class;

type
  TfVisPretFit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RadioGroup6: TRadioGroup;
    DBGrid1: TDBGrid;
    RadioGroup7: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid2: TDBGrid;
    LookCliCod: TDBLookupComboBox;
    LookCliDescr: TDBLookupComboBox;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    Button1: TButton;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1F_1: TLargeintField;
    IBQuery1F_2: TLargeintField;
    DataSource2: TDataSource;
    dsoCli: TDataSource;
    dsArticoli: TDataSource;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    dsDipendente: TDataSource;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1CODICE: TStringField;
    RxMemoryData1QUANTITA: TFloatField;
    dsFasonista: TDataSource;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcDaArtCodiceExit(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtCodiceExit(Sender: TObject);
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcDaArtExit(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rxdblcAdArtExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
  private
    { Private declarations }
    strDaArt, strAdArt: String;
  public
    { Public declarations }
  end;

var
  fVisPretFit: TfVisPretFit;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfVisPretFit.BitBtn3Click(Sender: TObject);
begin
Close();
end;

procedure TfVisPretFit.FormShow(Sender: TObject);
begin
dmodAz.ibqryPretFit.Close;
dmodAz.ibqryPretFit.Open;
dmodAz.RxMemoryData1.Open;
dmodAz.RxMemoryData1.EmptyTable;
dmodAz.RxMemoryData1.Close;
end;

procedure TfVisPretFit.BitBtn1Click(Sender: TObject);
var
d1,d2 : string;
begin
d1:=(FormatDateTime('mm/dd/yyyy',DateEdit1.Date));
d2:=(FormatDateTime('mm/dd/yyyy',DateEdit2.Date));
with dmodAz.ibqryPretFit do
begin
Close;
SelectSQL.Clear;
SelectSQL.Add('Select * from PRETFIT');
SelectSQL.Add('WHERE DATA >='''+D1+'''');
SelectSQL.Add('AND DATA<='''+D2+'''');

if RadioGroup1.ItemIndex = 1 then
begin
SelectSQL.Add(' AND CLIENTE ='''+LookCliDescr.Text+'''');
//SelectSQL.Add(' AND CLIENTE =:parCli');
//ParamByName('parCli').AsString:= LookCliDescr.Text;
end;
if RadioGroup3.ItemIndex = 1 then
begin
SelectSQL.Add(' AND DIPENDENTE ='''+RxDBLookupCombo5.Value+'''');
//ParamByName('pardip').AsString:= ;
end;
if RadioGroup2.ItemIndex = 1 then
begin
SelectSQL.Add(' AND FASONISTA ='''+RxDBLookupCombo3.Value+'''');
//ParamByName('parfas').AsString:= RxDBLookupCombo3.Text;
end;
If RadioGroup4.ItemIndex = 1 then
Begin
{SelectSQL.Add(' AND codice>=:parCodArtDa and codice<=:parCodArtAd');
 ParamByName('parCodArtDa').Value:=rxdblcDaArtCodice.Value;
 ParamByName('parCodArtAd').Value:=rxdblcAdArtCodice.Value;}
SelectSQL.Add(' AND codice>='''+rxdblcDaArtCodice.Value+'''');
SelectSQL.Add(' AND codice<='''+rxdblcAdArtCodice.Value+'''');

End;

If RadioGroup5.ItemIndex = 1 then
Begin
SelectSQL.Add(' AND NUMERO='''+RxDBLookupCombo11.Value+'''');
End;

if RadioGroup7.ItemIndex = 1 then
begin
SelectSQL.add('AND PASSATA <>''S''');
SelectSQL.add('OR PASSATA is null');
end;
if RadioGroup7.ItemIndex = 2 then
SelectSQL.add('AND PASSATA =''S''');

if RadioGroup6.ItemIndex = 0 then
SelectSQL.Add('Order by NUMERO');
if RadioGroup6.ItemIndex = 1 then
SelectSQL.Add('Order by CODICE');
if RadioGroup6.ItemIndex = 2 then
SelectSQL.Add('Order by DATA');

Open;
end;

end;

procedure TfVisPretFit.BitBtn2Click(Sender: TObject);
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frPretFitLista.frf');
dmodAz.rePRN.ShowReport;
end;

procedure TfVisPretFit.BitBtn4Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Open;
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frPretFitTot.frf');
dmodAz.rePRN.ShowReport;

end;

procedure TfVisPretFit.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 1 then
begin
LookCliCod.Enabled := True;
LookCliDescr.Enabled := True;
end
else
begin
LookCliCod.Enabled := False;
LookCliDescr.Enabled := False;
end;

end;

procedure TfVisPretFit.RadioGroup4Click(Sender: TObject);
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

end;

procedure TfVisPretFit.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfVisPretFit.rxdblcDaArtCodiceExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfVisPretFit.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfVisPretFit.rxdblcAdArtCodiceExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfVisPretFit.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfVisPretFit.rxdblcDaArtExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfVisPretFit.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfVisPretFit.rxdblcAdArtExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfVisPretFit.DBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TfVisPretFit.RadioGroup5Click(Sender: TObject);
begin
if RadioGroup5.ItemIndex = 1 then
begin
RxDBLookupCombo11.Enabled := True;
end
else
begin
RxDBLookupCombo11.Enabled := False;
end;

end;

procedure TfVisPretFit.Button1Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
dmodAz.RxMemoryData1.EmptyTable;
dmodAz.RxMemoryData1.Close;
dmodAz.RxMemoryData1.Open;
dmodAz.ibqryDistinte.Open;
dmodAz.ibtblDistinte_Dett.Open;
//dmodAz.ibqryPretaglio.Open;
c:=0;
b:=0;
d:=0;
e:=100000000;
dmodAz.ibqryPretFit.First;
 With (dmodAz) Do
  While Not(ibqryPretFit.EoF) Do
  Begin
       Begin
           strCodArt:=ibqryPretFit.Fieldbyname('CODICE').AsString;

if dmodAz.ibqryDistinte.Locate('Codice_articolo',strCodArt,[]) then
begin
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;

if not dmodAz.RxMemoryData1.Locate('Codice',a,[]) then
                       begin
                       dmodAz.RxMemoryData1.Append;
                       dmodAz.RxMemoryData1CODICE.AsString:=a;

                    End
               Else dmodAz.RxMemoryData1.Edit;

if dmodAz.ibtblDistinte_Dett.FieldByName('FLAG_SCATOLO').AsString = 'S' then
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((ibqryPretFit.FieldByName('SCAT').AsFloat) * b)
else
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((ibqryPretFit.FieldByName('TOTALE').AsFloat) * b);


           dmodAz.RxMemoryData1.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
    ibqryPretFit.Next;
  End;
// RxMemoryData1.Close;

dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frPretfitacc.frf');
dmodAz.rePRN.ShowReport;

end;

procedure TfVisPretFit.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 1 then
begin
RxDBLookupCombo3.Enabled := True;
RxDBLookupCombo4.Enabled := True;
end
else
begin
RxDBLookupCombo3.Enabled := False;
RxDBLookupCombo4.Enabled := False;
end;
end;

procedure TfVisPretFit.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then
begin
RxDBLookupCombo5.Enabled := True;
RxDBLookupCombo6.Enabled := True;
end
else
begin
RxDBLookupCombo5.Enabled := False;
RxDBLookupCombo6.Enabled := False;
end;

end;

end.
