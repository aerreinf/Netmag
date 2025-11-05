unit uTaglioFas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, ToolEdit, RXDBCtrl, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  ActnList, Grids, Db, DBGrids, IBCustomDataSet, IBQuery, Variants;

type
  TfTaglioFas = class(TForm)
    pnlPretaglio: TPanel;
    lblCodice: TLabel;
    lblDescr: TLabel;
    lblData: TLabel;
    lblNumero: TLabel;
    lblTotale: TLabel;
    lblDipendente: TLabel;
    lblFasonista: TLabel;
    lblCliente: TLabel;
    lblColori: TLabel;
    lblTaglie: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    dbeNumero: TDBEdit;
    dbeTotale: TDBEdit;
    dbdteData: TDBDateEdit;
    rxdblcDipendente: TRxDBLookupCombo;
    rbdblcFasonista: TRxDBLookupCombo;
    rxdblcCliente: TRxDBLookupCombo;
    bbCalcola: TBitBtn;
    sgDett: TStringGrid;
    sgTaglie: TStringGrid;
    sgColori: TStringGrid;
    sgTotalePerTaglie: TStringGrid;
    sgTotalePerColori: TStringGrid;
    dbeQtaTotale: TDBEdit;
    bbCerca: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    dbgAssort: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    pnlCtrl: TPanel;
    bbEsci: TBitBtn;
    bbPrnScheda: TBitBtn;
    bbPrnLista: TBitBtn;
    bbNuovo: TBitBtn;
    bbModifica: TBitBtn;
    bbSalva: TBitBtn;
    bbAnnulla: TBitBtn;
    bbElimina: TBitBtn;
    BitBtn1: TBitBtn;
    dsPretaglio: TDataSource;
    dsDipendente: TDataSource;
    dsFasonista: TDataSource;
    dsCliente: TDataSource;
    dsArticoli: TDataSource;
    dsDepositi: TDataSource;
    dsAssort: TDataSource;
    dsColori: TDataSource;
    dsTaglia: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1MAX: TIntegerField;
    IBQuery2: TIBQuery;
    IBQuery2TAGLIA: TFloatField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    DataSource1: TDataSource;
    IBQuery3: TIBQuery;
    IBQuery3CODICE_ARTICOLO: TIBStringField;
    IBQuery3TAGLIA01: TIntegerField;
    IBQuery3TAGLIA02: TIntegerField;
    IBQuery3TAGLIA03: TIntegerField;
    IBQuery3TAGLIA04: TIntegerField;
    IBQuery3TAGLIA05: TIntegerField;
    IBQuery3TAGLIA06: TIntegerField;
    IBQuery3TAGLIA07: TIntegerField;
    IBQuery3TAGLIA08: TIntegerField;
    IBQuery3TAGLIA09: TIntegerField;
    IBQuery3TAGLIA10: TIntegerField;
    IBQuery3COLORE: TIBStringField;
    DataSource2: TDataSource;
    DBEdit3: TDBEdit;
    dbeDescrPerDocum: TDBMemo;
    procedure bbEsciClick(Sender: TObject);
    procedure bbNuovoClick(Sender: TObject);
    procedure bbModificaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbCalcolaClick(Sender: TObject);
    procedure bbSalvaClick(Sender: TObject);
    procedure bbAnnullaClick(Sender: TObject);
    procedure bbEliminaClick(Sender: TObject);
    procedure bbCercaClick(Sender: TObject);
    procedure bbPrnListaClick(Sender: TObject);
    procedure bbPrnSchedaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbeCodiceExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbeCodiceChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rxdblcClienteChange(Sender: TObject);
    procedure rxdblcClienteExit(Sender: TObject);

  private
    { Private declarations }
    boolModifica : Boolean;
    strCodArt: String;
    Procedure Browse_Mode(bMode: Boolean);

    Function Qta_Dett_Is_OK: Boolean;
    Procedure Calcola_Totale;
    Procedure Cerca_Articolo;
    Procedure Set_Assortimento;
    Procedure Apri;
    Procedure Fill_All;
    Procedure Save_All;
    Procedure Clear_All;

    Procedure Fill_Taglie;
    Procedure Save_Taglie;
    Procedure Fill_Colori;
    Procedure Save_Colori;
    Procedure Fill_Totale_Taglie;
    Procedure Save_Totale_Taglie;
    Procedure Fill_Totale_Colori;
    Procedure Save_Totale_Colori;
    Procedure Fill_Qta;
    Procedure Save_Qta;
    Procedure Clear_Qta;
    Procedure Clear_Totale;
    Procedure Clear_Taglie;
    Procedure Clear_Colori;
    Procedure Riempire;

  public
    { Public declarations }
  end;

