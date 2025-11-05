Unit uAnagAzDB;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, ToolWin, DB;

Type
  TfAnagAzDB = Class(TForm)
    paBack: TPanel;
    pctrlAnag: TPageControl;
    tabs1: TTabSheet;
    tabs2: TTabSheet;
    tabs3: TTabSheet;
    tabs4: TTabSheet;
    tabs5: TTabSheet;
    paDatiAnag: TPanel;
    paIndA: TPanel;
    gboxSedeA1: TGroupBox;
    gboxDomFiscA2: TGroupBox;
    paIndB: TPanel;
    gboxUbicDiAttivA3: TGroupBox;
    gboxDeposDep: TGroupBox;
    laIndB2: TLabel;
    laIndB2Comune: TLabel;
    laIndB2Nazione: TLabel;
    laIndB2Tel: TLabel;
    laIndB2Fax: TLabel;
    laIndB2RagSoc: TLabel;
    laIndB2CodFisc: TLabel;
    laIndB2PartitaIVA: TLabel;
    laIndB2Nome: TLabel;
    paAttivita: TPanel;
    paDatiFisc: TPanel;
    laAttCodice: TLabel;
    laAttDescr: TLabel;
    laUffIVA: TLabel;
    laEsattoria: TLabel;
    laNatGiur: TLabel;
    laStatSoc: TLabel;
    laSituazSoc: TLabel;
    laCodConces: TLabel;
    laNContoFisc: TLabel;
    Label1: TLabel;
    laCodSIA: TLabel;
    laDataAutor: TLabel;
    laProvIndDiFinan: TLabel;
    laNAutor: TLabel;
    paCtrl: TPanel;
    laIndA1: TLabel;
    dbeIndirizzo_A1: TDBEdit;
    laComuneA1: TLabel;
    laNazioneA1: TLabel;
    LookNazione_A1: TDBLookupComboBox;
    dbeFax_A1: TDBEdit;
    laFaxA1: TLabel;
    dbeInternet_A1: TDBEdit;
    laInternetA1: TLabel;
    dbeEMail_A1: TDBEdit;
    laEMailA1: TLabel;
    dbeTel1_A1: TDBEdit;
    laTel1A1: TLabel;
    LookComune_A1: TDBLookupComboBox;
    laTel2A1: TLabel;
    dbeTel2_A1: TDBEdit;
    Label2: TLabel;
    dbeIndirizzo_A2: TDBEdit;
    Label3: TLabel;
    LookComune_A2: TDBLookupComboBox;
    Label4: TLabel;
    dbeTel1_A2: TDBEdit;
    Label5: TLabel;
    dbeEMail_A2: TDBEdit;
    dbeInternet_A2: TDBEdit;
    Label6: TLabel;
    dbeTel2_A2: TDBEdit;
    Label7: TLabel;
    LookNazione_A2: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    dbeFax_A2: TDBEdit;
    Label12: TLabel;
    dbeIndirizzo_B1: TDBEdit;
    laCAPB1: TLabel;
    LookComune_B1: TDBLookupComboBox;
    Label14: TLabel;
    dbeTel1_B1: TDBEdit;
    Label15: TLabel;
    dbeEMail_B1: TDBEdit;
    dbeInternet_B1: TDBEdit;
    Label16: TLabel;
    LookNazione_B1: TDBLookupComboBox;
    Label20: TLabel;
    Label21: TLabel;
    dbeFax_B1: TDBEdit;
    gboxCCIAA: TGroupBox;
    laCCIAAComune: TLabel;
    laCCIAARegImp: TLabel;
    laCCIAAREA: TLabel;
    laCCIAADataIscr: TLabel;
    gbozAltriDati: TGroupBox;
    laADDataCost: TLabel;
    laADTermLeg: TLabel;
    laADDataAppBil: TLabel;
    laADDataTerm: TLabel;
    laADCapSoc: TLabel;
    laCodAz: TLabel;
    laCodFisc: TLabel;
    laPartitaIVA: TLabel;
    laRagSoc: TLabel;
    laTitolo: TLabel;
    laDataDiNasc: TLabel;
    laCodISO: TLabel;
    laNazione: TLabel;
    laComuneDiNasc: TLabel;
    laCognome: TLabel;
    laNome: TLabel;
    dbeCodAz: TDBEdit;
    dbeCodFisc: TDBEdit;
    dbePartIVA: TDBEdit;
    dbeRagSoc: TDBEdit;
    LookTitolo: TDBLookupComboBox;
    dbeCognome: TDBEdit;
    LookCodISO: TDBLookupComboBox;
    LookNazione: TDBLookupComboBox;
    dbeNome: TDBEdit;
    LookComune: TDBLookupComboBox;
    dbnTab_Anag_Az: TDBNavigator;
    dbeCodFiscDep: TDBEdit;
    dbePartIVADep: TDBEdit;
    dbeCognomeDep: TDBEdit;
    dbeNomeDep: TDBEdit;
    dbeIndDep: TDBEdit;
    LookComuneDep: TDBLookupComboBox;
    LookNazioneDep: TDBLookupComboBox;
    dbeTelDep: TDBEdit;
    dbeFaxDep: TDBEdit;
    dbcboxTenutaParzialeDep: TDBCheckBox;
    dbeNumRegImpesa: TDBEdit;
    dbeNREA: TDBEdit;
    LookComuneCCIAA: TDBLookupComboBox;
    dbeCapitaleSociale: TDBEdit;
    LookAttivitaID: TDBLookupComboBox;
    LookAttivitaDescr: TDBLookupComboBox;
    dbeDataDiNascita: TDBEdit;
    dbragTipoImpresa: TDBRadioGroup;
    dbragRegCont: TDBRadioGroup;
    dbcboxAttArtigian: TDBCheckBox;
    dbcboxAttStagion: TDBCheckBox;
    dbeDataIscrREA: TDBEdit;
    dbeDataCost: TDBEdit;
    dbeDataAppBil: TDBEdit;
    dbeDataTermLegCCIAA: TDBEdit;
    dbeDataTermCCIAA: TDBEdit;
    dbcboxInterversCCIAA: TDBCheckBox;
    dbcboxBaseUnica: TDBCheckBox;
    dbcboxPiuAttivita: TDBCheckBox;
    dbeEsattoria: TDBEdit;
    dbeUfficioIVA: TDBEdit;
    dbeCodiceSIA: TDBEdit;
    dbeCodiceConcessione: TDBEdit;
    dbeNContoFiscale: TDBEdit;
    LookSedeINPSCod: TDBLookupComboBox;
    LookSeseINPSDescr: TDBLookupComboBox;
    LookNatGiurCod: TDBLookupComboBox;
    LookNatGiurDescr: TDBLookupComboBox;
    dbeProvIntFin: TDBEdit;
    dbeNumAutor: TDBEdit;
    dbcboxBolliVirtuali: TDBCheckBox;
    dbeSituazioneSocieta: TDBEdit;
    dbeStatoSocieta: TDBEdit;
    dbragTipoRegione: TDBRadioGroup;
    LookSesso: TDBLookupComboBox;
    laSesso: TLabel;
    dbeDataAutor: TDBEdit;
    laCAPCCIAA: TLabel;
    LookCAPCCIAA: TDBLookupComboBox;
    laProvCCIAA: TLabel;
    LookProvCCIAA: TDBLookupComboBox;
    Label8: TLabel;
    LookCAPB1: TDBLookupComboBox;
    LookProvB1: TDBLookupComboBox;
    laProvB1: TLabel;
    LookCAPDep: TDBLookupComboBox;
    laCAPDep: TLabel;
    LookProvDep: TDBLookupComboBox;
    laProvDep: TLabel;
    LookCAPA1: TDBLookupComboBox;
    laCAPA1: TLabel;
    laProvA1: TLabel;
    LookProvA1: TDBLookupComboBox;
    LookCAPA2: TDBLookupComboBox;
    laCAPA2: TLabel;
    LookProvA2: TDBLookupComboBox;
    laProvA2: TLabel;
    LookCAPdiNasc: TDBLookupComboBox;
    laCAPdiNasc: TLabel;
    procedure cboxTenutaExit(Sender: TObject);
    procedure cboxTenutaClick(Sender: TObject);
    procedure cboxAttStagClick(Sender: TObject);
    procedure cboxAttStagExit(Sender: TObject);
    procedure cboxAttArtigExit(Sender: TObject);
    procedure cboxAttArtigClick(Sender: TObject);
    procedure tpCCIAADataIscrChange(Sender: TObject);
    procedure cboxADInterVersatoClick(Sender: TObject);
    procedure cboxADInterVersatoExit(Sender: TObject);
    procedure cboxAcqVentExit(Sender: TObject);
    procedure cboxAcqVentClick(Sender: TObject);
    procedure cboxAttPiuLuoghiClick(Sender: TObject);
    procedure cboxAttPiuLuoghiExit(Sender: TObject);
    procedure dbnTab_Anag_AzClick(Sender: TObject; Button: TNavigateBtn);
    procedure tpDataAutorChange(Sender: TObject);
    procedure cboxBolVirtClick(Sender: TObject);
    procedure cboxBolVirtExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeCodAzKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodFiscKeyPress(Sender: TObject; var Key: Char);
    procedure dbePartIVAKeyPress(Sender: TObject; var Key: Char);
    procedure LookSessoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeRagSocKeyPress(Sender: TObject; var Key: Char);
    procedure LookTitoloKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCognomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNomeKeyPress(Sender: TObject; var Key: Char);
    procedure LookComuneKeyPress(Sender: TObject; var Key: Char);
    procedure LookCAPdiNascKeyPress(Sender: TObject; var Key: Char);
    procedure LookCodISOKeyPress(Sender: TObject; var Key: Char);
    procedure LookNazioneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeIndirizzo_A1KeyPress(Sender: TObject; var Key: Char);
    procedure LookComune_A1KeyPress(Sender: TObject; var Key: Char);
    procedure LookCAPA1KeyPress(Sender: TObject; var Key: Char);
    procedure LookProvA1KeyPress(Sender: TObject; var Key: Char);
    procedure LookNazione_A1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel1_A1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel2_A1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeFax_A1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeEMail_A1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeInternet_A1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeIndirizzo_A2KeyPress(Sender: TObject; var Key: Char);
    procedure LookComune_A2KeyPress(Sender: TObject; var Key: Char);
    procedure LookCAPA2KeyPress(Sender: TObject; var Key: Char);
    procedure LookProvA2KeyPress(Sender: TObject; var Key: Char);
    procedure LookNazione_A2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel1_A2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel2_A2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeFax_A2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeEMail_A2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeInternet_A2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeIndirizzo_B1KeyPress(Sender: TObject; var Key: Char);
    procedure LookComune_B1KeyPress(Sender: TObject; var Key: Char);
    procedure LookCAPB1KeyPress(Sender: TObject; var Key: Char);
    procedure LookProvB1KeyPress(Sender: TObject; var Key: Char);
    procedure LookNazione_B1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeTel1_B1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeFax_B1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeEMail_B1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeInternet_B1KeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodFiscDepKeyPress(Sender: TObject; var Key: Char);
    procedure dbePartIVADepKeyPress(Sender: TObject; var Key: Char);
    procedure cboxTenutaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCognomeDepKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNomeDepKeyPress(Sender: TObject; var Key: Char);
    procedure dbeIndDepKeyPress(Sender: TObject; var Key: Char);
    procedure LookComuneDepKeyPress(Sender: TObject; var Key: Char);
    procedure LookCAPDepKeyPress(Sender: TObject; var Key: Char);
    procedure LookProvDepKeyPress(Sender: TObject; var Key: Char);
    procedure LookNazioneDepKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTelDepKeyPress(Sender: TObject; var Key: Char);
    procedure dbeFaxDepKeyPress(Sender: TObject; var Key: Char);
    procedure cboxAttArtigKeyPress(Sender: TObject; var Key: Char);
    procedure cboxAttStagKeyPress(Sender: TObject; var Key: Char);
    procedure cboxAcqVentKeyPress(Sender: TObject; var Key: Char);
    procedure cboxAttPiuLuoghiKeyPress(Sender: TObject; var Key: Char);
    procedure LookAttivitaIDKeyPress(Sender: TObject; var Key: Char);
    procedure LookAttivitaDescrKeyPress(Sender: TObject; var Key: Char);
    procedure LookCAPCCIAAKeyPress(Sender: TObject; var Key: Char);
    procedure LookProvCCIAAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumRegImpesaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNREAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCapitaleSocialeKeyPress(Sender: TObject; var Key: Char);
    procedure cboxADInterVersatoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeUfficioIVAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeEsattoriaKeyPress(Sender: TObject; var Key: Char);
    procedure LookNatGiurCodKeyPress(Sender: TObject; var Key: Char);
    procedure LookNatGiurDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodiceConcessioneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNContoFiscaleKeyPress(Sender: TObject; var Key: Char);
    procedure LookSedeINPSCodKeyPress(Sender: TObject; var Key: Char);
    procedure LookSeseINPSDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSituazioneSocietaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeStatoSocietaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodiceSIAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeProvIntFinKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumAutorKeyPress(Sender: TObject; var Key: Char);
    procedure cboxBolVirtKeyPress(Sender: TObject; var Key: Char);
    procedure LookComuneCCIAAKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeDataDiNascitaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDataCostKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDataAppBilKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDataTermLegCCIAAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDataTermCCIAAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDataAutorKeyPress(Sender: TObject; var Key: Char);
  Private
    { Private declarations }
    Procedure Set_Tenuta_Parz_Dep;
    Procedure Set_Att_Artigianale;
    Procedure Set_Att_Stagionale;
    Procedure Set_Interversato;
    Procedure Set_Base_Unica;
    Procedure Set_Bolle_Virt;
    Procedure Set_All_Default;
    Procedure Set_Piu_Attivita;
    Procedure Get_All_Datas;
    Procedure Edit_Mode(bMode: Boolean);
  Public
    { Public declarations }
 End;

