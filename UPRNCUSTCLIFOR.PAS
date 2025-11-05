unit uPrnCustCliFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, IBCustomDataSet, IBQuery, DBCtrls,
  RxLookup, Menus, FR_Class, Grids, DBGrids, IdAntiFreezeBase,
  IdAntiFreeze, IdMailBox, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, Variants;

type
  TfPrnCustCliFor = class(TForm)
    paSeleziona: TPanel;
    gbCliFor: TGroupBox;
    rbCliForTutti: TRadioButton;
    rbCliForNonTutti: TRadioButton;
    shCliForBegin: TShape;
    gbZone: TGroupBox;
    rbZoneTutti: TRadioButton;
    rbZoneNonTutti: TRadioButton;
    gbAgenti: TGroupBox;
    rbAgentiTutti: TRadioButton;
    rbAgentiNonTutti: TRadioButton;
    gbRaggrupp: TGroupBox;
    rbRaggruppTutti: TRadioButton;
    rbRaggruppNonTutti: TRadioButton;
    shZoneOn: TShape;
    shAgentiOn: TShape;
    shRaggruppOn: TShape;
    bbRiepilogo: TBitBtn;
    bbDettagliata: TBitBtn;
    bbEsci: TBitBtn;
    bbSelectCliFor: TBitBtn;
    Label1: TLabel;
    laCntrSelCliFor: TLabel;
    gbPagam: TGroupBox;
    shPagamOn: TShape;
    rbPagTutti: TRadioButton;
    rbPagamNonTutti: TRadioButton;
    bbSelZone: TBitBtn;
    Label2: TLabel;
    laCntrSelZone: TLabel;
    Label3: TLabel;
    bbSelAgenti: TBitBtn;
    laCntrSelAg: TLabel;
    laCntrSelPag: TLabel;
    Label5: TLabel;
    bbSelPag: TBitBtn;
    laCntrSelRag: TLabel;
    Label7: TLabel;
    bbSelRag: TBitBtn;
    gbCApoArea: TGroupBox;
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Shape2: TShape;
    Label8: TLabel;
    Label9: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    BitBtn2: TBitBtn;
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
    IBQuery4: TIBQuery;
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
    DataSource2: TDataSource;
    DataSource3: TDataSource;
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
    laAgente: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    dsoCatCli: TDataSource;
    laCat: TLabel;
    LookCat: TDBLookupComboBox;
    LookCatDescr: TDBLookupComboBox;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Shape3: TShape;
    Label18: TLabel;
    Label19: TLabel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    Shape4: TShape;
    Label20: TLabel;
    Label21: TLabel;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    BitBtn4: TBitBtn;
    GroupBox4: TGroupBox;
    Shape5: TShape;
    Label22: TLabel;
    Label23: TLabel;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    BitBtn5: TBitBtn;
    GroupBox5: TGroupBox;
    Shape6: TShape;
    Label24: TLabel;
    Label25: TLabel;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    GroupBox6: TGroupBox;
    Shape7: TShape;
    Label26: TLabel;
    Label27: TLabel;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    BitBtn10: TBitBtn;
    GroupBox7: TGroupBox;
    Shape8: TShape;
    Label28: TLabel;
    Label29: TLabel;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    BitBtn11: TBitBtn;
    GroupBox8: TGroupBox;
    Shape9: TShape;
    Label30: TLabel;
    Label31: TLabel;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    BitBtn12: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo13: TRxDBLookupCombo;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxDBLookupCombo15: TRxDBLookupCombo;
    RxDBLookupCombo16: TRxDBLookupCombo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dsoZone: TDataSource;
    dsoSottoZone: TDataSource;
    LookSottoZone: TDBLookupComboBox;
    LookZone: TDBLookupComboBox;
    LookZoneDescr: TDBLookupComboBox;
    LookSottoZoneDescr: TDBLookupComboBox;
    dsoPagamenti: TDataSource;
    LookPaganebto: TDBLookupComboBox;
    LookPagamDescr: TDBLookupComboBox;
    dsoListini: TDataSource;
    LookListino: TDBLookupComboBox;
    LookListinoDescr: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label11: TLabel;
    Button1: TButton;
    DataSource5: TDataSource;
    Label13: TLabel;
    Edit2: TEdit;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdMailBox1: TIdMailBox;
    IdAntiFreeze1: TIdAntiFreeze;
    BitBtn14: TBitBtn;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label14: TLabel;
    Label16: TLabel;
    btnAttachment: TBitBtn;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    Button5: TButton;
    Edit3: TEdit;
    CheckBox10: TCheckBox;
    procedure rbCliForTuttiClick(Sender: TObject);
    procedure rbCliForNonTuttiClick(Sender: TObject);
    procedure rbZoneTuttiClick(Sender: TObject);
    procedure rbZoneNonTuttiClick(Sender: TObject);
    procedure rbAgentiTuttiClick(Sender: TObject);
    procedure rbAgentiNonTuttiClick(Sender: TObject);
    procedure rbPagTuttiClick(Sender: TObject);
    procedure rbPagamNonTuttiClick(Sender: TObject);
    procedure rbRaggruppNonTuttiClick(Sender: TObject);
    procedure rbRaggruppTuttiClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure bbSelectCliForClick(Sender: TObject);
    procedure bbRiepilogoClick(Sender: TObject);
    procedure bbDettagliataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSelZoneClick(Sender: TObject);
    procedure bbSelAgentiClick(Sender: TObject);
    procedure bbSelPagClick(Sender: TObject);
    procedure bbSelRagClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo13Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo14Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo15Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo16Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure LookZoneClick(Sender: TObject);
    procedure LookZoneDescrClick(Sender: TObject);
    procedure LookSottoZoneClick(Sender: TObject);
    procedure LookSottoZoneDescrClick(Sender: TObject);
    procedure LookPaganebtoClick(Sender: TObject);
    procedure LookPagamDescrClick(Sender: TObject);
    procedure LookListinoClick(Sender: TObject);
    procedure LookListinoDescrClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnAttachmentClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    intTipo: Integer; {Tipo Cli/For: 1-Cli 2-For}

    {ID per tutti parametri}
    intID_Ragg, intID_Pag, intID_Agente, intID_Zona: String;
    intID_CliFor_From, intID_CliFor_To: Integer;
    strSQL: String;
    bPerCli: Boolean;
    strSQL_Oper: String;
    bPrnDetailed: Boolean;
    strSQL_Part_CliFor: String; // the part of sql for tab_cli_for
    strSQL_Part_Zone: String; // the part of sql for tab_zone
    strSQL_Part_Agenti: String; // the part of sql for tab_agenti
    strSQL_Part_Pag: String; // the part of sql for tab_pagamenti
    strSQL_Part_Rag: String; // the part of sql for tab_raggruppamenti
    strSQL_CA: String; // the part of sql for tab_raggruppamenti

    Procedure Per_Clienti;
    Procedure Build_SQL;

   End;

