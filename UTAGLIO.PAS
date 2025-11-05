unit uTaglio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, ToolEdit, RXDBCtrl, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  ActnList, Grids, Db, DBGrids, IBCustomDataSet, IBQuery, Variants;

type
  TfTaglio = class(TForm)
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
    dstaglio: TDataSource;
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
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Button3: TButton;
    dsPre: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    IBQuery4: TIBQuery;
    IBQuery2TAGLIA: TFloatField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    IBQuery2PK_CODICE: TIntegerField;
    DBEdit4: TDBEdit;
    dbeDescrPerDocum: TDBMemo;
    Label7: TLabel;
    procedure bbEsciClick(Sender: TObject);
    procedure bbNuovoClick(Sender: TObject);
    procedure bbModificaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbCalcolaClick(Sender: TObject);
    procedure bbSalvaClick(Sender: TObject);
    procedure bbAnnullaClick(Sender: TObject);
    procedure bbEliminaClick(Sender: TObject);
    procedure dstaglioDataChange(Sender: TObject; Field: TField);
    procedure bbCercaClick(Sender: TObject);
    procedure bbPrnListaClick(Sender: TObject);
    procedure bbPrnSchedaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbeCodiceExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dbeNumeroExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rxdblcClienteChange(Sender: TObject);
    procedure rxdblcClienteExit(Sender: TObject);
    procedure dbeTotaleExit(Sender: TObject);
    procedure dbeTotaleKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumeroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    boolModifica : Boolean;
    strCodArt: String;
    Procedure Browse_Mode(bMode: Boolean);

    Function Qta_Dett_Is_OK: Boolean;
    Procedure Calcola_Totale;
    Procedure Cerca_Articolo;
    Procedure Cerca_Pretaglio;
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
  fTaglio: TfTaglio;

implementation

uses frmuSelectArticolo, uAzDM, uPrnForm, uRicercaVeloceAZ,
        uVisTaglio, uSelectPretaglio;

{$R *.DFM}

procedure TfTaglio.bbEsciClick(Sender: TObject);
begin
Close;
end;

procedure TfTaglio.Clear_All;
Begin
 Clear_Qta;
 Clear_Taglie;
 Clear_Colori;
End;

procedure TfTaglio.Clear_Colori;
Var
 wI: Word;
begin
 For wI:=0 To 9 Do
   begin
   sgColori.Cells[0,wI]:='';
   sgColori.Cells[1,wI]:='';
end;
end;

procedure TfTaglio.Clear_Qta;
Var
 wI,wJ: Word;
begin
 // riempire con qta
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
     sgDett.Cells[wI,wJ]:='0';
End;

procedure TfTaglio.Clear_Taglie;
Var
 wI: Word;
begin
 For wI:=0 To 9 Do
 begin
sgTaglie.Cells[wI,0]:='';
sgTaglie.Cells[wI,1]:='';
sgTaglie.Cells[wI,2]:='';
end;
end;

procedure TfTaglio.Clear_Totale;
Var
 wI: Word;
begin
 For wI:=0 To 9 Do
   sgTotalePerTaglie.Cells[wI,0]:='0';
 For wI:=0 To 9 Do
   sgTotalePerColori.Cells[0,wI]:='0';
 dbeQtaTotale.Field.AsInteger:=0;
End;

procedure TfTaglio.Fill_All;
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

