unit UConte2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, RxLookup, StdCtrls, Buttons, Mask,
  Db, IBCustomDataSet, IBUpdateSQL, IBQuery, DBCtrls, ToolEdit, Variants,
  Menus, ExtCtrls;

type
  TfConte2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBGrid1: TDBGrid;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DataSource2: TDataSource;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBGrid2: TDBGrid;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBGrid3: TDBGrid;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Label19: TLabel;
    Label29: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    CheckBox3: TCheckBox;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    IbqCarb: TIBDataSet;
    DBNavigator1: TDBNavigator;
    IbqCarbPK_CODICE: TFloatField;
    IbqCarbNUM_PROT: TIBStringField;
    IbqCarbDATA_USCITA: TDateTimeField;
    IbqCarbDATA_ENTRATA: TDateTimeField;
    IbqCarbCODICE_ARTICOLO: TIBStringField;
    IbqCarbDESCR_ARTICOLO: TIBStringField;
    IbqCarbID_DIP: TFloatField;
    IbqCarbDESCR_DIP: TIBStringField;
    IbqCarbTIPO_DOC: TIBStringField;
    IbqCarbNOTE: TIBStringField;
    IbqCarbCOSTO: TFloatField;
    IbqCarbIMPORTO: TFloatField;
    IbqCarbDEPOSITO_CODICE: TIBStringField;
    IbqCarbDEPOSITO_DESCR: TIBStringField;
    IbqCarbCOD_AUTOMEZZO: TIBStringField;
    IbqCarbDESCR_AUTOMEZZO: TIBStringField;
    IbqCarbQTA: TFloatField;
    DBGrid4: TDBGrid;
    ibdRiep: TIBDataSet;
    DataSource5: TDataSource;
    ibdAutom: TIBDataSet;
    IbdUtens: TIBDataSet;
    IbdUtensPK_CODICE: TFloatField;
    IbdUtensNUM_PROT: TIBStringField;
    IbdUtensDATA_USCITA: TDateTimeField;
    IbdUtensDATA_ENTRATA: TDateTimeField;
    IbdUtensCODICE_ARTICOLO: TIBStringField;
    IbdUtensDESCR_ARTICOLO: TIBStringField;
    IbdUtensID_DIP: TFloatField;
    IbdUtensDESCR_DIP: TIBStringField;
    IbdUtensTIPO_DOC: TIBStringField;
    IbdUtensNOTE: TIBStringField;
    IbdUtensCOSTO: TFloatField;
    IbdUtensIMPORTO: TFloatField;
    IbdUtensDEPOSITO_CODICE: TIBStringField;
    IbdUtensDEPOSITO_DESCR: TIBStringField;
    IbdUtensCOD_AUTOMEZZO: TIBStringField;
    IbdUtensDESCR_AUTOMEZZO: TIBStringField;
    IbdUtensQTA: TFloatField;
    ibdAutomPK_CODICE: TFloatField;
    ibdAutomNUM_PROT: TIBStringField;
    ibdAutomDATA_USCITA: TDateTimeField;
    ibdAutomDATA_ENTRATA: TDateTimeField;
    ibdAutomCODICE_ARTICOLO: TIBStringField;
    ibdAutomDESCR_ARTICOLO: TIBStringField;
    ibdAutomID_DIP: TFloatField;
    ibdAutomDESCR_DIP: TIBStringField;
    ibdAutomTIPO_DOC: TIBStringField;
    ibdAutomNOTE: TIBStringField;
    ibdAutomCOSTO: TFloatField;
    ibdAutomIMPORTO: TFloatField;
    ibdAutomDEPOSITO_CODICE: TIBStringField;
    ibdAutomDEPOSITO_DESCR: TIBStringField;
    ibdAutomCOD_AUTOMEZZO: TIBStringField;
    ibdAutomDESCR_AUTOMEZZO: TIBStringField;
    ibdAutomQTA: TFloatField;
    IbdAbbigl: TIBDataSet;
    FloatField1: TFloatField;
    IBStringField1: TIBStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    FloatField2: TFloatField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    FloatField5: TFloatField;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    IBQuery1: TIBQuery;
    DataSource6: TDataSource;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure DBEdit9DblClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo3KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure RxDBLookupCombo11Change(Sender: TObject);
    procedure RxDBLookupCombo9Change(Sender: TObject);
    procedure RxDBLookupCombo10Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    TIPO : String;
    Procedure Edit_Mode1(bMode: Boolean);
    Procedure Edit_Mode2(bMode: Boolean);
    Procedure Edit_Mode3(bMode: Boolean);
    Procedure Edit_Mode4(bMode: Boolean);
    Procedure Edit_Mode5(bMode: Boolean);
    Procedure Edit_Mode6(bMode: Boolean);
    Procedure Edit_Mode7(bMode: Boolean);
    Procedure Apri;
  public
    { Public declarations }
  end;