Var
  fAnagAzDB: TfAnagAzDB;

Implementation

uses uPubDM;

{$R *.DFM}

procedure TfAnagAzDB.Set_Tenuta_Parz_Dep;
begin
// If (cboxTenuta.Checked) Then dbcboxTenutaParzialeDep.Field.Value:=1
//                         Else dbcboxTenutaParzialeDep.Field.Value:=0;
// If (cboxTenuta.Checked) Then dbcboxTenutaParzialeDep.State:=cbChecked
//                         Else dbcboxTenutaParzialeDep.State:=cbUnchecked;
end;

procedure TfAnagAzDB.cboxTenutaExit(Sender: TObject);
begin
 Set_Tenuta_Parz_Dep;
end;

procedure TfAnagAzDB.cboxTenutaClick(Sender: TObject);
begin
 Set_Tenuta_Parz_Dep;
end;

procedure TfAnagAzDB.cboxAttStagClick(Sender: TObject);
begin
 Set_Att_Stagionale;
end;

procedure TfAnagAzDB.cboxAttStagExit(Sender: TObject);
begin
 Set_Att_Stagionale;
end;

procedure TfAnagAzDB.Set_Att_Artigianale;
begin
// If (cboxAttArtig.Checked) Then dbcboxAttArtigian.Field.Value:=1
//                           Else dbcboxAttArtigian.Field.Value:=0;
// If (cboxAttArtig.Checked) Then dbcboxAttArtigian.State:=cbChecked
//                           Else dbcboxAttArtigian.State:=cbUnchecked;
end;

