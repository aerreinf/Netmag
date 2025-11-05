unit frmuPassDoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, ExtCtrls, Grids, DBGrids, Db, uBaseFormDoc3, StdCtrls,
  Mask, ToolEdit, Buttons, IBCustomDataSet, IBQuery, DBCtrls;

type
  TfrmPassDoc = class(TForm)
    tbarCtrlPassDoc: TToolBar;
    pnlDoc: TPanel;
    pnlDocDet: TPanel;
    sep0: TToolButton;
    tbtnEsci: TToolButton;
    sep1: TToolButton;
    dbgDoc: TDBGrid;
    dbgDocDet: TDBGrid;
    dsDoc: TDataSource;
    dsDocDet: TDataSource;
    tbtnPassaTutti: TToolButton;
    pnlFiltroData: TPanel;
    dtedtDataDa: TDateEdit;
    dtedtDataA: TDateEdit;
    bbaggiorna: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    IBQuery1: TIBQuery;
    IBQuery1ID_DOC: TFloatField;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCRIZIONE: TIBStringField;
    IBQuery1SERIALE: TIBStringField;
    IBQuery1ID_DET_DOC: TFloatField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RadioButton1: TCheckBox;
    procedure tbtnEsciClick(Sender: TObject);
    procedure dbgDocDetDblClick(Sender: TObject);
    procedure dbgDocDblClick(Sender: TObject);
    procedure tbtnPassaTuttiClick(Sender: TObject);
    procedure bbaggiornaClick(Sender: TObject);
    procedure dtedtDataDaExit(Sender: TObject);
    procedure dtedtDataAChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
   private
    Procedure Insert_DetItem;
    Procedure Insert_AllDetItem;
    Procedure get_Dates;
   public
    intCliForID,intDoc_ID,iPassTipoDoc: Integer;
    dtDataDa,dtDataA: TDateTime;
    a:string;
  end;

var
  frmPassDoc: TfrmPassDoc;

implementation

uses uAzDM, uPubDM;

{$R *.DFM}

procedure TfrmPassDoc.tbtnEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPassDoc.dbgDocDetDblClick(Sender: TObject);
Begin
 Insert_DetItem;
dmodAz.ibqTab_Doc.FieldByName('PAGAMENTO_ID').AsString:= dbgDoc.DataSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
dmodAz.ibqTab_Doc.FieldByName('PORTO').AsString:= dbgDoc.DataSource.DataSet.FieldByName('PORTO').AsString;
dmodAz.ibqTab_Doc.FieldByName('SPESE_SPEDIZIONE').AsFloat:= dbgDoc.DataSource.DataSet.FieldByName('SPESE_SPEDIZIONE').AsFloat;
dmodAz.ibqTab_Doc.FieldByName('ACCONTO').AsFloat:= dbgDoc.DataSource.DataSet.FieldByName('ACCONTO').AsFloat;
dmodAz.ibqTab_Doc.FieldByName('SPESE_ACCESSORIE').AsFloat:= dbgDoc.DataSource.DataSet.FieldByName('SPESE_ACCESSORIE').AsFloat;
dmodAz.ibqTab_Doc.FieldByName('SPEDIZIONE').AsString:= dbgDoc.DataSource.DataSet.FieldByName('SPEDIZIONE').AsString;

End;

procedure TfrmPassDoc.Insert_DetItem;
Var
 intNumRiga: Integer;
begin
 If (dbgDocDet.DataSource.DataSet.IsEmpty)
  Then Exit;

 With (dmodAz.ibqRicerca) Do
 Begin
   Close;
   SQL.Clear;
   SQL.ADD('SELECT MAX(NUM_RIGA_ID) as numriga FROM TAB_Det_Doc WHERE DOC_ID = '+IntToStr(intDoc_ID));
   Open;
   intNumRiga:=1+FieldByName('numriga').Asinteger;
   Close;
 End;


 // insert into --> dmodAz.ibtTabDet_Doc
 // tipo_doc da : iPassTipoDoc
 Try
  dmodAz.ibtTabDet_Doc.Insert;
  dmodAz.ibtTabDet_DocNUM_RIGA_ID.AsInteger:=intNumRiga;
  dmodAz.ibtTabDet_DocDoc_ID.AsInteger:= intDoc_ID;

  dmodAz.ibtTabDet_Doc.FieldByName('CODICE_ARTICOLO').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('CODICE_ARTICOLO').Value;