var
  fConte2: TfConte2;

implementation

uses uAzDM, uRicercaVeloceAZ;

{$R *.DFM}

procedure TfConte2.Apri;
begin
IbqCarb.open;
dmodAz.IBQryCommessi.open;
ibdAutom.Open;
IbdUtens.Open;
IbdAbbigl.Open;

end;

procedure TfConte2.Edit_Mode1(bMode: Boolean);
begin

 BitBtn13.Enabled:=Not(bMode);
 BitBtn14.Enabled:=Not(bMode);
 BitBtn15.Enabled:=Not(bMode);
 BitBtn16.Enabled:=Not(bMode);
 BitBtn17.Enabled:=(bMode);
 BitBtn18.Enabled:=(bMode);
 BitBtn1.Enabled:=Not(bMode);
 BitBtn2.Enabled:=Not(bMode);
 end;

procedure TfConte2.Edit_Mode2(bMode: Boolean);
begin
 BitBtn5.Enabled:=Not(bMode);
 BitBtn6.Enabled:=Not(bMode);
 BitBtn7.Enabled:=Not(bMode);
 BitBtn8.Enabled:=Not(bMode);
 BitBtn9.Enabled:=(bMode);
 BitBtn10.Enabled:=(bMode);
 BitBtn4.Enabled:=Not(bMode);
 BitBtn3.Enabled:=Not(bMode);
end;

procedure TfConte2.Edit_Mode3(bMode: Boolean);
begin
 BitBtn19.Enabled:=Not(bMode);
 BitBtn20.Enabled:=Not(bMode);
 BitBtn21.Enabled:=Not(bMode);
 BitBtn22.Enabled:=Not(bMode);
 BitBtn23.Enabled:=(bMode);
 BitBtn24.Enabled:=(bMode);
 BitBtn11.Enabled:=Not(bMode);
 BitBtn12.Enabled:=Not(bMode);
end;

procedure TfConte2.Edit_Mode4(bMode: Boolean);
begin
 BitBtn13.Enabled:=Not(bMode);
 BitBtn14.Enabled:=Not(bMode);
 BitBtn15.Enabled:=Not(bMode);
 BitBtn16.Enabled:=Not(bMode);
 BitBtn17.Enabled:=(bMode);
 BitBtn18.Enabled:=(bMode);
 BitBtn1.Enabled:=Not(bMode);
 BitBtn2.Enabled:=Not(bMode);
end;

procedure TfConte2.Edit_Mode5(bMode: Boolean);
begin
 BitBtn13.Enabled:=Not(bMode);
 BitBtn14.Enabled:=Not(bMode);
 BitBtn15.Enabled:=Not(bMode);
 BitBtn16.Enabled:=Not(bMode);
 BitBtn17.Enabled:=(bMode);
 BitBtn18.Enabled:=(bMode);
 BitBtn1.Enabled:=Not(bMode);
 BitBtn2.Enabled:=Not(bMode);
end;

procedure TfConte2.Edit_Mode6(bMode: Boolean);
begin
 BitBtn13.Enabled:=Not(bMode);
 BitBtn14.Enabled:=Not(bMode);
 BitBtn15.Enabled:=Not(bMode);
 BitBtn16.Enabled:=Not(bMode);
 BitBtn17.Enabled:=(bMode);
 BitBtn18.Enabled:=(bMode);
 BitBtn1.Enabled:=Not(bMode);
 BitBtn2.Enabled:=Not(bMode);
end;

procedure TfConte2.Edit_Mode7(bMode: Boolean);
begin
 BitBtn13.Enabled:=Not(bMode);
 BitBtn14.Enabled:=Not(bMode);
 BitBtn15.Enabled:=Not(bMode);
 BitBtn16.Enabled:=Not(bMode);
 BitBtn17.Enabled:=(bMode);
 BitBtn18.Enabled:=(bMode);
 BitBtn1.Enabled:=Not(bMode);
 BitBtn2.Enabled:=Not(bMode);
end;