procedure TfAnagAzDB.Set_Att_Stagionale;
begin
// If (cboxAttStag.Checked) Then dbcboxAttStagion.Field.Value:=1
//                          Else dbcboxAttStagion.Field.Value:=0;
// If (cboxAttStag.Checked) Then dbcboxAttStagion.State:=cbChecked
//                          Else dbcboxAttStagion.State:=cbUnchecked;
end;

procedure TfAnagAzDB.cboxAttArtigExit(Sender: TObject);
begin
 Set_Att_Artigianale;
end;

procedure TfAnagAzDB.cboxAttArtigClick(Sender: TObject);
begin
 Set_Att_Artigianale;
end;

procedure TfAnagAzDB.tpCCIAADataIscrChange(Sender: TObject);
begin
// dbeDataIscrREA.Field.AsDateTime:=tpCCIAADataIscr.Date;
end;

procedure TfAnagAzDB.Set_All_Default;
begin
 // Set def values
 dbeDataDiNascita.Field.AsDateTime:=Now;
 dbeDataIscrREA.Field.AsDateTime:=Now;
 dbeDataCost.Field.AsDateTime:=Now;
 dbeDataAppBil.Field.AsDateTime:=(Now);
 dbeDataTermLegCCIAA.Field.AsDateTime:=(Now);
 dbeDataTermCCIAA.Field.AsDateTime:=(Now);
 dbeDataAutor.Field.AsDateTime:=(Now);

 Set_Tenuta_Parz_Dep;
 Set_Att_Artigianale;
 Set_Att_Stagionale;
 Set_Interversato;
 Set_Base_Unica;
 Set_Bolle_Virt;

