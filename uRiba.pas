unit uRiba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, CurrEdit, RXDBCtrl, Mask, ToolEdit,
  RxLookup, Buttons, Grids, DBGrids, DB, IBCustomDataSet, Menus;

type
  TfRiba = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ibRiba: TIBDataSet;
    DataSource1: TDataSource;
    ibCliFor: TIBDataSet;
    ibCab: TIBDataSet;
    ibAbi: TIBDataSet;
    ibCliForID_CLI_FOR: TIntegerField;
    ibCliForTIPO: TSmallintField;
    ibCliForDENOMINAZIONE: TIBStringField;
    ibCliForCOGNOME: TIBStringField;
    ibCliForNOME: TIBStringField;
    ibCliForNOME_ALTRO: TIBStringField;
    ibCliForFULL_NAME: TIBStringField;
    ibCliForINDIRIZZO: TIBStringField;
    ibCliForCOMUNE_ID: TIntegerField;
    ibCliForPARTITA_IVA: TIBStringField;
    ibCliForCODICE_FISCALE: TIBStringField;
    ibCliForPERSONA_FISICA: TSmallintField;
    ibCliForPIANO_CONTI_ID: TIntegerField;
    ibCliForCONTO_CORRENTE: TIBStringField;
    ibCliForMONETA_ID: TIBStringField;
    ibCliForPAGAMENTO_ID: TIBStringField;
    ibCliForCODICE_ZONA_ID: TIBStringField;
    ibCliForCODICE_SOTTO_ZONA_ID: TIBStringField;
    ibCliForCATEGORIA_CLIENTE_ID: TIBStringField;
    ibCliForAGENTE_ID: TIBStringField;
    ibCliForPROVVIGIONE: TFloatField;
    ibCliForLINGUA_ID: TIBStringField;
    ibCliForCODICE_LISTINO: TIBStringField;
    ibCliForSCONTO_TESTATA1: TFloatField;
    ibCliForSCONTO_TESTATA2: TFloatField;
    ibCliForTEL1: TIBStringField;
    ibCliForTEL2: TIBStringField;
    ibCliForFAX: TIBStringField;
    ibCliForEMAIL: TIBStringField;
    ibCliForINTERNET: TIBStringField;
    ibCliForDATA_DI_NASCITA: TDateTimeField;
    ibCliForSESSO: TIntegerField;
    ibCliForTITOLO_ID: TIntegerField;
    ibCliForPORTO_ID: TIBStringField;
    ibCliForFIDO: TFloatField;
    ibCliForABILITA_PARTITA: TSmallintField;
    ibCliForFATTURA_RIEPILOGATIVA: TIntegerField;
    ibCliForACCORPA_ARTICOLI: TSmallintField;
    ibCliForIVA_SOSPESA: TSmallintField;
    ibCliForPOS_RIF_BOLLE: TSmallintField;
    ibCliForCODICE_IVA_ESENTE: TIBStringField;
    ibCliForRIP_RIF_BOLLE: TIntegerField;
    ibCliForESCLUDI_MESE1: TIntegerField;
    ibCliForRIP_RIF_ORDINI: TIntegerField;
    ibCliForESCLUDI_MESE2: TIntegerField;
    ibCliForTIPO_CONTO_ID: TSmallintField;
    ibCliForNAZIONE_ID: TIntegerField;
    ibCliForNAZIONE_DI_NASCITA_ID: TIntegerField;
    ibCliForRAGGRUPPAMENTO_ID: TIBStringField;
    ibCliForRISCHIO: TFloatField;
    ibCliForGG_SCADENZA1: TIntegerField;
    ibCliForGG_SCADENZA2: TIntegerField;
    ibCliForCONTROPARTITA_ID: TIntegerField;
    ibCliForTIPO_CONTROPARTITA: TSmallintField;
    ibCliForCERTIFICATO: TSmallintField;
    ibCliForDENOMINAZIONE2: TIBStringField;
    ibCliForINDIRIZZO2: TIBStringField;
    ibCliForLOCALITA: TIBStringField;
    ibCliForCOMUNE_DI_NASCITA_ID: TIntegerField;
    ibCliForCAB_ID: TIBStringField;
    ibCliForABI_ID: TIBStringField;
    ibCliForTITOLO_DESCR: TIBStringField;
    ibCliForCOMNASC_DESCR: TIBStringField;
    ibCliForCAPNASC_DESCR: TIBStringField;
    ibCliForNAZNASC_DESCR: TIBStringField;
    ibCliForCOM_DESCR: TIBStringField;
    ibCliForCAP_DESCR: TIBStringField;
    ibCliForPR_DESCR: TIBStringField;
    ibCliForCAB_DESCR: TIBStringField;
    ibCliForABI_DESCR: TIBStringField;
    ibCliForNAZ_DESCR: TIBStringField;
    ibCliForFASON: TIBStringField;
    ibCliForNOTE: TIBStringField;
    ibCliForCG: TIBStringField;
    ibCliForCA: TIBStringField;
    ibCliForCOD2: TIBStringField;
    ibCliForCR: TIBStringField;
    dsCli: TDataSource;
    dsCab: TDataSource;
    dsAbi: TDataSource;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label12: TLabel;
    IBDataSet1: TIBDataSet;
    DataSource2: TDataSource;
    ibAbi2: TIBDataSet;
    dsabi2: TDataSource;
    ibAbiDESCR: TIBStringField;
    ibAbiID_ABI: TIBStringField;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    ibRibaPK_CODICE: TIntegerField;
    ibRibaDATA_PAG: TDateField;
    ibRibaDATA_DOC: TDateField;
    ibRibaNUM_DOC: TIntegerField;
    ibRibaDOC_ID: TIntegerField;
    ibRibaDESCR_MOV: TIBStringField;
    ibRibaIMPORTO: TFloatField;
    ibRibaCLIFOR_ID: TIntegerField;
    ibRibaTIPO_CLIFOR: TSmallintField;
    ibRibaBANCA_ID: TIBStringField;
    ibRibaBANCA_DESCR: TIBStringField;
    ibRibaNOTE: TIBStringField;
    ibRibaDEPOSITO_CODICE: TIBStringField;
    ibRibaDEPOSITO_DESCR: TIBStringField;
    ibRibaDESCR_IMPORTO: TIBStringField;
    ibRibaCLIFOR_DESCR: TIBStringField;
    ibRibaINCASS_BANCA: TIBStringField;
    ibRibaINCASS_CAB: TIBStringField;
    ibRibaINCASS_ABI: TIBStringField;
    ibRibaINCASS_LOCALITA: TIBStringField;
    ibRibaCAUSALE: TIBStringField;
    ibRibaINCASS_COMUNE: TIBStringField;
    ibRibaINCASS_PROV: TIBStringField;
    ibRibaINCASS_DESCR: TIBStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBCalcEdit1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo7Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Pulsanti(boolMode: Boolean);
    Procedure Apri;
    function NLettera(VValore:real):string;
  public
    { Public declarations }
  end;

