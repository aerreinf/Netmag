unit uSelectPretaglio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, Variants;

type
  TfrmSelectPretaglio = class(TForm)
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    IBQuery1PK_CODICE: TIntegerField;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1DATA: TDateField;
    IBQuery1NUMERO: TIntegerField;
    IBQuery1NUMERO_A: TIBStringField;
    IBQuery1TOTALE: TIntegerField;
    IBQuery1DIPENDENTE: TIBStringField;
    IBQuery1FASONISTA: TIBStringField;
    IBQuery1CLIENTE: TIBStringField;
    IBQuery1TAGLIA0: TIBStringField;
    IBQuery1TAGLIA1: TIBStringField;
    IBQuery1TAGLIA2: TIBStringField;
    IBQuery1TAGLIA3: TIBStringField;
    IBQuery1TAGLIA4: TIBStringField;
    IBQuery1TAGLIA5: TIBStringField;
    IBQuery1TAGLIA6: TIBStringField;
    IBQuery1TAGLIA7: TIBStringField;
    IBQuery1TAGLIA8: TIBStringField;
    IBQuery1TAGLIA9: TIBStringField;
    IBQuery1COLORE0: TIBStringField;
    IBQuery1COLORE1: TIBStringField;
    IBQuery1COLORE2: TIBStringField;
    IBQuery1COLORE3: TIBStringField;
    IBQuery1COLORE4: TIBStringField;
    IBQuery1COLORE5: TIBStringField;
    IBQuery1COLORE6: TIBStringField;
    IBQuery1COLORE7: TIBStringField;
    IBQuery1COLORE8: TIBStringField;
    IBQuery1COLORE9: TIBStringField;
    IBQuery1QTA00: TIntegerField;
    IBQuery1QTA01: TIntegerField;
    IBQuery1QTA02: TIntegerField;
    IBQuery1QTA03: TIntegerField;
    IBQuery1QTA04: TIntegerField;
    IBQuery1QTA05: TIntegerField;
    IBQuery1QTA06: TIntegerField;
    IBQuery1QTA07: TIntegerField;
    IBQuery1QTA08: TIntegerField;
    IBQuery1QTA09: TIntegerField;
    IBQuery1QTA10: TIntegerField;
    IBQuery1QTA11: TIntegerField;
    IBQuery1QTA12: TIntegerField;
    IBQuery1QTA13: TIntegerField;
    IBQuery1QTA14: TIntegerField;
    IBQuery1QTA15: TIntegerField;
    IBQuery1QTA16: TIntegerField;
    IBQuery1QTA17: TIntegerField;
    IBQuery1QTA18: TIntegerField;
    IBQuery1QTA19: TIntegerField;
    IBQuery1QTA20: TIntegerField;
    IBQuery1QTA21: TIntegerField;
    IBQuery1QTA22: TIntegerField;
    IBQuery1QTA23: TIntegerField;
    IBQuery1QTA24: TIntegerField;
    IBQuery1QTA25: TIntegerField;
    IBQuery1QTA26: TIntegerField;
    IBQuery1QTA27: TIntegerField;
    IBQuery1QTA28: TIntegerField;
    IBQuery1QTA29: TIntegerField;
    IBQuery1QTA30: TIntegerField;
    IBQuery1QTA31: TIntegerField;
    IBQuery1QTA32: TIntegerField;
    IBQuery1QTA33: TIntegerField;
    IBQuery1QTA34: TIntegerField;
    IBQuery1QTA35: TIntegerField;
    IBQuery1QTA36: TIntegerField;
    IBQuery1QTA37: TIntegerField;
    IBQuery1QTA38: TIntegerField;
    IBQuery1QTA39: TIntegerField;
    IBQuery1QTA40: TIntegerField;
    IBQuery1QTA41: TIntegerField;
    IBQuery1QTA42: TIntegerField;
    IBQuery1QTA43: TIntegerField;
    IBQuery1QTA44: TIntegerField;
    IBQuery1QTA45: TIntegerField;
    IBQuery1QTA46: TIntegerField;
    IBQuery1QTA47: TIntegerField;
    IBQuery1QTA48: TIntegerField;
    IBQuery1QTA49: TIntegerField;
    IBQuery1QTA50: TIntegerField;
    IBQuery1QTA51: TIntegerField;
    IBQuery1QTA52: TIntegerField;
    IBQuery1QTA53: TIntegerField;
    IBQuery1QTA54: TIntegerField;
    IBQuery1QTA55: TIntegerField;
    IBQuery1QTA56: TIntegerField;
    IBQuery1QTA57: TIntegerField;
    IBQuery1QTA58: TIntegerField;
    IBQuery1QTA59: TIntegerField;
    IBQuery1QTA60: TIntegerField;
    IBQuery1QTA61: TIntegerField;
    IBQuery1QTA62: TIntegerField;
    IBQuery1QTA63: TIntegerField;
    IBQuery1QTA64: TIntegerField;
    IBQuery1QTA65: TIntegerField;
    IBQuery1QTA66: TIntegerField;
    IBQuery1QTA67: TIntegerField;
    IBQuery1QTA68: TIntegerField;
    IBQuery1QTA69: TIntegerField;
    IBQuery1QTA70: TIntegerField;
    IBQuery1QTA71: TIntegerField;
    IBQuery1QTA72: TIntegerField;
    IBQuery1QTA73: TIntegerField;
    IBQuery1QTA74: TIntegerField;
    IBQuery1QTA75: TIntegerField;
    IBQuery1QTA76: TIntegerField;
    IBQuery1QTA77: TIntegerField;
    IBQuery1QTA78: TIntegerField;
    IBQuery1QTA79: TIntegerField;
    IBQuery1QTA80: TIntegerField;
    IBQuery1QTA81: TIntegerField;
    IBQuery1QTA82: TIntegerField;
    IBQuery1QTA83: TIntegerField;
    IBQuery1QTA84: TIntegerField;
    IBQuery1QTA85: TIntegerField;
    IBQuery1QTA86: TIntegerField;
    IBQuery1QTA87: TIntegerField;
    IBQuery1QTA88: TIntegerField;
    IBQuery1QTA89: TIntegerField;
    IBQuery1QTA90: TIntegerField;
    IBQuery1QTA91: TIntegerField;
    IBQuery1QTA92: TIntegerField;
    IBQuery1QTA93: TIntegerField;
    IBQuery1QTA94: TIntegerField;
    IBQuery1QTA95: TIntegerField;
    IBQuery1QTA96: TIntegerField;
    IBQuery1QTA97: TIntegerField;
    IBQuery1QTA98: TIntegerField;
    IBQuery1QTA99: TIntegerField;
    IBQuery1TOTALE_COLORE0: TIntegerField;
    IBQuery1TOTALE_COLORE1: TIntegerField;
    IBQuery1TOTALE_COLORE2: TIntegerField;
    IBQuery1TOTALE_COLORE3: TIntegerField;
    IBQuery1TOTALE_COLORE4: TIntegerField;
    IBQuery1TOTALE_COLORE5: TIntegerField;
    IBQuery1TOTALE_COLORE6: TIntegerField;
    IBQuery1TOTALE_COLORE7: TIntegerField;
    IBQuery1TOTALE_COLORE8: TIntegerField;
    IBQuery1TOTALE_COLORE9: TIntegerField;
    IBQuery1TOTALE_TAGLIA0: TIntegerField;
    IBQuery1TOTALE_TAGLIA1: TIntegerField;
    IBQuery1TOTALE_TAGLIA2: TIntegerField;
    IBQuery1TOTALE_TAGLIA3: TIntegerField;
    IBQuery1TOTALE_TAGLIA4: TIntegerField;
    IBQuery1TOTALE_TAGLIA5: TIntegerField;
    IBQuery1TOTALE_TAGLIA6: TIntegerField;
    IBQuery1TOTALE_TAGLIA7: TIntegerField;
    IBQuery1TOTALE_TAGLIA8: TIntegerField;
    IBQuery1TOTALE_TAGLIA9: TIntegerField;
    IBQuery1QTA_TOTALE: TIntegerField;
    IBQuery1SCAT: TFloatField;
    IBQuery1PASSATA: TIBStringField;
    IBQuery1F1: TIBStringField;
    IBQuery1F2: TIBStringField;
    IBQuery1F3: TIBStringField;
    IBQuery1F4: TIBStringField;
    IBQuery1F5: TIBStringField;
    IBQuery1F6: TIBStringField;
    IBQuery1F7: TIBStringField;
    IBQuery1F8: TIBStringField;
    IBQuery1F0: TIBStringField;
    IBQuery1PK_DIST: TIntegerField;
    IBQuery1NOTE: TIBStringField;
    IBQuery1G1: TIBStringField;
    IBQuery1G2: TIBStringField;
    IBQuery1G3: TIBStringField;
    IBQuery1G4: TIBStringField;
    IBQuery1G5: TIBStringField;
    IBQuery1G6: TIBStringField;
    IBQuery1G7: TIBStringField;
    IBQuery1G8: TIBStringField;
    IBQuery1G0: TIBStringField;
    IBQuery1H1: TIBStringField;
    IBQuery1H2: TIBStringField;
    IBQuery1H3: TIBStringField;
    IBQuery1H4: TIBStringField;
    IBQuery1H5: TIBStringField;
    IBQuery1H6: TIBStringField;
    IBQuery1H7: TIBStringField;
    IBQuery1H8: TIBStringField;
    IBQuery1H0: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectPretaglio: TfrmSelectPretaglio;