procedure TfConte2.BitBtn13Click(Sender: TObject);
begin
Edit_Mode1(true);
 If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;
 If (IbqCarb.Active = False) then
 IbqCarb.Open;
 IbqCarb.Insert;
 TIPO := 'CARBUR';
 IbqCarb.FieldByName('DATA_USCITA').AsDateTime:=Now;
 DBEdit9.SetFocus;
end;

procedure TfConte2.BitBtn18Click(Sender: TObject);
begin
If (MessageDlg('Annullare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
Edit_Mode1(False);
IbqCarb.Cancel;
dmodAz.ibtrDef.Rollback;
Apri;
end;

procedure TfConte2.BitBtn17Click(Sender: TObject);
begin
If (DBEdit9.Text='') then
Exit;
IbqCarb.FieldByName('TIPO_DOC').AsString := 'CARBUR';
IbqCarb.Post;
try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode1(False);
end;

procedure TfConte2.DBEdit9DblClick(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
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
    strValore:=DBEdit9.Field.AsString;
   // Show
   ShowModal;
   // Get vals
   strCodArt:=VarToStr(vaResValore);
   IbqCarb.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
   IbqCarb.FieldByName('DESCR_ARTICOLO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;


procedure TfConte2.DBEdit9Exit(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
if DBEdit9.Text = '' then exit;
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
    strValore:=DBEdit9.Field.AsString;
    GetValues;
   strCodArt:=VarToStr(vaResValore);
   IbqCarb.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
   IbqCarb.FieldByName('DESCR_ARTICOLO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;


procedure TfConte2.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
RxDBLookupCombo1.SetFocus;

end;

procedure TfConte2.DBEdit1DblClick(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;

  // Pass vals
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE_ARTICOLO';

    strCampo3:='PREZZO_BASE';

    intRichieste:=3;
    strResCampoCodice:='DESCR';
    strValore:=DBEdit1.Field.AsString;
   // Show
   ShowModal;
   // Get vals
   strCodArt:=VarToStr(vaResValore2);
   IbqCarb.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
   IbqCarb.FieldByName('DESCR_ARTICOLO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;

procedure TfConte2.RxDBLookupCombo1Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue := RxDBLookupCombo1.KeyValue;
end;

procedure TfConte2.RxDBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit10.SetFocus;

end;

procedure TfConte2.RxDBLookupCombo2Change(Sender: TObject);
begin
RxDBLookupCombo1.KeyValue := RxDBLookupCombo2.KeyValue;
end;

procedure TfConte2.DBEdit10DblClick(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
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
    strValore:=dbedit10.Field.AsString;
   // Show
   ShowModal;
   // Get vals
   strCodArt:=VarToStr(vaResValore);
   IbqCarb.FieldByName('COD_AUTOMEZZO').AsString:=strCodArt;
   IbqCarb.FieldByName('DESCR_AUTOMEZZO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;


procedure TfConte2.DBEdit2DblClick(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;

  // Pass vals
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE_ARTICOLO';

    strCampo3:='PREZZO_BASE';

    intRichieste:=3;
    strResCampoCodice:='DESCR';
    strValore:=DBEdit2.Field.AsString;
   // Show
   ShowModal;
   // Get vals
   strCodArt:=VarToStr(vaResValore2);
   IbqCarb.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
   IbqCarb.FieldByName('DESCR_ARTICOLO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;


procedure TfConte2.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
Apri;
end;

procedure TfConte2.BitBtn5Click(Sender: TObject);
begin
 Edit_Mode2(true);
 If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;
 If (ibdAutom.Active = False) then
 ibdAutom.Open;
 ibdAutom.Insert;
 TIPO := 'AUTOM';
 ibdAutom.FieldByName('DATA_USCITA').AsDateTime:=Now;
 DBEdit12.SetFocus;
end;

procedure TfConte2.BitBtn10Click(Sender: TObject);
begin
If (MessageDlg('Annullare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
Edit_Mode2(False);
ibdAutom.Cancel;
dmodAz.ibtrDef.Rollback;
Apri;
end;

procedure TfConte2.BitBtn9Click(Sender: TObject);
begin
If (DBEdit12.Text='') then
Exit;
ibdAutom.FieldByName('TIPO_DOC').AsString := 'AUTOM';
ibdAutom.Post;
try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode2(False);
end;

procedure TfConte2.DBEdit12Exit(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
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
    strValore:=DBEdit12.Field.AsString;
    GetValues;
   strCodArt:=VarToStr(vaResValore);
   ibdAutom.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
   ibdAutom.FieldByName('DESCR_ARTICOLO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;


procedure TfConte2.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
RxDBLookupCombo3.SetFocus;

end;

procedure TfConte2.DBEdit11DblClick(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=False;

  // Pass vals
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE_ARTICOLO';

    strCampo3:='PREZZO_BASE';

    intRichieste:=3;
    strResCampoCodice:='DESCR';
    strValore:=DBEdit11.Field.AsString;
   // Show
   ShowModal;
   // Get vals
   strCodArt:=VarToStr(vaResValore2);
   ibdAutom.FieldByName('CODICE_ARTICOLO').AsString:=strCodArt;
   ibdAutom.FieldByName('DESCR_ARTICOLO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;


procedure TfConte2.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
end;

procedure TfConte2.RxDBLookupCombo3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
DBEdit4.SetFocus;

end;

procedure TfConte2.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
end;

procedure TfConte2.BitBtn14Click(Sender: TObject);
var
InputString:string;
begin
Edit_Mode1(true);
InputString:= InputBox('Immettere Codice Scheda Carburante', 'Scheda Carburante', '');
if not IbqCarb.Locate('CODICE_ARTICOLO;DATA_ENTRATA;TIPO_DOC', VarArrayOf([InputString, null,'CARBUR']), [loPartialKey]) then
begin
 ShowMessage('Non esiste un''uscita aperta di questa Scheda!!!');
 Edit_Mode1(False);
 exit;
end;
If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;
 ShowMessage('Bentornato');
 If (IbqCarb.Active = False) then
 IbqCarb.Open;
 IbqCarb.Edit;
 TIPO := 'CARBUR';
 IbqCarb.FieldByName('DATA_ENTRATA').AsDateTime:=Now;
 DBEdit3.SetFocus;
end;

procedure TfConte2.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfConte2.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit3.SetFocus;
end;

procedure TfConte2.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBEdit7.SetFocus;
end;

procedure TfConte2.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
BitBtn17.SetFocus;
end;

procedure TfConte2.DBEdit10Exit(Sender: TObject);
var
intRichieste : integer;
strCodArt : string;
begin
if DBEdit10.Text = '' then exit;
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
    strValore:=DBEdit10.Field.AsString;
    GetValues;
   strCodArt:=VarToStr(vaResValore);
   IbqCarb.FieldByName('COD_AUTOMEZZO').AsString:=strCodArt;
   IbqCarb.FieldByName('DESCR_AUTOMEZZO').AsString:=VarToStr(vaResValore2);

//   boolArtLocated:=True;

   Free;
  End;

end;



procedure TfConte2.TabSheet7Show(Sender: TObject);
begin
DateEdit1.Date := Now;
DateEdit2.Date := Now;
ibdRiep.Open;

end;

procedure TfConte2.BitBtn6Click(Sender: TObject);
var
InputString:string;
begin
Edit_Mode1(true);
InputString:= InputBox('Immettere Codice Automezzo', 'Codice Automezzo', '');
if not IbqCarb.Locate('CODICE_ARTICOLO;DATA_ENTRATA;TIPO_DOC', VarArrayOf([InputString, null,'AUTOM']), [loPartialKey]) then
begin
 ShowMessage('Non esiste un''uscita aperta di questa Scheda!!!');
 Edit_Mode2(False);
 exit;
end;
If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;
 ShowMessage('Bentornato');
 If (ibdAutom.Active = False) then
 ibdAutom.Open;
 ibdAutom.Edit;
 TIPO := 'AUTOM';
 ibdAutom.FieldByName('DATA_ENTRATA').AsDateTime:=Now;
 DBEdit4.SetFocus;
end;

procedure TfConte2.BitBtn16Click(Sender: TObject);
begin
If (DBEdit9.Text='') then
Exit;
IbqCarb.FieldByName('TIPO_DOC').AsString := 'CARBUR';
IbqCarb.Delete;
try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode1(False);
end;

procedure TfConte2.BitBtn8Click(Sender: TObject);
begin
If (DBEdit12.Text='') then
Exit;
ibdAutom.FieldByName('TIPO_DOC').AsString := 'AUTOM';
ibdAutom.Delete;
try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode2(False);
end;

procedure TfConte2.BitBtn19Click(Sender: TObject);
begin
Edit_Mode3(true);
 If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;
 If (IbdUtens.Active = False) then
 IbdUtens.Open;
 IbdUtens.Insert;
 TIPO := 'UTENS';
 IbdUtens.FieldByName('DATA_USCITA').AsDateTime:=Now;
 DBEdit17.SetFocus;

end;

procedure TfConte2.BitBtn20Click(Sender: TObject);
var
InputString:string;
begin
Edit_Mode3(true);
InputString:= InputBox('Immettere Codice Utensile', 'Utensile', '');
if not IbqCarb.Locate('CODICE_ARTICOLO;DATA_ENTRATA;TIPO_DOC', VarArrayOf([InputString, null,'UTENS']), [loPartialKey]) then
begin
 ShowMessage('Non esiste un''uscita aperta di questa Scheda!!!');
 Edit_Mode3(False);
 exit;
end;
If not (dmodAz.ibtrDef.InTransaction) then
 dmodAz.ibtrDef.StartTransaction;
 ShowMessage('Bentornato');
 If (IbdUtens.Active = False) then
 IbdUtens.Open;
 IbdUtens.Edit;
 TIPO := 'UTENS';
 IbdUtens.FieldByName('DATA_ENTRATA').AsDateTime:=Now;
 DBEdit17.SetFocus;  
end;

procedure TfConte2.BitBtn22Click(Sender: TObject);
begin
If (DBEdit17.Text='') then
Exit;
IbdUtens.FieldByName('TIPO_DOC').AsString := 'UTENS';
IbdUtens.Delete;
try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode3(False);

end;

procedure TfConte2.BitBtn24Click(Sender: TObject);
begin
If (MessageDlg('Annullare?',mtConfirmation,[mbYes,mbNo],0)=mrNo)
Then Exit;
Edit_Mode3(False);
IbdUtens.Cancel;
dmodAz.ibtrDef.Rollback;
Apri;
end;

procedure TfConte2.BitBtn23Click(Sender: TObject);
begin
If (DBEdit17.Text='') then
Exit;
IbdUtens.FieldByName('TIPO_DOC').AsString := 'UTENS';
IbdUtens.Post;
try
dmodAz.ibtrDef.Commit
except
dmodAz.ibtrDef.Rollback;
end;
Edit_Mode3(False);

end;

procedure TfConte2.CheckBox1Click(Sender: TObject);
begin
IBQuery1.Active := CheckBox1.Checked;
end;

procedure TfConte2.CheckBox2Click(Sender: TObject);
begin
dmodAz.dsoTab_Commessi.DataSet.Active := CheckBox2.Checked;
end;

procedure TfConte2.CheckBox3Click(Sender: TObject);
begin
dmodAz.dsoTab_Articoli.DataSet.Active := CheckBox3.Checked;
end;

procedure TfConte2.RxDBLookupCombo8Change(Sender: TObject);
begin
RxDBLookupCombo11.KeyValue := RxDBLookupCombo8.KeyValue;
end;

procedure TfConte2.RxDBLookupCombo11Change(Sender: TObject);
begin
RxDBLookupCombo8.KeyValue := RxDBLookupCombo11.KeyValue;
end;

procedure TfConte2.RxDBLookupCombo9Change(Sender: TObject);
begin
RxDBLookupCombo10.KeyValue := RxDBLookupCombo9.KeyValue;
end;

procedure TfConte2.RxDBLookupCombo10Change(Sender: TObject);
begin
RxDBLookupCombo9.KeyValue := RxDBLookupCombo10.KeyValue;
end;

procedure TfConte2.SpeedButton1Click(Sender: TObject);
begin
ibdRiep.Close;
ibdRiep.SelectSQL.Clear;
ibdRiep.SelectSQL.add('Select * from speseint');
ibdRiep.SelectSQL.add('where data_uscita>=:datada and data_uscita<=:dataa');
ibdRiep.ParamByName('datada').AsDateTime := DateEdit1.Date;
ibdRiep.ParamByName('dataa').AsDateTime := DateEdit2.Date;
if CheckBox1.Checked then
begin
ibdRiep.SelectSQL.add('and tipo_doc=:partipodoc');
ibdRiep.ParamByName('partipodoc').AsString := RxDBLookupCombo7.KeyValue;
end;
if CheckBox2.Checked then
begin
ibdRiep.SelectSQL.add('where tipo_doc=:partipodoc');
ibdRiep.ParamByName('partipodoc').AsString := RxDBLookupCombo7.KeyValue;
end;
ibdRiep.Open;
end;

end.