end;

procedure TfAnagAzDB.Set_Interversato;
begin
// If (cboxADInterVersato.Checked) Then dbcboxInterversCCIAA.Field.Value:=1
//                                 Else dbcboxInterversCCIAA.Field.Value:=0;
// If (cboxADInterVersato.Checked) Then dbcboxInterversCCIAA.State:=cbChecked
//                                 Else dbcboxInterversCCIAA.State:=cbUnChecked;
end;

procedure TfAnagAzDB.cboxADInterVersatoClick(Sender: TObject);
begin
 Set_Interversato;
end;

procedure TfAnagAzDB.cboxADInterVersatoExit(Sender: TObject);
begin
 Set_Interversato;
end;

procedure TfAnagAzDB.Set_Base_Unica;
begin
// If (cboxAcqVent.Checked) Then dbcboxBaseUnica.Field.Value:=1
//                          Else dbcboxBaseUnica.Field.Value:=0;
end;

procedure TfAnagAzDB.cboxAcqVentExit(Sender: TObject);
begin
 Set_Base_Unica;
end;

procedure TfAnagAzDB.cboxAcqVentClick(Sender: TObject);
begin
 Set_Base_Unica;
end;

procedure TfAnagAzDB.Set_Piu_Attivita;
begin
// if (cboxAttPiuLuoghi.Checked) Then dbcboxPiuAttivita.Field.Value:=1
//                               Else dbcboxPiuAttivita.Field.Value:=0;
// if (cboxAttPiuLuoghi.Checked) Then dbcboxPiuAttivita.State:=cbChecked
//                               Else dbcboxPiuAttivita.State:=cbUnChecked
end;

