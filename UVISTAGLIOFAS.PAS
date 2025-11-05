unit uVisTaglioFas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, RxLookup, ExtCtrls, Mask, ToolEdit, Db,
  IBCustomDataSet, IBQuery, DBCtrls, RxMemDS, FR_Class,Variants;

type
  TfVisTaglioFas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
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
    frReport1: TfrReport;
    DataSource2: TDataSource;
    dsoCli: TDataSource;
    dsArticoli: TDataSource;
    IBQuery2: TIBQuery;
    DataSource3: TDataSource;
    dsDipendente: TDataSource;
    dsFor: TDataSource;
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
  fVisTaglioFas: TfVisTaglioFas;

implementation

uses uAzDM;

{$R *.DFM}
procedure TfVisTaglioFas.BitBtn3Click(Sender: TObject);
begin
Close();
end;

procedure TfVisTaglioFas.FormShow(Sender: TObject);
begin
dmodAz.ibqryPretFas.Close;
dmodAz.ibqryPretFas.Open;
dmodAz.RxMemoryData1.Open;
dmodAz.RxMemoryData1.EmptyTable;
dmodAz.RxMemoryData1.Close;


end;

procedure TfVisTaglioFas.BitBtn1Click(Sender: TObject);
var
d1,d2 : string;
begin
d1:=(FormatDateTime('mm/dd/yyyy',DateEdit1.Date));
d2:=(FormatDateTime('mm/dd/yyyy',DateEdit2.Date));
with dmodAz.ibqryPretFas do
begin
Close;
SelectSQL.Clear;
SelectSQL.Add('Select * from TAGLIOFAS');
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
SelectSQL.Add(' AND DIPENDENTE ='''+RxDBLookupCombo5.Text+'''');
//ParamByName('pardip').AsString:= ;
end;
if RadioGroup2.ItemIndex = 1 then
begin
SelectSQL.Add(' AND FASONISTA ='''+RxDBLookupCombo3.Text+'''');
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
{
If RadioGroup4.ItemIndex = 2 then
      Begin
            SelectSQL.Add('AND (codice in');
            SelectSQL.Add('(select codice_articolo from tab_articoli');
            SelectSQL.Add('Where codice_articolo is not null');
            If (cbMarca.Checked)
             Then SelectSQL.Add('And cat_art_marca_id = '''+rxdblcMarca.Value+'''');
            If (cbTipo.Checked)
             Then SelectSQL.Add('And cat_art_tipo_id ='''+rxdblcTipo.Value+'''');
            If (cbGruppo.Checked)
             Then SelectSQL.Add('And cat_art_gruppo_id = '''+rxdblcGruppo.Value+'''');
            If (cbFamiglia.Checked)
             Then SelectSQL.Add('And cat_art_famiglia_id ='''+rxdblcFamiglia.Value+'''');
            SelectSQL.Add('))');
           End;}

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

procedure TfVisTaglioFas.BitBtn2Click(Sender: TObject);
begin

frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frTaglioFasLista.frf');
frReport1.ShowReport;
end;

procedure TfVisTaglioFas.BitBtn4Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Open;
frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frtaglioFasTot.frf');
frReport1.ShowReport;

end;

procedure TfVisTaglioFas.RadioGroup1Click(Sender: TObject);
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

procedure TfVisTaglioFas.RadioGroup4Click(Sender: TObject);
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

procedure TfVisTaglioFas.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue;
end;

procedure TfVisTaglioFas.rxdblcDaArtCodiceExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfVisTaglioFas.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
end;

procedure TfVisTaglioFas.rxdblcAdArtCodiceExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfVisTaglioFas.rxdblcDaArtChange(Sender: TObject);
begin
 rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue;
end;

procedure TfVisTaglioFas.rxdblcDaArtExit(Sender: TObject);
begin
 strDaArt:=rxdblcDaArt.KeyValue;
end;

procedure TfVisTaglioFas.rxdblcAdArtChange(Sender: TObject);
begin
 rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue;
end;

procedure TfVisTaglioFas.rxdblcAdArtExit(Sender: TObject);
begin
 strAdArt:=rxdblcAdArt.keyvalue;
end;

procedure TfVisTaglioFas.DBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TfVisTaglioFas.RadioGroup5Click(Sender: TObject);
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

procedure TfVisTaglioFas.Button1Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag: String;
iNormal,strCodCli,xy: Integer;
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
dmodAz.ibqryPretFas.First;
 With (dmodAz) Do
  Begin
  While Not(ibqryPretFas.EoF) Do
         Begin
           strCodArt:=ibqryPretFas.Fieldbyname('CODICE').AsString;
           strCodCli:=ibqryPretFas.Fieldbyname('PK_DIST').AsInteger;

if ((strCodCli = 0)) then
begin
if dmodAz.ibqryDistinte.Locate('Codice_articolo;CODCLI',VarArrayOf([strCodArt,0]),[]) then
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
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((ibqryPretFas.FieldByName('SCAT').AsFloat) * b)
else
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((ibqryPretFas.FieldByName('TOTALE').AsFloat) * b);


           dmodAz.RxMemoryData1.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;
if ((strCodCli <> 0)) then
begin
if not dmodAz.ibqryDistinte.Locate('Codice_articolo;CODCLI',VarArrayOf([strCodArt,strcodcli]),[]) then
begin
xy:=0;
dmodAz.ibqryDistinte.Locate('Codice_articolo;CODCLI',VarArrayOf([strCodArt,xy]),[]);
end;
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
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((ibqryPretFas.FieldByName('SCAT').AsFloat) * b)
else
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat :=
dmodAz.RxMemoryData1.FieldByName('QUANTITA').AsFloat+((ibqryPretFas.FieldByName('TOTALE').AsFloat) * b);


           dmodAz.RxMemoryData1.Post;

       //  Except
     //    End;
         dmodAz.ibtblDistinte_Dett.next;
         end;
  end;
       End;


    ibqryPretFas.Next;
  End;
 end;

// RxMemoryData1.Close;

frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'frTagliofasacc.frf');
frReport1.ShowReport;

end;


procedure TfVisTaglioFas.RadioGroup2Click(Sender: TObject);
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

procedure TfVisTaglioFas.RadioGroup3Click(Sender: TObject);
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