implementation

uses uAzDM, uTaglio;

{$R *.DFM}

procedure TfrmSelectPretaglio.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Open;
end;

procedure TfrmSelectPretaglio.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelectPretaglio.DBGrid1DblClick(Sender: TObject);
Var
 wI,wJ: Word;
 strFieldIJ: String;
begin
fTaglio.dbeCodice.Field.AsString :=
        DBGrid1.DataSource.DataSet.fieldbyname('Codice').AsString;
fTaglio.dbeDescr.Field.AsString :=
        DBGrid1.DataSource.DataSet.fieldbyname('DESCR').AsString;

fTaglio.dbeDescrPerDocum.Field.AsString :=
        DBGrid1.DataSource.DataSet.fieldbyname('NOTE').AsString;


fTaglio.DBEdit3.Field.AsInteger :=
        DBGrid1.DataSource.DataSet.fieldbyname('NUMERO').AsInteger;

fTaglio.DBEdit2.Field.AsInteger :=
        DBGrid1.DataSource.DataSet.fieldbyname('TOTALE').AsInteger;

fTaglio.dbeTotale.Field.AsInteger :=
        DBGrid1.DataSource.DataSet.fieldbyname('TOTALE').AsInteger;

fTaglio.dbeQtaTotale.Field.AsInteger :=
        DBGrid1.DataSource.DataSet.fieldbyname('TOTALE').AsInteger;