procedure TfAnagAzDB.cboxAttPiuLuoghiClick(Sender: TObject);
begin
 Set_Piu_Attivita;
end;

procedure TfAnagAzDB.cboxAttPiuLuoghiExit(Sender: TObject);
begin
 Set_Piu_Attivita;
end;

procedure TfAnagAzDB.dbnTab_Anag_AzClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 Edit_Mode(False);
 If (Button=nbInsert) Then Begin
                            Edit_Mode(True);
                            Set_All_Default;
                            pctrlAnag.ActivePage:=tabs1;
                            dbeCodAz.SetFocus;
                            Exit;
                           End;
 If (Button=nbEdit) Then Begin Edit_Mode(True);Exit;End;
 If (Button=nbPost) Then Exit;
 // If (only one record exit)  If (dbnTab_Anag_Az.DataSource.DataSet.RecordCount=1) Then Exit;
 // If (no data exit)
 If (dbnTab_Anag_Az.DataSource.DataSet.IsEmpty) Then Exit;
 // otherwise get all datas
 Get_All_Datas;
end;

procedure TfAnagAzDB.Get_All_Datas;
begin
{ If (dbcboxTenutaParzialeDep.Field.Value=0) Then cboxTenuta.Checked:=False
                                                Else cboxTenuta.Checked:=True;
 If (dbcboxAttArtigian.Field.AsInteger=0) Then cboxAttArtig.Checked:=False
                                          Else cboxAttArtig.Checked:=True;
 If (dbcboxAttStagion.Field.AsInteger=0) Then cboxAttStag.Checked:=False
                                         Else cboxAttStag.Checked:=True;
 If (dbcboxInterversCCIAA.Field.AsInteger=0) Then cboxADInterVersato.Checked:=False
                                             Else cboxADInterVersato.Checked:=True;
 If (dbcboxBaseUnica.Field.AsInteger=0) Then cboxAcqVent.Checked:=False
                                        Else cboxAcqVent.Checked:=True;
 If (dbcboxPiuAttivita.Field.AsInteger=0) Then cboxAttPiuLuoghi.Checked:=False
                                          Else cboxAttPiuLuoghi.Checked:=True;
 If (dbcboxBolliVirtuali.Field.AsInteger=0) Then cboxBolVirt.Checked:=False
                                            Else cboxBolVirt.Checked:=True;
 }

 // Data
{ tpCCIAADataIscr.Date:=dbeDataIscrREA.Field.AsDateTime;
 tpADDataCost.Date:=dbeDataCost.Field.AsDateTime;
 tpADDataAppBil.Date:=dbeDataAppBil.Field.AsDateTime;
 tpADTermLeg.Date:=dbeDataTermLegCCIAA.Field.AsDateTime;
 tpADDataTerm.Date:=dbeDataTermCCIAA.Field.AsDateTime;
 tpDataAutor.Date:=dbeDataAutor.Field.AsDateTime;
 }

