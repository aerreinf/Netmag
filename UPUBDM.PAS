unit uPubDM;

interface
                                    
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBTable, IBDatabase, ImgList, IBQuery, IBUpdateSQL,
  IBSQL;
                      
type
  TdmodPub = class(TDataModule)
    iliPub: TImageList;
    ibdbPub: TIBDatabase;
    ibTransPub: TIBTransaction;
    dsoTab_Anagrafica_Aziende: TDataSource;
    dsoTab_Comuni: TDataSource;
    dsoTab_Province: TDataSource;
    dsoTab_Monete: TDataSource;
    dsoTab_Nazioni: TDataSource;
    dsoTab_Codici_ISO: TDataSource;
    dsoTab_Natura_Giuridica: TDataSource;
    dsoTab_INPS: TDataSource;
    dsoTab_Lingue: TDataSource;
    dsoTab_Cambi_Monete: TDataSource;
    dsoTab_Tipo_Titolo: TDataSource;
    dsoTab_Tipo_Arrotondamento: TDataSource;
    dsoTab_Attivita: TDataSource;
    dsoTab_Regioni: TDataSource;
    dsoTab_Sesso: TDataSource;
    dsoTab_Tipo_Pagamento: TDataSource;
    dsoTab_Si_No: TDataSource;
    dsoTab_Modo_Consegna: TDataSource;
    dsoTab_Non_Imponibile_IVA: TDataSource;
    dsoTab_Non_Soggetto_IVA: TDataSource;
    dsoTab_Arrotondamenti: TDataSource;
    ibQue_Cambi_Monete: TIBQuery;
    dsoQue_Cambi_Monete: TDataSource;
    dsoTab_ClassIVA: TDataSource;
    ibQue_Cambi_MoneteID_DATA: TDateTimeField;
    ibQue_Cambi_MoneteMONETA1_ID: TIBStringField;
    ibQue_Cambi_MoneteMONETA2_ID: TIBStringField;
    ibQue_Cambi_MoneteCAMBIO: TFloatField;
    ibQue_Cambi_MoneteMonetaA: TStringField;
    ibQue_Cambi_MoneteMonetaB: TStringField;
    dlgFindPub: TOpenDialog;
    dsoTab_Esente_IVA: TDataSource;
    dsoTab_Mesi: TDataSource;
    ibTab_Baud: TIBTable;
    dsoTab_Baud: TDataSource;
    ibTab_Parita: TIBTable;
    dsoTab_Parita: TDataSource;
    ibTab_Bit_Dati: TIBTable;
    ibTab_Bit_Stop: TIBTable;
    dsoTab_Porte: TDataSource;
    dsoTab_Bit_Stop: TDataSource;
    dsoTab_Bit_Dati: TDataSource;
    dsoTab_Tipo_Registratore: TDataSource;
    dsoTab_Var_Fiscale: TDataSource;
    dsoTab_TipoArt: TDataSource;
    dsoTab_Tipo_Omaggio: TDataSource;
    ibTipo_Cod_Agg: TIBDataSet;
    ibTab_Comuni: TIBDataSet;
    ibTab_ComuniID_COMUNE: TIntegerField;
    ibTab_ComuniPROVINCIA_ID: TIntegerField;
    ibTab_ComuniCODICE_COMUNE: TIBStringField;
    ibTab_ComuniDESCR: TIBStringField;
    ibTab_ComuniCAP: TIBStringField;
    ibTab_Province: TIBDataSet;
    ibTab_Regioni: TIBDataSet;
    ibTab_RegioniID_REGIONE: TIntegerField;
    ibTab_RegioniDESCR: TIBStringField;
    ibTab_ProvinceID_PROVINCIA: TIntegerField;
    ibTab_ProvinceREGIONE_ID: TIntegerField;
    ibTab_ProvinceSIGLA: TIBStringField;
    ibTab_ProvinceDESCR: TIBStringField;
    ibTab_ProvinceRegione: TStringField;
    ibTab_ComuniProvincia: TStringField;
    dsoTipoCodAgg: TDataSource;
    ilTBar: TImageList;
    ibTab_Anag_Az: TIBDataSet;
    ibTab_Natura_Giuridica: TIBDataSet;
    ibTab_INPS: TIBDataSet;
    ibTab_Monete: TIBDataSet;
    ibTab_Attivita: TIBDataSet;
    ibTab_Codici_ISO: TIBDataSet;
    ibTab_Tipo_Registratore: TIBDataSet;
    ibTab_Tipo_Arrotondamento: TIBDataSet;
    ibTab_Tipo_Titolo: TIBDataSet;
    ibTab_Lingue: TIBDataSet;
    ibTab_Cambi_Monete: TIBDataSet;
    ibTab_TipoArt: TIBDataSet;
    ibTab_Arrotondamenti: TIBDataSet;
    ibTab_Modo_Consegna: TIBDataSet;
    ibTab_Tipo_Omaggio: TIBDataSet;
    ibTab_Mesi: TIBDataSet;
    ibTab_Esente_IVA: TIBDataSet;
    ibTab_Tipo_Pagamento: TIBDataSet;
    ibTab_Sesso: TIBDataSet;
    ibTab_Nazioni: TIBDataSet;
    ibTab_ClassificazioneIVA: TIBDataSet;
    ibTab_Si_No: TIBDataSet;
    ibTab_Porte: TIBDataSet;
    ibTab_Var_Fiscale: TIBDataSet;
    ibTab_Non_Soggetto_IVA: TIBDataSet;
    ibTab_Non_Imponibile_IVA: TIBDataSet;
    ibTab_Anag_AzDATA_TERM_LEG_APP_BILANCIO: TDateTimeField;
    ibTab_Anag_AzDATA_INT_FIN: TDateTimeField;
    ibTab_Anag_AzCAP_SOC: TFloatField;
    ibTab_Anag_AzDATA_ISCR_REA: TDateTimeField;
    ibTab_Anag_AzDATA_APP_BILANCIO: TDateTimeField;
    ibTab_Anag_AzDATA_TERM_CCIAA: TDateTimeField;
    ibTab_Anag_AzDATA_COST_CCIAA: TDateTimeField;
    ibTab_Anag_AzDATA_DI_NASCITA: TDateTimeField;
    ibTab_Anag_AzNAZIONE_DEP_ID: TIntegerField;
    ibTab_Anag_AzCOMUNE_DEP_ID: TIntegerField;
    ibTab_Anag_AzNOME_DEP: TIBStringField;
    ibTab_Anag_AzCOGNOME_DEP: TIBStringField;
    ibTab_Anag_AzEMAIL_B1: TIBStringField;
    ibTab_Anag_AzNAZIONE_B1_ID: TIntegerField;
    ibTab_Anag_AzCOMUNE_B1_ID: TIntegerField;
    ibTab_Anag_AzSITUAZIONE_SOCIETA_ID: TIntegerField;
    ibTab_Anag_AzSTATO_SOCIETA_ID: TIntegerField;
    ibTab_Anag_AzNR_ISC_REG_IMP_CCIAA: TIBStringField;
    ibTab_Anag_AzNUM_INT_FIN: TIBStringField;
    ibTab_Anag_AzPR_INT_FIN: TIBStringField;
    ibTab_Anag_AzNATURA_GIURIDICA_ID: TIntegerField;
    ibTab_Anag_AzTIPO_REGIONE: TIntegerField;
    ibTab_Anag_AzCCFISCALE: TIBStringField;
    ibTab_Anag_AzESATTORIA: TIBStringField;
    ibTab_Anag_AzUFFICIO_IVA: TIBStringField;
    ibTab_Anag_AzNUM_REA: TIBStringField;
    ibTab_Anag_AzCOMUNE_CCIAA_ID: TIntegerField;
    ibTab_Anag_AzEMAIL_A2: TIBStringField;
    ibTab_Anag_AzNAZIONE_A2_ID: TIntegerField;
    ibTab_Anag_AzCOMUNE_A2_ID: TIntegerField;
    ibTab_Anag_AzEMAIL_A1: TIBStringField;
    ibTab_Anag_AzNAZIONE_A1_ID: TIntegerField;
    ibTab_Anag_AzCOMUNE_A1_ID: TIntegerField;
    ibTab_Anag_AzNAZIONE_ID: TIntegerField;
    ibTab_Anag_AzCODICE_ISO_ID: TIntegerField;
    ibTab_Anag_AzCOMUNE_DI_NASCITA_ID: TIntegerField;
    ibTab_Anag_AzNOME: TIBStringField;
    ibTab_Anag_AzCOGNOME: TIBStringField;
    ibTab_Anag_AzTITOLO_ID: TIntegerField;
    ibTab_Anag_AzSESSO_ID: TSmallintField;
    ibTab_Anag_AzINDIRIZZO_DEP: TIBStringField;
    ibTab_Anag_AzPARTITA_IVA_DEP: TIBStringField;
    ibTab_Anag_AzCODICE_FISCALE_DEP: TIBStringField;
    ibTab_Anag_AzINTERNET_B1: TIBStringField;
    ibTab_Anag_AzINDIRIZZO_B1: TIBStringField;
    ibTab_Anag_AzGEST_BOLLI_VIRT: TSmallintField;
    ibTab_Anag_AzBASE_UNICA_ACQ_VENT: TSmallintField;
    ibTab_Anag_AzREGIME_CONTABILE: TSmallintField;
    ibTab_Anag_AzTIPO_IMPRESA: TSmallintField;
    ibTab_Anag_AzDESCR_ATTIVITA: TIBStringField;
    ibTab_Anag_AzPERSONA_FISICA: TSmallintField;
    ibTab_Anag_AzSEDE_INPS_ID: TIBStringField;
    ibTab_Anag_AzVERSATO: TSmallintField;
    ibTab_Anag_AzARTIGIANO: TSmallintField;
    ibTab_Anag_AzSTAGIONALE: TSmallintField;
    ibTab_Anag_AzTENUTA_PARZIALE: TSmallintField;
    ibTab_Anag_AzPIU_ATTIVITA: TSmallintField;
    ibTab_Anag_AzINTERNET_A2: TIBStringField;
    ibTab_Anag_AzINDIRIZZO_A2: TIBStringField;
    ibTab_Anag_AzINTERNET_A1: TIBStringField;
    ibTab_Anag_AzINDIRIZZO_A1: TIBStringField;
    ibTab_Anag_AzCODICE_FISCALE: TIBStringField;
    ibTab_Anag_AzPARTITA_IVA: TIBStringField;
    ibTab_Anag_AzFAX_DEP: TIBStringField;
    ibTab_Anag_AzTEL1_DEP: TIBStringField;
    ibTab_Anag_AzFAX_B1: TIBStringField;
    ibTab_Anag_AzTEL1_B1: TIBStringField;
    ibTab_Anag_AzDENOMINAZIONE: TIBStringField;
    ibTab_Anag_AzCODICE_CONCESSIONE: TIBStringField;
    ibTab_Anag_AzCODICE_SIA: TIBStringField;
    ibTab_Anag_AzATTIVITA_ID: TIBStringField;
    ibTab_Anag_AzFAX_A2: TIBStringField;
    ibTab_Anag_AzTEL2_A2: TIBStringField;
    ibTab_Anag_AzTEL1_A2: TIBStringField;
    ibTab_Anag_AzFAX_A1: TIBStringField;
    ibTab_Anag_AzTEL2_A1: TIBStringField;
    ibTab_Anag_AzTEL1_A1: TIBStringField;
    ibTab_Anag_AzID_AZIENDA: TIBStringField;
    ibV_Comuni: TIBQuery;
    ibV_ComuniCOMUNI: TIBStringField;
    ibV_ComuniCODICE: TIBStringField;
    ibV_ComuniCAP: TIBStringField;
    ibV_ComuniPROVINCE: TIBStringField;
    ibqRicerca: TIBQuery;
    ibqCNTR: TIBQuery;
    ibqCNTRCOUNT: TIntegerField;
    ibqTab_Tipo_Cod_Agg: TIBDataSet;
    dsoTab_Tipo_Codice_Agg: TDataSource;
    ibqTab_Tipo_Cod_AggTIPO_CODICE_AGGIUNTIVO: TSmallintField;
    ibqTab_Tipo_Cod_AggDESCR: TIBStringField;
    ibqTab_Tipo_Cod_AggCODICE_OCX: TSmallintField;
    ibTab_Codici_ISONAZIONE_ID: TIntegerField;
    ibTab_Codici_ISODESCR: TIBStringField;
    ibTab_Codici_ISOID_ISO: TIntegerField;
    ibTab_Codici_ISONUM_CHAR_PARTITA_IVA: TSmallintField;
    ibTab_INPSDESCR: TIBStringField;
    ibTab_INPSCODICE: TIBStringField;
    ibTab_LingueDESCR: TIBStringField;
    ibTab_LingueCODICE: TIBStringField;
    ibTab_Natura_GiuridicaSOGGETTI_RESIDENTI: TIBStringField;
    ibTab_Natura_GiuridicaCODICE: TIntegerField;
    ibTab_Natura_GiuridicaDESCR: TIBStringField;
    ibTab_NazioniDESCR: TIBStringField;
    ibTab_NazioniID_NAZIONE: TIntegerField;
    ibTab_NazioniNUMB_CHAR_PARTITA_IVA: TSmallintField;
    ibTab_NazioniMEMBRO_CEE: TSmallintField;
    ibTab_NazioniMONETA_ID: TIBStringField;
    ibTab_NazioniPROVINCIA_ISO: TIBStringField;
    ibTab_NazioniCODICE_PAESE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    Procedure Commit_All_Changes_Retaining;
  private
    { Private declarations }
  public
    { Public declarations }
   Function Set_Connection(strUser, strPwd, strConnStr: String): Boolean;
   function Get_RecCnt_From_Table(strTable: String): Integer;
   (*Function Set_UniPub(asTables,asFields, asOrders: Array of String;strWhere: String;
              intTablesCount,intFieldsCount,intOrdersCount: Integer; bActivate: Boolean): Integer;*)
  end;