var
  fRiba: TfRiba;

implementation

uses uAzDM;

{$R *.dfm}

function TfRiba.NLettera(VValore:real):string;
const N1A20:array[0..29] of
string[12]=('','uno','due','tre','quattro','cinque',
'sei','sette','otto','nove','dieci','unidici','dodici','tredici','quattordici',
'quindici','sedici','dicciasette','diciotto','diccianove','venti','ventuno','ventidue',
'ventitre','ventiquattro','venticinque','ventisei','ventisette','ventotto','ventinove');
const N20A90:array[2..10] of
string[10]=('vent','trent','quarant','cinquant','sessant',
'settant','ttant','novant','cento');
const N0A100:array[0..9] of
string[12]=('','cento','duecento','trecento','quattrocento',
'cinquecento','seicento','settecento','ottocento','novecento');

var I,C,LCR,D,U,DU       :integer;
    RR                   :real;
    S1,S2,S3,Ch,Cs,Cv    :string[3];
    SSZ,SCR,SSV          :string[9];
    LValore              :string[15];
    SN1,SN2,SN3          :string[25];
    SNC,SND,SNU          :string[50];
begin
I:=0;LCR:=0;
S1:=''; S2:=''; S3:=''; LValore:='';
SSZ:='000000000';SCR:=''; SSV:='';
SN1:=''; SN2:=''; SN3:=''; SNC:='';
LValore:=FloatToStr(Int(VValore));
SSZ[0]:=chr(9-length(LValore));
SCR:=SSZ+LValore;
(*Edit3.Text:='';*)
for I:=1 to 3 do
begin
S1:=S1+SCR[I]; S2:=S2+SCR[I+3]; S3:=S3+SCR[I+6];
end;
C:=0; D:=0; U:=0; DU:=0; Ch:=''; Cs:=''; Cv:='';
C:=StrToInt(S1[1]); D:=StrToInt(S1[2]); U:=StrToInt(S1[3]); DU:=D*10+U;
if (C>0) or (DU>0) then begin
SN1:=N0A100[C];
if DU<30 then begin
SN2:=N1A20[DU]; SN3:='';
end
else begin
if DU=1 then Ch:='' else Ch:='a';
if ((DU>29) and (U=1)) then Ch:='' else Ch:='a';
if ((C=0) and (D=8)) then Cv:='o';
if ((D>2) and (U=8)) then Ch:='';
SN2:=Cv+N20A90[D]+Ch+Cs; SN3:=N1A20[U];
end;
if C*100+D*10+U>0 then
begin
if C*100+D*10+U>1 then
begin
SSV:='milioni';
SNC:=SN1+SN2+SN3+SSV;
end
else if C*100+D*10+U=1 then SNC:='unmilione';
end;
end;

