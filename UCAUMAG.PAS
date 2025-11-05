unit uCauMag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uBaseForm3, Db, StdCtrls, DBCtrls, ExtCtrls, ComCtrls, Mask, ToolWin,
  ActnList, IBCustomDataSet, IBQuery;

type
  TfCauMag = class(TfBaseForm3)
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    LookControParte: TDBLookupComboBox;
    laTipoArt: TLabel;
    dsoCauMag: TDataSource;
    pctrlCauMag: TPageControl;
    tabs1: TTabSheet;
    pa1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    dbcbADataUltVen: TDBCheckBox;
    dbcbAUltCostAcq: TDBCheckBox;
    dbcbADataUltAcq: TDBCheckBox;
    tabs2: TTabSheet;
    pa2: TPanel;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    tabs3: TTabSheet;
    pa3: TPanel;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    tabs4: TTabSheet;
    pa4: TPanel;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup22: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    dsoControparte: TDataSource;
    tabs5: TTabSheet;
    pa5: TPanel;
    DBRadioGroup25: TDBRadioGroup;
    DBRadioGroup26: TDBRadioGroup;
    DBRadioGroup27: TDBRadioGroup;
    DBRadioGroup28: TDBRadioGroup;
    DBRadioGroup29: TDBRadioGroup;
    DBRadioGroup30: TDBRadioGroup;
    IbqControparte: TIBQuery;
    IbqControparteCODICE: TSmallintField;
    IbqControparteDESCR: TIBStringField;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    DBRadioGroup31: TDBRadioGroup;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Edit_Mode(bMode: Boolean);
  public
    { Public declarations }
  end;

var
  fCauMag: TfCauMag;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfCauMag.tbtnNuovoClick(Sender: TObject);
begin
  inherited;
 pctrlCauMag.ActivePage:=tabs1;
 Edit_Mode(True);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCauMag.DataSet.Insert;

 dbcbADataUltVen.Field.AsInteger:=0;
 dbcbADataUltAcq.Field.AsInteger:=0;
 dbcbAUltCostAcq.Field.AsInteger:=0;
 DBRadioGroup1.Field.AsInteger:=0;
 DBRadioGroup2.Field.AsInteger:=0;
 DBRadioGroup3.Field.AsInteger:=0;
 DBRadioGroup4.Field.AsInteger:=0;
 DBRadioGroup5.Field.AsInteger:=0;
 DBRadioGroup6.Field.AsInteger:=0;
 DBRadioGroup7.Field.AsInteger:=0;
 DBRadioGroup8.Field.AsInteger:=0;
 DBRadioGroup9.Field.AsInteger:=0;
 DBRadioGroup10.Field.AsInteger:=0;
 DBRadioGroup11.Field.AsInteger:=0;
 DBRadioGroup12.Field.AsInteger:=0;
 DBRadioGroup13.Field.AsInteger:=0;
 DBRadioGroup14.Field.AsInteger:=0;
 DBRadioGroup15.Field.AsInteger:=0;
 DBRadioGroup16.Field.AsInteger:=0;
 DBRadioGroup17.Field.AsInteger:=0;
 DBRadioGroup18.Field.AsInteger:=0;
 DBRadioGroup19.Field.AsInteger:=0;
 DBRadioGroup20.Field.AsInteger:=0;
 DBRadioGroup21.Field.AsInteger:=0;
 DBRadioGroup22.Field.AsInteger:=0;
 DBRadioGroup23.Field.AsInteger:=0;
 DBRadioGroup24.Field.AsInteger:=0;

 dbeCodice.SetFocus;
end;

procedure TfCauMag.tbtnModificaClick(Sender: TObject);
Var
 strCaucod: String;
begin
 strCaucod:=dbeCodice.Field.AsString;

 
  inherited;
 pctrlCauMag.ActivePage:=tabs1;
 Edit_Mode(True);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 dsoCauMag.DataSet.Edit;
 dbeCodice.SetFocus;
end;

procedure TfCauMag.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsoCauMag.DataSet.Post;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCauMag.DataSet.Open;
 dsoControparte.DataSet.Open;
 Edit_Mode(False);
end;

procedure TfCauMag.tbtnAnullaClick(Sender: TObject);
begin
 dsoCauMag.DataSet.Cancel;
 dmodAz.ibtrDef.Rollback;
 dsoCauMag.DataSet.Open;
 dsoControparte.DataSet.Open;
 inherited;
 Edit_Mode(False);

end;

procedure TfCauMag.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsoCauMag.DataSet.Delete;
 dmodAz.ibtrDef.Commit;
end
except
dmodAz.ibtrDef.Rollback;
end;
 inherited;
 dsoCauMag.DataSet.Open;
 dsoControparte.DataSet.Open;
 Edit_Mode(False);
end;

procedure TfCauMag.Edit_Mode(bMode: Boolean);
begin
 pa1.Enabled:=bMode;
 pa2.Enabled:=bMode;
 pa3.Enabled:=bMode;
 pa4.Enabled:=bMode;
end;


procedure TfCauMag.tbtnPrevClick(Sender: TObject);
begin
  inherited;
 dsoCauMag.DataSet.Prior;
end;

procedure TfCauMag.tbtnNextClick(Sender: TObject);
begin
  inherited;
 dsoCauMag.DataSet.Next;
end;

procedure TfCauMag.FormShow(Sender: TObject);
begin
  inherited;
IbqControparte.Open;
end;

end.
