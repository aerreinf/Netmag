unit frmuSelAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, StdCtrls, Buttons, ExtCtrls, DBCtrls, RxLookup,
  IBCustomDataSet, IBQuery, Mask, ToolEdit, CurrEdit, Menus;

type
  TfrmSelAcc = class(TForm)
    dsArt_Acc: TDataSource;
    dbgArt_acc: TDBGrid;
    bbOK: TBitBtn;
    bbAnnulla: TBitBtn;
    pnlNavigator: TPanel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    dbnArt_Acc: TDBNavigator;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    dsDistinte_Det: TDataSource;
    rxdblcDistDett_CodArt: TRxDBLookupCombo;
    rxdblcDistDett_DescrArt: TRxDBLookupCombo;
    dbeDett_Costo: TDBEdit;
    DataSource2: TDataSource;
    RxCalcEdit1: TRxCalcEdit;
    ComboBox1: TComboBox;
    RxCalcEdit2: TRxCalcEdit;
    IBQuery1: TIBDataSet;
    IBQuery1PK_CODICE: TIntegerField;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR_ARTICOLO: TIBStringField;
    IBQuery1MANODOPERA: TFloatField;
    IBQuery1RICAMO: TFloatField;
    IBQuery1FASONISTA: TFloatField;
    IBQuery1SITUAZIONE: TFloatField;
    IBQuery1COPPE: TFloatField;
    IBQuery1ACCESSORI: TFloatField;
    IBQuery1ALTRO1: TFloatField;
    IBQuery1ALTRO2: TFloatField;
    IBQuery1ALTRO3: TFloatField;
    IBQuery1ALTRO4: TFloatField;
    IBQuery1COSTO: TFloatField;
    IBQuery1RICAR1PERC: TFloatField;
    IBQuery1RICAR2PERC: TFloatField;
    IBQuery1RICAR_LIRE: TFloatField;
    IBQuery1PREZZO_VENDITA: TFloatField;
    IBQuery1COSTO_ACCESS_TOTALE: TFloatField;
    IBQuery1COSTO_TOTALE: TFloatField;
    IBQuery1DATA_CREAZIONE: TDateTimeField;
    IBQuery1CODCLI: TIntegerField;
    IBQuery1RICAR_LIRE2: TFloatField;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbAnnullaClick(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rxdblcDistDett_CodArtChange(Sender: TObject);
    procedure rxdblcDistDett_DescrArtChange(Sender: TObject);
    procedure RxCalcEdit1Exit(Sender: TObject);
    procedure stampeClick(Sender: TObject);
   private

   public
    boolSelected: Boolean;
    strCodice_Access: String;
  end;

var
  frmSelAcc: TfrmSelAcc;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfrmSelAcc.FormCreate(Sender: TObject);
begin
 boolSelected:=False;
 With (dmodAz.ibqRicerca) Do
 Begin
  Close;
  SQL.Clear;
  SQL.Add('select CODICE_ARTICOLO,DESCR,DESCR2 from TAB_ARTICOLI');
  SQL.Add('Where FLAG_ACCESSORIE=''S''');
  SQL.Add('Order By CODICE_ARTICOLO');
  Open;
  If (IsEmpty)
    Then bbOK.Enabled:=False;
 End;
 IBQuery1.Open;
 DataSource2.DataSet.Open;
 dmodAz.ibqryArt_Acc_per_Distinte.Open;
 end;

procedure TfrmSelAcc.FormDestroy(Sender: TObject);
begin
 with (dmodAz.ibqRicerca) Do
 Begin
  Close;
  SQL.Clear;
 End;
end;

procedure TfrmSelAcc.bbAnnullaClick(Sender: TObject);
begin
 boolSelected:=False;
 Close
end;

procedure TfrmSelAcc.bbOKClick(Sender: TObject);
begin
 Try
  strCodice_Access:=dsArt_Acc.DataSet.FieldByName('CODICE_ARTICOLO').AsString;
 Except
  strCodice_Access:='';
 End;
 boolSelected:=True;
 Close;
end;

procedure TfrmSelAcc.BitBtn1Click(Sender: TObject);
Var
 dRicarico: Double;
 dSomma,dSTot_1,dSTot_2: currency;
begin

dsDistinte_Det.DataSet.Insert;
dsDistinte_Det.DataSet.FieldByName('CODICE_ARTICOLO').AsString :=
        dmodAz.ibqryArt_Acc_per_Distinte.fieldbyname('CODICE_ARTICOLO').AsString;
dsDistinte_Det.DataSet.FieldByName('DESCR_ARTICOLO').AsString :=
         dmodAz.ibqryArt_Acc_per_Distinte.fieldbyname('DESCR').AsString;
dsDistinte_Det.DataSet.FieldByName('QTA').AsFloat :=
        RxCalcEdit1.Value;
dsDistinte_Det.DataSet.FieldByName('COSTO').AsFloat :=
        dmodAz.ibqryArt_Acc_per_Distinte.fieldbyname('COSTO_standart').AsFloat;
dsDistinte_Det.DataSet.FieldByName('PREZZO').AsFloat :=
        RxCalcEdit2.Value;
dsDistinte_Det.DataSet.FieldByName('FLAG_SCATOLO').AsString :=
        ComboBox1.Text;
dsDistinte_Det.DataSet.FieldByName('FK_DISTINTE').AsInteger :=
        IBQuery1.FieldByName('pk_codice').AsInteger;

dsDistinte_Det.DataSet.Post;
{
IBQuery1.Edit;
IBQuery1.FieldByName('COSTO_ACCESS_TOTALE').asfloat :=
  IBQuery1.FieldByName('COSTO_ACCESS_TOTALE').asfloat+ RxCalcEdit2.Value;


IBQuery1.FieldByName('COSTO').asfloat :=
  IBQuery1.FieldByName('COSTO').asfloat+ RxCalcEdit2.Value;

dSTot_1:=IBQuery1.FieldByName('COSTO').asfloat*IBQuery1.FieldByName('RICAR1PERC').AsFloat/100;
dSTot_2:=(IBQuery1.FieldByName('COSTO').asfloat+dSTot_1)*IBQuery1.FieldByName('RICAR2PERC').AsFloat/100;
dRicarico:=
  IBQuery1.FieldByName('RICAR_LIRE').asfloat +IBQuery1.FieldByName('COSTO').asfloat+dSTot_1+dSTot_2;

  dSTot_1:=Int(dRicarico/(0.25));
  dSTot_2:=dRicarico/(0.25);
  If (dSTot_1=dSTot_2)
   Then  IBQuery1.FieldByName('PrezzoVendita').Field.AsCurrency:=(Int(dRicarico/(0.25)))*(0.25)+IBQuery1.FieldByName('RICAR_LIRE2').Field.AsCurrency
   Else IBQuery1.FieldByName('PrezzoVendita').Field.AsCurrency:=(1+Int(dRicarico/(0.25)))*(0.25)+IBQuery1.FieldByName('RICAR_LIRE2').Field.AsCurrency;

 Except
 End;
}
end;

procedure TfrmSelAcc.rxdblcDistDett_CodArtChange(Sender: TObject);
begin
rxdblcDistDett_DescrArt.KeyValue :=rxdblcDistDett_CodArt.KeyValue ;
end;

procedure TfrmSelAcc.rxdblcDistDett_DescrArtChange(Sender: TObject);
begin
rxdblcDistDett_CodArt.KeyValue :=rxdblcDistDett_DescrArt.KeyValue ;
end;

procedure TfrmSelAcc.RxCalcEdit1Exit(Sender: TObject);
begin
  RxCalcEdit2.Value:=
     DataSource2.DataSet.fieldByname('COSTO_STANDART').AsCurrency*
     RxCalcEdit1.Value;
end;

procedure TfrmSelAcc.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

end.