end;

procedure TfAnagAzDB.tpDataAutorChange(Sender: TObject);
begin
// dbeDataAutor.Field.AsDateTime:=tpDataAutor.Date;
end;

procedure TfAnagAzDB.Set_Bolle_Virt;
begin
// If (cboxBolVirt.Checked) Then dbcboxBolliVirtuali.Field.Value:=1
//                          Else dbcboxBolliVirtuali.Field.Value:=0;
// If (cboxBolVirt.Checked) Then dbcboxBolliVirtuali.State:=cbChecked
//                          Else dbcboxBolliVirtuali.State:=cbUnChecked;
end;

procedure TfAnagAzDB.cboxBolVirtClick(Sender: TObject);
begin
 Set_Bolle_Virt;
end;

procedure TfAnagAzDB.cboxBolVirtExit(Sender: TObject);
begin
 Set_Bolle_Virt;
end;

procedure TfAnagAzDB.FormShow(Sender: TObject);
begin
 If (dbnTab_Anag_Az.DataSource.DataSet.IsEmpty) Then Exit;
 // otherwise get all datas
 Get_All_Datas;
end;

procedure TfAnagAzDB.dbeCodAzKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodAz,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeCodFiscKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodFisc,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbePartIVAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbePartIVA,True,True,False).SetFocus;
end;



procedure TfAnagAzDB.LookSessoKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookSesso,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeRagSocKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeRagSoc,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookTitoloKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookTitolo,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeCognomeKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCognome,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeNomeKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNome,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookComuneKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookComune,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookCAPdiNascKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAPdiNasc,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookCodISOKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCodISO,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookNazioneKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then
 Begin
  // to the next tab
  pctrlAnag.ActivePage:=tabs2;
  dbeIndirizzo_A1.SetFocus;
 End;  
end;

procedure TfAnagAzDB.dbeIndirizzo_A1KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeIndirizzo_A1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookComune_A1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookComune_A1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookCAPA1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAPA1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookProvA1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProvA1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookNazione_A1KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookNazione_A1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeTel1_A1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel1_A1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeTel2_A1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel2_a1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeFax_A1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeFax_A1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeEMail_A1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeEMail_A1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeInternet_A1KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then dbeIndirizzo_A2.SetFocus; 
end;

procedure TfAnagAzDB.dbeIndirizzo_A2KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeIndirizzo_A2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookComune_A2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookComune_A2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookCAPA2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAPA2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookProvA2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProvA2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookNazione_A2KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookNazione_A2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeTel1_A2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel1_A2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeTel2_A2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel2_A2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeFax_A2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeFax_A2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeEMail_A2KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeEMail_A2,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeInternet_A2KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then
 Begin
  pctrlAnag.ActivePage:=tabs3;
  dbeIndirizzo_B1.SetFocus;
 End;
end;