var
  fTaglioFas: TfTaglioFas;

implementation

uses frmuSelectArticolo, uAzDM, uPrnForm, frmuVisPretaglio,
  uRicercaVeloceAZ, uVisTaglioFas;


{$R *.DFM}

procedure TfTaglioFas.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfTaglioFas.Clear_All;
Begin
 Clear_Qta;
// Clear_Totale;
 Clear_Taglie;
 Clear_Colori;
End;

procedure TfTaglioFas.Clear_Colori;
Var
 wI: Word;
begin
 For wI:=0 To 9 Do
   sgColori.Cells[0,wI]:='';
end;

procedure TfTaglioFas.Clear_Qta;
Var
 wI,wJ: Word;
begin
 // riempire con qta
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
     sgDett.Cells[wI,wJ]:='0';
End;

procedure TfTaglioFas.Clear_Taglie;
Var
 wI: Word;
begin
 For wI:=0 To 9 Do
 begin
   sgTaglie.Cells[wI,0]:='';
sgTaglie.Cells[wI,1]:='';
end;
end;

procedure TfTaglioFas.Clear_Totale;
Var
 wI: Word;
begin
 For wI:=0 To 9 Do
   sgTotalePerTaglie.Cells[wI,0]:='0';
 For wI:=0 To 9 Do
   sgTotalePerColori.Cells[0,wI]:='0';
 dbeQtaTotale.Field.AsInteger:=0;
End;

procedure TfTaglioFas.Fill_All;
begin
 // riempi tutto
 Try
  Fill_Taglie;
  Fill_Colori;
  Fill_Totale_Taglie;
  Fill_Totale_Colori;
  Fill_Qta;
 Except
 End; 

End;

procedure TfTaglioFas.Fill_Colori;
begin
 // riempire con i colori
 If Not(dsPretaglio.DataSet['COLORE0']=null) Then
  sgColori.Cells[0,0]:= dsPretaglio.DataSet['COLORE0'];
 If Not(dsPretaglio.DataSet['COLORE1']=null) Then
  sgColori.Cells[0,1]:= dsPretaglio.DataSet['COLORE1'];
 If Not(dsPretaglio.DataSet['COLORE2']=null) Then
  sgColori.Cells[0,2]:= dsPretaglio.DataSet['COLORE2'];
 If Not(dsPretaglio.DataSet['COLORE3']=null) Then
  sgColori.Cells[0,3]:= dsPretaglio.DataSet['COLORE3'];
 If Not(dsPretaglio.DataSet['COLORE4']=null) Then
  sgColori.Cells[0,4]:= dsPretaglio.DataSet['COLORE4'];
 If Not(dsPretaglio.DataSet['COLORE5']=null) Then
  sgColori.Cells[0,5]:= dsPretaglio.DataSet['COLORE5'];
 If Not(dsPretaglio.DataSet['COLORE6']=null) Then
  sgColori.Cells[0,6]:= dsPretaglio.DataSet['COLORE6'];
 If Not(dsPretaglio.DataSet['COLORE7']=null) Then
  sgColori.Cells[0,7]:= dsPretaglio.DataSet['COLORE7'];
 If Not(dsPretaglio.DataSet['COLORE8']=null) Then
  sgColori.Cells[0,8]:= dsPretaglio.DataSet['COLORE8'];
 If Not(dsPretaglio.DataSet['COLORE9']=null) Then
  sgColori.Cells[0,9]:= dsPretaglio.DataSet['COLORE9'];
end;

procedure TfTaglioFas.Fill_Qta;
Var
 wI,wJ: Word;
 strFieldIJ: String;
begin
 // riempire con qta
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
   Begin
     strFieldIJ:='QTA'+IntToStr(wI)+IntToStr(wJ);
     If Not(dsPretaglio.DataSet[strFieldIJ]=Null) Then 
       sgDett.Cells[wI,wJ]:=dsPretaglio.DataSet[strFieldIJ];
   End;
End;