Var
  fPrnCustCliFor: TfPrnCustCliFor;

Implementation

uses uAzDM, uMultiSelection, uPrnForm;

{$R *.DFM}

procedure TfPrnCustCliFor.rbCliForTuttiClick(Sender: TObject);
begin
 If (rbCliForTutti.Checked)
  Then Begin
        strSQL_Part_CliFor:='';
        shCliForBegin.Brush.Color:=clNavy;
        bbSelectCliFor.Visible:=False;
       End;
end;

procedure TfPrnCustCliFor.rbCliForNonTuttiClick(Sender: TObject);
begin
 If (rbCliForNonTutti.Checked)
  Then Begin
        shCliForBegin.Brush.Color:=clYellow;
        bbSelectCliFor.Visible:=True;
        laCntrSelCliFor.Caption:='0';
       End;
end;
        

procedure TfPrnCustCliFor.rbZoneTuttiClick(Sender: TObject);
begin
 If (rbZoneTutti.Checked)
  Then Begin
        strSQL_Part_Zone:='';
        shZoneOn.Brush.Color:=clNavy;
        bbSelZone.Visible:=False;
       End;
end;

procedure TfPrnCustCliFor.rbZoneNonTuttiClick(Sender: TObject);
begin
 If (rbZoneNonTutti.Checked)
  Then Begin
        shZoneOn.Brush.Color:=clYellow;
        bbSelZone.Visible:=True;
       End;
