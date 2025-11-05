unit frmuScadenze;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, RxLookup, StdCtrls, Menus, Buttons,
  RXCtrls, Mask, ToolEdit, IBCustomDataSet, IBQuery,StrUtils, IBUpdateSQL,
  DBCtrls, CurrEdit;

type
  TfrmScadenze = class(TForm)
    pnlCtrlScadenze: TPanel;
    dbgScadenze: TDBGrid;
    dsScadenze: TDataSource;
    cbPagamento: TCheckBox;
    rxdblcPagam: TRxDBLookupCombo;
    gbCliForn: TGroupBox;
    rbTutti: TRadioButton;
    rbSoloCli: TRadioButton;
    rbSoloForn: TRadioButton;
    rbCli: TRadioButton;
    rxdblcCliDescr: TRxDBLookupCombo;
    rxdblcCliID: TRxDBLookupCombo;
    dsPagamento: TDataSource;
    dsCli: TDataSource;
    rbForn: TRadioButton;
    rxdblcForID: TRxDBLookupCombo;
    rxdblcForDescr: TRxDBLookupCombo;
    dsForn: TDataSource;
    dsRicerca: TDataSource;
    pmGrid: TPopupMenu;
    miPagato: TMenuItem;
    miNonPagato: TMenuItem;
    bbEsci: TBitBtn;
    bbAggiorna: TBitBtn;
    bbStampa: TBitBtn;
    rbTutteScad: TRadioButton;
    rbNonPagScad: TRadioButton;
    N2: TMenuItem;
    miDelScadSel: TMenuItem;
    bbPassa: TBitBtn;
    gbDataDoc: TGroupBox;
    chbxDataDoc: TCheckBox;
    dtedtDataDocDa: TDateEdit;
    dtedtDataDocA: TDateEdit;
    rxlblDataDocDa: TRxLabel;
    rxlblDataDocA: TRxLabel;
    gbDataScad: TGroupBox;
    rxlblDataScadDa: TRxLabel;
    rxlblDataScadA: TRxLabel;
    dtedtDataScadDa: TDateEdit;
    dtedtDataScadA: TDateEdit;
    chbxDataScad: TCheckBox;
    ibqRicerca: TIBQuery;
    ibqRicercaPK_CODICE: TIntegerField;
    ibqRicercaDOCUMENTO_ID: TIntegerField;
    ibqRicercaDATA_DOC: TDateField;
    ibqRicercaCLIFOR_ID: TIntegerField;
    ibqRicercaCLIFOR_TIPO: TSmallintField;
    ibqRicercaCLIFOR_DESCR: TIBStringField;
    ibqRicercaIMPORTO: TFloatField;
    ibqRicercaDATA_SCADENZA: TDateField;
    ibqRicercaPAGATO: TIBStringField;
    ibqRicercaPAGAMENTO_ID: TIBStringField;
    ibqRicercaNUM_DOC: TIntegerField;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    BitBtn1: TBitBtn;
    IBQuery1: TIBQuery;
    IBQuery1ID_CLI_FOR: TIntegerField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DENOMINAZIONE: TIBStringField;
    IBQuery1COGNOME: TIBStringField;
    IBQuery1NOME: TIBStringField;
    IBQuery1NOME_ALTRO: TIBStringField;
    IBQuery1FULL_NAME: TIBStringField;
    IBQuery1INDIRIZZO: TIBStringField;
    IBQuery1COMUNE_ID: TIntegerField;
    IBQuery1PARTITA_IVA: TIBStringField;
    IBQuery1CODICE_FISCALE: TIBStringField;
    IBQuery1PERSONA_FISICA: TSmallintField;
    IBQuery1PIANO_CONTI_ID: TIntegerField;
    IBQuery1CONTO_CORRENTE: TIBStringField;
    IBQuery1MONETA_ID: TIBStringField;
    IBQuery1PAGAMENTO_ID: TIBStringField;
    IBQuery1CODICE_ZONA_ID: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery1CATEGORIA_CLIENTE_ID: TIBStringField;
    IBQuery1AGENTE_ID: TIBStringField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1LINGUA_ID: TIBStringField;
    IBQuery1CODICE_LISTINO: TIBStringField;
    IBQuery1SCONTO_TESTATA1: TFloatField;
    IBQuery1SCONTO_TESTATA2: TFloatField;
    IBQuery1TEL1: TIBStringField;
    IBQuery1TEL2: TIBStringField;
    IBQuery1FAX: TIBStringField;
    IBQuery1EMAIL: TIBStringField;
    IBQuery1INTERNET: TIBStringField;
    IBQuery1DATA_DI_NASCITA: TDateTimeField;
    IBQuery1SESSO: TIntegerField;
    IBQuery1TITOLO_ID: TIntegerField;
    IBQuery1PORTO_ID: TIBStringField;
    IBQuery1FIDO: TFloatField;
    IBQuery1ABILITA_PARTITA: TSmallintField;
    IBQuery1FATTURA_RIEPILOGATIVA: TIntegerField;
    IBQuery1ACCORPA_ARTICOLI: TSmallintField;
    IBQuery1IVA_SOSPESA: TSmallintField;
    IBQuery1POS_RIF_BOLLE: TSmallintField;
    IBQuery1CODICE_IVA_ESENTE: TIBStringField;
    IBQuery1RIP_RIF_BOLLE: TIntegerField;
    IBQuery1ESCLUDI_MESE1: TIntegerField;
    IBQuery1RIP_RIF_ORDINI: TIntegerField;
    IBQuery1ESCLUDI_MESE2: TIntegerField;
    IBQuery1TIPO_CONTO_ID: TSmallintField;
    IBQuery1NAZIONE_ID: TIntegerField;
    IBQuery1NAZIONE_DI_NASCITA_ID: TIntegerField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1RISCHIO: TFloatField;
    IBQuery1GG_SCADENZA1: TIntegerField;
    IBQuery1GG_SCADENZA2: TIntegerField;
    IBQuery1CONTROPARTITA_ID: TIntegerField;
    IBQuery1TIPO_CONTROPARTITA: TSmallintField;
    IBQuery1CERTIFICATO: TSmallintField;
    IBQuery1DENOMINAZIONE2: TIBStringField;
    IBQuery1INDIRIZZO2: TIBStringField;
    IBQuery1LOCALITA: TIBStringField;
    IBQuery1COMUNE_DI_NASCITA_ID: TIntegerField;
    IBQuery1CAB_ID: TIBStringField;
    IBQuery1ABI_ID: TIBStringField;
    IBQuery1TITOLO_DESCR: TIBStringField;
    IBQuery1COMNASC_DESCR: TIBStringField;
    IBQuery1CAPNASC_DESCR: TIBStringField;
    IBQuery1NAZNASC_DESCR: TIBStringField;
    IBQuery1COM_DESCR: TIBStringField;
    IBQuery1CAP_DESCR: TIBStringField;
    IBQuery1PR_DESCR: TIBStringField;
    IBQuery1CAB_DESCR: TIBStringField;
    IBQuery1ABI_DESCR: TIBStringField;
    IBQuery1NAZ_DESCR: TIBStringField;
    IBQuery1FASON: TIBStringField;
    IBQuery1NOTE: TIBStringField;
    IBQuery1CG: TIBStringField;
    IBQuery1CA: TIBStringField;
    IBQuery1COD2: TIBStringField;
    IBQuery1CR: TIBStringField;
    IBDataSet1: TIBDataSet;
    IBUpdateSQL1: TIBUpdateSQL;
    N1: TMenuItem;
    ModificaScadenza1: TMenuItem;
    DBNavigator1: TDBNavigator;
    ibqRicercaDATO: TFloatField;
    ibqRicercaDADARE: TFloatField;
    RxCalcEdit1: TRxCalcEdit;
    Label1: TLabel;
    Button1: TButton;
    ibqRicercaNUM_DOC_LETT: TIBStringField;
    procedure rbSoloCliClick(Sender: TObject);
    procedure rbSoloFornClick(Sender: TObject);
    procedure cbPagamentoClick(Sender: TObject);
    procedure rxdblcPagamExit(Sender: TObject);
    procedure miPagatoClick(Sender: TObject);
    procedure miNonPagatoClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbAggiornaClick(Sender: TObject);
    procedure bbStampaClick(Sender: TObject);
    procedure miDelScadSelClick(Sender: TObject);
    procedure dbgScadenzeDblClick(Sender: TObject);
    procedure bbPassaClick(Sender: TObject);
    procedure chbxDataDocClick(Sender: TObject);
    procedure gbDataDocExit(Sender: TObject);
    procedure chbxDataScadClick(Sender: TObject);
    procedure gbDataScadExit(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ModificaScadenza1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
   private
    iTipo_CliFor,tipo: integer;
    boolPagam: Boolean;
    strPagam: String;
    boolDataDoc: Boolean;
    dtDataDocDa,dtDataDocA: TDateTime;
    boolDataScad: Boolean;
    dtDataScadDa,dtDataScadA: TDateTime;
   public
    boolPerPassareInPrimaNota: Boolean;
    boolOK_Scadenza_Passata: Boolean;
    intPK_Scadenza_PerPassare, intDoc_ID_PP,intCliFor_ID_PP,
    intCliFor_Tipo_PP, intNum_Doc_PP: Integer;
    strCliFor_Descr_PP: String;
    dImporto_PP: Currency;
    dtDataScad_PP,dtDataFATT_PP: TDateTime;
    Procedure Make_SQL;
  end;
var
  frmScadenze: TfrmScadenze;

implementation

uses uAzDM, uPrnForm, uPubDM, UsceltaBanca, frmuInsInPNPagamento;

{$R *.DFM}

procedure TfrmScadenze.rbSoloCliClick(Sender: TObject);
begin
 iTipo_CliFor:=1;
end;

procedure TfrmScadenze.rbSoloFornClick(Sender: TObject);
begin
 iTipo_CliFor:=2;
end;

procedure TfrmScadenze.cbPagamentoClick(Sender: TObject);
begin
 boolPagam:=cbPagamento.Checked;
 If not(boolPagam)
    Then strPagam:='%';
end;

procedure TfrmScadenze.rxdblcPagamExit(Sender: TObject);
begin
 Try
   strPagam:=rxdblcPagam.KeyValue;
 Except
   strPagam:='%';
 End;
end;

procedure TfrmScadenze.miPagatoClick(Sender: TObject);
begin
 If (boolPerPassareInPrimaNota)
   Then Exit;
 If (dsRicerca.DataSet.IsEmpty)
   Then Exit;
 If (dsRicerca.DataSet.FieldByName('PAGATO').AsString='S')
  Then Exit;
 If Not(dsScadenze.DataSet.Locate('PK_CODICE',
       dsRicerca.DataSet.FieldByname('PK_Codice').AsInteger,[]))
   Then Exit;
 dsScadenze.DataSet.Edit;
 dsScadenze.DataSet.FieldByName('PAGATO').AsString:='S';
 dsScadenze.DataSet.FieldByName('DATO').AsFloat:=dsScadenze.DataSet.FieldByName('IMPORTO').AsFloat;
 dsScadenze.DataSet.FieldByName('DADARE').AsFloat:=0;
 dsScadenze.DataSet.Post;

 Make_SQL;

end;

procedure TfrmScadenze.miNonPagatoClick(Sender: TObject);
begin
 If (boolPerPassareInPrimaNota)
   Then Exit;
 If (dsRicerca.DataSet.IsEmpty)
   Then Exit;
 If (dsRicerca.DataSet.FieldByName('PAGATO').AsString='N')
   Then Exit;
 If Not(dsScadenze.DataSet.Locate('PK_CODICE',
       dsRicerca.DataSet.FieldByname('PK_Codice').AsInteger,[]))
   Then Exit;
 dsScadenze.DataSet.Edit;
 dsScadenze.DataSet.FieldByName('PAGATO').AsString:='N';
 dsScadenze.DataSet.FieldByName('DATO').AsFloat:=0;
 dsScadenze.DataSet.FieldByName('DADARE').AsFloat:=dsScadenze.DataSet.FieldByName('IMPORTO').AsFloat;
 dsScadenze.DataSet.Post;
 Make_SQL;
end;

procedure TfrmScadenze.bbEsciClick(Sender: TObject);
begin
 boolOK_Scadenza_Passata:=False;
 If Not(boolPerPassareInPrimaNota)  Then
begin
 if dmodAz.ibtrDef.InTransaction then
   dmodAz.ibtrDef.Commit;
end;
 Close;

end;

procedure TfrmScadenze.FormShow(Sender: TObject);
begin
 strPagam:='%';
 dsScadenze.DataSet.Open;
 dsPagamento.DataSet.Open;
 dsForn.DataSet.Open;
 dsRicerca.DataSet.Close;
 boolDataDoc:=False;
 dtDataDocDa:=StrToDate('01/01/2003');
 dtDataDocA:=Date;
 boolDataScad:=False;
 dtDataScadDa:=StrToDate('01/01/2003');
 dtDataScadA:=Date;

 boolOK_Scadenza_Passata:=False;
 If (boolPerPassareInPrimaNota) Then
  begin
   bbPassa.Visible:=True;
   RxCalcEdit1.Visible := True;
   RxCalcEdit1.Value := ABS(frmInsInPNPagamento.rxcalcedtTotalePagato.Value-
      frmInsInPNPagamento.RxCalcEdit1.Value);
   Label1.Visible:= true;
  end
  Else
  begin
   bbPassa.Visible:=False;
   RxCalcEdit1.Visible := False;
   Label1.Visible:= False;
end;
 //Make_SQL;
end;

procedure TfrmScadenze.Make_SQL;
begin
 With (ibqRicerca) Do
 Begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM SCADENZE');
   SQL.Add('left join TAB_PAGAMENTI');
   SQL.Add('on PAGAMENTO_ID=ID_PAGAMENTO');
   SQL.Add('where importo>0');


   if cbPagamento.Checked then
   SQL.Add('and TAB_PAGAMENTI.TIPO_PAGAMENTO=:tp');


   If (boolDataDoc) Then
     SQL.Add('And DATA_DOC BETWEEN :parDataDocDa AND :parDataDocA');
   If (boolDataScad) Then
     SQL.Add('And DATA_SCADENZA BETWEEN :parDataScadDa AND :parDataScadA');

   If (rbNonPagScad.Checked)
     Then SQL.Add('And PAGATO = ''N'' ');

   If (rbSoloCli.Checked)
      Then SQL.Add('And CLIFOR_TIPO = 1');
   If (rbSoloForn.Checked)
      Then SQL.Add('And CLIFOR_TIPO = 2');
   If (rbCli.Checked)
      Then SQL.Add('And CLIFOR_ID = '''+rxdblcCliID.KeyValue+'''');
   If (rbForn.Checked)
      Then SQL.Add('And CLIFOR_ID = '''+rxdblcForID.KeyValue+'''');
   if tipo=1 then
   SQL.Add('ORDER BY DATA_SCADENZA,DATA_DOC,NUM_DOC')
   else
   SQL.Add('ORDER BY CLIFOR_DESCR,DATA_SCADENZA,DATA_DOC,NUM_DOC');

   If (boolDataDoc) Then
    Begin
     ParamByName('parDataDocDa').AsDateTime:=dtDataDocDa;
     ParamByName('parDataDocA').AsDateTime:=dtDataDocA;
    End;
   If (boolDataScad) Then
    Begin
     ParamByName('parDataScadDa').AsDateTime:=dtDataScadDa;
     ParamByName('parDataScadA').AsDateTime:=dtDataScadA;
    End;
   if cbPagamento.Checked then
   ParamByName('tp').AsInteger:=rxdblcPagam.KeyValue;
   OPEN;
 End;
end;

procedure TfrmScadenze.bbAggiornaClick(Sender: TObject);
begin
 tipo:=1;
 Make_SQL;
end;

procedure TfrmScadenze.bbStampaClick(Sender: TObject);
var
Scelta: String;
begin
scelta:=InputBox('Scegli il tipo di Ordinamento','1)x Data Scadenza - 2)x Cliente/Forn.','1');
if scelta = '1' then
begin
 tipo:=1;
 Make_SQL;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frScadenze.frf');
     ShowReport;
 End;
 end;
if scelta = '2' then
begin
 tipo:=2;
 Make_SQL;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frScadenze2.frf');
     ShowReport;
 End;
end;
end;

procedure TfrmScadenze.miDelScadSelClick(Sender: TObject);
begin
 If (boolPerPassareInPrimaNota)
   Then Exit;
 If Not(dsScadenze.DataSet.Locate('PK_CODICE',
       dsRicerca.DataSet.FieldByname('PK_Codice').AsInteger,[]))
   Then Exit;

 If (Application.MessageBox('Sicuro vuoi eliminare?','Confermare',MB_YesNo+MB_ICONWARNING)=ID_No)
   Then Exit;

 dsScadenze.DataSet.Delete;
 Make_SQL;
end;

procedure TfrmScadenze.dbgScadenzeDblClick(Sender: TObject);
var
iPianoConto: integer;
sControPart,strCliFor_NomeConto : string;
begin
 bbPassa.Click;

If (boolOK_Scadenza_Passata) Then
Begin
try
RxCalcEdit1.Value := RxCalcEdit1.Value - dImporto_PP;
if RxCalcEdit1.Value < 0 then
begin
If (MessageDlg('Scadenza Maggiore del Credito Residuo...Pasare comunque?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then
begin
RxCalcEdit1.Value := RxCalcEdit1.Value + dImporto_PP;
Exit;
end;
If (MessageDlg('Considerare la scadenza passata completamente?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then
begin
dImporto_PP :=RxCalcEdit1.Value+ dImporto_PP;
end;
end;
Except
end;
Try
// Contropartita
dmodAz.ibTab_Piano_Conti.Locate('Tipo',intCliFor_ID_PP,[]);
iPianoConto:=dmodAz.ibTab_Piano_ContiID_PIANO_CONTO.AsInteger;
sControPart:=dmodAz.ibTab_Piano_ContiDESCR.AsString;
strCliFor_NomeConto:=dmodAz.ibTab_Piano_ContiNOME_CONTO.AsString;
Except
iPianoConto:=-1;
sControPart:='';
End;
Try
frmInsInPNPagamento.rxmdPrimaNota.Insert;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('DATA_DOC').AsDateTime :=frmInsInPNPagamento.dtedtDataDoc.Date;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('DATA_FATTURA').AsDateTime:=dtDataFATT_PP;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('FK_Scadenza').AsInteger:=intPK_Scadenza_PerPassare;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('Doc_ID').AsInteger:=intDoc_ID_PP;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('NOME_CONTO').AsString:=strCliFor_NomeConto;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('CliFor_ID').AsInteger:=intCliFor_ID_PP;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('Tipo_CliFor').AsInteger:=intCliFor_Tipo_PP;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('Num_Doc').AsInteger:=intNum_Doc_PP;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('NUM_FATTURA').AsInteger:=intNum_Doc_PP;
frmInsInPNPagamento.rxmdPrimaNota.FieldByname('SOTTOCONTO_DESCR').AsString:=sControPart;
frmInsInPNPagamento.rxmdPrimaNota.FieldByname('PIANOCONTO_ID').AsInteger:=iPianoConto;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('Importo').AsCurrency:=dImporto_PP;
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('DATA_SCADENZA').AsDateTime:=dtDataScad_PP;
If Not(frmInsInPNPagamento.boolVendita) then
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('DARE').AsCurrency:=dImporto_PP
else
frmInsInPNPagamento.rxmdPrimaNota.FieldByName('AVERE').AsCurrency:=dImporto_PP;


frmInsInPNPagamento.rxmdPrimaNota.Post;
Except
End;

End
Else intPK_Scadenza_PerPassare:=-1;


end;

procedure TfrmScadenze.bbPassaClick(Sender: TObject);
begin
 If Not(boolPerPassareInPrimaNota)
    Then Exit;
 If (dbgScadenze.DataSource.DataSet.IsEmpty)
    Then Exit;
 If (dbgScadenze.DataSource.DataSet.FieldByName('PAGATO').AsString='S')
    Then Exit;


 Try
  intPK_Scadenza_PerPassare:=
        dbgScadenze.DataSource.DataSet.FieldByName('PK_Codice').AsInteger;
  intDoc_ID_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('DOCUMENTO_ID').AsInteger;
  intCliFor_ID_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('CliFor_ID').AsInteger;
  intCliFor_Tipo_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('CliFor_Tipo').AsInteger;
  intNum_Doc_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('Num_Doc').AsInteger;
  strCliFor_Descr_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('CliFor_Descr').AsString;
  dImporto_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('DADARE').AsFloat;
  dtDataScad_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('DATA_SCADENZA').AsDateTime;
  dtDataFATT_PP:=
        dbgScadenze.DataSource.DataSet.FieldByName('DATA_DOC').AsDateTime;

  boolOK_Scadenza_Passata:=True;



//    Close;
 Except
 End;
end;

procedure TfrmScadenze.chbxDataDocClick(Sender: TObject);
begin
 gbDataDoc.Enabled:=chbxDataDoc.checked;
 boolDataDoc:=chbxDataDoc.checked;
end;

procedure TfrmScadenze.gbDataDocExit(Sender: TObject);
begin
 Try
   dtDataDocDa:=dtedtDataDocDa.Date;
   dtDataDocA :=dtedtDataDocA.Date;
 Except
   dtDataDocDa:=STrToDate('01/01/1977');
   dtDataDocA :=Now;
 End;
end;

procedure TfrmScadenze.chbxDataScadClick(Sender: TObject);
begin
 gbDataScad.Enabled:=chbxDataScad.Checked;
 boolDataScad:=chbxDataScad.Checked;
end;

procedure TfrmScadenze.gbDataScadExit(Sender: TObject);
begin
 Try
  dtDataScadDa:=dtedtDataScadDa.Date;
  dtDataScadA:=dtedtDataScadA.Date;
 Except
  dtDataScadDa:=StrToDate('01/01/1977');
  dtDataScadA:=Date;
 End;
end;

procedure TfrmScadenze.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfrmScadenze.BitBtn1Click(Sender: TObject);
var
F: TextFile;
FileHandle, i, d, e, j,k : Integer;
A, b, c, x,y1,m1,d1,c1,c2,c3,c4,C5 : String;
abi,cab,descrbanca,DATA : string;
g, h, l, m : real;
Year, Month, Day : Word;
begin
 fSceltaBanca:=TfSceltaBanca.Create(Self);
 fSceltaBanca.ShowModal;
 if fSceltaBanca.stato ='1' then begin
 abi :=fSceltaBanca.DataSource1.DataSet.fieldbyname('ABI_ID').AsString;
 cab :=trim(fSceltaBanca.DataSource1.DataSet.fieldbyname('INTERNET').AsString);
 descrbanca :=trim(fSceltaBanca.DataSource1.DataSet.fieldbyname('DESCR').AsString);
 end
 else
 exit;
 fSceltaBanca.Free;
  dsRicerca.DataSet.First;

  IBQuery1.Close;
  IBQuery1.Open;

 i:=1;
 b:= '00999';
 DecodeDate(Now, Year, Month, Day);
 y1:=IntToStr(Year);
 m1:=IntToStr(Month);
 d1:=IntToStr(Day);
// DATA:=d1+M1+y1;
data := FormatDateTime('ddmmyy',Now);
 x:=ExtractFilePath(Application.Exename)+descrbanca+'RIBA.dat';
  AssignFile(F, x);
  Rewrite(F);

  c:= DATA+'12254'+b;
  x:=format('%3s%-5s%-5s%-6s%-1s%-20s%75s',['IB',b,abi,data,'1',c,'E']);
  Writeln(F, x);
  while not dsRicerca.DataSet.Eof do
  begin
  a:= dsRicerca.DataSet.fieldbyname('CLIFOR_DESCR').AsString;
  data := FormatDateTime('ddmmyy',dsRicerca.DataSet.fieldbyname('DATA_SCADENZA').AsDateTime);

  x:=format('%3s%7s%-12s%-6s%-5s%12s%1s%5s%5s%13s%5s%5s%12s%5s%1s%16s%7s',
   ['14',rightstr('000000000'+inttostr(i),7),' ',data,'30000',
   rightstr('0000000000000'+FLOATTOSTR(dsRicerca.DataSet.fieldbyname('IMPORTO').AsFLOAt*100),13),
   '-',abi,cab,' ',IBQuery1.fieldbyname('ABI_ID').Asstring,
   IBQuery1.fieldbyname('NOME_ALTRO').Asstring,' ',b,'4',rightstr('0000000000000000'+dsRicerca.DataSet.fieldbyname('CLIFOR_ID').Asstring,16),'E']);

  Writeln(F, x);


  C1:= 'Eticenter di del Gaudio M. via Trav.Tavernola 21 80053 Castellammare di Stabia Napoli';
  C2:= Copy(C1,1,24);
  C3:= Copy(C1,25,24);
  C4:= Copy(C1,50,24);
  C5:= Copy(C1,75,24);

  x:=format('%3s%7s%-24s%-24s%-24s%-24s',['20',rightstr('000000000'+inttostr(i),7),C2,C3,C4,C5]);

  Writeln(F, x);

  C1:= dsRicerca.DataSet.fieldbyname('CLIFOR_DESCR').Asstring;
  C2:= Copy(C1,1,30);
  C3:= Copy(C1,31,30);
  C4 := IBQuery1.fieldbyname('PARTITA_IVA').Asstring;
  x:=format('%3s%7s%-30s%-30s%-16s',['30',rightstr('000000000'+inttostr(i),7),C2,C3,c4]);
  Writeln(F, x);

//40
  C1:= Copy(IBQuery1.fieldbyname('INDIRIZZO').Asstring,1,29);
  C2:= Copy(IBQuery1.fieldbyname('CAP_DESCR').Asstring,1,5);
  C3 := Copy(IBQuery1.fieldbyname('COM_DESCR').Asstring,1,24);
  C4:= Copy(IBQuery1.fieldbyname('ABI_DESCR').Asstring,1,49);
  x:=format('%3s%7s%-29s%-5s%-24s%2s%-49s',
   ['40',rightstr('000000000'+inttostr(i),7),c1,C2,c3,IBQuery1.fieldbyname('PR_DESCR').Asstring,c4]);
  Writeln(F, x);

//50
  C1:= 'PER FATTURA N. '+dsRicerca.DataSet.fieldbyname('num_doc').Asstring+
       '    DEL  '+ dsRicerca.DataSet.fieldbyname('data_doc').Asstring;
  C2:= Copy(C1,1,40);
  C3 := Copy(C1,41,40);
  C4:= Copy(IBQuery1.fieldbyname('ABI_DESCR').Asstring,1,49);
  x:=format('%3s%7s%-40s%-40S',
   ['50',rightstr('000000000'+inttostr(i),7),C2,c3]);
  Writeln(F, x);

//51
  C1:= dsRicerca.DataSet.fieldbyname('CLIFOR_DESCR').Asstring;
  C3:= Copy(C1,1,20);
  IBDataSet1.Open;
  IBDataSet1.Last;
  C2:=INTTOSTR(IBDataSet1.fieldbyname('NUMERO').AsInteger+1) ;

  x:=format('%3s%7s%10s%-20S',
   ['51',rightstr('000000000'+inttostr(i),7),C2,c3]);
  Writeln(F, x);
  k:= IBDataSet1.fieldbyname('NUMERO').AsInteger;
  IBDataSet1.Insert;
  IBDataSet1.fieldbyname('NUMERO').AsInteger:=k+1;
  IBDataSet1.Post;
  IBDataSet1.Close;

  x:=format('%3s%7s',
   ['70',rightstr('000000000'+inttostr(i),7)]);
  Writeln(F, x);



  dsRicerca.DataSet.Next;
  i:=i+1;
  end;
  Writeln(F, 'EF');
  CloseFile(F);


end;

procedure TfrmScadenze.ModificaScadenza1Click(Sender: TObject);
begin
DBNavigator1.Enabled := True;
dbgScadenze.ReadOnly := False;
Button1.Visible := True;
dbgScadenze.Options := dbgScadenze.Options - [dgRowSelect];
dbgScadenze.Options := dbgScadenze.Options + [dgEditing];
end;

procedure TfrmScadenze.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
bbEsci.click;
end;

procedure TfrmScadenze.Button1Click(Sender: TObject);
begin
 With (ibqRicerca) Do
 Begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM SCADENZE');
   SQL.Add('Where PAGAMENTO_ID in ');
   SQL.Add('(Select ID_PAGAMENTO From TAB_PAGAMENTI');
   SQL.Add('Where (TIPO_PAGAMENTO Like '''+strPagam+''')');
   SQL.Add('OR (TIPO_PAGAMENTO IS NULL))');


   If (boolDataDoc) Then
     SQL.Add('And DATA_DOC BETWEEN :parDataDocDa AND :parDataDocA');
   If (boolDataScad) Then
     SQL.Add('And DATA_SCADENZA BETWEEN :parDataScadDa AND :parDataScadA');

   If (rbNonPagScad.Checked)
     Then SQL.Add('And PAGATO = ''N'' ');

   If (rbSoloCli.Checked)
      Then SQL.Add('And CLIFOR_TIPO = 1');
   If (rbSoloForn.Checked)
      Then SQL.Add('And CLIFOR_TIPO = 2');
   If (rbCli.Checked)
      Then SQL.Add('And CLIFOR_ID = '''+rxdblcCliID.KeyValue+'''');
   If (rbForn.Checked)
      Then SQL.Add('And CLIFOR_ID = '''+rxdblcForID.KeyValue+'''');
   SQL.Add('ORDER BY CLIFOR_DESCR,CLIFOR_ID,DATA_DOC,NUM_DOC');
   If (boolDataDoc) Then
    Begin
     ParamByName('parDataDocDa').AsDateTime:=dtDataDocDa;
     ParamByName('parDataDocA').AsDateTime:=dtDataDocA;
    End;
   If (boolDataScad) Then
    Begin
     ParamByName('parDataScadDa').AsDateTime:=dtDataScadDa;
     ParamByName('parDataScadA').AsDateTime:=dtDataScadA;
    End;

   OPEN;
 End;
end;

end.