//  dmodAz.ibtTabDet_Doc.FieldByName('DEP').Value:=
//    fBaseFormDoc3.LookNostrDepCod.Value;

  dmodAz.ibtTabDet_Doc.FieldByName('DESCR').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('DESCR').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('COSTO').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('COSTO').Value;
  dmodAz.ibtTabDet_DocRIF_A_DDT.AsInteger:=0;
  dmodAz.ibtTabDet_DocRIF_A_ORD.AsInteger:=0;
  dmodAz.ibtTabDet_DocRIF_A_PRE.AsInteger:=0;
  dmodAz.ibtTabDet_DocRIF_A.AsInteger:=1;
  dmodAz.ibtTabDet_Doc.FieldByName('OMAGGIO').Value:=1 ;
{rif_ddt_id_doc , rif_ddt_data_doc}
  Case (iPassTipoDoc) Of

    11,21: Begin
             dmodAz.ibtTabDet_DocRIF_A_PRE.AsInteger:=1;
             dmodAz.ibtTabDet_DocRIF_PRE_ID_DOC.AsInteger:=
                dbgDoc.DataSource.DataSet.FieldByName('ID_DOCUMENTO').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_NUM_DOC').Value:=
                dbgDoc.DataSource.DataSet.FieldByName('NUM_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_DATA_DOC').Value:=
                dbgDoc.DataSource.DataSet.FieldByName('DATA_DOC').Value;
           End;
    12,22: Begin
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_A_PRE').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_A_PRE').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_DATA_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_PRE_DATA_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_ID_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_PRE_ID_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_NUM_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_PRE_NUM_DOC').Value;


             dmodAz.ibtTabDet_DocRIF_A_ORD.AsInteger:=1;
             dmodAz.ibtTabDet_DocRIF_ORD_ID_DOC.AsInteger:=
                dbgDoc.DataSource.DataSet.FieldByName('ID_DOCUMENTO').AsInteger;
             dmodAz.ibtTabDet_DocRIF_ORD_NUM_DOC.AsInteger:=
                dbgDoc.DataSource.DataSet.FieldByName('NUM_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_ORD_DATA_DOC').Value:=
                dbgDoc.DataSource.DataSet.FieldByName('DATA_DOC').Value;
           End;
    13,23: Begin
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_A_PRE').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_A_PRE').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_A_ORD').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_A_ORD').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_DATA_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_PRE_DATA_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_ID_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_PRE_ID_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_PRE_NUM_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_PRE_NUM_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_ORD_DATA_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_ORD_DATA_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_ORD_ID_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_ORD_ID_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_ORD_NUM_DOC').Value:=
               dbgDocDet.DataSource.DataSet.FieldByName('RIF_ORD_NUM_DOC').Value;

             dmodAz.ibtTabDet_DocRIF_A_DDT.AsInteger:=1;
             dmodAz.ibtTabDet_DocRIF_DDT_ID_DOC.AsInteger:=
                dbgDoc.DataSource.DataSet.FieldByName('ID_DOCUMENTO').AsInteger;
             dmodAz.ibtTabDet_DocRIF_DDT_NUM_DOC.AsInteger:=
                dbgDoc.DataSource.DataSet.FieldByName('NUM_DOC').Value;
             dmodAz.ibtTabDet_Doc.FieldByName('RIF_DDT_DATA_DOC').Value:=
                dbgDoc.DataSource.DataSet.FieldByName('DATA_DOC').Value;
           End;
  End;

  dmodAz.ibtTabDet_Doc.FieldByName('COSTOINVALUTA').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('COSTOINVALUTA').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('UNITA_MISURA').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('UNITA_MISURA').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('QTA_UM').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('QTA_UM').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('QUANTITA').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('QUANTITA').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('SCONTO1').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('SCONTO1').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('SCONTO2').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('SCONTO2').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('SCONTO3').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('SCONTO3').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('SCONTO4').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('SCONTO4').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('IMPORTO_SCONTO').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('IMPORTO_SCONTO').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('IMPORTO').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('IMPORTO').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('IMPORTOINVALUTA').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('IMPORTOINVALUTA').Value;