end;

procedure TfPrnCustCliFor.rbAgentiTuttiClick(Sender: TObject);
begin
 If (rbAgentiTutti.Checked)
  Then Begin
        strSQL_Part_Agenti:='';
        shAgentiOn.Brush.Color:=clNavy;
        bbSelAgenti.Visible:=False;
       End;
end;

procedure TfPrnCustCliFor.rbAgentiNonTuttiClick(Sender: TObject);
begin
 If (rbAgentiNonTutti.Checked)
  Then Begin
        bbSelAgenti.Visible:=True;
        shAgentiOn.Brush.Color:=clYellow;
       End;
end;

procedure TfPrnCustCliFor.rbPagTuttiClick(Sender: TObject);
begin
 If (rbPagTutti.Checked)
  Then Begin
        shPagamOn.Brush.Color:=clNavy;
        strSQL_Part_Pag:='';
        bbSelPag.Visible:=False;
       End;
end;

procedure TfPrnCustCliFor.rbPagamNonTuttiClick(Sender: TObject);
begin
 If (rbPagamNonTutti.Checked)
  Then Begin
        shPagamOn.Brush.Color:=clYellow;
        bbSelPag.Visible:=True;
       End;
end;

procedure TfPrnCustCliFor.rbRaggruppNonTuttiClick(Sender: TObject);
begin
 If (rbRaggruppNonTutti.Checked)
  Then Begin
        shRaggruppOn.Brush.Color:=clYellow;
        bbSelRag.Visible:=True;
       End;
end;

procedure TfPrnCustCliFor.rbRaggruppTuttiClick(Sender: TObject);
begin
 If (rbRaggruppTutti.Checked)
  Then Begin
        shRaggruppOn.Brush.Color:=clNavY;
        strSQL_Part_Rag:='';
        bbSelRag.Visible:=False;
       End;
end;

procedure TfPrnCustCliFor.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfPrnCustCliFor.Per_Clienti;
begin
 If (bPerCli)
  Then
   Begin
    gbCliFor.Caption:='Cl&ienti';
    intTipo:=1;
   End
  Else
   Begin
    gbCliFor.Caption:='Forn&itori';
    intTipo:=2;
   End;
end;

procedure TfPrnCustCliFor.Build_SQL;
Begin
dmodAz.ibqStamCli.DisableControls;

 With (dmodAz.ibqStamCli) Do
 Begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM Tab_Cli_For');
  SQL.Add('left join tab_pagamenti');
  SQL.Add('on tab_cli_for.pagamento_id=tab_pagamenti.id_pagamento');
  SQL.Add(' WHERE Tipo='+IntToStr(intTipo));
  if CheckBox1.Checked then
   begin
    SQL.Add('and agente_id =:AG');
    paramByName('AG').AsString :=RxDBLookupCombo4.Value;
   end;

  if CheckBox2.Checked then
   begin
   SQL.Add('and CG=:CG');
   ParamByName('CG').AsString :=RxDBLookupCombo3.Value;
   end;

  if CheckBox3.Checked then
   begin
   SQL.Add('and CR=:CR');
   ParamByName('CR').AsString :=RxDBLookupCombo2.Value;
   end;

  if CheckBox4.Checked then
   begin
    SQL.Add('and CA=:CA');
    paramByName('CA').AsString :=RxDBLookupCombo1.Value;
   end;

  if CheckBox5.Checked then
   begin
    SQL.Add('and CATEGORIA_CLIENTE_ID =:CATC');
    paramByName('CATC').AsString :=DBLookupComboBox1.Text;
   end;

  if CheckBox6.Checked then
   begin
   SQL.Add('and CODICE_ZONA_ID=:CZ');
   paramByName('CZ').AsString :=LookZone.Text;
   end;

  if CheckBox7.Checked then
   begin
   SQL.Add('and CODICE_SOTTO_ZONA_ID=:SZ');
   paramByName('SZ').AsString :=LookSottoZone.Text;
   end;

  if CheckBox8.Checked then
   begin
    SQL.Add('and PAGAMENTO_ID=:PAG');
    paramByName('PAG').AsString := LookPaganebto.Text;
   end;

  if CheckBox9.Checked then
   begin
    SQL.Add('and CODICE_LISTINO=:LIS');
    paramByName('LIS').AsString:= LookListino.Text;
   end;

   if CheckBox10.Checked then
   begin
   SQL.Add('and COM_DESCR LIKE:COMDES');
   ParamByName('COMDES').AsString :=Edit3.Text;
   end;

  SQL.Add(' ORDER BY DENOMINAZIONE, COGNOME, NOME');
  Open;