procedure TfTaglioFas.Fill_Taglie;
begin
 // riempire con taglie
 If Not(dsPretaglio.DataSet['TAGLIA0']=Null) Then
  sgTaglie.Cells[0,1]:= dsPretaglio.DataSet['TAGLIA0'];
 If Not(dsPretaglio.DataSet['TAGLIA1']=Null) Then
  sgTaglie.Cells[1,1]:= dsPretaglio.DataSet['TAGLIA1'];
 If Not(dsPretaglio.DataSet['TAGLIA2']=Null) Then
  sgTaglie.Cells[2,1]:= dsPretaglio.DataSet['TAGLIA2'];
 If Not(dsPretaglio.DataSet['TAGLIA3']=Null) Then
  sgTaglie.Cells[3,1]:= dsPretaglio.DataSet['TAGLIA3'];
 If Not(dsPretaglio.DataSet['TAGLIA4']=Null) Then
  sgTaglie.Cells[4,1]:= dsPretaglio.DataSet['TAGLIA4'];
 If Not(dsPretaglio.DataSet['TAGLIA5']=Null) Then
  sgTaglie.Cells[5,1]:= dsPretaglio.DataSet['TAGLIA5'];
 If Not(dsPretaglio.DataSet['TAGLIA6']=Null) Then
  sgTaglie.Cells[6,1]:= dsPretaglio.DataSet['TAGLIA6'];
 If Not(dsPretaglio.DataSet['TAGLIA7']=Null) Then
  sgTaglie.Cells[7,1]:= dsPretaglio.DataSet['TAGLIA7'];
 If Not(dsPretaglio.DataSet['TAGLIA8']=Null) Then
  sgTaglie.Cells[8,1]:= dsPretaglio.DataSet['TAGLIA8'];
 If Not(dsPretaglio.DataSet['TAGLIA9']=Null) Then
  sgTaglie.Cells[9,1]:= dsPretaglio.DataSet['TAGLIA9'];

 If Not(dsPretaglio.DataSet['F0']=Null) Then
  sgTaglie.Cells[0,0]:= dsPretaglio.DataSet['F0'];
 If Not(dsPretaglio.DataSet['F1']=Null) Then
  sgTaglie.Cells[1,0]:= dsPretaglio.DataSet['F1'];
 If Not(dsPretaglio.DataSet['F2']=Null) Then
  sgTaglie.Cells[2,0]:= dsPretaglio.DataSet['F2'];
 If Not(dsPretaglio.DataSet['F3']=Null) Then
  sgTaglie.Cells[3,0]:= dsPretaglio.DataSet['F3'];
 If Not(dsPretaglio.DataSet['F4']=Null) Then
  sgTaglie.Cells[4,0]:= dsPretaglio.DataSet['F4'];
 If Not(dsPretaglio.DataSet['F5']=Null) Then
  sgTaglie.Cells[5,0]:= dsPretaglio.DataSet['F5'];
 If Not(dsPretaglio.DataSet['F6']=Null) Then
  sgTaglie.Cells[6,0]:= dsPretaglio.DataSet['F6'];
 If Not(dsPretaglio.DataSet['F7']=Null) Then
  sgTaglie.Cells[7,0]:= dsPretaglio.DataSet['F7'];
 If Not(dsPretaglio.DataSet['F8']=Null) Then
  sgTaglie.Cells[8,0]:= dsPretaglio.DataSet['F8'];
// If Not(dsPretaglio.DataSet['TAGLIA9']=Null) Then
//  sgTaglie.Cells[9,1]:= dsPretaglio.DataSet['TAGLIA9'];

end;