//  dmodAz.ibtTabDet_Doc.FieldByName('DEP').Value:=a;
  dmodAz.ibtTabDet_Doc.FieldByName('DEP').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('DEP').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('SCONTO_EQ').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('SCONTO_EQ').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('PERC_PROVV').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('PERC_PROVV').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('TIPO_SERVIZIO').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('TIPO_SERVIZIO').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('IVATO').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('IVATO').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('IMPORTO_CON_IVA').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('IMPORTO_CON_IVA').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('CODICE_IVA_ID').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('CODICE_IVA_ID').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('DATA_REG').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('DATA_REG').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('PIANOCONTO_ID').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('PIANOCONTO_ID').Value;

  dmodAz.ibtTabDet_Doc.FieldByName('A').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('A').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('B').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('B').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('C').Value:=
      dbgDocDet.DataSource.DataSet.FieldByName('C').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('TOTCOLLI').Value:=
      dbgDocDet.DataSource.DataSet.FieldByName('TOTCOLLI').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('COL').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('COL').Value;

  dmodAz.ibtTabDet_Doc.FieldByName('OP_QTA_DISPONIBILE').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('OP_QTA_DISPONIBILE').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('OP_QTA_GIACENZA').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('OP_QTA_GIACENZA').Value;
  dmodAz.ibtTabDet_Doc.FieldByName('OP_VAL_DISPONIBILE').Value:=
    dbgDocDet.DataSource.DataSet.FieldByName('OP_VAL_DISPONIBILE').Value;
//  dmodAz.ibtTabDet_Doc.FieldByName('OP_VAL_GIACENZA').Value:=
//    dbgDocDet.DataSource.DataSet.FieldByName('OP_VAL_GIACENZA').Value;

  dmodAz.ibtTabDet_Doc.Post;

IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from seriali');
IBQuery1.SQL.Add('where (codice=:coda) and (id_doc=:iddoc) and (id_det_doc=:iddetdoc)');
IBQuery1.ParamByName('coda').AsString :=dbgDocDet.DataSource.DataSet.FieldByName('CODICE_ARTICOLO').Value;
IBQuery1.ParamByName('iddoc').AsInteger :=dbgDocDet.DataSource.DataSet.FieldByName('doc_id').Value; ;
IBQuery1.ParamByName('iddetdoc').AsInteger :=dbgDocDet.DataSource.DataSet.FieldByName('num_riga_id').Value; ;
IBQuery1.Open;
if not IBQuery1.IsEmpty then
begin
IBQuery1.First;
while not IBQuery1.Eof do begin

dmodAz.tabSeriali.Insert;
dmodAz.tabSeriali.FieldByName('Seriale').AsString := IBQuery1.FieldValues['Seriale'];
dmodAz.tabSeriali.FieldByName('CODICE').AsString := IBQuery1.FieldValues['CODICE'];
dmodAz.tabSeriali.FieldByName('DESCRIZIONE').AsString := IBQuery1.FieldValues['DESCRIZIONE'];
dmodAz.tabSeriali.FieldByName('ID_DOC').AsFloat := intDoc_ID;
dmodAz.tabSeriali.FieldByName('ID_DET_DOC').AsFloat := intNumRiga;
dmodAz.tabSeriali.Post;

IBQuery1.Next;
end;
end;
 Except

 End;
 
end;

procedure TfrmPassDoc.Insert_AllDetItem;
begin
 // ciclo
 If (dbgDocDet.DataSource.DataSet.IsEmpty)
  Then Exit;
 While Not(dbgDocDet.DataSource.DataSet.Eof) Do
 Begin
   Insert_DetItem;
   dbgDocDet.DataSource.DataSet.Next;
 End;
dmodAz.ibqTab_Doc.FieldByName('PAGAMENTO_ID').AsString:= dbgDoc.DataSource.DataSet.FieldByName('PAGAMENTO_ID').AsString;
dmodAz.ibqTab_Doc.FieldByName('PORTO').AsString:= dbgDoc.DataSource.DataSet.FieldByName('PORTO').AsString;
dmodAz.ibqTab_Doc.FieldByName('SPESE_SPEDIZIONE').AsFloat:= dbgDoc.DataSource.DataSet.FieldByName('SPESE_SPEDIZIONE').AsFloat;
dmodAz.ibqTab_Doc.FieldByName('ACCONTO').AsFloat:= dbgDoc.DataSource.DataSet.FieldByName('ACCONTO').AsFloat;
dmodAz.ibqTab_Doc.FieldByName('SPESE_ACCESSORIE').AsFloat:= dbgDoc.DataSource.DataSet.FieldByName('SPESE_ACCESSORIE').AsFloat;
dmodAz.ibqTab_Doc.FieldByName('SPEDIZIONE').AsString:= dbgDoc.DataSource.DataSet.FieldByName('SPEDIZIONE').AsString;
end;