var
  dmodPub: TdmodPub;

implementation

{$R *.DFM}

function TdmodPub.Set_Connection(strUser, strPwd, strConnStr: String): Boolean;
begin
 With (ibdbPub) Do
 Begin
  DatabaseName:='';
  DatabaseName:=strConnStr+'GPUBLIC.GDB';
  Params.Clear;
  Params.Add('User_name='+strUser);
  Params.Add('password='+strPwd);
  Open;
  Result:=Connected;
 End;
end;

procedure TdmodPub.DataModuleCreate(Sender: TObject);
begin
{ With (ibdbPub) Do
 Begin
  Close;
  LoginPrompt:=False;
  Params.Clear;
  DatabaseName:='';
 End;}
{ if Not(FileExists('GPublic.gdb')) Then
  Begin
   If (MessageDlg('il "Public" database non esistente.'+
               #13+'Vuole trovare?',
               mtError,[mbOk, mbCancel],0)=mrOK)
    Then If (dlgFindPub.Execute) Then ibdbPub.DatabaseName:=dlgFindPub.FileName
                                 Else
    Else Application.Terminate;
  End
 Else ibdbPub.DatabaseName:='GPublic.gdb';}
 //  ibdbPub.Close;
end;

procedure TdmodPub.Commit_All_Changes_Retaining;
begin
 ibTransPub.CommitRetaining;