procedure TfAnagAzDB.dbeIndirizzo_B1KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeIndirizzo_B1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookComune_B1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookComune_B1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookCAPB1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAPB1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookProvB1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProvB1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookNazione_B1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If (Key=#13) Then FindNextControl(LookNazione_B1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeTel1_B1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTel1_B1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeFax_B1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeFax_B1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeEMail_B1KeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeEMail_B1,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeInternet_B1KeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then dbeCodFiscDep.SetFocus;
end;

procedure TfAnagAzDB.dbeCodFiscDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodFiscDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbePartIVADepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbePartIVADep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.cboxTenutaKeyPress(Sender: TObject; var Key: Char);
begin
// If (Key=#13) Then FindNextControl(cboxTenuta,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeCognomeDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCognomeDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeNomeDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNomeDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeIndDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeIndDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookComuneDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookComuneDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookCAPDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAPDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookProvDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProvDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookNazioneDepKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookNazioneDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeTelDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeTelDep,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeFaxDepKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then
 Begin
  pctrlAnag.ActivePage:=tabs4;
  dbragTipoImpresa.SetFocus;
 End;
end;

procedure TfAnagAzDB.cboxAttArtigKeyPress(Sender: TObject; var Key: Char);
begin
// If (Key=#13) Then FindNextControl(cboxAttArtig,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.cboxAttStagKeyPress(Sender: TObject; var Key: Char);
begin
// If (Key=#13) Then FindNextControl(cboxAttStag,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.cboxAcqVentKeyPress(Sender: TObject; var Key: Char);
begin
// If (Key=#13) Then FindNextControl(cboxAcqVent,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.cboxAttPiuLuoghiKeyPress(Sender: TObject;
  var Key: Char);
begin
// If (Key=#13) Then FindNextControl(cboxAttPiuLuoghi,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookAttivitaIDKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookAttivitaID,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookAttivitaDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then LookComuneCCIAA.SetFocus;
end;

procedure TfAnagAzDB.LookCAPCCIAAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookCAPCCIAA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookProvCCIAAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookProvCCIAA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeNumRegImpesaKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNumRegImpesa,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeNREAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNREA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeCapitaleSocialeKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCapitaleSociale,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.cboxADInterVersatoKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then
 Begin
  pctrlAnag.ActivePage:=tabs5;
  dbeUfficioIVA.SetFocus;
 End;
end;

procedure TfAnagAzDB.dbeUfficioIVAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeUfficioIVA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeEsattoriaKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeEsattoria,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookNatGiurCodKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookNatGiurCod,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookNatGiurDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookNatGiurDescr,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeCodiceConcessioneKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodiceConcessione,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeNContoFiscaleKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNContoFiscale,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookSedeINPSCodKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookSedeINPSCod,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.LookSeseINPSDescrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookSeseINPSDescr,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeSituazioneSocietaKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeSituazioneSocieta,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeStatoSocietaKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeStatoSocieta,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeCodiceSIAKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeCodiceSIA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeProvIntFinKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeProvIntFin,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeNumAutorKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeNumAutor,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.cboxBolVirtKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then
 Begin
  pctrlAnag.ActivePage:=tabs1;
  dbeCodAz.SetFocus;
 End;
end;

procedure TfAnagAzDB.LookComuneCCIAAKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(LookComuneCCIAA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 If (dbnTab_Anag_Az.DataSource.DataSet.State in [dsInsert, dsEdit])
  Then dbnTab_Anag_Az.DataSource.DataSet.Cancel;
end;

procedure TfAnagAzDB.Edit_Mode(bMode: Boolean);
begin
 paDatiAnag.Enabled:=bMode;
 paIndA.Enabled:=bMode;
 paIndB.Enabled:=bMode;
 paAttivita.Enabled:=bMode;
 paDatiFisc.Enabled:=bMode;
end;

procedure TfAnagAzDB.dbeDataDiNascitaKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDataDiNascita,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeDataCostKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDataCost,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeDataAppBilKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDataAppBil,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeDataTermLegCCIAAKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDataTermLegCCIAA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeDataTermCCIAAKeyPress(Sender: TObject;
  var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDataTermCCIAA,True,True,False).SetFocus;
end;

procedure TfAnagAzDB.dbeDataAutorKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13) Then FindNextControl(dbeDataAutor,True,True,False).SetFocus;
end;

End.