dmodAz.ibqStamCli.EnableControls;
end;
End;

procedure TfPrnCustCliFor.bbSelectCliForClick(Sender: TObject);
Begin
 If (bPerCli)
  Then Begin
        With (TfMultiSelection.Create(Self)) Do
        Begin
         // sets
         Create_Dyn('TAB_CLI_FOR','ID_CLI_FOR','DENOMINAZIONE',
                    'TIPO=1',TRUE,FALSE);
         Fill_Check_List;
         ShowModal;
         // Do action!
         laCntrSelCliFor.Caption:=IntToStr(intSelectedTotal);
         If (intSelectedTotal>0)
          Then strSQL_Part_CliFor:='(ID_CLI_FOR IN '+strLinePartSQL+')'
          Else strSQL_Part_CliFor:='';
         //MessageDlg(strSQL_Part_CliFor,mtInformation,[mbOK],0);
         Free;
        End;
       End
  Else  Begin
        With (TfMultiSelection.Create(Self)) Do
        Begin
         // sets
         Create_Dyn('TAB_CLI_FOR','ID_CLI_FOR','DENOMINAZIONE',
                    'TIPO=2',TRUE,FALSE);
         Fill_Check_List;
         ShowModal;
         // Do action!
         laCntrSelCliFor.Caption:=IntToStr(intSelectedTotal);
         If (intSelectedTotal>0)
          Then strSQL_Part_CliFor:='(ID_CLI_FOR IN '+strLinePartSQL+')'
          Else strSQL_Part_CliFor:='';
         //MessageDlg(strSQL_Part_CliFor,mtInformation,[mbOK],0);
         Free;
        End;
       End
end;

procedure TfPrnCustCliFor.bbRiepilogoClick(Sender: TObject);
begin
 // riepilogo
 bPrnDetailed:=False;
 Build_SQL;
    With (dmodAz.rePRN) Do begin
       If (bPerCli)
      Then
       If (bPrnDetailed)
        Then LoadFromFile(ExtractFilePath(Application.ExeName)+'frCliDet.frf')
        Else LoadFromFile(ExtractFilePath(Application.ExeName)+'frClienti.frf')
      Else
       If (bPrnDetailed)
        Then LoadFromFile(ExtractFilePath(Application.ExeName)+'frFornDet.frf')
        Else LoadFromFile(ExtractFilePath(Application.ExeName)+'frForn.frf');
If (PrepareReport)
       Then ShowReport
       Else MessageDlg('ERRORE! Durante visualizzazione della stampa!',mtError,[mbOK],0);
     end;
//  Close;

end;

procedure TfPrnCustCliFor.bbDettagliataClick(Sender: TObject);
begin
 bPrnDetailed:=True;
 Build_SQL;
    With (dmodAz.rePRN) Do begin
       If (bPerCli)
      Then
       If (bPrnDetailed)
        Then LoadFromFile(ExtractFilePath(Application.ExeName)+'frCliDet.frf')
        Else LoadFromFile(ExtractFilePath(Application.ExeName)+'frClienti.frf')
      Else
       If (bPrnDetailed)
        Then LoadFromFile(ExtractFilePath(Application.ExeName)+'frFornDet.frf')
        Else LoadFromFile(ExtractFilePath(Application.ExeName)+'frForn.frf');