procedure TfrmPassDoc.dbgDocDblClick(Sender: TObject);
begin
 // inserirre tutto il doc.
 Insert_AllDetItem;

 dbgDoc.DataSource.DataSet.Edit;
 dbgDoc.DataSource.DataSet.FieldByName('SUBATTIVITA').Value := 'S';
 dmodAz.ibqryPassDoc.Post;
end;

procedure TfrmPassDoc.tbtnPassaTuttiClick(Sender: TObject);
begin
 dsDoc.DataSet.First;

 While Not(dsDoc.DataSet.Eof) Do
 Begin
   Insert_AllDetItem;

 dbgDoc.DataSource.DataSet.Edit;
 dbgDoc.DataSource.DataSet.FieldByName('SUBATTIVITA').Value := 'S';
 dmodAz.ibqryPassDoc.Post;
// dmodAz.ibqryPassDoc.ApplyUpdates;

 dsDoc.DataSet.next;
 End;
end;

procedure TfrmPassDoc.bbaggiornaClick(Sender: TObject);
begin
 get_Dates;

with dmodAz.ibqryPassDoc do begin
Close;
SelectSQL.Clear;
SelectSQL.Add('select * from TAB_DOCUMENTI');
SelectSQL.Add('WHERE TIPO_DOC = :parTipoDoc');
if fBaseFormDoc3.PD=1 then
SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null)) and CAUSALE_MAGAZZINO=''DDTC''')
//SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null))')
else

if not RadioButton1.Checked then
SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null))');

SelectSQL.Add('and CLIFOR_ID = :parCliForID');

SelectSQL.Add('and ID_DOCUMENTO In');
SelectSQL.Add('(Select DOC_ID from TAB_DET_DOC)');
SelectSQL.Add('AND DATA_DOC BETWEEN :parDataDa AND :parDataA');
if fBaseFormDoc3.PD=1 then
SelectSQL.Add('Order By clifor_id,DATA_DOC, Num_DOC')
else
SelectSQL.Add('Order By DATA_DOC, Num_DOC');
ParamByName('parTipoDoc').AsInteger:=iPassTipoDoc;
if fBaseFormDoc3.PD=1 then
else
ParamByName('parCliForID').AsInteger:=intCliForID;
ParamByName('parDataDa').AsDateTime:=dtDataDa;
ParamByName('parDataA').AsDateTime:=dtDataA;
Open;
end;
 dmodAz.ibtblPassDocDet.Open;
end;

procedure TfrmPassDoc.get_Dates;
begin
 Try
   dtDataDa:=dtedtDataDa.Date;
   dtDataA :=dtedtDataA.Date;
 Except
   dtDataDa:=StrToDate('01/01/2004');
   dtDataA :=Date;
 End;
end;

procedure TfrmPassDoc.dtedtDataDaExit(Sender: TObject);
begin
get_Dates;
end;

procedure TfrmPassDoc.dtedtDataAChange(Sender: TObject);
begin
get_Dates;
end;

procedure TfrmPassDoc.FormShow(Sender: TObject);
begin
 dtedtDataDa.Date:=StrToDate('01/01/2004');
 dtedtDataA.Date:=Date;
 bbaggiorna.Click;

end;

procedure TfrmPassDoc.BitBtn1Click(Sender: TObject);
begin
 get_Dates;

with dmodAz.ibqryPassDoc do begin
Close;
SelectSQL.Clear;
SelectSQL.Add('select * from TAB_DOCUMENTI');
SelectSQL.Add('where ID_DOCUMENTO In');
SelectSQL.Add('(Select DOC_ID from TAB_DET_DOC)');
SelectSQL.Add('AND DATA_DOC BETWEEN :parDataDa AND :parDataA');
SelectSQL.Add('Order By DATA_DOC, Num_DOC');
ParamByName('parDataDa').AsDateTime:=dtDataDa;
ParamByName('parDataA').AsDateTime:=dtDataA;
Open;
end;
 dmodAz.ibtblPassDocDet.Open;

end;

procedure TfrmPassDoc.BitBtn2Click(Sender: TObject);
var
id_cli : integer;
begin

 bbaggiorna.Click;
id_cli := dsDoc.DataSet.fieldbyname('CLIFOR_ID').AsInteger;

with dmodAz.ibqryPassDoc do begin
Close;
SelectSQL.Clear;
SelectSQL.Add('select * from TAB_DOCUMENTI');
SelectSQL.Add('WHERE TIPO_DOC = :parTipoDoc');
if fBaseFormDoc3.PD=1 then
SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null)) and CAUSALE_MAGAZZINO=''DDTC''');
//SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null))')
SelectSQL.Add('and CLIFOR_ID = :parCliForID');