procedure TfTaglioFas.Fill_Totale_Colori;
begin
 // riempire con i totale colori
 If Not(dsPretaglio.DataSet['TOTALE_COLORE0']=Null) Then
  sgTotalePerColori.Cells[0,0]:= dsPretaglio.DataSet['TOTALE_COLORE0'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE1']=Null) Then
  sgTotalePerColori.Cells[0,1]:= dsPretaglio.DataSet['TOTALE_COLORE1'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE2']=Null) Then
  sgTotalePerColori.Cells[0,2]:= dsPretaglio.DataSet['TOTALE_COLORE2'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE3']=Null) Then
  sgTotalePerColori.Cells[0,3]:= dsPretaglio.DataSet['TOTALE_COLORE3'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE4']=Null) Then
  sgTotalePerColori.Cells[0,4]:= dsPretaglio.DataSet['TOTALE_COLORE4'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE5']=Null) Then
  sgTotalePerColori.Cells[0,5]:= dsPretaglio.DataSet['TOTALE_COLORE5'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE6']=Null) Then
  sgTotalePerColori.Cells[0,6]:= dsPretaglio.DataSet['TOTALE_COLORE6'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE7']=Null) Then
  sgTotalePerColori.Cells[0,7]:= dsPretaglio.DataSet['TOTALE_COLORE7'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE8']=Null) Then
  sgTotalePerColori.Cells[0,8]:= dsPretaglio.DataSet['TOTALE_COLORE8'];
 If Not(dsPretaglio.DataSet['TOTALE_COLORE9']=Null) Then
  sgTotalePerColori.Cells[0,9]:= dsPretaglio.DataSet['TOTALE_COLORE9'];
end;

procedure TfTaglioFas.Fill_Totale_Taglie;
begin
 // riempire con totale taglie
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA0']=Null) Then
  sgTotalePerTaglie.Cells[0,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA0'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA1']=Null) Then
  sgTotalePerTaglie.Cells[1,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA1'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA2']=Null) Then
  sgTotalePerTaglie.Cells[2,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA2'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA3']=Null) Then
  sgTotalePerTaglie.Cells[3,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA3'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA4']=Null) Then
  sgTotalePerTaglie.Cells[4,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA4'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA5']=Null) Then
  sgTotalePerTaglie.Cells[5,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA5'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA6']=Null) Then
  sgTotalePerTaglie.Cells[6,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA6'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA7']=Null) Then
  sgTotalePerTaglie.Cells[7,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA7'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA8']=Null) Then
  sgTotalePerTaglie.Cells[8,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA8'];
 If Not(dsPretaglio.DataSet['TOTALE_TAGLIA9']=Null) Then
  sgTotalePerTaglie.Cells[9,0]:= dsPretaglio.DataSet['TOTALE_TAGLIA9'];
end;

procedure TfTaglioFas.Save_All;
begin
 
  Save_Taglie;
  Save_Colori;
  Save_Totale_Taglie;
  Save_Totale_Colori;
  Save_Qta;
end;

procedure TfTaglioFas.Save_Colori;
begin
 // salvare i colori
  dsPretaglio.DataSet['COLORE0'] := UpperCase(sgColori.Cells[0,0]);
  dsPretaglio.DataSet['COLORE1'] := UpperCase(sgColori.Cells[0,1]);
  dsPretaglio.DataSet['COLORE2'] := UpperCase(sgColori.Cells[0,2]);
  dsPretaglio.DataSet['COLORE3'] := UpperCase(sgColori.Cells[0,3]);
  dsPretaglio.DataSet['COLORE4'] := UpperCase(sgColori.Cells[0,4]);
  dsPretaglio.DataSet['COLORE5'] := UpperCase(sgColori.Cells[0,5]);
  dsPretaglio.DataSet['COLORE6'] := UpperCase(sgColori.Cells[0,6]);
  dsPretaglio.DataSet['COLORE7'] := UpperCase(sgColori.Cells[0,7]);
  dsPretaglio.DataSet['COLORE8'] := UpperCase(sgColori.Cells[0,8]);
  dsPretaglio.DataSet['COLORE9'] := UpperCase(sgColori.Cells[0,9]);
end;

procedure TfTaglioFas.Save_Qta;
Var
 wI,wJ: Word;
 strFieldIJ: String;
begin
 // salvare con qta
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
   Begin
     strFieldIJ:='QTA'+IntToStr(wI)+IntToStr(wJ);
     dsPretaglio.DataSet[strFieldIJ]:=sgDett.Cells[wI,wJ];
   End;
End;

procedure TfTaglioFas.Save_Taglie;
begin
 // salvare le taglie
 dsPretaglio.DataSet['TAGLIA0'] := sgTaglie.Cells[0,1];
 dsPretaglio.DataSet['TAGLIA1'] := sgTaglie.Cells[1,1];
 dsPretaglio.DataSet['TAGLIA2'] := sgTaglie.Cells[2,1];
 dsPretaglio.DataSet['TAGLIA3'] := sgTaglie.Cells[3,1];
 dsPretaglio.DataSet['TAGLIA4'] := sgTaglie.Cells[4,1];
 dsPretaglio.DataSet['TAGLIA5'] := sgTaglie.Cells[5,1];
 dsPretaglio.DataSet['TAGLIA6'] := sgTaglie.Cells[6,1];
 dsPretaglio.DataSet['TAGLIA7'] := sgTaglie.Cells[7,1];
 dsPretaglio.DataSet['TAGLIA8'] := sgTaglie.Cells[8,1];
 dsPretaglio.DataSet['TAGLIA9'] := sgTaglie.Cells[9,1];

 dsPretaglio.DataSet['F0'] := sgTaglie.Cells[0,0];
 dsPretaglio.DataSet['F1'] := sgTaglie.Cells[1,0];
 dsPretaglio.DataSet['F2'] := sgTaglie.Cells[2,0];
 dsPretaglio.DataSet['F3'] := sgTaglie.Cells[3,0];
 dsPretaglio.DataSet['F4'] := sgTaglie.Cells[4,0];
 dsPretaglio.DataSet['F5'] := sgTaglie.Cells[5,0];
 dsPretaglio.DataSet['F6'] := sgTaglie.Cells[6,0];
 dsPretaglio.DataSet['F7'] := sgTaglie.Cells[7,0];
 dsPretaglio.DataSet['F8'] := sgTaglie.Cells[8,0];
// dsPretaglio.DataSet['F9'] := sgTaglie.Cells[9,0];

end;

procedure TfTaglioFas.Save_Totale_Colori;
begin
 // salvare i totale colori
 dsPretaglio.DataSet['TOTALE_COLORE0'] := sgTotalePerColori.Cells[0,0];
 dsPretaglio.DataSet['TOTALE_COLORE1'] := sgTotalePerColori.Cells[0,1];
 dsPretaglio.DataSet['TOTALE_COLORE2'] := sgTotalePerColori.Cells[0,2];
 dsPretaglio.DataSet['TOTALE_COLORE3'] := sgTotalePerColori.Cells[0,3];
 dsPretaglio.DataSet['TOTALE_COLORE4'] := sgTotalePerColori.Cells[0,4];
 dsPretaglio.DataSet['TOTALE_COLORE5'] := sgTotalePerColori.Cells[0,5];
 dsPretaglio.DataSet['TOTALE_COLORE6'] := sgTotalePerColori.Cells[0,6];
 dsPretaglio.DataSet['TOTALE_COLORE7'] := sgTotalePerColori.Cells[0,7];
 dsPretaglio.DataSet['TOTALE_COLORE8'] := sgTotalePerColori.Cells[0,8];
 dsPretaglio.DataSet['TOTALE_COLORE9'] := sgTotalePerColori.Cells[0,9];

end;

procedure TfTaglioFas.Save_Totale_Taglie;
begin
 // salvare totale taglie
 dsPretaglio.DataSet['TOTALE_TAGLIA0'] :=  sgTotalePerTaglie.Cells[0,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA1'] :=  sgTotalePerTaglie.Cells[1,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA2'] :=  sgTotalePerTaglie.Cells[2,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA3'] :=  sgTotalePerTaglie.Cells[3,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA4'] :=  sgTotalePerTaglie.Cells[4,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA5'] :=  sgTotalePerTaglie.Cells[5,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA6'] :=  sgTotalePerTaglie.Cells[6,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA7'] :=  sgTotalePerTaglie.Cells[7,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA8'] :=  sgTotalePerTaglie.Cells[8,0];
 dsPretaglio.DataSet['TOTALE_TAGLIA9'] :=  sgTotalePerTaglie.Cells[9,0];
End;

procedure TfTaglioFas.bbNuovoClick(Sender: TObject);
begin
boolModifica := False;
Browse_Mode(False);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsPretaglio.DataSet.Insert;
dbdteData.Field.AsDateTime:=Date;
Clear_All;
IBQuery1.Close;
IBQuery1.Open;
dsPretaglio.DataSet.fieldbyname('PK_DIST').AsInteger := 0;
dbeNumero.Field.AsInteger:=IBQuery1.fieldbyname('MAX').AsInteger+1;
dbeCodice.SetFocus;
end;

procedure TfTaglioFas.Browse_Mode(bMode: Boolean);
begin
 pnlPretaglio.Enabled:=Not(bMode);
 bbPrnLista.Enabled:=bMode;
 bbPrnScheda.Enabled:=bMode;
 bbNuovo.Enabled:=bMode;
 bbModifica.Enabled:=bMode;
 bbSalva.Enabled:=Not(bMode);
 bbElimina.Enabled:=(bMode);
 bbAnnulla.Enabled:=Not(bMode);
// bbCopia.Enabled:=bMode;
 bbEsci.Enabled:=bMode;
end;

procedure TfTaglioFas.bbModificaClick(Sender: TObject);
begin
 Browse_Mode(False);
 boolModifica := True;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsPretaglio.DataSet.Edit;
end;

procedure TfTaglioFas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
savep : TBookmark;
begin
dmodAz.ibqryPretFas.Close;
with dmodAz.ibqryPretFas do
begin
savep := GetBookmark;
Close;
SelectSQL.Clear;
SelectSQL.Add('Select * from TAGLIOFAS');
SelectSQL.Add('ORDER BY NUMERO');
Open;
GotoBookmark(savep);
FreeBookmark(savep);
end;
CanClose:=bbEsci.Enabled;
Close;
end;

procedure TfTaglioFas.Calcola_Totale;
Var
 wI,wJ: Word;
 wQtaTotale: Word;
qt1:Double;
begin
 If Not(Qta_Dett_Is_OK)
  Then Begin
         Application.MessageBox('I valori non sono interi!','attenzione',MB_OK+MB_ICONERROR);

         Exit;
       End;

 // then calcolare!


 wQtaTotale:=0;
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
     wQtaTotale:=wQtaTotale+ StrToInt(sgDett.Cells[wI,wJ]);
 dbeQtaTotale.Field.AsInteger:=wQtaTotale;
dbeTotale.Field.AsInteger:=wQtaTotale;
 // taglie
 For wI:=0 To 9 Do
 Begin
   wQtaTotale:=0;
   For wJ:=0 To 9 Do
      wQtaTotale:=wQtaTotale+ StrToInt(sgDett.Cells[wI,wJ]);
   sgTotalePerTaglie.Cells[wI,0]:=IntToStr(wQtaTotale);
 End;
 // colori
 For wJ:=0 To 9 Do
 Begin
   wQtaTotale:=0;
   For wI:=0 To 9 Do
      wQtaTotale:=wQtaTotale+ StrToInt(sgDett.Cells[wI,wJ]);
   sgTotalePerColori.Cells[0,wJ]:=IntToStr(wQtaTotale);
 End;
qt1 :=StrToInt(dbeQtaTotale.Text)/StrToInt(Edit1.Text);
Edit2.Text:=FloatToStr(qt1);

End;

Procedure TfTaglioFas.bbCalcolaClick(Sender: TObject);
begin
     Calcola_Totale;
end;

function TfTaglioFas.Qta_Dett_Is_OK: Boolean;
Var
 wI,wJ: Word;
begin
 // dobbiamo verificare se esistono i valori meno zero
 // e se tutti i valori sono numerici e interi!!!
 Try
   Result:=True;
   For wI:=0 To 9 Do
     For wJ:=0 To 9 Do
       StrToInt(sgDett.Cells[wI,wJ]);
 Except
  Result:=False;
 End;
End;

procedure TfTaglioFas.bbSalvaClick(Sender: TObject);
var
savep : TBookmark;
begin
 Browse_Mode(True);
 Calcola_Totale;
 Save_All;
 if boolModifica=false then
 dsPretaglio.DataSet['PASSATA'] := 'N';
try
 begin
 dsPretaglio.DataSet.Post;
 savep :=dsPretaglio.DataSet.GetBookmark;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 Apri;
dsPretaglio.DataSet.GotoBookmark(savep);
dsPretaglio.DataSet.FreeBookmark(savep);
end;

procedure TfTaglioFas.bbAnnullaClick(Sender: TObject);
begin
 Browse_Mode(True);
 dsPretaglio.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 Apri;
 Clear_All;
end;

procedure TfTaglioFas.bbEliminaClick(Sender: TObject);
begin
 Browse_Mode(True);
try
 begin
 dsPretaglio.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 Apri;
 Clear_All;
end;

procedure TfTaglioFas.bbCercaClick(Sender: TObject);
begin
 Cerca_Articolo;
end;

procedure TfTaglioFas.Cerca_Articolo;
begin
 frmSelectArticolo:=TfrmSelectArticolo.Create(Self);
 If Not(dbeCodice.Field.AsString='')
   Then frmSelectArticolo.strCodice:=dbeCodice.Field.AsString
   Else frmSelectArticolo.strCodice:='';
 If Not(dbeDescr.Field.AsString='')
   Then frmSelectArticolo.strDescr:=dbeDescr.Field.AsString
   Else frmSelectArticolo.strDescr:='';
 frmSelectArticolo.ShowModal;

 If (frmSelectArticolo.boolTrovato)
  Then Begin
         dbeCodice.Field.AsString:=
              dsArticoli.DataSet.FieldByName('Codice_Articolo').AsString;
         dbeDescr.Field.AsString:=
              dsArticoli.DataSet.FieldByName('Descr').AsString;
         // Riempi con taglie e collori
         Set_Assortimento;
       End;
 frmSelectArticolo.Free;
end;

procedure TfTaglioFas.Set_Assortimento;
Var
 wI,wJ: Word;
begin
 // da articolo corrente carica assortimento in grid
 // colori e taglie
 Try
//Riempire;

  // Aggiorna taglie e colori
Button1.Click;

  dmodAz.ibqryTaglia.Close;
  dmodAz.ibqryTaglia.ParamByName('parcodArt').AsString := dbeCodice.Text;
  dmodAz.ibqryColori.Close;
  dmodAz.ibqryColori.ParamByName('parcodArt').AsString := dbeCodice.Text;
  dmodAz.ibqryColori.Open;
  dmodAz.ibqryTaglia.Open;

  // le taglie
  dmodAz.ibqryTaglia.First;
  For wI:=0 To 9 Do
   If Not(dmodAz.ibqryTaglia.EoF)
    Then Begin
          sgTaglie.Cells[wI,1]:=dmodAz.ibqryTaglia.FieldByName('DESCR').asstring;
          sgTaglie.Cells[wI,0]:=FloatToStr(dmodAz.ibqryTaglia.FieldByName('TAGLIA').AsFloat);
          dmodAz.ibqryTaglia.Next;
         End;
  // i colori
  dmodAz.ibqryColori.First;
  For wJ:=0 To 9 Do
   If Not(dmodAz.ibqrycolori.EoF)
    Then Begin
          sgColori.Cells[0,wJ]:=dmodAz.ibqrycolori.FieldByName('COLORE').asstring;
          dmodAz.ibqrycolori.Next;
         End;
  // chiudi le tabelle
  dmodAz.ibqryTaglia.Close;
  dmodAz.ibqryColori.Close;
 Except

 End;


end;

procedure TfTaglioFas.bbPrnListaClick(Sender: TObject);
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frPretaglioFasListaSC.frf');
     ShowReport;
 End;
end;

procedure TfTaglioFas.bbPrnSchedaClick(Sender: TObject);
begin
 // Stampa!

   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frPretaglioFasScheda.frf');
     ShowReport;

 End;

end;

procedure TfTaglioFas.BitBtn1Click(Sender: TObject);
begin
 fVisTaglioFas:=TfVisTaglioFas.Create(Self);
 fVisTaglioFas.ShowModal;
 If (dsPretaglio.DataSet.State in [dsBrowse])
  Then
  begin
   Set_Assortimento;
   Clear_All;
   Fill_All;
  end;
 fVisTaglioFas.Free;

end;

procedure TfTaglioFas.dbeCodiceExit(Sender: TObject);
begin
 If (dbeCodice.Text='')
  Then Exit;
 If (boolModifica)
   Then Exit;

// If (boolArtLocated)Then
//  Exit;

 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;

  // Pass vals
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='CODICE_ARTICOLO';
    strCampo2:='DESCR';
    strCampo3:='PREZZO_BASE';
    intRichieste:=3;
    strResCampoCodice:='CODICE_ARTICOLO';
    strValore:= dbeCodice.Field.AsString;
   // get vals
    GetValues;
   // Get vals
 strCodArt:=VarToStr(vaResValore);
 dbeCodice.Field.AsString:= strCodArt;
 dbeDescr.Field.AsString:= VarToStr(vaResValore2);

   Free;
  End;

 //Riempire;
end;

procedure TfTaglioFas.Riempire;
Var
 iCntrT: Integer;
 iTotale: Integer;
begin
//IBTable1.Active := True;
// Edit1.Text := '0';

IBQuery2.Close;
IBQuery2.ParamByName('CA').AsString := dbeCodice.Text;
IBQuery2.Open;
IBQuery2.First;
IBQuery3.Close;
IBQuery3.ParamByName('CA').AsString := dbeCodice.Text;
IBQuery3.Open;
IBQuery3.First;

 DataSource2.DataSet.First;
 For iCntrT:=1 To 10 Do
 Begin
  If Not( DataSource2.DataSet.Eof)
   Then dbgAssort.Columns[iCntrT].Title.Caption:=
               DataSource2.DataSet.FieldByName('DESCR').AsString
   Else dbgAssort.Columns[iCntrT].Title.Caption:='-';

    DataSource2.DataSet.Next;

 End;

 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA01').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA01').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA02').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA02').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA03').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA03').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA04').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA04').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA05').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA05').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA06').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA06').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA07').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA07').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA08').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA08').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA09').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA09').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA10').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA10').AsInteger;
  dsAssort.DataSet.Next;
 End;
