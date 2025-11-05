unit uCambMonDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, Buttons,
  CheckLst, Db;

type
  TfCambiMoneteDB = class(TForm)
    paCtrl: TPanel;
    dbnCambiMonete: TDBNavigator;
    paView: TPanel;
    pctrlCaMon: TPageControl;
    tabs1: TTabSheet;
    tabs2: TTabSheet;
    tabs3: TTabSheet;
    paEdit: TPanel;
    gbEditing: TGroupBox;
    laData: TLabel;
    laMonetaA: TLabel;
    laMonetaB: TLabel;
    laCambio: TLabel;
    tpDataID: TDateTimePicker;
    dbeData: TDBEdit;
    LookMonetaA: TDBLookupComboBox;
    LookMonetaB: TDBLookupComboBox;
    dbeCambio: TDBEdit;
    paOptVis: TPanel;
    gbFiltering: TGroupBox;
    paVis: TPanel;
    bev1: TBevel;
    bev2: TBevel;
    bev3: TBevel;
    ber4: TBevel;
    bev5: TBevel;
    bev6: TBevel;
    rabDataDaA: TRadioButton;
    rabData: TRadioButton;
    cboxMonete: TCheckBox;
    bev11: TBevel;
    Bevel1: TBevel;
    tpDataDa: TDateTimePicker;
    tpDataA: TDateTimePicker;
    tpData: TDateTimePicker;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    bbShow: TBitBtn;
    rabTutti: TRadioButton;
    dbgCaMon: TDBGrid;
    edSQL: TEdit;
    ListMonete: TCheckListBox;
    dsoCambi_Monete: TDataSource;
    dsoQ_Cambi_Monete: TDataSource;
    procedure bbShowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbnCambiMoneteClick(Sender: TObject; Button: TNavigateBtn);
    procedure tpDataIDChange(Sender: TObject);
    procedure dbgCaMonDblClick(Sender: TObject);
    procedure tpDataIDKeyPress(Sender: TObject; var Key: Char);
    procedure LookMonetaAKeyPress(Sender: TObject; var Key: Char);
    procedure LookMonetaBKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCambioKeyPress(Sender: TObject; var Key: Char);
    procedure tpDataDaKeyPress(Sender: TObject; var Key: Char);
    procedure rabTuttiClick(Sender: TObject);
    procedure cboxMoneteClick(Sender: TObject);
    procedure rabDataClick(Sender: TObject);
    procedure rabDataDaAClick(Sender: TObject);
    procedure tpDataAKeyPress(Sender: TObject; var Key: Char);
    procedure tpDataKeyPress(Sender: TObject; var Key: Char);
    procedure cboxMoneteKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    Procedure Get_Data;
    Procedure Set_All;
    Procedure DisableAllTPick;
  public
    { Public declarations }
    strSQL: String;
    Param1, Param2: String; //TDate;
    Procedure Prepare_Query_CaMon;
  end;

var
  fCambiMoneteDB: TfCambiMoneteDB;

implementation

Uses uPubDM;

{$R *.DFM}

procedure TfCambiMoneteDB.bbShowClick(Sender: TObject);
begin
 // Prepare query
 Prepare_Query_CaMon;
 // open query
 with (dmodPub.ibQue_Cambi_Monete) Do
 Begin
  Close;
   Unprepare;
    SQL.Clear;
     SQL.Add(strSQL);
     If (paramCount>0)
      Then
       Begin
        ParamByName('parDataDa').AsString:=Param1;
        If (ParamCount>1)
          Then ParamByName('parDataA').AsString:=Param2;
       End;
   Prepare;
  Open;
 End;
 // show Tab
 pctrlCaMon.ActivePage:=tabs3;
end;

procedure TfCambiMoneteDB.Prepare_Query_CaMon;
Var
 strItems,strMonete: String;
 iCntr,iCntrI: Integer;
begin
 strSQL:='Select * From TAB_CAMBI_MONETE';
 strItems:='';
 If (cboxMonete.Checked)
  Then
   Begin
     iCntrI:=ListMonete.Items.Count;
     For iCntr:=0 To iCntrI-1 Do
      If (ListMonete.State[iCntr]=cbChecked)
       Then strItems:=strItems+''''+ListMonete.Items[iCntr]+''''+',';
     strMonete:=Copy(strItems,1,Length(strItems)-1);
     strSQL:=strSQL+' Where ((Moneta1_ID in ('+strMonete+
        ')) Or (Moneta2_ID in ('+strMonete+')))';

   End
  Else
   Begin
     iCntrI:=ListMonete.Items.Count;
     For iCntr:=0 To iCntrI-1 Do
      strItems:=strItems+''''+ListMonete.Items[iCntr]+''''+',';
      strMonete:=Copy(strItems,1,Length(strItems)-1);
      strSQL:=strSQL+' Where ((Moneta1_ID in ('+strMonete+
         ')) Or (Moneta2_ID in ('+strMonete+')))';

   End;
 If (rabDataDaA.Checked)
  Then
   Begin
    strSQL:=strSQL+' And (ID_Data Between :parDataDa And :parDataA)';
    Param1:=DateToStr(tpDataDa.Date);
    Param2:=DateToStr(tpDataA.Date);
   End;
 If (rabData.Checked)
  Then
   Begin
    strSQL:=strSQL+' And (ID_Data = :parDataDa)';
    Param1:=DateToStr(tpData.Date);
   End;
 //strSQL:=strSQL+';';
 edSQL.Text:=strSQL;