fTaglio.Edit2.Field.AsInteger :=
        DBGrid1.DataSource.DataSet.fieldbyname('SCAT').AsInteger;

fTaglio.rxdblcCliente.Field.AsString :=
        DBGrid1.DataSource.DataSet.fieldbyname('CLIENTE').AsString;

fTaglio.rxdblcDipendente.Field.AsString :=
        DBGrid1.DataSource.DataSet.fieldbyname('DIPENDENTE').AsString;

fTaglio.rbdblcFasonista.Field.AsString :=
        DBGrid1.DataSource.DataSet.fieldbyname('FASONISTA').AsString;
fTaglio.DBEdit4.Field.AsInteger :=
        DBGrid1.DataSource.DataSet.fieldbyname('PK_DIST').AsInteger;

////////////// Fill Taglie
 If Not(DataSource1.DataSet['TAGLIA0']=Null) Then
  fTaglio.sgTaglie.Cells[0,2]:= DataSource1.DataSet['TAGLIA0'];
 If Not(DataSource1.DataSet['TAGLIA1']=Null) Then
  fTaglio.sgTaglie.Cells[1,2]:= DataSource1.DataSet['TAGLIA1'];
 If Not(DataSource1.DataSet['TAGLIA2']=Null) Then
  fTaglio.sgTaglie.Cells[2,2]:= DataSource1.DataSet['TAGLIA2'];
 If Not(DataSource1.DataSet['TAGLIA3']=Null) Then
  fTaglio.sgTaglie.Cells[3,2]:= DataSource1.DataSet['TAGLIA3'];
 If Not(DataSource1.DataSet['TAGLIA4']=Null) Then
  fTaglio.sgTaglie.Cells[4,2]:= DataSource1.DataSet['TAGLIA4'];
 If Not(DataSource1.DataSet['TAGLIA5']=Null) Then
  fTaglio.sgTaglie.Cells[5,2]:= DataSource1.DataSet['TAGLIA5'];
 If Not(DataSource1.DataSet['TAGLIA6']=Null) Then
  fTaglio.sgTaglie.Cells[6,2]:= DataSource1.DataSet['TAGLIA6'];
 If Not(DataSource1.DataSet['TAGLIA7']=Null) Then
  fTaglio.sgTaglie.Cells[7,2]:= DataSource1.DataSet['TAGLIA7'];
 If Not(DataSource1.DataSet['TAGLIA8']=Null) Then
  fTaglio.sgTaglie.Cells[8,2]:= DataSource1.DataSet['TAGLIA8'];
 If Not(DataSource1.DataSet['TAGLIA9']=Null) Then
  fTaglio.sgTaglie.Cells[9,2]:= DataSource1.DataSet['TAGLIA9'];

 If Not(DataSource1.DataSet['F0']=Null) Then
  fTaglio.sgTaglie.Cells[0,1]:= DataSource1.DataSet['F0'];
 If Not(DataSource1.DataSet['F1']=Null) Then
  fTaglio.sgTaglie.Cells[1,1]:= DataSource1.DataSet['F1'];
 If Not(DataSource1.DataSet['F2']=Null) Then
  fTaglio.sgTaglie.Cells[2,1]:= DataSource1.DataSet['F2'];
 If Not(DataSource1.DataSet['F3']=Null) Then
  fTaglio.sgTaglie.Cells[3,1]:= DataSource1.DataSet['F3'];
 If Not(DataSource1.DataSet['F4']=Null) Then
  fTaglio.sgTaglie.Cells[4,1]:= DataSource1.DataSet['F4'];
 If Not(DataSource1.DataSet['F5']=Null) Then
  fTaglio.sgTaglie.Cells[5,1]:= DataSource1.DataSet['F5'];
 If Not(DataSource1.DataSet['F6']=Null) Then
  fTaglio.sgTaglie.Cells[6,1]:= DataSource1.DataSet['F6'];
 If Not(DataSource1.DataSet['F7']=Null) Then
  fTaglio.sgTaglie.Cells[7,1]:= DataSource1.DataSet['F7'];
 If Not(DataSource1.DataSet['F8']=Null) Then
  fTaglio.sgTaglie.Cells[8,1]:= DataSource1.DataSet['F8'];



   If Not(DataSource1.DataSet['G0']=Null) Then
  fTaglio.sgTaglie.Cells[0,0]:= DataSource1.DataSet['G0'];
 If Not(DataSource1.DataSet['G1']=Null) Then
  fTaglio.sgTaglie.Cells[1,0]:= DataSource1.DataSet['G1'];
 If Not(DataSource1.DataSet['G2']=Null) Then
  fTaglio.sgTaglie.Cells[2,0]:= DataSource1.DataSet['G2'];
 If Not(DataSource1.DataSet['G3']=Null) Then
  fTaglio.sgTaglie.Cells[3,0]:= DataSource1.DataSet['G3'];
 If Not(DataSource1.DataSet['G4']=Null) Then
  fTaglio.sgTaglie.Cells[4,0]:= DataSource1.DataSet['G4'];
 If Not(DataSource1.DataSet['G5']=Null) Then
  fTaglio.sgTaglie.Cells[5,0]:= DataSource1.DataSet['G5'];
 If Not(DataSource1.DataSet['G6']=Null) Then
  fTaglio.sgTaglie.Cells[6,0]:= DataSource1.DataSet['G6'];
 If Not(DataSource1.DataSet['G7']=Null) Then
  fTaglio.sgTaglie.Cells[7,0]:= DataSource1.DataSet['G7'];
 If Not(DataSource1.DataSet['G8']=Null) Then
  fTaglio.sgTaglie.Cells[8,0]:= DataSource1.DataSet['G8'];

  // If Not(dstaglio.DataSet['TAGLIA9']=Null) Then