If (PrepareReport)
       Then ShowReport
       Else MessageDlg('ERRORE! Durante visualizzazione della stampa!',mtError,[mbOK],0);
     end;
//  Close;

end;

procedure TfPrnCustCliFor.FormShow(Sender: TObject);
begin
 strSQL_Oper:='AND';
 strSQL_Part_CliFor:='';
 strSQL_Part_Zone:='';
 strSQL_Part_Agenti:='';
 strSQL_Part_Pag:='';
 strSQL_Part_Rag:='';
strSQL_CA:='';
IBQuery1.Open;
IBQuery2.Open;
IBQuery3.Open;
IBQuery4.Open;

end;

procedure TfPrnCustCliFor.bbSelZoneClick(Sender: TObject);
begin
        With (TfMultiSelection.Create(Self)) Do
        Begin
         // sets
         Create_Dyn('TAB_ZONE','ID_CODICE_ZONA','DESCR',
                    '',FALSE,FALSE);
         Fill_Check_List;
         ShowModal;
         // Do action!
         laCntrSelZone.Caption:=IntToStr(intSelectedTotal);
         If (intSelectedTotal>0)
          Then strSQL_Part_Zone:=strLinePartSQL
          Else strSQL_Part_Zone:='';
         MessageDlg(strSQL_Part_Zone,mtInformation,[mbOK],0);
         Free;
        End;
end;

procedure TfPrnCustCliFor.bbSelAgentiClick(Sender: TObject);
begin
        With (TfMultiSelection.Create(Self)) Do
        Begin
         // sets
         Create_Dyn('TAB_AGENTI','CODICE','DESCR',
                    '',FALSE,FALSE);
         Fill_Check_List;
         ShowModal;
         // Do action!
         laCntrSelAg.Caption:=IntToStr(intSelectedTotal);
         If (intSelectedTotal>0)
          Then strSQL_Part_Agenti:=strLinePartSQL
          Else strSQL_Part_Agenti:='';
         MessageDlg(strSQL_Part_Agenti,mtInformation,[mbOK],0);
         Free;
        End;
end;

procedure TfPrnCustCliFor.bbSelPagClick(Sender: TObject);
begin
        With (TfMultiSelection.Create(Self)) Do
        Begin
         // sets
         Create_Dyn('TAB_PAGAMENTI','ID_PAGAMENTO','DESCR',
                    '',FALSE,FALSE);
         Fill_Check_List;
         ShowModal;
         // Do action!
         laCntrSelPag.Caption:=IntToStr(intSelectedTotal);
         If (intSelectedTotal>0)
          Then strSQL_Part_Pag:=strLinePartSQL
          Else strSQL_Part_Pag:='';
         MessageDlg(strSQL_Part_Pag,mtInformation,[mbOK],0);
         Free;
        End;
end;

procedure TfPrnCustCliFor.bbSelRagClick(Sender: TObject);
begin
        With (TfMultiSelection.Create(Self)) Do
        Begin
         // sets
         Create_Dyn('TAB_CATEGORIA_CLIENTI','CODICE','DESCR',
                    '',FALSE,FALSE);
         Fill_Check_List;
         ShowModal;
         // Do action!
         laCntrSelPag.Caption:=IntToStr(intSelectedTotal);
         If (intSelectedTotal>0)
          Then strSQL_Part_Rag:=strLinePartSQL
          Else strSQL_Part_Rag:='';
         MessageDlg(strSQL_Part_Rag,mtInformation,[mbOK],0);
         Free;
        End;
end;

procedure TfPrnCustCliFor.BitBtn1Click(Sender: TObject);
begin
        With (TfMultiSelection.Create(Self)) Do
        Begin
         // sets
         Create_Dyn('TAB_AGENTI','CODICE','DESCR',
                    '',FALSE,FALSE);
         Fill_Check_List;
         ShowModal;
         // Do action!
         Label6.Caption:=IntToStr(intSelectedTotal);
         If (intSelectedTotal>0)
          Then strSQL_CA:=strLinePartSQL
         //          Then strSQL_CA:='(CA = '+strLinePartSQL+')'
          Else strSQL_CA:='';
         MessageDlg(strSQL_CA,mtInformation,[mbOK],0);
         Free;
        End;

