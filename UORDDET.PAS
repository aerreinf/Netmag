unit uOrdDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Db, ComCtrls, Variants;

type
  TfArtPerOrd = class(TForm)
    paView: TPanel;
    paCtrl: TPanel;
    bbOK: TBitBtn;
    bbCanc: TBitBtn;
    laArt: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    bbCodice: TBitBtn;
    bbDescr: TBitBtn;
    laPrezzo_Unita: TLabel;
    laQta: TLabel;
    dbePrezzo: TDBEdit;
    dbeQta: TDBEdit;
    dbeSc1: TDBEdit;
    dbeSc2: TDBEdit;
    laSconti: TLabel;
    laPrezzoTot: TLabel;
    dbePrezzoTotale: TDBEdit;
    laPrezzoScont: TLabel;
    dbePrezzoSc: TDBEdit;
    dsoOrdDet: TDataSource;
    DBEProvv: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label44: TLabel;
    DBEdit37: TDBEdit;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet1: TTabSheet;
    Label28: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit18: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit19: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit7: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure bbCodiceClick(Sender: TObject);
    procedure bbCancClick(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure bbDescrClick(Sender: TObject);
    procedure DBEProvvEnter(Sender: TObject);
    procedure DBEProvvClick(Sender: TObject);
    procedure dbePrezzoEnter(Sender: TObject);
    procedure dbePrezzoClick(Sender: TObject);
    procedure dbeQtaClick(Sender: TObject);
    procedure dbeQtaEnter(Sender: TObject);
    procedure dbeDescrClick(Sender: TObject);
    procedure dbeDescrEnter(Sender: TObject);
    procedure dbeCodiceClick(Sender: TObject);
    procedure dbeCodiceEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeQtaExit(Sender: TObject);
    procedure dbePrezzoExit(Sender: TObject);
    procedure dbeSc1Exit(Sender: TObject);
    procedure dbeSc2Exit(Sender: TObject);
   private
    Procedure Update_Totali;
   public

    intPK_Fornitore: INteger;
  end;

var
  fArtPerOrd: TfArtPerOrd;

implementation

uses uAzDM, uRicercaVeloceAZ, uOrdini, uOrdPrezzi;

{$R *.DFM}

procedure TfArtPerOrd.bbCodiceClick(Sender: TObject);
var
v:string;
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=True;
    strAdditionalWhere:='CLI_FOR_ID='+IntToStr(intPK_Fornitore);
  // Pass vals
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='CODICE_ARTICOLO';
    strCampo2:='DESCR';
    strCampo3:='PREZZO_BASE';
    intRichieste:=3;
    strResCampoCodice:='CODICE_ARTICOLO';
    strValore:= dbeCodice.Field.AsString;
   // Show
   ShowModal;
   // Set vals
   v:=VarToStr(vaResValore);
   dsoOrdDet.DataSet.FieldByName('CODICE_ART').AsString:=VarToStr(vaResValore);
   dsoOrdDet.DataSet.FieldByName('DESCR').AsString:=VarToStr(vaResValore2);
   dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsString:=VarToStr(vaResValore3);
{
if (fOrdini.RxDBLookupCombo5.Text <>'') then
   dsoOrdDet.DataSet.FieldByName('AGENTE').AsFloat:=
        dsoDati.DataSet.fieldByname('AG').AsFloat;

if (fOrdini.RxDBLookupCombo4.Text <>'') then
   dsoOrdDet.DataSet.FieldByName('CAPO_GRUPPO').AsFloat:=
        dsoDati.DataSet.fieldByname('CA').AsFloat;

if (fOrdini.RxDBLookupCombo2.Text <>'') then
   dsoOrdDet.DataSet.FieldByName('CAPO_AREA').AsFloat:=
        dsoDati.DataSet.fieldByname('CG').AsFloat;
}
   // Destroy

   bbOK.Enabled:=True;
free;
  End;
 With (TfOrdPrezzi.Create(Self)) Do
 Begin
IBQuery1.Close;
IBQuery1.ParamByName('a').AsString := v;
IBQuery1.Open;
ShowModal;
//free;
end;
 dbeQta.SetFocus;
end;

procedure TfArtPerOrd.bbCancClick(Sender: TObject);
begin
 dsoOrdDet.DataSet.Cancel;
 Close;
end;

procedure TfArtPerOrd.bbOKClick(Sender: TObject);
begin
 dsoOrdDet.DataSet.Post;
 Close;
end;

procedure TfArtPerOrd.bbDescrClick(Sender: TObject);
var
v:string;
begin
 With (TfRicercaVeloceAZSQL.Create(Self)) Do
 Begin
    boolAdditionalWhere:=True;
    strAdditionalWhere:='CLI_FOR_ID='+IntToStr(intPK_Fornitore);
  // Pass vals
    strTabella:='TAB_ARTICOLI';
    strCampoWhere:='DESCR';
    strCampo2:='CODICE_ARTICOLO';
    strCampo3:='PREZZO_BASE';
    intRichieste:=3;
    strResCampoCodice:='DESCR';//'CODICE_ARTICOLO';
    strValore:= dbeDescr.Field.AsString;
   // Show
   ShowModal;
   // Set vals
   //strCodArt:=VarToStr(vaResValore);
v:=VarToStr(vaResValore2);
   dsoOrdDet.DataSet.FieldByName('CODICE_ART').AsVariant:=(vaResValore2);
   //  dsoRigheDoc.DataSet.FieldByName('').AsVariant:=vaResCodice;
   dsoOrdDet.DataSet.FieldByName('DESCR').AsVariant:=vaResValore;//strCodArt;
   dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsVariant:=(vaResValore3);
   // Destroy
   bbOK.Enabled:=True;
//dsoOrdDet.DataSet.Post;
free;
  End;
 With (TfOrdPrezzi.Create(Self)) Do
 Begin
IBQuery1.Close;
IBQuery1.ParamByName('a').AsString := v;
IBQuery1.Open;
ShowModal;
//free;
end;
 dbeQta.SetFocus;
end;

procedure TfArtPerOrd.Update_Totali;
Var
 dValSc1,dValSc2: Double;
begin
 Try
   dbePrezzoTotale.Field.AsFloat:=dbeQta.Field.AsFloat*dbePrezzo.Field.AsFloat;
   dValSc1:=dbePrezzoTotale.Field.AsFloat*dbeSc1.Field.AsFloat/100;
   dValSc2:=(dbePrezzoTotale.Field.AsFloat-dvalsc1)*dbeSc2.Field.AsFloat/100;
   dbePrezzoSc.Field.AsFloat:=
   dbePrezzoTotale.Field.AsFloat-dValSc1-dValSc2;
   dsoOrdDet.DataSet.FieldByName('SCONTO_TOT').AsFloat:=
   dbePrezzoTotale.Field.AsFloat - dbePrezzoSc.Field.AsFloat;
 Except

 End;
end;

procedure TfArtPerOrd.DBEProvvEnter(Sender: TObject);
begin
DBEProvv.SelectAll;
end;

procedure TfArtPerOrd.DBEProvvClick(Sender: TObject);
begin
DBEProvv.SelectAll;
end;

procedure TfArtPerOrd.dbePrezzoEnter(Sender: TObject);
begin
dbePrezzo.SelectAll;
end;

procedure TfArtPerOrd.dbePrezzoClick(Sender: TObject);
begin
dbePrezzo.SelectAll;
end;

procedure TfArtPerOrd.dbeQtaClick(Sender: TObject);
begin
dbeQta.SelectAll;
end;

procedure TfArtPerOrd.dbeQtaEnter(Sender: TObject);
begin
dbeQta.SelectAll;
end;

procedure TfArtPerOrd.dbeDescrClick(Sender: TObject);
begin
dbeDescr.SelectAll;
end;

procedure TfArtPerOrd.dbeDescrEnter(Sender: TObject);
begin
dbeDescr.SelectAll;
end;

procedure TfArtPerOrd.dbeCodiceClick(Sender: TObject);
begin
dbeCodice.SelectAll;
end;

procedure TfArtPerOrd.dbeCodiceEnter(Sender: TObject);
begin
dbeCodice.SelectAll;
end;

procedure TfArtPerOrd.FormShow(Sender: TObject);
begin
if dmodAz.Attivita = 0 then
fArtPerOrd.Height := 170
else
begin
fArtPerOrd.Height := 380;
PageControl1.ActivePage := TabSheet1;
end;
end;

procedure TfArtPerOrd.dbeQtaExit(Sender: TObject);
begin
 Update_Totali;
end;

procedure TfArtPerOrd.dbePrezzoExit(Sender: TObject);
begin
 Update_Totali;
end;

procedure TfArtPerOrd.dbeSc1Exit(Sender: TObject);
begin
 Update_Totali;
end;

procedure TfArtPerOrd.dbeSc2Exit(Sender: TObject);
begin
 Update_Totali;
end;

end.