//  sgTaglie.Cells[9,1]:= dstaglio.DataSet['TAGLIA9'];
////////////////End Taglie

////////////////Fill Colori
 If Not(DataSource1.DataSet['COLORE0']=null) Then
  fTaglio.sgColori.Cells[0,0]:= DataSource1.DataSet['COLORE0'];
 If Not(DataSource1.DataSet['COLORE1']=null) Then
  fTaglio.sgColori.Cells[0,1]:= DataSource1.DataSet['COLORE1'];
 If Not(DataSource1.DataSet['COLORE2']=null) Then
  fTaglio.sgColori.Cells[0,2]:= DataSource1.DataSet['COLORE2'];
 If Not(DataSource1.DataSet['COLORE3']=null) Then
  fTaglio.sgColori.Cells[0,3]:= DataSource1.DataSet['COLORE3'];
 If Not(DataSource1.DataSet['COLORE4']=null) Then
  fTaglio.sgColori.Cells[0,4]:= DataSource1.DataSet['COLORE4'];
 If Not(DataSource1.DataSet['COLORE5']=null) Then
  fTaglio.sgColori.Cells[0,5]:= DataSource1.DataSet['COLORE5'];
 If Not(DataSource1.DataSet['COLORE6']=null) Then
  fTaglio.sgColori.Cells[0,6]:= DataSource1.DataSet['COLORE6'];
 If Not(DataSource1.DataSet['COLORE7']=null) Then
  fTaglio.sgColori.Cells[0,7]:= DataSource1.DataSet['COLORE7'];
 If Not(DataSource1.DataSet['COLORE8']=null) Then
  fTaglio.sgColori.Cells[0,8]:= DataSource1.DataSet['COLORE8'];
 If Not(DataSource1.DataSet['COLORE9']=null) Then
  fTaglio.sgColori.Cells[0,9]:= DataSource1.DataSet['COLORE9'];

   If Not(DataSource1.DataSet['H0']=null) Then
  fTaglio.sgColori.Cells[1,0]:= DataSource1.DataSet['H0'];
 If Not(DataSource1.DataSet['H1']=null) Then
  fTaglio.sgColori.Cells[1,1]:= DataSource1.DataSet['H1'];
 If Not(DataSource1.DataSet['H2']=null) Then
  fTaglio.sgColori.Cells[1,2]:= DataSource1.DataSet['H2'];
 If Not(DataSource1.DataSet['H3']=null) Then
  fTaglio.sgColori.Cells[1,3]:= DataSource1.DataSet['H3'];
 If Not(DataSource1.DataSet['H4']=null) Then
  fTaglio.sgColori.Cells[1,4]:= DataSource1.DataSet['H4'];
 If Not(DataSource1.DataSet['H5']=null) Then
  fTaglio.sgColori.Cells[1,5]:= DataSource1.DataSet['H5'];
 If Not(DataSource1.DataSet['H6']=null) Then
  fTaglio.sgColori.Cells[1,6]:= DataSource1.DataSet['H6'];
 If Not(DataSource1.DataSet['H7']=null) Then
  fTaglio.sgColori.Cells[1,7]:= DataSource1.DataSet['H7'];
 If Not(DataSource1.DataSet['H8']=null) Then
  fTaglio.sgColori.Cells[1,8]:= DataSource1.DataSet['H8'];