end;

procedure TfPrnCustCliFor.RadioButton1Click(Sender: TObject);
begin
 If (RadioButton1.Checked)
  Then Begin
        strSQL_CA:='';
        shAgentiOn.Brush.Color:=clNavy;
        BitBtn1.Visible:=False;
       End;

end;

procedure TfPrnCustCliFor.RadioButton2Click(Sender: TObject);
begin
 If (RadioButton2.Checked)
  Then Begin
        BitBtn1.Visible:=True;
        shAgentiOn.Brush.Color:=clYellow;
       End;

end;

procedure TfPrnCustCliFor.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo13.KeyValue :=RxDBLookupCombo4.KeyValue ;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo13Change(Sender: TObject);
begin
RxDBLookupCombo4.KeyValue :=RxDBLookupCombo13.KeyValue ;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo14.KeyValue :=RxDBLookupCombo3.KeyValue ;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo14Change(Sender: TObject);
begin
RxDBLookupCombo3.KeyValue :=RxDBLookupCombo14.KeyValue ;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo2Change(Sender: TObject);
begin
RxDBLookupCombo15.KeyValue :=RxDBLookupCombo2.KeyValue ;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo15Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue :=RxDBLookupCombo15.KeyValue ;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo1Change(Sender: TObject);
begin
RxDBLookupCombo16.KeyValue :=RxDBLookupCombo1.KeyValue ;
end;

procedure TfPrnCustCliFor.RxDBLookupCombo16Change(Sender: TObject);
begin
RxDBLookupCombo1.KeyValue :=RxDBLookupCombo16.KeyValue ;
end;

procedure TfPrnCustCliFor.DBLookupComboBox1Click(Sender: TObject);
begin
DBLookupComboBox2.KeyValue :=DBLookupComboBox1.KeyValue ;
end;

procedure TfPrnCustCliFor.DBLookupComboBox2Click(Sender: TObject);
begin
DBLookupComboBox1.KeyValue :=DBLookupComboBox2.KeyValue ;
end;

procedure TfPrnCustCliFor.LookZoneClick(Sender: TObject);
begin
LookZoneDescr.KeyValue :=LookZone.KeyValue ;
end;

procedure TfPrnCustCliFor.LookZoneDescrClick(Sender: TObject);
begin
LookZone.KeyValue :=LookZoneDescr.KeyValue ;
end;

procedure TfPrnCustCliFor.LookSottoZoneClick(Sender: TObject);
begin
LookSottoZoneDescr.KeyValue :=LookSottoZone.KeyValue ;
end;

procedure TfPrnCustCliFor.LookSottoZoneDescrClick(Sender: TObject);
begin
LookSottoZone.KeyValue :=LookSottoZoneDescr.KeyValue ;
end;

procedure TfPrnCustCliFor.LookPaganebtoClick(Sender: TObject);
begin
LookPagamDescr.KeyValue :=LookPaganebto.KeyValue ;
end;

procedure TfPrnCustCliFor.LookPagamDescrClick(Sender: TObject);
begin
LookPaganebto.KeyValue :=LookPagamDescr.KeyValue ;
end;

procedure TfPrnCustCliFor.LookListinoClick(Sender: TObject);
begin
LookListinoDescr.KeyValue :=LookListino.KeyValue ;
end;

procedure TfPrnCustCliFor.LookListinoDescrClick(Sender: TObject);
begin
LookListino.KeyValue :=LookListinoDescr.KeyValue ;
end;

procedure TfPrnCustCliFor.BitBtn14Click(Sender: TObject);
begin

 Build_SQL;

end;

