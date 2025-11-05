unit uOrdini;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, ComCtrls, ToolWin, ExtCtrls, Db, StdCtrls, Mask, DBCtrls,
  Grids, DBGrids, Buttons, IBCustomDataSet, IBQuery, ToolEdit, RXDBCtrl,
  RxLookup, IBTable, IBUpdateSQL, Variants, Menus;

type
  TfOrdini = class(TfBaseForm3)
    paDet: TPanel;
    laNOrd: TLabel;
    dbeNumOrd: TDBEdit;
    dsoOrd: TDataSource;
    dsoOrd_Det: TDataSource;
    tbarDet: TToolBar;
    dbgOrd_Det: TDBGrid;
    sep11: TToolButton;
    tbtnNuovo_Det: TToolButton;
    tbtnMod_Det: TToolButton;
    tbtnDel_Det: TToolButton;
    sep12: TToolButton;
    sep13: TToolButton;
    laData: TLabel;
    dbeProt: TDBEdit;
    laProt: TLabel;
    laPagam: TLabel;
    laBanca: TLabel;
    laMezzoSped: TLabel;
    laPorto: TLabel;
    laDataSped: TLabel;
    Label1: TLabel;
    dbeTot_Provv: TDBEdit;
    Label2: TLabel;
    dbeTot_Qta: TDBEdit;
    Label3: TLabel;
    dbeTot_Scont: TDBEdit;
    Label5: TLabel;
    dbeTotale: TDBEdit;
    dsoForn: TDataSource;
    dsoAgente: TDataSource;
    dsoPagam: TDataSource;
    dsoBanca: TDataSource;
    dsoSped: TDataSource;
    dsoPorto: TDataSource;
    dsoCli: TDataSource;
    dbmNote: TDBMemo;
    laNote: TLabel;
    tbtnPrn: TToolButton;
    dbeForn: TDBEdit;
    dbeCli: TDBEdit;
    bbForn: TButton;
    bbCli: TButton;
    dso_r_Cli_For: TDataSource;
    bbNumOrd: TBitBtn;
    dbeBanca: TDBEdit;
    bBanca: TButton;
    dbePagam: TDBEdit;
    bPagam: TButton;
    dbeSped: TDBEdit;
    bSped: TButton;
    dbePorto: TDBEdit;
    bPorto: TButton;
    sep7: TToolButton;
    tbtnNumOrd: TToolButton;
    dbeFor_PIVA: TDBEdit;
    dbecli_Ind: TDBEdit;
    dbeFor_Ind: TDBEdit;
    dbecli_piva: TDBEdit;
    dbeFor_Tel: TDBEdit;
    dbeCli_Tel: TDBEdit;
    Label10: TLabel;
    dbeTot_lordo: TDBEdit;
    dbeFor_Ind2: TDBEdit;
    dbeCli_Ind2: TDBEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    dbeDataSpedText: TDBEdit;
    dbeForTel2: TDBEdit;
    dbeForFax2: TDBEdit;
    dbeCliTel2: TDBEdit;
    dbeCliFax2: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBDateEdit1: TDBDateEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBECabAbi: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    laProvv: TLabel;
    dbeProvv1: TDBEdit;
    dbeProvv2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    laSconti: TLabel;
    dbeSconto1: TDBEdit;
    dbeSconto2: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    IBQuery3: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    SmallintField1: TSmallintField;
    IntegerField1: TIntegerField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IntegerField2: TIntegerField;
    IBQuery2: TIBQuery;
    IBQuery2CODICE: TIBStringField;
    IBQuery2DESCR: TIBStringField;
    IBQuery2CODICE_ZONA_ID: TIBStringField;
    IBQuery2CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery2PROVVIGIONE: TFloatField;
    IBQuery2IMPORTO_FISSO: TFloatField;
    IBQuery2TIPO_CLI_FOR: TSmallintField;
    IBQuery2CLI_FOR_ID: TIntegerField;
    IBQuery2TIPO_SOMMA_PRV: TSmallintField;
    IBQuery2TIPO_PROVVIGIONE: TSmallintField;
    IBQuery2TOTALE_FATTURATO: TFloatField;
    IBQuery2TOTALE_PROVVIGIONE: TFloatField;
    IBQuery2CG: TIBStringField;
    IBQuery2CA: TIBStringField;
    IBQuery2TIPO_AG: TIntegerField;
    IBQuery1: TIBQuery;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1CODICE_ZONA_ID: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1IMPORTO_FISSO: TFloatField;
    IBQuery1TIPO_CLI_FOR: TSmallintField;
    IBQuery1CLI_FOR_ID: TIntegerField;
    IBQuery1TIPO_SOMMA_PRV: TSmallintField;
    IBQuery1TIPO_PROVVIGIONE: TSmallintField;
    IBQuery1TOTALE_FATTURATO: TFloatField;
    IBQuery1TOTALE_PROVVIGIONE: TFloatField;
    IBQuery1CG: TIBStringField;
    IBQuery1CA: TIBStringField;
    IBQuery1TIPO_AG: TIntegerField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    IBTable1: TIBTable;
    ToolButton8: TToolButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBRadioGroup3: TDBRadioGroup;
    IBQuery4: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    Label11: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    IBQuery5: TIBQuery;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    SmallintField4: TSmallintField;
    IntegerField3: TIntegerField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IntegerField4: TIntegerField;
    DataSource4: TDataSource;
    laForn: TLabel;
    laCli: TLabel;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    ibRicercaCab: TIBQuery;
    ibRicercaCabABI_ID: TIBStringField;
    ibRicercaCabINDIRIZZO: TIBStringField;
    ibRicercaCabLOCALITA: TIBStringField;
    ibRicercaCabCOMUNE_ID: TIntegerField;
    ibRicercaCabPROVINCIA_ID: TIntegerField;
    ibRicercaCabCAP_ID: TIBStringField;
    ibRicercaCabDESCR: TIBStringField;
    ibRicercaCabID_CAB: TIBStringField;
    ibRicercaCabCOMUNE: TIBStringField;
    ibRicercaCabPROV: TIBStringField;
    ibRicercaCabPK_CODICE: TIntegerField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnNuovo_DetClick(Sender: TObject);
    procedure tbtnMod_DetClick(Sender: TObject);
    procedure tbtnDel_DetClick(Sender: TObject);
    procedure tbtnPrnClick(Sender: TObject);
    procedure bbFornClick(Sender: TObject);
    procedure bbCliClick(Sender: TObject);
    procedure bbAgenteClick(Sender: TObject);
    procedure bBancaClick(Sender: TObject);
    procedure bPagamClick(Sender: TObject);
    procedure bSpedClick(Sender: TObject);
    procedure bPortoClick(Sender: TObject);
    procedure bbNumOrdClick(Sender: TObject);
    procedure tbtnNumOrdClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure RxDBLookupCombo6Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo7Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IBTable1PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormShow(Sender: TObject);
    procedure DBRadioGroup3Change(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
   private
     intNewNumDoc,intOldNumDoc: Integer;

    Procedure Update_Totali;
    procedure Get_Num_Doc;
    procedure Set_Num_Doc;
//    Procedure Del_Num_Doc;
    Procedure Set_SQL;
   public


  end;

var
  fOrdini: TfOrdini;

implementation

uses uAzDM, uOrdDet, uPrnForm, uPubDM, uRicercaVeloceAZ, uNumDocList,
  uRicercaVeloce;

{$R *.DFM}

procedure TfOrdini.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;

ToolButton6.Enabled:= True;

 dsoOrd_Det.DataSet.Close;
 dsoOrd.DataSet.Close;
 dsoOrd.DataSet.Open;
 dsoOrd.DataSet.Insert;
 With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;
IBQuery3.Open;
IBQuery1.Open;
IBQuery5.Open;
IBQuery2.Open;

 tbtnPrn.Enabled:=False;
DBRadioGroup3.ItemIndex := 0;
{
 Get_Num_Doc;
 intOldNumDoc:=intNewNumDoc-1;

 dsoOrd.DataSet.FieldByName('NUMERO').AsInteger:=intNewNumDoc;
}
DBRadioGroup1.ItemIndex := 1;
DBRadioGroup2.ItemIndex := 0;

end;

procedure TfOrdini.tbtnModificaClick(Sender: TObject);
begin
  inherited;
 If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;


ToolButton6.Enabled:= True;
intNewNumDoc:=dsoOrd.DataSet.fieldByName('NUMERO').AsInteger;
dsoOrd.DataSet.Edit;
IBQuery3.Open;
IBQuery1.Open;
IBQuery5.Open;
IBQuery2.Open;

tbtnPrn.Enabled:=False;
end;

procedure TfOrdini.tbtnSalvaClick(Sender: TObject);
var
numord:integer;
tipoord:string;
begin
  inherited;
numord:=dsoOrd.DataSet.fieldByName('NUMERO').AsInteger;
tipoord:=dsoOrd.DataSet.fieldByName('ACQ').AsString;
 ToolButton6.Enabled:= False;
 intOldNumDoc:=dbeNumOrd.Field.AsInteger;
   If (dsoOrd.DataSet.State in [dsInsert])
     Then   Begin
             Get_Num_Doc;
  With (dmodAz.ibqRicerca) Do
  Begin
   Close;
    SQL.Clear;
if DBRadioGroup3.ItemIndex = 0 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI');
if DBRadioGroup3.ItemIndex = 1 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI2');
if DBRadioGroup3.ItemIndex = 2 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI3');
if DBRadioGroup3.ItemIndex = 3 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI4');
if DBRadioGroup3.ItemIndex = 4 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI5');
if DBRadioGroup3.ItemIndex = 5 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI6');

    Open;
      intNewNumDoc:=1+FieldByName('NUMERO').AsInteger;
    Close;
   SQL.Clear;
  End;
             dbeNumOrd.Field.AsInteger:=intNewNumDoc ;

             Set_Num_Doc;
            End;
dbeNumOrd.Field.AsInteger:=intNewNumDoc ;
dsoOrd.DataSet.post;
tbtnPrn.Enabled:=True;

try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
dmodAz.ibqOrdini.Open;
dmodAz.ibqTab_Cli.Open;
dmodAz.ibqTab_For.Open;
dmodAz.ibTab_Articoli.Open;
dmodAz.ibTab_Pagamenti.Open;
IBQuery3.Open;
IBQuery1.Open;
IBQuery5.Open;
IBQuery2.Open;
dsoOrd.DataSet.Locate('numero;ACQ',VarArrayOf([numord,tipoord]),[]);
dmodAz.ibqOrd_Det.Close;
dmodAz.ibqOrd_Det.Open;
end;

procedure TfOrdini.tbtnAnullaClick(Sender: TObject);
begin

  If (MessageDlg('Annullare ?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
  inherited;
 ToolButton6.Enabled:= False;
 dsoOrd.DataSet.Cancel;
 tbtnPrn.Enabled:=True;

dmodAz.ibtrDef.Rollback;
dmodAz.ibqOrdini.Open;
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;
IBQuery3.Open;
IBQuery1.Open;
IBQuery5.Open;
IBQuery2.Open;


dmodAz.ibqTab_Cli.Open;
dmodAz.ibqTab_For.Open;
dmodAz.ibTab_Articoli.Open;
dmodAz.ibTab_Pagamenti.Open;
end;

procedure TfOrdini.tbtnEliminaClick(Sender: TObject);
begin
  inherited;
ToolButton6.Enabled:= False;
 If (dsoOrd.DataSet.IsEmpty)
    Then Exit;
 If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
   Then Exit;
   
 intNewNumDoc:=dbeNumOrd.Field.AsInteger;
   
// Del_Num_Doc;
 dsoOrd.DataSet.Delete;
 tbtnPrn.Enabled:=True;

try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
dmodAz.ibqOrdini.Open;
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;

dmodAz.ibqTab_Cli.Open;
dmodAz.ibqTab_For.Open;
dmodAz.ibTab_Articoli.Open;
dmodAz.ibTab_Pagamenti.Open;
IBQuery3.Open;
IBQuery1.Open;
IBQuery5.Open;
IBQuery2.Open;

end;

procedure TfOrdini.tbtnPrevClick(Sender: TObject);
begin
  inherited;
// dsoOrd.DataSet.Refresh;
//dsoOrd_Det.DataSet.Refresh;
 dsoOrd.DataSet.First;
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;

end;

procedure TfOrdini.tbtnNextClick(Sender: TObject);
begin
  inherited;
// dsoOrd.DataSet.Refresh;
//dsoOrd_Det.DataSet.Refresh;
 dsoOrd.DataSet.Next;
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;

end;

procedure TfOrdini.tbtnNuovo_DetClick(Sender: TObject);
begin
 if (tbtnModifica.Enabled)
  Then Exit;
 fArtPerOrd:=TfArtPerOrd.Create(Self);
 fArtPerOrd.intPK_Fornitore:=dsoOrd.DataSet.FieldByName('FOR_ID').AsInteger;

 dsoOrd_Det.DataSet.Insert;

 dsoOrd_Det.DataSet.fieldbyname('sconto1').AsFloat:=
   dbeSconto1.Field.AsFloat;
 dsoOrd_Det.DataSet.fieldbyname('sconto2').AsFloat:=
   dbeSconto2.Field.AsFloat;
 dsoOrd_Det.DataSet.fieldbyname('Provv').AsFloat:=
   dbeProvv1.Field.AsFloat;

 fArtPerOrd.ShowModal;

 fArtPerOrd.Free;
 Update_Totali;
end;

procedure TfOrdini.tbtnMod_DetClick(Sender: TObject);
begin
 if (tbtnModifica.Enabled)
  Then Exit;
 If (dsoOrd_Det.DataSet.IsEmpty)
  Then Exit;
  
 fArtPerOrd:=TfArtPerOrd.Create(Self);
 fArtPerOrd.intPK_Fornitore:=dsoOrd.DataSet.FieldByName('FOR_ID').AsInteger;
 dsoOrd_Det.DataSet.edit;
 fArtPerOrd.ShowModal;
 fArtPerOrd.Free;
 Update_Totali;
end;

procedure TfOrdini.tbtnDel_DetClick(Sender: TObject);
begin
 if (tbtnModifica.Enabled)
  Then Exit;
 If (dsoOrd_Det.DataSet.IsEmpty)
    Then Exit;

 If (MessageDlg('Eliminare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
   Then Exit;

 dsoOrd_Det.DataSet.Delete;
 Update_Totali;
end;

procedure TfOrdini.Update_Totali;
Var
 intTotQta,diff: double;
 dTotSc,dTot,dTotProvv,ag,ca,cg,cr: Double;
begin
 //
 Try
   // tot qta
   dsoOrd_Det.DataSet.First;
   intTotQta:=0;
   dTotSc:=0;
   dTot:=0;
   dTotProvv := 0;
//   AG := 0;
//   CA := 0;
//   CG := 0;
//   CR := 0;
   diff := 0;

   While Not(dsoOrd_Det.DataSet.Eof) Do
   Begin
     intTotQta:=intTotQta+dsoOrd_Det.DataSet.FieldByName('Qta').AsFloat;
     dTotSc:=dTotSc+dsoOrd_Det.DataSet.FieldByName('SCONTO_TOT').AsFloat;
     dTot:=dTot+dsoOrd_Det.DataSet.FieldByName('PREZZO_SCONTATO').AsFloat;

     if RxDBLookupCombo5.Text <> '' then
     ag := dsoOrd_Det.DataSet.FieldByName('Agente').AsFloat
     else
     ag:=0;

     if RxDBLookupCombo4.Text <> '' then
     cg := dsoOrd_Det.DataSet.FieldByName('CAPO_GRUPPO').AsFloat
     else
     cg:=0;

     if RxDBLookupCombo2.Text <> '' then
     ca := dsoOrd_Det.DataSet.FieldByName('CAPO_AREA').AsFloat
     else
     ca:=0;

     if RxDBLookupCombo8.Text <> '' then
     cr := dsoOrd_Det.DataSet.FieldByName('CAPO_REPARTO').AsFloat
     else
     cr:=0;

     diff := diff +((dsoOrd_Det.DataSet.FieldByName('PREZZO_SCONTATO').AsFloat) - Ag-Ca-CG-CR);
     dTotProvv:=dTotProvv+ (dsoOrd_Det.DataSet.FieldByName('PROVV').AsFloat/100*
                dsoOrd_Det.DataSet.FieldByName('PREZZO_SCONTATO').AsFloat);
//     ((dsoOrd_Det.DataSet.FieldByName('Qta').Asfloat)*
//   dbeProvv2.Field.AsFloat)+diff *(dsoOrd_Det.DataSet.FieldByName('PROVV').AsFloat)/100;

{
   dbeProvv2.Field.AsFloat)+(dsoOrd_Det.DataSet.FieldByName('PREZZO_SCONTATO').AsFloat)*
   (dsoOrd_Det.DataSet.FieldByName('PROVV').AsFloat)/100;
}

     dsoOrd_Det.DataSet.Next;


   End;
   dbeTot_Qta.Field.AsFloat:=intTotQta;



   dbeTot_Provv.Field.AsFloat:=dTotProvv;
   dbeTot_Scont.Field.AsFloat:=dTotSc;
   dbeTot_Qta.Field.AsFloat:=intTotQta;
   dbeTotale.Field.AsFloat:=dTot;

 Except

 End;
end;

procedure TfOrdini.tbtnPrnClick(Sender: TObject);
begin
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frOrdine.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
 Try
  Set_SQL;
     With (dmodAz.rePRN) Do
     Begin
       LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrdine.frf');
       ShowReport;
   End;
  dmodaz.ibqRicerca.Close;
  dmodaz.ibqRicerca.SQL.Clear;
 Except
 End;
end;

procedure TfOrdini.bbFornClick(Sender: TObject);
Var
 strInd,strCom,strCAP,strPr: String;
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=True;
    strAdditionalWhere:='TIPO=2';

  // Pass vals
    strTabella:='TAB_Cli_For';
    strCampoWhere:='DENOMINAZIONE';
    strCampo2:='ID_CLI_FOR';
    strCampo3:='PROVVIGIONE';
    intRichieste:=3;
    strResCampoCodice:='ID_CLI_FOR';
    strValore:=dbeForn.Field.AsString;
   // get vals    GetValues;
   ShowModal;
   // Get vals
   dbeForn.Field.AsString:=VarToStr(vaResValore); //ID_CLI_FOR
   dsoOrd.DataSet.fieldByName('For_Id').AsString:=VarToStr(vaResValore2);//DENOMINAZIONE
   dsoOrd.DataSet.fieldByName('PROVV1').AsString:=VarToStr(vaResValore3);

   dmodAz.ibqTab_For.Locate('ID_CLI_FOR',vaResValore2,[]);

   strInd := dmodAz.ibqTab_ForINDIRIZZO.AsString;
   strCom := dmodAz.ibqTab_ForCOM_DESCR.AsString;
   strCAP := dmodAz.ibqTab_ForCAP_DESCR.AsString;
   strPr  := dmodAz.ibqTab_ForPR_DESCR.AsString;

   dbeFor_PIVA.Field.AsString:=dmodAz.ibqTab_ForPARTITA_IVA.AsString;
   dbeFor_TEL.Field.AsString:=dmodAz.ibqTab_ForTEL1.AsString;
   dbeForTEL2.Field.AsString:=dmodAz.ibqTab_ForTEL2.AsString;
   dbeForFAX2.Field.AsString:=dmodAz.ibqTab_ForFax.AsString;
   DBEdit6.Field.AsString:=dmodAz.ibqTab_ForEMAIL.AsString;
   DBEdit5.Field.AsString:=dmodAz.ibqTab_ForINTERNET.AsString;

   {   // Ind
       boolAdditionalWhere:=True;
       strAdditionalWhere:='TIPO=2';

  // Pass vals
    strTabella:='TAB_Cli_For';
    strCampoWhere:='ID_CLI_FOR';
    strCampo2:='PARTITA_IVA';
    strCampo3:='INDIRIZZO';
    intRichieste:=3;
    strResCampoCodice:='ID_CLI_FOR';
    strValore:=dsoOrd.DataSet.fieldByName('For_Id').AsString;
   // get vals
   GetValues;
   // Get vals
   strInd:=VarToStr(vaResValore3);
   dbeFor_PIVA.Field.AsString:=VarToStr(vaResValore2);


   // Tel
       boolAdditionalWhere:=True;
       strAdditionalWhere:='TIPO=2';

  // Pass vals
    strTabella:='TAB_Cli_For';
    strCampoWhere:='ID_CLI_FOR';
    strCampo2:='TEL1';
    intRichieste:=2;
    strResCampoCodice:='ID_CLI_FOR';
    strValore:=dsoOrd.DataSet.fieldByName('For_Id').AsString;
   // get vals
   GetValues;
   // Get vals
   dbeFor_TEL.Field.AsString:=VarToStr(vaResValore2);}
free;
  End;

{  With (TfRicercaVeloceSQL.Create(Self)) Do
    Begin
         // Pass vals
         strTabella:='V_COMUNI';
         strCampoWhere:='ID';
         strCampo2:='CAP';
         strCampo3:='PROVINCE';
         intRichieste:=3;
         strResCampoCodice:='COMUNI';
         strValore:=dsoOrd.DataSet.fieldByName('For_Id').AsString;
         //     get
         GetValues;
         // Get vals
         strCAP:=VarToStr(vaResValore2);
         strPr:=VarToStr(vaResValore3);
         strCom:=VarToStr(vaResCodice);
         // Destroy
         Free;
     End;}
   // ? strInd:=strInd;
   dbeFor_Ind.field.AsString:=strInd;

   strInd:=strCAP+' '+strCom+' '+strPr;
   dbeFor_Ind2.field.AsString:=strInd;

end;

procedure TfOrdini.bbCliClick(Sender: TObject);
Var
 a,strInd,strCom,strCAP,strPr, cababi, CabText, AbiText,email: String;
 CAB,ABI : String;
 begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=True;
    strAdditionalWhere:='TIPO=1';

  // Pass vals
    strTabella:='TAB_Cli_For';
    strCampoWhere:='DENOMINAZIONE';
    strCampo2:='ID_CLI_FOR';
    intRichieste:=2;
    strResCampoCodice:='ID_CLI_FOR';
    strValore:=dbeCli.Field.AsString;
   // get vals    GetValues;
   ShowModal;
   // Get vals
   dsoOrd.DataSet.fieldByName('Cli_Id').AsString:=VarToStr(vaResValore2);//DENOMINAZIONE
   //  dsoRigheDoc.DataSet.FieldByName('').AsVariant:=vaResCodice;
   dbeCli.Field.AsString:=VarToStr(vaResValore); //ID_CLI_FOR

   dmodAz.ibqTab_Cli.Locate('ID_CLI_FOR',vaResValore2,[]);

   strInd := dmodAz.ibqTab_cliINDIRIZZO.AsString;
   strCom := dmodAz.ibqTab_cliCOM_DESCR.AsString;
   strCAP := dmodAz.ibqTab_cliCAP_DESCR.AsString;
   strPr  := dmodAz.ibqTab_cliPR_DESCR.AsString;
   email  := dmodAz.ibqTab_CliEMAIL.AsString;
   ibRicercaCab.Close;
   ibRicercaCab.ParamByName('PK').AsInteger :=(dmodAz.ibqTab_cliCab_ID).AsInteger;
   ibRicercaCab.Open;
   Cab := ibRicercaCabID_CAB.AsString;
   Abi := (dmodAz.ibqTab_cliAbi_ID).AsString;
   CabText := (dmodAz.ibqTab_cliCab_DESCR).AsString;
   AbiText := (dmodAz.ibqTab_cliAbi_DESCR).AsString;


   dbeCli_TEL.Field.AsString:=dmodAz.ibqTab_CliTEL1.AsString;
   dbeCliTEL2.Field.AsString:=dmodAz.ibqTab_CliTEL2.AsString;
   dbeCliFAX2.Field.AsString:=dmodAz.ibqTab_CliFax.AsString;
   dbeCli_PIVA.Field.AsString:=dmodAz.ibqTab_CliPARTITA_IVA.AsString;
   DBEdit3.Field.AsString:=dmodAz.ibqTab_CliEMAIL.AsString;
   DBEdit4.Field.AsString:=dmodAz.ibqTab_CliINTERNET.AsString;
   a :=dmodAz.ibqTab_CliPAGAMENTO_ID.AsString;
   if dmodAz.ibTab_Pagamenti.Locate('ID_PAGAMENTO',a,[]) then
   dbePagam.Field.AsString :=dmodAz.ibTab_PagamentiDESCR.AsString
   else
   dbePagam.Field.AsString := '';


free;
  End;

   dbecli_Ind.field.AsString:=strInd;
   strInd:=strCAP+' '+strCom+' '+strPr;
   dbecli_Ind2.field.AsString:=strInd;
   CAbAbi := 'Abi: ' +(Abi)+' '+AbiText;
dbeBanca.field.AsString:= CABABI;

RxDBLookupCombo5.KeyValue :=(dmodAz.ibqTab_cliAGENTE_ID).AsString;
RxDBLookupCombo6.KeyValue :=(dmodAz.ibqTab_cliAGENTE_ID).AsString;
if varisnull(RxDBLookupCombo5.KeyValue)  then dmodAz.ag := False;

RxDBLookupCombo4.KeyValue :=(dmodAz.ibqTab_cliCG).AsString;
RxDBLookupCombo7.KeyValue :=(dmodAz.ibqTab_cliCG).AsString;
if varisnull(RxDBLookupCombo4.KeyValue) then dmodAz.CG := False;

RxDBLookupCombo2.KeyValue :=(dmodAz.ibqTab_cliCA).AsString;
RxDBLookupCombo3.KeyValue :=(dmodAz.ibqTab_cliCA).AsString;
if varisnull(RxDBLookupCombo2.KeyValue) then dmodAz.CA := False;

RxDBLookupCombo8.KeyValue :=(dmodAz.ibqTab_cliCR).AsString;
if varisnull(RxDBLookupCombo8.KeyValue) then dmodAz.CR := False;

dbeCabAbi.field.AsString:='Cab: '+(Cab)+' '+ CabText;

  End;

procedure TfOrdini.bbAgenteClick(Sender: TObject);
begin
{
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
  // Pass vals
    strTabella:='TAB_AGENTI';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE';
    intRichieste:=2;
    strResCampoCodice:='CODICE';
    strValore:=dbeAgente.Field.AsString;
   // get vals      GetValues;
   ShowModal;
   // Get vals
   dsoOrd.DataSet.fieldByName('Agente_Id').AsString:=VarToStr(vaResValore2);
   //  dsoRigheDoc.DataSet.FieldByName('').AsVariant:=vaResCodice;
   dbeAgente.Field.AsString:=VarToStr(vaResValore);
  End;
  }
  end;

procedure TfOrdini.bBancaClick(Sender: TObject);
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
  // Pass vals
    strTabella:='TAB_BANCHE';
    strCampoWhere:='DESCR';
    strCampo2:='ID_BANCA';
    intRichieste:=2;
    strResCampoCodice:='ID_BANCA';
    strValore:=dbeBanca.Field.AsString;
   // get vals      GetValues;
   ShowModal;
   // Get vals
   dsoOrd.DataSet.fieldByName('BANCA_NOM').AsString:=VarToStr(vaResValore2);
   //  dsoRigheDoc.DataSet.FieldByName('').AsVariant:=vaResCodice;
   dbeBanca.Field.AsString:=VarToStr(vaResValore);
  End;
end;

procedure TfOrdini.bPagamClick(Sender: TObject);
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
  // Pass vals
    strTabella:='TAB_PAGAMENTI';
    strCampoWhere:='DESCR';
    strCampo2:='ID_PAGAMENTO';
    intRichieste:=2;
    strResCampoCodice:='ID_PAGAMENTO';
    strValore:=dbePagam.Field.AsString;
   // get vals      GetValues;
   ShowModal;
   // Get vals
   dsoOrd.DataSet.fieldByName('PAGAM_NOM').AsString:=VarToStr(vaResValore2);
   //  dsoRigheDoc.DataSet.FieldByName('').AsVariant:=vaResCodice;
   dbePagam.Field.AsString:=VarToStr(vaResValore);
  End;
end;

procedure TfOrdini.bSpedClick(Sender: TObject);
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
  // Pass vals
    strTabella:='TAB_SPEDIZIONE';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE';
    intRichieste:=2;
    strResCampoCodice:='CODICE';
    strValore:=dbeSped.Field.AsString;
   // get vals      GetValues;
   ShowModal;
   // Get vals
   dsoOrd.DataSet.fieldByName('SPEDIZ_NOM').AsString:=VarToStr(vaResValore2);
   //  dsoRigheDoc.DataSet.FieldByName('').AsVariant:=vaResCodice;
   dbeSped.Field.AsString:=VarToStr(vaResValore);
  End;
end;

procedure TfOrdini.bPortoClick(Sender: TObject);
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;
  // Pass vals
    strTabella:='TAB_PORTO';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE';
    intRichieste:=2;
    strResCampoCodice:='CODICE';
    strValore:=dbePorto.Field.AsString;
   // get vals      GetValues;
   ShowModal;
   // Get vals
   dsoOrd.DataSet.fieldByName('PORTO_NOM').AsString:=VarToStr(vaResValore2);
   //  dsoRigheDoc.DataSet.FieldByName('').AsVariant:=vaResCodice;
   dbePorto.Field.AsString:=VarToStr(vaResValore);
  End;
end;

procedure TfOrdini.Get_Num_Doc;
begin
  // Lettura di Numero di Documento al base di tipo documento
  With (dmodAz.ibqRicerca) Do
  Begin
   Close;
    SQL.Clear;
if DBRadioGroup3.ItemIndex = 0 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI');
if DBRadioGroup3.ItemIndex = 1 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI2');
if DBRadioGroup3.ItemIndex = 2 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI3');
if DBRadioGroup3.ItemIndex = 3 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI4');
if DBRadioGroup3.ItemIndex = 4 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI5');
if DBRadioGroup3.ItemIndex = 5 then
    SQL.Add('SELECT MAX(NUMERO) As NUMERO FROM NUM_ORDINI6');
    Open;
      intNewNumDoc:=1+FieldByName('NUMERO').AsInteger;
    Close;
   SQL.Clear;
  End;
End;

procedure TfOrdini.Set_Num_Doc;
var
a:integer;
begin
{
 With (dmodAz.ibqRicerca) Do
 Begin
  Close;
    SQL.Clear;
    SQL.Add('INSERT INTO NUM_ORDINI (NUMERO) Values ('+IntTostr(intNewNumDoc)+')');
      ExecSQL;
    Close;
  SQL.Clear;
 End;
}
IBTable1.Active := False;
if DBRadioGroup3.ItemIndex = 0 then
    IBTable1.TableName := 'NUM_ORDINI';
if DBRadioGroup3.ItemIndex = 1 then
    IBTable1.TableName := 'NUM_ORDINI2';
if DBRadioGroup3.ItemIndex = 2 then
    IBTable1.TableName := 'NUM_ORDINI3';
if DBRadioGroup3.ItemIndex = 3 then
    IBTable1.TableName := 'NUM_ORDINI4';
if DBRadioGroup3.ItemIndex = 4 then
    IBTable1.TableName := 'NUM_ORDINI5';
if DBRadioGroup3.ItemIndex = 5 then
    IBTable1.TableName := 'NUM_ORDINI6';

IBTable1.Active := True;
//a:=0;
//while not a =0 do
//begin
try
IBTable1.Insert;
IBTable1.FieldByName('NUMERO').AsInteger :=  intNewNumDoc;
IBTable1.Post;
//a:=1;
//dmodAz.ibtrDef.Commit;
except
intNewNumDoc := intNewNumDoc+1;
IBTable1.Cancel;
IBTable1.Insert;
IBTable1.FieldByName('NUMERO').AsInteger :=  intNewNumDoc;
IBTable1.Post;
//a:=0;
end;
//end;
end;

procedure TfOrdini.bbNumOrdClick(Sender: TObject);
begin
 // verif numero
 With (dmodAz.ibqRicerca) Do
 Begin
   Close;
   SQL.Clear;
   SQL.Add('Select Count(*) from NUM_ORDINI WHERE NUMERO ='+
      dbeNumOrd.Field.AsString);
   Open;
   If (not(FieldByName('COUNT').AsInteger=0))
    Then Begin
           application.messagebox('Il numero già assegnato!','Attenzione',MB_OK);
           dbeNumOrd.SetFocus;
         End;
   Close; 
 end;

end;

{procedure TfOrdini.Del_Num_Doc;
begin
  With (dmodAz.ibqRicerca) Do
  Begin
    Close;
      SQL.Clear;
      SQL.Add('DELETE FROM NUM_ORDINI WHERE NUMERO ='+IntTostr(intNewNumDoc));
    ExecSQL;
    Close;
    SQL.Clear;
  End;
end;}

procedure TfOrdini.tbtnNumOrdClick(Sender: TObject);
begin
 fNumDoc_All:=TfNumDoc_All.Create(Self);
if DBRadioGroup3.ItemIndex = 0 then
 fNumDoc_All.strTabName:='NUM_ORDINI';
if DBRadioGroup3.ItemIndex = 1 then
 fNumDoc_All.strTabName:='NUM_ORDINI2';
if DBRadioGroup3.ItemIndex = 2 then
 fNumDoc_All.strTabName:='NUM_ORDINI3';
if DBRadioGroup3.ItemIndex = 3 then
 fNumDoc_All.strTabName:='NUM_ORDINI4';
if DBRadioGroup3.ItemIndex = 4 then
 fNumDoc_All.strTabName:='NUM_ORDINI5';
if DBRadioGroup3.ItemIndex = 5 then
 fNumDoc_All.strTabName:='NUM_ORDINI6';

 fNumDoc_All.dsoNumDoc.DataSet.Open;
 fNumDoc_All.ShowModal;
 fNumDoc_All.Free;
end;

procedure TfOrdini.ToolButton2Click(Sender: TObject);
begin
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frOrdine2.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
 Try
  Set_SQL;
     With (dmodAz.rePRN) Do
     Begin
       LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrdine2.frf');
       ShowReport;
   End;
  dmodaz.ibqRicerca.Close;
  dmodaz.ibqRicerca.SQL.Clear;
 Except
 End;
End;

procedure TfOrdini.ToolButton4Click(Sender: TObject);
begin
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frOrdine3.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
 Try
  Set_SQL;
     With (dmodAz.rePRN) Do
     Begin
       LoadFromFile(ExtractFilePath(Application.ExeName)+'frOrdine3.frf');
       ShowReport;
   End;
  dmodaz.ibqRicerca.Close;
  dmodaz.ibqRicerca.SQL.Clear;
 Except
 End;
end;

procedure TfOrdini.Set_SQL;
Var
 iPK_Ord: Integer;
begin
 iPK_Ord:=dsoOrd.DataSet.FieldByName('PK_codice').AsInteger;
 With (dmodAz) Do
 Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('select * from ordini a left join odr_dett b on a.pk_codice=b.fk_codice');
   ibqRicerca.SQL.Add('WHERE a.PK_Codice='+IntToStr(iPK_Ord));
   ibqRicerca.SQL.Add('ORDER BY NUMERO');
   ibqRicerca.Open;
 End;
end;

procedure TfOrdini.ToolButton6Click(Sender: TObject);
begin

 Update_Totali;
end;

procedure TfOrdini.RxDBLookupCombo5Change(Sender: TObject);
begin
RxDBLookupCombo6.KeyValue := RxDBLookupCombo5.KeyValue;

end;

procedure TfOrdini.RxDBLookupCombo6Change(Sender: TObject);
begin
RxDBLookupCombo5.KeyValue := RxDBLookupCombo6.KeyValue;
end;

procedure TfOrdini.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo7.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfOrdini.RxDBLookupCombo7Change(Sender: TObject);
begin

RxDBLookupCombo4.KeyValue := RxDBLookupCombo7.KeyValue;
end;

procedure TfOrdini.RxDBLookupCombo2Change(Sender: TObject);
begin
RxDBLookupCombo3.KeyValue := RxDBLookupCombo2.KeyValue;
end;

procedure TfOrdini.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue := RxDBLookupCombo3.KeyValue;

end;

procedure TfOrdini.Button1Click(Sender: TObject);
Var
 dValSc1,dValSc2: Double;
begin
   While Not(dsoOrd_Det.DataSet.Eof) Do
   Begin
 dsoOrd_Det.DataSet.Edit;

 dsoOrd_Det.DataSet.fieldbyname('sconto1').AsFloat:=
   dbeSconto1.Field.AsFloat;
 dsoOrd_Det.DataSet.fieldbyname('sconto2').AsFloat:=
   dbeSconto2.Field.AsFloat;
 dsoOrd_Det.DataSet.fieldbyname('Provv').AsFloat:=
   dbeProvv1.Field.AsFloat;
 Try
dsoOrd_Det.DataSet.fieldbyname('PREZZO_TOT').AsFloat:=
 dsoOrd_Det.DataSet.fieldbyname('QTA').AsFloat*dsoOrd_Det.DataSet.fieldbyname('PREZZO_UNITA').AsFloat;

dValSc1:=dsoOrd_Det.DataSet.fieldbyname('PREZZO_TOT').AsFloat*
  dsoOrd_Det.DataSet.fieldbyname('SCONTO1').AsFloat/100;
dValSc2:=(dsoOrd_Det.DataSet.fieldbyname('PREZZO_TOT').AsFloat-dvalsc1)*
  dsoOrd_Det.DataSet.fieldbyname('SCONTO2').AsFloat/100;

dsoOrd_Det.DataSet.fieldbyname('PREZZO_SCONTATO').AsFloat :=
 dsoOrd_Det.DataSet.fieldbyname('PREZZO_TOT').AsFloat-dValSc1-dValSc2;

dsoOrd_Det.DataSet.FieldByName('SCONTO_TOT').AsFloat:=
 dsoOrd_Det.DataSet.fieldbyname('PREZZO_TOT').AsFloat - dsoOrd_Det.DataSet.fieldbyname('PREZZO_SCONTATO').AsFloat;
 Except

 End;   
   dsoOrd_Det.DataSet.Next;
   End;
Update_Totali;

end;

procedure TfOrdini.IBTable1PostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
//IBTable1.FieldByName('NUMERO').AsInteger :=
//        intNewNumDoc+1;

end;

procedure TfOrdini.FormShow(Sender: TObject);
begin
  inherited;
dmodAz.ibqOrdini.Open;
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;

end;

procedure TfOrdini.DBRadioGroup3Change(Sender: TObject);
begin
if DBRadioGroup3.ItemIndex = -1 then DBRadioGroup3.ItemIndex := 0;
   If (dsoOrd.DataSet.State in [dsInsert]) then
   begin
 Get_Num_Doc;
 intOldNumDoc:=intNewNumDoc-1;
 // Num doc
 dsoOrd.DataSet.FieldByName('NUMERO').AsInteger:=intNewNumDoc;
end;

end;

procedure TfOrdini.ToolButton9Click(Sender: TObject);
begin
  inherited;
 dsoOrd.DataSet.Last;
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;

end;

procedure TfOrdini.ToolButton10Click(Sender: TObject);
begin
  inherited;
 dsoOrd.DataSet.Prior;
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;

end;

procedure TfOrdini.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
  With (dmodAz.ibqOrd_Det) Do
  Begin
   Close;
    SQL.Clear;
sql.Add('select * from ODR_DETT');
sql.Add('Where FK_CODICE = :parPK_Ord');
sql.Add('order by CODICE_ART');
ParamByName('parPK_Ord').AsInteger:=dmodAz.ibqOrdini.FieldByName('PK_Codice').AsInteger;
Open;
   end;
 dsoOrd_Det.DataSet.Open;

end;

procedure TfOrdini.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;

end;

end.