end;

procedure TfCambiMoneteDB.FormCreate(Sender: TObject);
begin
 // Fill Check Box
 ListMonete.Items.Clear;
 dmodPub.ibTab_Monete.Open;
 dmodPub.ibTab_Monete.First;
 With (dmodPub.ibTab_Monete) Do
   While Not(Eof) Do
   Begin
    ListMonete.Items.Add(FieldByName('ID_Monete').AsString);
    Next;
   End;
 // Set all time pickers date to NOW!
 tpDataID.DateTime:=Now;
 tpDataA.DateTime:=Now;
 tpDataDa.DateTime:=Now;
 tpData.DateTime:=Now;
 pctrlCaMon.ActivePage:=tabs1;
end;

procedure TfCambiMoneteDB.Get_Data;
begin
 tpDataID.Date:=dbeData.Field.AsDateTime;
end;

procedure TfCambiMoneteDB.dbnCambiMoneteClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbInsert) Then Begin
                            gbEditing.enabled:=True;
                            tpDataID.Date:=Now;
                            Set_All;
                            Exit;
                           End;
 If (Button=nbEdit) Then Begin
                          gbEditing.enabled:=True;
                          Exit;
                         End;
 gbEditing.enabled:=False;
 If (Button=nbPost) Then Exit;
 // If (no data exit)
 If (dbnCambiMonete.DataSource.DataSet.IsEmpty) Then Exit;
 // otherwise get all datas
 Get_Data;
end;

procedure TfCambiMoneteDB.Set_All;
begin
 dbeData.Field.AsDateTime:=(Now);
end;

procedure TfCambiMoneteDB.tpDataIDChange(Sender: TObject);
begin
 dbeData.Text:=DateToStr(tpDataID.Date);
end;

procedure TfCambiMoneteDB.dbgCaMonDblClick(Sender: TObject);
begin
 // se vuota esci!
 If (dbgCaMon.DataSource.DataSet.IsEmpty) Then Exit;
 dbnCambiMonete.DataSource.DataSet.Locate(
 'ID_DATA',
 dbgCaMon.DataSource.DataSet.FieldByName('ID_DATA').AsString, []);
 Get_Data;
 // Show tabsheet!
 pctrlCaMon.ActivePage:=tabs1;
end;

procedure TfCambiMoneteDB.tpDataIDKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(tpDataID,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.LookMonetaAKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookMonetaA,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.LookMonetaBKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookMonetaB,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.dbeCambioKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCambio,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.tpDataDaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(tpDataDa,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.rabTuttiClick(Sender: TObject);
begin
 DisableAllTPick;
end;

procedure TfCambiMoneteDB.cboxMoneteClick(Sender: TObject);
begin
 ListMonete.Enabled:=cboxMonete.Checked;
end;

procedure TfCambiMoneteDB.rabDataClick(Sender: TObject);
begin
 DisableAllTPick;
 tpData.Enabled:=rabData.Checked;
end;

procedure TfCambiMoneteDB.DisableAllTPick;
begin
 tpDataA.Enabled:=False;
 tpDataDa.Enabled:=False;
 tpData.Enabled:=False;
end;

procedure TfCambiMoneteDB.rabDataDaAClick(Sender: TObject);
begin
 DisableAllTPick;
 tpDataDa.Enabled:=rabDataDaA.Checked;
 tpDataA.Enabled:=rabDataDaA.Checked;

end;

procedure TfCambiMoneteDB.tpDataAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(tpDataA,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.tpDataKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(tpData,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.cboxMoneteKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(cboxMonete,True,True,False).SetFocus;
end;

procedure TfCambiMoneteDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dbnCambiMonete.BtnClick(nbCancel);
end;

procedure TfCambiMoneteDB.FormShow(Sender: TObject);
begin
 Get_Data;
end;

procedure TfCambiMoneteDB.FormActivate(Sender: TObject);
begin
 Get_Data;
end;

end.