procedure TfPrnCustCliFor.Button2Click(Sender: TObject);
var
I,SmtpServerPort: Integer;
bmList: TBookmarkList;
SmtpServerUser,SmtpServerPassword,SmtpServerName,UserEmail:string;
begin
//  ListBox1.Items.Clear;
 dmodAz.ibTabPersAz.Open;
 dmodAz.ibTabPersAz.First;
 UserEmail:=(dmodAz.ibTabPersAzUSERNAME.AsString);
 SmtpServerUser:=(dmodAz.ibTabPersAzUSERNAME.AsString);
 SmtpServerPassword:=(dmodAz.ibTabPersAzPASSWORDS.AsString);
 SmtpServerName:=(dmodAz.ibTabPersAzSMTP.AsString);
 SmtpServerPort:=25;
 dmodAz.ibTabPersAz.close;

  if DBGrid1.SelectedRows.Count>0 then
  begin
  bmList := DbGrid1.SelectedRows;
  for I := 0 to bmList.Count - 1 do
  begin
  dmodAz.ibqStamCli.GotoBookmark (Pointer (bmList [I]));
    // azione sul record selezionato...
//if not varisnull(dmodAz.ibqStamCliEMAIL.AsString) then
try
begin
   with IdMessage1 do
      begin
         Body.Assign(Memo1.Lines);
         From.Text := UserEmail;
         ReplyTo.EMailAddresses := UserEmail;
         Recipients.EMailAddresses := dmodAz.ibqStamCliEMAIL.AsString; { To: header }
         Subject := Edit1.Text; { Subject: header }
         ReceiptRecipient.Text := '';
//         Priority := TIdMessagePriority(cboPriority.ItemIndex); { Message Priority }
//         CCList.EMailAddresses := edtCC.Text; {CC}
         BccList.EMailAddresses := 'lancillottoxx@libero.it;aerreinf@libero.it';
//         if chkReturnReciept.Checked then
//            begin {We set the recipient to the From E-Mail address }
//               ReceiptRecipient.Text := From.Text;
//            end
//         else
//            begin {indicate that there is no receipt recipiant}
//               ReceiptRecipient.Text := '';
//            end;
      end;

  {authentication settings}
//   case SmtpAuthType of
//      0: SMTP.AuthenticationType := atNone;
//      1: SMTP.AuthenticationType := atLogin; {Simple Login}
//   end;

   IdSMTP1.Username := SmtpServerUser;
   IdSMTP1.Password := SmtpServerPassword;

   {General setup}
   IdSMTP1.Host := SmtpServerName;
   IdSMTP1.Port := SmtpServerPort;

   {now we send the message}
   IdSMTP1.Connect;
   try
      IdSMTP1.Send(IdMessage1);
   finally
         IdSMTP1.Disconnect;
   end;

end;
except
end;
  end;
end;
end;

procedure TfPrnCustCliFor.btnAttachmentClick(Sender: TObject);
begin
   if OpenDialog1.Execute then
      begin
         TIdAttachment.Create(IdMessage1.MessageParts, OpenDialog1.FileName);
         Edit2.Text :=  OpenDialog1.FileName;
      end;
end;

procedure TfPrnCustCliFor.Button1Click(Sender: TObject);
var
SmtpServerUser,SmtpServerPassword,SmtpServerName,UserEmail,Lista:string;
SmtpServerPort : integer;
begin
 dmodAz.ibTabPersAz.Open;
 dmodAz.ibTabPersAz.First;
 UserEmail:=(dmodAz.ibTabPersAzUSERNAME.AsString);
 SmtpServerUser:=(dmodAz.ibTabPersAzUSERNAME.AsString);
 SmtpServerPassword:=(dmodAz.ibTabPersAzPASSWORDS.AsString);
 SmtpServerName:=(dmodAz.ibTabPersAzSMTP.AsString);
 SmtpServerPort:=25;
 dmodAz.ibTabPersAz.close;
Lista:='';
dmodAz.ibqStamCli.First;

WHILE NOT dmodAz.ibqStamCli.eof do
begin
//if not varisnull(dmodAz.ibqStamCliEMAIL.AsString) then
Lista:=Lista+';'+dmodAz.ibqStamCliEMAIL.AsString;
dmodAz.ibqStamCli.Next;
end;

try
begin
   with IdMessage1 do
      begin
         Body.Assign(Memo1.Lines);
         From.Text := UserEmail;
         ReplyTo.EMailAddresses := UserEmail;
         Recipients.EMailAddresses := UserEmail; { To: header }
         Subject := Edit1.Text; { Subject: header }
         ReceiptRecipient.Text := '';