SelectSQL.Add('and ID_DOCUMENTO In');
SelectSQL.Add('(Select DOC_ID from TAB_DET_DOC)');
SelectSQL.Add('AND DATA_DOC BETWEEN :parDataDa AND :parDataA');
SelectSQL.Add('Order By clifor_id,DATA_DOC, Num_DOC');
ParamByName('parTipoDoc').AsInteger:=iPassTipoDoc;
ParamByName('parCliForID').AsInteger:=id_cli;
ParamByName('parDataDa').AsDateTime:=dtDataDa;
ParamByName('parDataA').AsDateTime:=dtDataA;
Open;
end;
 dmodAz.ibtblPassDocDet.Open;

fBaseFormDoc3.tbtnNuovo.Click;
fBaseFormDoc3.LookCliForCod.KeyValue := id_cli;
fBaseFormDoc3.LookCliForCodChange(sender);
intDoc_ID:=fBaseFormDoc3.dsoDocumento.DataSet['ID_DOCUMENTO'];
 dsDoc.DataSet.First;

 While Not(dsDoc.DataSet.Eof) Do
 Begin
   Insert_AllDetItem;

 dbgDoc.DataSource.DataSet.Edit;
 dbgDoc.DataSource.DataSet.FieldByName('SUBATTIVITA').Value := 'S';
 dmodAz.ibqryPassDoc.Post;
// dmodAz.ibqryPassDoc.ApplyUpdates;

 dsDoc.DataSet.next;
 End;
 Close;
end;

procedure TfrmPassDoc.BitBtn3Click(Sender: TObject);
var
id_cli : integer;
begin


id_cli := dsDoc.DataSet.fieldbyname('CLIFOR_ID').AsInteger;

with dmodAz.ibqryPassDoc do begin
Close;
SelectSQL.Clear;
SelectSQL.Add('select * from TAB_DOCUMENTI');
SelectSQL.Add('WHERE TIPO_DOC = :parTipoDoc');
if fBaseFormDoc3.PD=1 then
SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null)) and CAUSALE_MAGAZZINO=''DDTC''');
//SelectSQL.Add('AND (SUBATTIVITA<>''S''  or (subattivita is null))')
SelectSQL.Add('and CLIFOR_ID = :parCliForID');

SelectSQL.Add('and ID_DOCUMENTO In');
SelectSQL.Add('(Select DOC_ID from TAB_DET_DOC)');
SelectSQL.Add('AND DATA_DOC BETWEEN :parDataDa AND :parDataA');
SelectSQL.Add('Order By clifor_id,DATA_DOC, Num_DOC');
ParamByName('parTipoDoc').AsInteger:=iPassTipoDoc;
ParamByName('parCliForID').AsInteger:=id_cli;
ParamByName('parDataDa').AsDateTime:=dtDataDa;
ParamByName('parDataA').AsDateTime:=dtDataA;
Open;
end;
 dmodAz.ibtblPassDocDet.Open;

fBaseFormDoc3.tbtnNuovo.Click;
fBaseFormDoc3.LookCliForCod.KeyValue := id_cli;
fBaseFormDoc3.LookCliForCodChange(sender);
intDoc_ID:=fBaseFormDoc3.dsoDocumento.DataSet['ID_DOCUMENTO'];
 dsDoc.DataSet.First;

 While Not(dsDoc.DataSet.Eof) Do
 Begin
   Insert_AllDetItem;

 dbgDoc.DataSource.DataSet.Edit;
 dbgDoc.DataSource.DataSet.FieldByName('SUBATTIVITA').Value := 'S';
 dmodAz.ibqryPassDoc.Post;
// dmodAz.ibqryPassDoc.ApplyUpdates;

 dsDoc.DataSet.next;
// End;
fBaseFormDoc3.PassaTutte;
bbaggiorna.Click;
end;

 Close;
 end;

end.