I:=0;LCR:=0;
S1:=''; S2:=''; S3:='';
SSZ:='000000000';SCR:=''; SSV:='';
SN1:=''; SN2:=''; SN3:=''; SND:='';
SSZ[0]:=chr(9-length(LValore));
SCR:=SSZ+LValore;
C:=0; D:=0; U:=0; DU:=0; Ch:=''; Cs:=''; Cv:='';
C:=StrToInt(S2[1]); D:=StrToInt(S2[2]); U:=StrToInt(S2[3]); DU:=D*10+U;
if (C>0) or (DU>0) then begin
SN1:=N0A100[C];
if DU<30 then begin
SN2:=N1A20[DU]; SN3:='';
end
else begin
if DU=1 then Ch:='' else Ch:='a';
if ((DU>29) and (U=1)) then Ch:='' else Ch:='a';
if ((C=0) and (D=8)) then Cv:='o';
if ((D>2) and (U=8)) then Ch:='';
SN2:=Cv+N20A90[D]+Ch+Cs; SN3:=N1A20[U];
end;
if C*100+D*10+U>0 then
begin
if C*100+D*10+U>1 then
begin
SSV:='mila';
SND:=SN1+SN2+SN3+SSV;
end
else if C*100+D*10+U=1 then SND:='mille';
end;
end;

I:=0;LCR:=0;
S1:=''; S2:=''; S3:='';
SSZ:='000000000';SCR:=''; SSV:='';
SN1:=''; SN2:=''; SN3:=''; SNU:='';
SSZ[0]:=chr(9-length(LValore));
SCR:=SSZ+LValore;
C:=0; D:=0; U:=0; DU:=0; Ch:=''; Cs:=''; Cv:='';
C:=StrToInt(S3[1]); D:=StrToInt(S3[2]); U:=StrToInt(S3[3]); DU:=D*10+U;
if (C>0) or (DU>0) then begin
SN1:=N0A100[C];
if DU<30 then begin
SN2:=N1A20[DU]; SN3:='';
end
else begin
if DU=1 then Ch:='' else Ch:='a';
if ((DU>29) and (U=1)) then Ch:='' else Ch:='a';
if ((C=0) and (D=8)) then Cv:='o';
if ((D>2) and (U=8)) then Ch:='';
SN2:=Cv+N20A90[D]+Ch+Cs; SN3:=N1A20[U];
end;
if C*100+D*10+U>0 then SNU:=SN1+SN2+SN3;
end;
RR:=frac(VValore);
S1:=Format('%*.*f', [2, 0, (RR*100)]);
NLettera:=SNC+SND+SNU+'//'+S1;
end;