end;


(*
// se tutto OK torna 0
// errore torna -1
// nel caso di errore di apertura di tabella torna 0!
// se bActivate=True torna Numero dei records!
Function TdmodPub.Set_UniPub(asTables,asFields, asOrders: Array of String;strWhere: String;
              intTablesCount,intFieldsCount,intOrdersCount: Integer; bActivate: Boolean): Integer;
Var
 iFCntr: Integer;
 strTemp: String;
begin
 Try
  With (ibqUniPub) Do
  Begin
   Active:=False;
   SQL.Clear;
   SQL.Add('SELECT ');
   If (intFieldsCount>1)
    Then
      For iFCntr:=0 To intFieldsCount-1-1 Do
       SQL.Add(asFields[iFCntr]+', ');
   SQL.Add(asFields[intFieldsCount-1]);
   SQL.Add(' FROM ');
   If (intTablesCount>1)
    Then
      For iFCntr:=0 To intTablesCount-1-1 Do
       SQL.Add(asTables[iFCntr]+', ');
   SQL.Add(asTables[intTablesCount-1]);
   If Not(strWhere='')
    Then SQL.Add(' Where '+strWhere);
   SQL.Add(' ORDER BY ');
   If (intOrdersCount>1)
    Then
     For iFCntr:=0 To intOrdersCount-1-1 Do
      SQL.Add(asOrders[iFCntr]+', ');
   SQL.Add(asOrders[intOrdersCount-1]);
   SQL.Add(';');
   strTemp:=SQL.Text;
   If (bActivate)
    Then
     Try
       Active:=True;
       Result:=RecordCount;
     Except
      Result:=0; // errore durante di apertura!
     End
    Else Result:=1;
  End;
 Except
  Result:=-1; // Errore!!!
 End;
end;*)


function TdmodPub.Get_RecCnt_From_Table(strTable: String): Integer;
begin
 Try
   With (ibqCNTR) Do
   Begin
     Close;
     SQL.Clear;
     SQL.Add('Select COUNT(*) From '+strTable);
     Open;
       Result:=FieldByName('COUNT').AsInteger;
     Close;
   End;
 Except
  Result:=-1;
 End;
End;

end.