procedure TfTaglio.Fill_Colori;
begin
 // riempire con i colori
 If Not(dstaglio.DataSet['COLORE0']=null) Then
  sgColori.Cells[0,0]:= dstaglio.DataSet['COLORE0'];
 If Not(dstaglio.DataSet['COLORE1']=null) Then
  sgColori.Cells[0,1]:= dstaglio.DataSet['COLORE1'];
 If Not(dstaglio.DataSet['COLORE2']=null) Then
  sgColori.Cells[0,2]:= dstaglio.DataSet['COLORE2'];
 If Not(dstaglio.DataSet['COLORE3']=null) Then
  sgColori.Cells[0,3]:= dstaglio.DataSet['COLORE3'];
 If Not(dstaglio.DataSet['COLORE4']=null) Then
  sgColori.Cells[0,4]:= dstaglio.DataSet['COLORE4'];
 If Not(dstaglio.DataSet['COLORE5']=null) Then
  sgColori.Cells[0,5]:= dstaglio.DataSet['COLORE5'];
 If Not(dstaglio.DataSet['COLORE6']=null) Then
  sgColori.Cells[0,6]:= dstaglio.DataSet['COLORE6'];
 If Not(dstaglio.DataSet['COLORE7']=null) Then
  sgColori.Cells[0,7]:= dstaglio.DataSet['COLORE7'];
 If Not(dstaglio.DataSet['COLORE8']=null) Then
  sgColori.Cells[0,8]:= dstaglio.DataSet['COLORE8'];
 If Not(dstaglio.DataSet['COLORE9']=null) Then
  sgColori.Cells[0,9]:= dstaglio.DataSet['COLORE9'];

 If Not(dstaglio.DataSet['H0']=null) Then
  sgColori.Cells[1,0]:= dstaglio.DataSet['H0'];
 If Not(dstaglio.DataSet['H1']=null) Then
  sgColori.Cells[1,1]:= dstaglio.DataSet['H1'];
 If Not(dstaglio.DataSet['H2']=null) Then
  sgColori.Cells[1,2]:= dstaglio.DataSet['H2'];
 If Not(dstaglio.DataSet['H3']=null) Then
  sgColori.Cells[1,3]:= dstaglio.DataSet['H3'];
 If Not(dstaglio.DataSet['H4']=null) Then
  sgColori.Cells[1,4]:= dstaglio.DataSet['H4'];
 If Not(dstaglio.DataSet['H5']=null) Then
  sgColori.Cells[1,5]:= dstaglio.DataSet['H5'];
 If Not(dstaglio.DataSet['H6']=null) Then
  sgColori.Cells[1,6]:= dstaglio.DataSet['H6'];
 If Not(dstaglio.DataSet['H7']=null) Then
  sgColori.Cells[1,7]:= dstaglio.DataSet['H7'];
 If Not(dstaglio.DataSet['H8']=null) Then
  sgColori.Cells[1,8]:= dstaglio.DataSet['H8'];



  end;

procedure TfTaglio.Fill_Qta;
Var
 wI,wJ: Word;
 strFieldIJ: String;
begin
 // riempire con qta
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
   Begin
     strFieldIJ:='QTA'+IntToStr(wI)+IntToStr(wJ);
     If Not(dstaglio.DataSet[strFieldIJ]=Null) Then
       sgDett.Cells[wI,wJ]:=dstaglio.DataSet[strFieldIJ];
   End;
End;

procedure TfTaglio.Fill_Taglie;
begin
 // riempire con taglie
 If Not(dstaglio.DataSet['TAGLIA0']=Null) Then
  sgTaglie.Cells[0,2]:= dstaglio.DataSet['TAGLIA0'];
 If Not(dstaglio.DataSet['TAGLIA1']=Null) Then
  sgTaglie.Cells[1,2]:= dstaglio.DataSet['TAGLIA1'];
 If Not(dstaglio.DataSet['TAGLIA2']=Null) Then
  sgTaglie.Cells[2,2]:= dstaglio.DataSet['TAGLIA2'];
 If Not(dstaglio.DataSet['TAGLIA3']=Null) Then
  sgTaglie.Cells[3,2]:= dstaglio.DataSet['TAGLIA3'];
 If Not(dstaglio.DataSet['TAGLIA4']=Null) Then
  sgTaglie.Cells[4,2]:= dstaglio.DataSet['TAGLIA4'];
 If Not(dstaglio.DataSet['TAGLIA5']=Null) Then
  sgTaglie.Cells[5,2]:= dstaglio.DataSet['TAGLIA5'];
 If Not(dstaglio.DataSet['TAGLIA6']=Null) Then
  sgTaglie.Cells[6,2]:= dstaglio.DataSet['TAGLIA6'];
 If Not(dstaglio.DataSet['TAGLIA7']=Null) Then
  sgTaglie.Cells[7,2]:= dstaglio.DataSet['TAGLIA7'];
 If Not(dstaglio.DataSet['TAGLIA8']=Null) Then
  sgTaglie.Cells[8,2]:= dstaglio.DataSet['TAGLIA8'];
 If Not(dstaglio.DataSet['TAGLIA9']=Null) Then
  sgTaglie.Cells[9,2]:= dstaglio.DataSet['TAGLIA9'];

 If Not(dstaglio.DataSet['F0']=Null) Then
  sgTaglie.Cells[0,1]:= dstaglio.DataSet['F0'];
 If Not(dstaglio.DataSet['F1']=Null) Then
  sgTaglie.Cells[1,1]:= dstaglio.DataSet['F1'];
 If Not(dstaglio.DataSet['F2']=Null) Then
  sgTaglie.Cells[2,1]:= dstaglio.DataSet['F2'];
 If Not(dstaglio.DataSet['F3']=Null) Then
  sgTaglie.Cells[3,1]:= dstaglio.DataSet['F3'];
 If Not(dstaglio.DataSet['F4']=Null) Then
  sgTaglie.Cells[4,1]:= dstaglio.DataSet['F4'];
 If Not(dstaglio.DataSet['F5']=Null) Then
  sgTaglie.Cells[5,1]:= dstaglio.DataSet['F5'];
 If Not(dstaglio.DataSet['F6']=Null) Then
  sgTaglie.Cells[6,1]:= dstaglio.DataSet['F6'];
 If Not(dstaglio.DataSet['F7']=Null) Then
  sgTaglie.Cells[7,1]:= dstaglio.DataSet['F7'];
 If Not(dstaglio.DataSet['F8']=Null) Then
  sgTaglie.Cells[8,1]:= dstaglio.DataSet['F8'];

  If Not(dstaglio.DataSet['G0']=Null) Then
  sgTaglie.Cells[0,0]:= dstaglio.DataSet['G0'];
 If Not(dstaglio.DataSet['G1']=Null) Then
  sgTaglie.Cells[1,0]:= dstaglio.DataSet['G1'];
 If Not(dstaglio.DataSet['G2']=Null) Then
  sgTaglie.Cells[2,0]:= dstaglio.DataSet['G2'];
 If Not(dstaglio.DataSet['G3']=Null) Then
  sgTaglie.Cells[3,0]:= dstaglio.DataSet['G3'];
 If Not(dstaglio.DataSet['G4']=Null) Then
  sgTaglie.Cells[4,0]:= dstaglio.DataSet['G4'];
 If Not(dstaglio.DataSet['G5']=Null) Then
  sgTaglie.Cells[5,0]:= dstaglio.DataSet['G5'];
 If Not(dstaglio.DataSet['G6']=Null) Then
  sgTaglie.Cells[6,0]:= dstaglio.DataSet['G6'];
 If Not(dstaglio.DataSet['G7']=Null) Then
  sgTaglie.Cells[7,0]:= dstaglio.DataSet['G7'];
 If Not(dstaglio.DataSet['G8']=Null) Then
  sgTaglie.Cells[8,0]:= dstaglio.DataSet['G8'];