procedure TfRiba.Pulsanti(boolMode: Boolean);
begin
 SpeedButton1.Enabled:=boolMode;
 SpeedButton2.Enabled:=boolMode;
 SpeedButton4.Enabled:=Not(boolMode);
 SpeedButton3.Enabled:=Not(boolMode);
 SpeedButton5.Enabled:=boolMode;
end;

procedure TfRiba.SpeedButton1Click(Sender: TObject);
begin
Apri;
Pulsanti(False);
DBDateEdit1.SetFocus;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 DataSource1.DataSet.Insert;

end;

procedure TfRiba.SpeedButton2Click(Sender: TObject);
begin
If (DataSource1.dataset.isEmpty)
Then Exit;
Pulsanti(False);
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
 DataSource1.DataSet.Edit;
 DBDateEdit1.SetFocus;
end;

procedure TfRiba.SpeedButton3Click(Sender: TObject);
var
savep : TBookmark;
begin
Pulsanti(True);
savep := DataSource1.DataSet.GetBookmark;
dmodAz.ibtrDef.Rollback;
Apri;
 DataSource1.DataSet.GotoBookmark(savep);
 DataSource1.DataSet.FreeBookmark(savep);
end;

procedure TfRiba.SpeedButton4Click(Sender: TObject);
var
savep : TBookmark;
begin
Pulsanti(True);
try
 begin
 DataSource1.DataSet.Post;
 savep := DataSource1.DataSet.GetBookmark;
 dmodAz.ibtrDef.Commit
end
except
 dmodAz.ibtrDef.Rollback
end;
Apri;
 DataSource1.DataSet.GotoBookmark(savep);
 DataSource1.DataSet.FreeBookmark(savep);

If (MessageDlg('Stampare?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then SpeedButton7.Click;

end;

procedure TfRiba.SpeedButton5Click(Sender: TObject);
begin
If (DataSource1.dataset.isEmpty)
Then Exit;
 If (Application.messagebox('Eliminare?','attenzione',mb_yesno+mb_iconhand)=id_no)
    Then Exit;
  inherited;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
try
 begin
 DataSource1.DataSet.Delete;
 dmodAz.ibtrDef.Commit
end
except
 dmodAz.ibtrDef.Rollback
end;
Apri;
end;

procedure TfRiba.FormShow(Sender: TObject);
begin
Apri;
end;

procedure TfRiba.Apri;
begin
ibRiba.Open;
ibCliFor.Open;
ibAbi.Open;
ibCab.Open;
ibAbi2.Open;
end;

procedure TfRiba.RxDBCalcEdit1Change(Sender: TObject);
begin
DBEdit1.Text := NLettera(RxDBCalcEdit1.Value);
end;

procedure TfRiba.RxDBLookupCombo2Change(Sender: TObject);
begin
RxDBLookupCombo7.KeyValue := dsabi2.DataSet.fieldvalues['id_Abi'];
end;

procedure TfRiba.RxDBLookupCombo7Change(Sender: TObject);
begin
RxDBLookupCombo2.KeyValue := dsabi.DataSet.fieldvalues['descr'];
end;

procedure TfRiba.RxDBLookupCombo3Change(Sender: TObject);
begin
RxDBLookupCombo5.KeyValue := dsabi2.DataSet.fieldvalues['id_Abi'];
END;

procedure TfRiba.RxDBLookupCombo5Change(Sender: TObject);
begin
RxDBLookupCombo3.KeyValue := dsabi.DataSet.fieldvalues['descr'];
end;

procedure TfRiba.RxDBLookupCombo4Change(Sender: TObject);
begin
RxDBLookupCombo6.KeyValue  :=  dsCab.DataSet.fieldvalues['INDIRIZZO'];
RxDBLookupCombo10.KeyValue := dsCab.DataSet.fieldvalues['DESCR'];
RxDBLookupCombo8.KeyValue  :=  dsCab.DataSet.fieldvalues['COMUNE'];
RxDBLookupCombo9.KeyValue  :=  dsCab.DataSet.fieldvalues['PROV'];
end;

procedure TfRiba.SpeedButton6Click(Sender: TObject);
begin
Close;
end;

procedure TfRiba.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfRiba.SpeedButton7Click(Sender: TObject);
begin
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frStRiba1.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;

  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frStRiba1.frf');
     ShowReport;
  End;

end;

end.
