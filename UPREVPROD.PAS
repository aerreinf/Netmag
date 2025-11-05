unit uPrevProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RxLookup, Db, Grids, DBGrids, RxMemDS, IBCustomDataSet, IBQuery;

type
  TfPRevProd = class(TForm)
    RxMemoryData1: TRxMemoryData;
    DBGrid1: TDBGrid;
    RxMemoryData1Codice: TStringField;
    RxMemoryData1Descrizione: TStringField;
    RxMemoryData1DepCod: TStringField;
    RxMemoryData1DepDescr: TStringField;
    RxMemoryData1Qta: TFloatField;
    dsoDepositi: TDataSource;
    LookNostrDepCod: TRxDBLookupCombo;
    LookNostrDepDescr: TRxDBLookupCombo;
    DataSource1: TDataSource;
    Button1: TButton;
    IBQuery1: TIBQuery;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPRevProd: TfPRevProd;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfPRevProd.Button1Click(Sender: TObject);
Var
a,strCodArt,strCodDep,strCodCauMag,strDesArt: String;
iNormal: Integer;
b,c,d,e:Double;
 begin
 // Aggiornamento da Distinta degli Accessori.
RxMemoryData1.Active := True;
dmodAz.ibtblDistinte_Dett.open;
dmodAz.ibqryDistinte.Open;
dmodAz.ibqryDistinte.Open;
dmodAz.ibqryDistinte.First;
 With (dmodAz) Do
  While Not(ibqryDistinte.EoF) Do
  Begin
c:=0;
b:=0;
d:=0;
e:=100000000;
strCodArt:=ibqryDistinte.Fieldbyname('CODICE_ARTICOLO').AsString;
strDesArt:=ibqryDistinte.Fieldbyname('Descr_articolo').AsString;
strCodDep:=dsoDepositi.DataSet.FieldByName('CODICE').AsString;
dmodAz.ibtblDistinte_Dett.First;
while not dmodAz.ibtblDistinte_Dett.eof do
begin
a:=dmodAz.ibtblDistinte_Dett.FieldByName('Codice_articolo').AsString;
b :=dmodAz.ibtblDistinte_Dett.FieldByName('QTA').AsFloat;
           ibqCont_Art.Close;
           ibqCont_Art.ParamByName('parCod_Art').AsString:=a;
           ibqCont_Art.ParamByName('parCod_Dep').AsString:=strCodDep;
           ibqCont_Art.Open;

c:=ibqCont_Art.FieldByName('Giacenza_attuale').AsFloat;
d:=(c/b);
if (d<e) then
e := d;
         dmodAz.ibtblDistinte_Dett.next;
         end;
if e>0 then
begin
RxMemoryData1.Append;
RxMemoryData1.FieldByName('CODICE').AsString := strCodArt;
RxMemoryData1.FieldByName('DESCRIZIONE').AsString :=strDesArt;
RxMemoryData1.FieldByName('DEPCOD').AsString :=strCodDep;
RxMemoryData1.FieldByName('DEPDESCR').AsString :=dsoDepositi.DataSet.FieldByName('DESCR').AsString;
RxMemoryData1.FieldByName('QTA').AsFloat :=e;
RxMemoryData1.Post;
end;
   dmodAz.ibqryDistinte.Next;
  End;
end;
procedure TfPRevProd.Button2Click(Sender: TObject);
begin
RxMemoryData1.Active := False;
end;

procedure TfPRevProd.FormShow(Sender: TObject);
begin
dsoDepositi.DataSet.Open;
end;

end.