end;

procedure TfTaglio.Fill_Totale_Colori;
begin
 // riempire con i totale colori
 If Not(dstaglio.DataSet['TOTALE_COLORE0']=Null) Then
  sgTotalePerColori.Cells[0,0]:= dstaglio.DataSet['TOTALE_COLORE0'];
 If Not(dstaglio.DataSet['TOTALE_COLORE1']=Null) Then
  sgTotalePerColori.Cells[0,1]:= dstaglio.DataSet['TOTALE_COLORE1'];
 If Not(dstaglio.DataSet['TOTALE_COLORE2']=Null) Then
  sgTotalePerColori.Cells[0,2]:= dstaglio.DataSet['TOTALE_COLORE2'];
 If Not(dstaglio.DataSet['TOTALE_COLORE3']=Null) Then
  sgTotalePerColori.Cells[0,3]:= dstaglio.DataSet['TOTALE_COLORE3'];
 If Not(dstaglio.DataSet['TOTALE_COLORE4']=Null) Then
  sgTotalePerColori.Cells[0,4]:= dstaglio.DataSet['TOTALE_COLORE4'];
 If Not(dstaglio.DataSet['TOTALE_COLORE5']=Null) Then
  sgTotalePerColori.Cells[0,5]:= dstaglio.DataSet['TOTALE_COLORE5'];
 If Not(dstaglio.DataSet['TOTALE_COLORE6']=Null) Then
  sgTotalePerColori.Cells[0,6]:= dstaglio.DataSet['TOTALE_COLORE6'];
 If Not(dstaglio.DataSet['TOTALE_COLORE7']=Null) Then
  sgTotalePerColori.Cells[0,7]:= dstaglio.DataSet['TOTALE_COLORE7'];
 If Not(dstaglio.DataSet['TOTALE_COLORE8']=Null) Then
  sgTotalePerColori.Cells[0,8]:= dstaglio.DataSet['TOTALE_COLORE8'];
 If Not(dstaglio.DataSet['TOTALE_COLORE9']=Null) Then
  sgTotalePerColori.Cells[0,9]:= dstaglio.DataSet['TOTALE_COLORE9'];
end;