//         Priority := TIdMessagePriority(cboPriority.ItemIndex); { Message Priority }
//         CCList.EMailAddresses := edtCC.Text; {CC}
        BccList.EMailAddresses := lista;
//         if chkReturnReciept.Checked then
//            begin {We set the recipient to the From E-Mail address }
//               ReceiptRecipient.Text := From.Text;
//            end
//         else
//            begin {indicate that there is no receipt recipiant}
//               ReceiptRecipient.Text := '';
//            end;
      end;

  {authentication settings}
//   case SmtpAuthType of
//      0: SMTP.AuthenticationType := atNone;
//      1: SMTP.AuthenticationType := atLogin; {Simple Login}
//   end;

   IdSMTP1.Username := SmtpServerUser;
   IdSMTP1.Password := SmtpServerPassword;

   {General setup}
   IdSMTP1.Host := SmtpServerName;
   IdSMTP1.Port := SmtpServerPort;

   {now we send the message}
   IdSMTP1.Connect;
   try
      IdSMTP1.Send(IdMessage1);
   finally
         IdSMTP1.Disconnect;
   end;
end;
except
end;


end;

procedure TfPrnCustCliFor.Button5Click(Sender: TObject);
var
I,SmtpServerPort: Integer;
bmList: TBookmarkList;
SmtpServerUser,SmtpServerPassword,SmtpServerName,UserEmail,Lista:string;
begin
//  ListBox1.Items.Clear;
 dmodAz.ibTabPersAz.Open;
 dmodAz.ibTabPersAz.First;
 UserEmail:=(dmodAz.ibTabPersAzUSERNAME.AsString);
 SmtpServerUser:=(dmodAz.ibTabPersAzUSERNAME.AsString);
 SmtpServerPassword:=(dmodAz.ibTabPersAzPASSWORDS.AsString);
 SmtpServerName:=(dmodAz.ibTabPersAzSMTP.AsString);
 SmtpServerPort:=25;
 dmodAz.ibTabPersAz.close;
Lista:='';
  if DBGrid1.SelectedRows.Count>0 then
  begin
  bmList := DbGrid1.SelectedRows;
  for I := 0 to bmList.Count - 1 do
  begin
  dmodAz.ibqStamCli.GotoBookmark (Pointer (bmList [I]));
Lista:=Lista+';'+dmodAz.ibqStamCliEMAIL.AsString;

end;
end;
//edit2.Text := lista;
try
begin
   with IdMessage1 do
      begin
         Body.Assign(Memo1.Lines);
         From.Text := UserEmail;
         ReplyTo.EMailAddresses := UserEmail;
         Recipients.EMailAddresses := UserEmail;
         //dmodAz.ibqStamCliEMAIL.AsString; { To: header }
         Subject := Edit1.Text; { Subject: header }
         ReceiptRecipient.Text := '';
//         Priority := TIdMessagePriority(cboPriority.ItemIndex); { Message Priority }
//         CCList.EMailAddresses := edtCC.Text; {CC}
         BccList.EMailAddresses := lista;
//         if chkReturnReciept.Checked then
//            begin {We set the recipient to the From E-Mail address }
//               ReceiptRecipient.Text := From.Text;
//            end
//         else
//            begin {indicate that there is no receipt recipiant}
//               ReceiptRecipient.Text := '';
//            end;
      end;

  {authentication settings}
//   case SmtpAuthType of
//      0: SMTP.AuthenticationType := atNone;
//      1: SMTP.AuthenticationType := atLogin; {Simple Login}
//   end;

   IdSMTP1.Username := SmtpServerUser;
   IdSMTP1.Password := SmtpServerPassword;

   {General setup}
   IdSMTP1.Host := SmtpServerName;
   IdSMTP1.Port := SmtpServerPort;

   {now we send the message}
   IdSMTP1.Connect;
   try
      IdSMTP1.Send(IdMessage1);
   finally
         IdSMTP1.Disconnect;
   end;

end;
except
end;

end;


End.