////////////////End Colori

/////////////// Fill Qta
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
   Begin
     strFieldIJ:='QTA'+IntToStr(wI)+IntToStr(wJ);
     If Not(DataSource1.DataSet[strFieldIJ]=Null) Then
       fTaglio.sgDett.Cells[wI,wJ]:=DataSource1.DataSet[strFieldIJ];
   End;

/////////////// End Qta
 // riempire con i totale colori
 If Not(DataSource1.DataSet['TOTALE_COLORE0']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,0]:= DataSource1.DataSet['TOTALE_COLORE0'];
 If Not(DataSource1.DataSet['TOTALE_COLORE1']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,1]:= DataSource1.DataSet['TOTALE_COLORE1'];
 If Not(DataSource1.DataSet['TOTALE_COLORE2']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,2]:= DataSource1.DataSet['TOTALE_COLORE2'];
 If Not(DataSource1.DataSet['TOTALE_COLORE3']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,3]:= DataSource1.DataSet['TOTALE_COLORE3'];
 If Not(DataSource1.DataSet['TOTALE_COLORE4']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,4]:= DataSource1.DataSet['TOTALE_COLORE4'];
 If Not(DataSource1.DataSet['TOTALE_COLORE5']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,5]:= DataSource1.DataSet['TOTALE_COLORE5'];
 If Not(DataSource1.DataSet['TOTALE_COLORE6']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,6]:= DataSource1.DataSet['TOTALE_COLORE6'];
 If Not(DataSource1.DataSet['TOTALE_COLORE7']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,7]:= DataSource1.DataSet['TOTALE_COLORE7'];
 If Not(DataSource1.DataSet['TOTALE_COLORE8']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,8]:= DataSource1.DataSet['TOTALE_COLORE8'];
 If Not(DataSource1.DataSet['TOTALE_COLORE9']=Null) Then
  fTaglio.sgTotalePerColori.Cells[0,9]:= DataSource1.DataSet['TOTALE_COLORE9'];



 // riempire con totale taglie
 If Not(DataSource1.DataSet['TOTALE_TAGLIA0']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[0,0]:= DataSource1.DataSet['TOTALE_TAGLIA0'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA1']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[1,0]:= DataSource1.DataSet['TOTALE_TAGLIA1'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA2']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[2,0]:= DataSource1.DataSet['TOTALE_TAGLIA2'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA3']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[3,0]:= DataSource1.DataSet['TOTALE_TAGLIA3'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA4']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[4,0]:= DataSource1.DataSet['TOTALE_TAGLIA4'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA5']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[5,0]:= DataSource1.DataSet['TOTALE_TAGLIA5'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA6']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[6,0]:= DataSource1.DataSet['TOTALE_TAGLIA6'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA7']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[7,0]:= DataSource1.DataSet['TOTALE_TAGLIA7'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA8']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[8,0]:= DataSource1.DataSet['TOTALE_TAGLIA8'];
 If Not(DataSource1.DataSet['TOTALE_TAGLIA9']=Null) Then
  fTaglio.sgTotalePerTaglie.Cells[9,0]:= DataSource1.DataSet['TOTALE_TAGLIA9'];



Close;

end;

end.