procedure TfTaglio.Fill_Totale_Taglie;
begin
 // riempire con totale taglie
 If Not(dstaglio.DataSet['TOTALE_TAGLIA0']=Null) Then
  sgTotalePerTaglie.Cells[0,0]:= dstaglio.DataSet['TOTALE_TAGLIA0'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA1']=Null) Then
  sgTotalePerTaglie.Cells[1,0]:= dstaglio.DataSet['TOTALE_TAGLIA1'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA2']=Null) Then
  sgTotalePerTaglie.Cells[2,0]:= dstaglio.DataSet['TOTALE_TAGLIA2'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA3']=Null) Then
  sgTotalePerTaglie.Cells[3,0]:= dstaglio.DataSet['TOTALE_TAGLIA3'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA4']=Null) Then
  sgTotalePerTaglie.Cells[4,0]:= dstaglio.DataSet['TOTALE_TAGLIA4'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA5']=Null) Then
  sgTotalePerTaglie.Cells[5,0]:= dstaglio.DataSet['TOTALE_TAGLIA5'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA6']=Null) Then
  sgTotalePerTaglie.Cells[6,0]:= dstaglio.DataSet['TOTALE_TAGLIA6'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA7']=Null) Then
  sgTotalePerTaglie.Cells[7,0]:= dstaglio.DataSet['TOTALE_TAGLIA7'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA8']=Null) Then
  sgTotalePerTaglie.Cells[8,0]:= dstaglio.DataSet['TOTALE_TAGLIA8'];
 If Not(dstaglio.DataSet['TOTALE_TAGLIA9']=Null) Then
  sgTotalePerTaglie.Cells[9,0]:= dstaglio.DataSet['TOTALE_TAGLIA9'];
end;

procedure TfTaglio.Save_All;
begin
  Save_Taglie;
  Save_Colori;
  Save_Totale_Taglie;
  Save_Totale_Colori;
  Save_Qta;
end;

procedure TfTaglio.Save_Colori;
begin
 // salvare i colori
  dstaglio.DataSet['COLORE0'] := UpperCase(sgColori.Cells[0,0]);
  dstaglio.DataSet['COLORE1'] := UpperCase(sgColori.Cells[0,1]);
  dstaglio.DataSet['COLORE2'] := UpperCase(sgColori.Cells[0,2]);
  dstaglio.DataSet['COLORE3'] := UpperCase(sgColori.Cells[0,3]);
  dstaglio.DataSet['COLORE4'] := UpperCase(sgColori.Cells[0,4]);
  dstaglio.DataSet['COLORE5'] := UpperCase(sgColori.Cells[0,5]);
  dstaglio.DataSet['COLORE6'] := UpperCase(sgColori.Cells[0,6]);
  dstaglio.DataSet['COLORE7'] := UpperCase(sgColori.Cells[0,7]);
  dstaglio.DataSet['COLORE8'] := UpperCase(sgColori.Cells[0,8]);
  dstaglio.DataSet['COLORE9'] := UpperCase(sgColori.Cells[0,9]);

  dstaglio.DataSet['H0'] := UpperCase(sgColori.Cells[1,0]);
  dstaglio.DataSet['H1'] := UpperCase(sgColori.Cells[1,1]);
  dstaglio.DataSet['H2'] := UpperCase(sgColori.Cells[1,2]);
  dstaglio.DataSet['H3'] := UpperCase(sgColori.Cells[1,3]);
  dstaglio.DataSet['H4'] := UpperCase(sgColori.Cells[1,4]);
  dstaglio.DataSet['H5'] := UpperCase(sgColori.Cells[1,5]);
  dstaglio.DataSet['H6'] := UpperCase(sgColori.Cells[1,6]);
  dstaglio.DataSet['H7'] := UpperCase(sgColori.Cells[1,7]);
  dstaglio.DataSet['H8'] := UpperCase(sgColori.Cells[1,8]);


end;

procedure TfTaglio.Save_Qta;
Var
 wI,wJ: Word;
 strFieldIJ: String;
begin
 // salvare con qta
 For wI:=0 To 9 Do
   For wJ:=0 To 9 Do
   Begin
     strFieldIJ:='QTA'+IntToStr(wI)+IntToStr(wJ);
     dstaglio.DataSet[strFieldIJ]:=sgDett.Cells[wI,wJ];
   End;
End;

procedure TfTaglio.Save_Taglie;
begin
 // salvare le taglie
 dstaglio.DataSet['TAGLIA0'] := sgTaglie.Cells[0,2];
 dstaglio.DataSet['TAGLIA1'] := sgTaglie.Cells[1,2];
 dstaglio.DataSet['TAGLIA2'] := sgTaglie.Cells[2,2];
 dstaglio.DataSet['TAGLIA3'] := sgTaglie.Cells[3,2];
 dstaglio.DataSet['TAGLIA4'] := sgTaglie.Cells[4,2];
 dstaglio.DataSet['TAGLIA5'] := sgTaglie.Cells[5,2];
 dstaglio.DataSet['TAGLIA6'] := sgTaglie.Cells[6,2];
 dstaglio.DataSet['TAGLIA7'] := sgTaglie.Cells[7,2];
 dstaglio.DataSet['TAGLIA8'] := sgTaglie.Cells[8,2];
 dstaglio.DataSet['TAGLIA9'] := sgTaglie.Cells[9,2];

 dstaglio.DataSet['F0'] := sgTaglie.Cells[0,1];
 dstaglio.DataSet['F1'] := sgTaglie.Cells[1,1];
 dstaglio.DataSet['F2'] := sgTaglie.Cells[2,1];
 dstaglio.DataSet['F3'] := sgTaglie.Cells[3,1];
 dstaglio.DataSet['F4'] := sgTaglie.Cells[4,1];
 dstaglio.DataSet['F5'] := sgTaglie.Cells[5,1];
 dstaglio.DataSet['F6'] := sgTaglie.Cells[6,1];
 dstaglio.DataSet['F7'] := sgTaglie.Cells[7,1];
 dstaglio.DataSet['F8'] := sgTaglie.Cells[8,1];
// dstaglio.DataSet['F9'] := sgTaglie.Cells[9,0];

 dstaglio.DataSet['G0'] := sgTaglie.Cells[0,0];
 dstaglio.DataSet['G1'] := sgTaglie.Cells[1,0];
 dstaglio.DataSet['G2'] := sgTaglie.Cells[2,0];
 dstaglio.DataSet['G3'] := sgTaglie.Cells[3,0];
 dstaglio.DataSet['G4'] := sgTaglie.Cells[4,0];
 dstaglio.DataSet['G5'] := sgTaglie.Cells[5,0];
 dstaglio.DataSet['G6'] := sgTaglie.Cells[6,0];
 dstaglio.DataSet['G7'] := sgTaglie.Cells[7,0];
 dstaglio.DataSet['G8'] := sgTaglie.Cells[8,0];

end;

procedure TfTaglio.Save_Totale_Colori;
begin
 // salvare i totale colori
 dstaglio.DataSet['TOTALE_COLORE0'] := sgTotalePerColori.Cells[0,0];
 dstaglio.DataSet['TOTALE_COLORE1'] := sgTotalePerColori.Cells[0,1];
 dstaglio.DataSet['TOTALE_COLORE2'] := sgTotalePerColori.Cells[0,2];
 dstaglio.DataSet['TOTALE_COLORE3'] := sgTotalePerColori.Cells[0,3];
 dstaglio.DataSet['TOTALE_COLORE4'] := sgTotalePerColori.Cells[0,4];
 dstaglio.DataSet['TOTALE_COLORE5'] := sgTotalePerColori.Cells[0,5];
 dstaglio.DataSet['TOTALE_COLORE6'] := sgTotalePerColori.Cells[0,6];
 dstaglio.DataSet['TOTALE_COLORE7'] := sgTotalePerColori.Cells[0,7];
 dstaglio.DataSet['TOTALE_COLORE8'] := sgTotalePerColori.Cells[0,8];
 dstaglio.DataSet['TOTALE_COLORE9'] := sgTotalePerColori.Cells[0,9];
end;

procedure TfTaglio.Save_Totale_Taglie;
begin
 // salvare totale taglie
 dstaglio.DataSet['TOTALE_TAGLIA0'] :=  sgTotalePerTaglie.Cells[0,0];
 dstaglio.DataSet['TOTALE_TAGLIA1'] :=  sgTotalePerTaglie.Cells[1,0];
 dstaglio.DataSet['TOTALE_TAGLIA2'] :=  sgTotalePerTaglie.Cells[2,0];
 dstaglio.DataSet['TOTALE_TAGLIA3'] :=  sgTotalePerTaglie.Cells[3,0];
 dstaglio.DataSet['TOTALE_TAGLIA4'] :=  sgTotalePerTaglie.Cells[4,0];
 dstaglio.DataSet['TOTALE_TAGLIA5'] :=  sgTotalePerTaglie.Cells[5,0];
 dstaglio.DataSet['TOTALE_TAGLIA6'] :=  sgTotalePerTaglie.Cells[6,0];
 dstaglio.DataSet['TOTALE_TAGLIA7'] :=  sgTotalePerTaglie.Cells[7,0];
 dstaglio.DataSet['TOTALE_TAGLIA8'] :=  sgTotalePerTaglie.Cells[8,0];
 dstaglio.DataSet['TOTALE_TAGLIA9'] :=  sgTotalePerTaglie.Cells[9,0];
End;

procedure TfTaglio.bbNuovoClick(Sender: TObject);
begin
boolModifica := False;
Browse_Mode(False);
IBQuery1.Close;
IBQuery1.Open;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dstaglio.DataSet.Insert;
dbdteData.Field.AsDateTime:=Date;
Clear_All;
Clear_Totale;
dstaglio.DataSet.fieldbyname('PK_DIST').AsInteger := 0;
dbeNumero.Field.AsInteger:=IBQuery1.fieldbyname('MAX').AsInteger+1;
dbeCodice.SetFocus;
end;

procedure TfTaglio.Browse_Mode(bMode: Boolean);
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

procedure TfTaglio.bbModificaClick(Sender: TObject);
begin
boolModifica := True;
Browse_Mode(False);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dstaglio.DataSet.Edit;
end;

procedure TfTaglio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
savep : TBookmark;
  begin
with dmodAz.ibqryTaglio do
begin
savep := GetBookmark;
Close;
SelectSQL.Clear;
SelectSQL.Add('Select * from TAGLIO');
SelectSQL.Add('ORDER BY NUMERO');
Open;
GotoBookmark(savep);
FreeBookmark(savep);
end;
CanClose:=bbEsci.Enabled;
Close;
end;

procedure TfTaglio.Calcola_Totale;
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

Procedure TfTaglio.bbCalcolaClick(Sender: TObject);
begin
     Calcola_Totale;
end;

function TfTaglio.Qta_Dett_Is_OK: Boolean;
Var
 wI,wJ: Word;
begin
 Try
   Result:=True;
   For wI:=0 To 9 Do
     For wJ:=0 To 9 Do
       StrToInt(sgDett.Cells[wI,wJ]);
 Except
  Result:=False;
 End;
End;

procedure TfTaglio.bbSalvaClick(Sender: TObject);
var
pre : integer;
savep : TBookmark;
pk_cod : integer;
begin
Browse_Mode(True);
Calcola_Totale;
Save_All;
if boolModifica=false then
dstaglio.DataSet['PASSATA'] := 'N';
pk_cod := dstaglio.DataSet.fieldbyname('PK_CODICE').AsVariant;
try
 begin
dstaglio.DataSet.Post;
pre := DBEdit3.Field.AsInteger;
dmodAz.ibqryPretaglio.Close;
dmodAz.ibqryPretaglio.Open;

if dsPre.DataSet.Locate('NUMERO',pre,[]) then
begin
dsPre.DataSet.Edit;
dsPre.DataSet.FieldByName('PASSATA').AsString := 'S';
dsPre.DataSet.Post;
dmodAz.ibqryPretaglio.Close;
end;
savep :=dstaglio.DataSet.GetBookmark;
dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 Apri;
dstaglio.DataSet.GotoBookmark(savep);
dstaglio.DataSet.FreeBookmark(savep);
dstaglio.DataSet.Locate('PK_CODICE',pk_cod,[]);
end;

procedure TfTaglio.bbAnnullaClick(Sender: TObject);
begin
 Browse_Mode(True);
 dstaglio.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 Clear_All;
  Apri;
end;

procedure TfTaglio.bbEliminaClick(Sender: TObject);
var
pre : integer;
begin
If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
Browse_Mode(True);
try
 begin
pre := DBEdit3.Field.AsInteger;
dmodAz.ibqryPretaglio.Close;
dmodAz.ibqryPretaglio.Open;
if dsPre.DataSet.Locate('NUMERO',pre,[]) then
begin
dsPre.DataSet.Edit;
dsPre.DataSet.FieldByName('PASSATA').AsString := 'N';
dsPre.DataSet.Post;
end;
 dstaglio.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 Apri;
 Clear_All;
end;

procedure TfTaglio.dstaglioDataChange(
  Sender: TObject; Field: TField);
  begin
{ If (dstaglio.DataSet.State in [dsBrowse])
  Then
  begin
Set_Assortimento;
   Clear_All;
   Fill_All;
  end;}
end;


procedure TfTaglio.bbCercaClick(Sender: TObject);
begin
 Cerca_Articolo;
end;

procedure TfTaglio.Cerca_Articolo;
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

procedure TfTaglio.Set_Assortimento;
Var
 wI,wJ: Word;
begin
 // da articolo corrente carica assortimento in grid
 // colori e taglie
 Try
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
          sgTaglie.Cells[wI,2]:=dmodAz.ibqryTaglia.FieldByName('DESCR').asstring;
          sgTaglie.Cells[wI,1]:=varToStr(dmodAz.ibqryTaglia.FieldByName('TAGLIA').AsVariant);
          sgTaglie.Cells[wI,0]:=(dmodAz.ibqryTaglia.FieldByName('COPPA').asstring);
          dmodAz.ibqryTaglia.Next;
         End;

  dmodAz.ibqryColori.First;
  For wJ:=0 To 9 Do
   If Not(dmodAz.ibqrycolori.EoF)
    Then Begin
          sgColori.Cells[0,wJ]:=dmodAz.ibqrycolori.FieldByName('COLORE').asstring;
          dmodAz.ibqrycolori.Next;
         End;
  dmodAz.ibqryTaglia.Close;
  dmodAz.ibqryColori.Close;
 Except

 End;
end;

procedure TfTaglio.bbPrnListaClick(Sender: TObject);
begin
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frTaglioListaSC.frf');
     ShowReport;

 End;
end;

procedure TfTaglio.bbPrnSchedaClick(Sender: TObject);
begin
 With (dmodAz) Do
 Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('select');
   ibqRicerca.SQL.Add('A.PK_CODICE, A.CODICE_ARTICOLO, A.DESCR_ARTICOLO, A.MANODOPERA,');
   ibqRicerca.SQL.Add('A.RICAMO, A.FASONISTA, A.SITUAZIONE, A.COPPE, A.ACCESSORI, A.ALTRO1,');
   ibqRicerca.SQL.Add('A.ALTRO2, A.ALTRO3, A.ALTRO4, A.COSTO, A.RICAR1PERC, A.RICAR2PERC,');
   ibqRicerca.SQL.Add('A.RICAR_LIRE, A.PREZZO_VENDITA, A.COSTO_ACCESS_TOTALE, A.COSTO_TOTALE,A.CODCLI,');

   ibqRicerca.SQL.Add('B.FK_DISTINTE, B.CODICE_ARTICOLO as B_codice_articolo,');
   ibqRicerca.SQL.Add('B.DESCR_ARTICOLO as B_descr_articolo, B.QTA as B_qta,');
   ibqRicerca.SQL.Add('B.COSTO as B_costo, B.PREZZO as B_prezzo,  B.FLAG_SCATOLO b_flag_scatolo,tab_cli_for.denominazione,tab_articoli.PREZZO_BASE');
   ibqRicerca.SQL.Add('from DISTINTE A left JOIN  DISTINTE_DETT B ON B.FK_DISTINTE = A.PK_CODICE');
   ibqRicerca.SQL.Add('left JOIN  tab_cli_for ON distinte.codcli=tab_cli_for.id_cli_for');
   ibqRicerca.SQL.Add('left JOIN  tab_articoli ON distinte.codice_articolo=tab_articoli.codice_articolo');
   ibqRicerca.SQL.Add('WHERE A.CODICE_ARTICOLO IS NOT NULL');


   ibqRicerca.SQL.Add('AND A.CODICE_ARTICOLO ='''+dbeCodice.Text+'''');


   If (rxdblcCliente.Text <>'') Then
Begin
ibqRicerca.SQL.Add('AND A.CODCLI =:parCodCli');
ibqRicerca.ParamByName('parCodCli').AsInteger:=rxdblcCliente.LookupSource.DataSet.FieldByName('ID_CLI_FOR').AsInteger;

//ibqRicerca.SQL.Add('AND A.CODCLI ='''+rxdblcCliente.LookupSource.DataSet.FieldByName('ID_CLI_FOR').AsInteger+'''');
end;

ibqRicerca.SQL.Add('ORDER by B.CODICE_ARTICOLO');
ibqRicerca.OpeN;
end;

if dmodAz.ibqRicerca.IsEmpty then
 With (dmodAz) Do
 Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('select');
   ibqRicerca.SQL.Add('A.PK_CODICE, A.CODICE_ARTICOLO, A.DESCR_ARTICOLO, A.MANODOPERA,');
   ibqRicerca.SQL.Add('A.RICAMO, A.FASONISTA, A.SITUAZIONE, A.COPPE, A.ACCESSORI, A.ALTRO1,');
   ibqRicerca.SQL.Add('A.ALTRO2, A.ALTRO3, A.ALTRO4, A.COSTO, A.RICAR1PERC, A.RICAR2PERC,');
   ibqRicerca.SQL.Add('A.RICAR_LIRE, A.PREZZO_VENDITA, A.COSTO_ACCESS_TOTALE, A.COSTO_TOTALE,A.CODCLI,');

   ibqRicerca.SQL.Add('B.FK_DISTINTE, B.CODICE_ARTICOLO as B_codice_articolo,');
   ibqRicerca.SQL.Add('B.DESCR_ARTICOLO as B_descr_articolo, B.QTA as B_qta,');
   ibqRicerca.SQL.Add('B.COSTO as B_costo, B.PREZZO as B_prezzo,  B.FLAG_SCATOLO b_flag_scatolo,tab_cli_for.denominazione,tab_articoli.PREZZO_BASE');
   ibqRicerca.SQL.Add('from DISTINTE A left JOIN  DISTINTE_DETT B ON B.FK_DISTINTE = A.PK_CODICE');
   ibqRicerca.SQL.Add('left JOIN  tab_cli_for ON distinte.codcli=tab_cli_for.id_cli_for');
   ibqRicerca.SQL.Add('left JOIN  tab_articoli ON distinte.codice_articolo=tab_articoli.codice_articolo');
   ibqRicerca.SQL.Add('WHERE A.CODICE_ARTICOLO IS NOT NULL');


   ibqRicerca.SQL.Add('AND A.CODICE_ARTICOLO ='''+dbeCodice.Text+'''');


ibqRicerca.SQL.Add('ORDER by B.CODICE_ARTICOLO');
ibqRicerca.OpeN;
end;



   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frTaglioScheda.frf');
     ShowReport;
 End;

end;

procedure TfTaglio.BitBtn1Click(Sender: TObject);
begin
 fVisTaglio:=TfVisTaglio.Create(Self);
 fVisTaglio.ShowModal;
 If (dstaglio.DataSet.State in [dsBrowse])
  Then
  begin
  Set_Assortimento;
  Clear_All;
  Fill_All;
  end;
  fVisTaglio.Free;
end;

procedure TfTaglio.dbeCodiceExit(Sender: TObject);
begin
 If (dbeCodice.Text='')
  Then Exit;
 If (boolModifica)
   Then Exit;
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='CODICE_ARTICOLO';
    strCampo2:='DESCR';
    strCampo3:='PREZZO_BASE';
    intRichieste:=3;
    strResCampoCodice:='CODICE_ARTICOLO';
    strValore:= dbeCodice.Field.AsString;
    GetValues;
 strCodArt:=VarToStr(vaResValore);
 dbeCodice.Field.AsString:= strCodArt;
 dbeDescr.Field.AsString:= VarToStr(vaResValore2);

   Free;
  End;
end;

procedure TfTaglio.Riempire;
Var
 iCntrT: Integer;
 iTotale: Integer;
begin
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
end;



procedure TfTaglio.Button1Click(Sender: TObject);
begin
Riempire;
end;

procedure TfTaglio.Button2Click(Sender: TObject);
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

procedure TfTaglio.Cerca_Pretaglio;
begin
 frmSelectPretaglio:=TfrmSelectPretaglio.Create(Self);
  frmSelectPretaglio.ShowModal;



 {
 If Not(dbeCodice.Field.AsString='')
   Then frmSelectArticolo.strCodice:=dbeCodice.Field.AsString
   Else frmSelectArticolo.strCodice:='';
 If Not(dbeDescr.Field.AsString='')
   Then frmSelectPretaglio.strDescr:=dbeDescr.Field.AsString
   Else frmSelectPretaglio.strDescr:='';
 frmSelectPretaglio.ShowModal;

 If (frmSelectPretaglio.boolTrovato)
  Then Begin
         dbeCodice.Field.AsString:=
              dsArticoli.DataSet.FieldByName('Codice_Articolo').AsString;
         dbeDescr.Field.AsString:=
              dsArticoli.DataSet.FieldByName('Descr').AsString;
         // Riempi con taglie e collori
         Set_Assortimento;
       End;
}
//         Set_Assortimento;
Button1.Click;
 frmSelectPretaglio.Free;
end;



procedure TfTaglio.Button3Click(Sender: TObject);
begin
 Cerca_Pretaglio;
end;

procedure TfTaglio.dbeNumeroExit(Sender: TObject);
begin
IBQuery4.Close;
IBQuery4.ParamByName('a').AsInteger :=
        dbeNumero.Field.AsInteger;
IBQuery4.Open;
if IBQuery4.IsEmpty then
dbeTotale.SetFocus
else
begin
dbeNumero.SetFocus;
dbeNumero.SelectAll;
end;
end;

procedure TfTaglio.Apri;
begin
With (dmodAz) Do
 Begin
  ibTab_Articoli.Open;
  ibqryTaglio.Open;
  ibqTab_Cli.Open;
  ibqTab_For.Open;
  IBQDepositi.Open;
  IBQryCommessi.Open;
 end;
end;

procedure TfTaglio.FormShow(Sender: TObject);
begin
 If (dstaglio.DataSet.State in [dsBrowse])
  Then
  begin
Set_Assortimento;
   Clear_All;
   Fill_All;
  end;
end;

procedure TfTaglio.rxdblcClienteChange(Sender: TObject);
begin
dstaglio.DataSet.FieldByName('PK_DIST').AsInteger :=
 rxdblcCliente.LookupSource.DataSet.FieldByName('ID_CLI_FOR').AsInteger;

end;

procedure TfTaglio.rxdblcClienteExit(Sender: TObject);
begin
if rxdblcCliente.Text = ''
then
dstaglio.DataSet.FieldByName('PK_DIST').AsInteger :=0;
end;

procedure TfTaglio.dbeTotaleExit(Sender: TObject);
begin
sgColori.SetFocus;
end;

procedure TfTaglio.dbeTotaleKeyPress(Sender: TObject; var Key: Char);
begin
//sgColori.SetFocus;
end;

procedure TfTaglio.dbeNumeroKeyPress(Sender: TObject; var Key: Char);
begin
//dbeNumeroExit(dbeNumero);
end;

end.
