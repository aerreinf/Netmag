unit uCauMagDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, ComCtrls, Mask;

type
  TfCauMagDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_CauMag: TDBNavigator;
    paView: TPanel;
    pctrlCauMag: TPageControl;
    tabs1: TTabSheet;
    tabs2: TTabSheet;
    tabs3: TTabSheet;
    tabs4: TTabSheet;
    pa1: TPanel;
    pa2: TPanel;
    pa3: TPanel;
    pa4: TPanel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup22: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    dbcbADataUltVen: TDBCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    dbcbAUltCostAcq: TDBCheckBox;
    Label5: TLabel;
    dbcbADataUltAcq: TDBCheckBox;
    pa0: TPanel;
    laCodice: TLabel;
    dbeCodice: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dbeDescr: TDBEdit;
    laDescr: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    LookControParte: TDBLookupComboBox;
    laTipoArt: TLabel;
    procedure dbnTab_CauMagClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure Edit_Mode(bMode: Boolean);
  public
    { Public declarations }
  end;

var
  fCauMagDB: TfCauMagDB;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfCauMagDB.Edit_Mode(bMode: Boolean);
begin
 pa0.Enabled:=bMode;
 pa1.Enabled:=bMode;
 pa2.Enabled:=bMode;
 pa3.Enabled:=bMode;
 pa4.Enabled:=bMode;
end;

procedure TfCauMagDB.dbnTab_CauMagClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbInsert) Then
                       Begin
                        Edit_Mode(True);
                        pctrlCauMag.ActivePage:=tabs1;
                        dbeCodice.SetFocus;
                        dbcbADataUltVen.Field.AsInteger:=0;
                        dbcbADataUltAcq.Field.AsInteger:=0;
                        dbcbAUltCostAcq.Field.AsInteger:=0;
                       End;
 If (Button=nbEdit) Then
                       Begin
                        Edit_Mode(True);
                        pctrlCauMag.ActivePage:=tabs1;
                        dbeCodice.SetFocus;
                       End;
 If (Button=nbPost) Then Edit_Mode(False);
 If (Button=nbCancel) Then  Edit_Mode(False);
end;


procedure TfCauMagDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dbnTab_CauMag.BtnClick(nbCancel)
end;

end.