Edit1.Text:=IntToStr(iTotale);
 //Edit1.Text:='Totale: '+IntToStr(iTotale);



end;



procedure TfTaglioFas.Button1Click(Sender: TObject);
begin
Riempire;
end;

procedure TfTaglioFas.dbeCodiceChange(Sender: TObject);
begin
//Button1.Click;
end;

procedure TfTaglioFas.Button2Click(Sender: TObject);
var
itotale,j : integer;
qt1 : Double;
begin
 dsAssort.DataSet.First;
 iTotale:=0;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA01').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA01').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA02').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA02').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA03').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA03').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA04').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA04').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA05').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA05').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA06').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA06').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA07').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA07').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA08').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA08').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA09').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA09').AsInteger;
  If Not(dsAssort.DataSet.FieldByName('TAGLIA10').AsString='')
    Then iTotale:=iTotale+dsAssort.DataSet.FieldByName('TAGLIA10').AsInteger;
  dsAssort.DataSet.Next;
 End;

Edit1.Text:=IntToStr(iTotale);

qt1 :=StrToInt(dbeTotale.Text)/itotale;
Edit2.Text:=FloatToStr(qt1);
j:=0;
 dsAssort.DataSet.First;
 While Not(dsAssort.DataSet.Eof) Do
 Begin
  If Not(dsAssort.DataSet.FieldByName('TAGLIA01').AsString='')
    Then sgDett.Cells[0,J]  := FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA01').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA02').AsString='')
    Then sgDett.Cells[1,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA02').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA03').AsString='')
    Then sgDett.Cells[2,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA03').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA04').AsString='')
    Then sgDett.Cells[3,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA04').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA05').AsString='')
    Then sgDett.Cells[4,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA05').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA06').AsString='')
    Then sgDett.Cells[5,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA06').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA07').AsString='')
    Then sgDett.Cells[6,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA07').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA08').AsString='')
    Then sgDett.Cells[7,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA08').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA09').AsString='')
    Then sgDett.Cells[8,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA09').AsInteger*qt1);
  If Not(dsAssort.DataSet.FieldByName('TAGLIA10').AsString='')
    Then sgDett.Cells[9,J]  :=FloatToStr(dsAssort.DataSet.FieldByName('TAGLIA10').AsInteger*qt1);
j:=j+1;
  dsAssort.DataSet.Next;
 End;
bbCalcola.Click;
end;

procedure TfTaglioFas.Apri;
begin
With (dmodAz) Do
 Begin
  ibTab_Articoli.Open;
  ibqryPretFas.Open;
  ibqTab_Cli.Open;
  ibqTab_For.Open;
  IBQDepositi.Open;
  IBQryCommessi.Open;
 end;
end;

procedure TfTaglioFas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{with dmodAz.ibqryPretFas do
begin
Close;
SelectSQL.Clear;
SelectSQL.Add('select * from TAGLIOFAS Order by Numero');
open;
end; }

end;

procedure TfTaglioFas.FormShow(Sender: TObject);
begin
 If (dsPretaglio.DataSet.State in [dsBrowse])
  Then
  begin
   Set_Assortimento;
   Clear_All;
   Fill_All;
  end;

end;

procedure TfTaglioFas.rxdblcClienteChange(Sender: TObject);
begin
dsPretaglio.DataSet.FieldByName('PK_DIST').AsInteger :=
 rxdblcCliente.LookupSource.DataSet.FieldByName('ID_CLI_FOR').AsInteger;

end;

procedure TfTaglioFas.rxdblcClienteExit(Sender: TObject);
begin
if rxdblcCliente.Text = ''
then
dsPretaglio.DataSet.FieldByName('PK_DIST').AsInteger :=0;
end;

END.
