unit uStatistiche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, Menus;

type
  TfStatistiche = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ibFattMens: TIBDataSet;
    ibFattMensMESE: TSmallintField;
    ibFattMensTIPO_DOC: TIntegerField;
    ibFattMensCAUSALE_MAGAZZINO: TIBStringField;
    ibFattMensIMPONIB: TFloatField;
    ibFattMensSPESE: TFloatField;
    ibFattMensTOT_IVATO: TFloatField;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    ibFattMensDESCR_CAU: TStringField;
    BitBtn3: TBitBtn;
    ibTotFor: TIBDataSet;
    ibTotForCLIFOR_ID: TIntegerField;
    ibTotForDENOMINAZIONE: TIBStringField;
    ibTotForIMPONIB: TFloatField;
    ibTotForIVATO: TFloatField;
    ibTotForSPESE: TFloatField;
    BitBtn4: TBitBtn;
    ibTotCli: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    ibTotForMen: TIBDataSet;
    ibTotForMenMESE: TSmallintField;
    ibTotForMenCLIFOR_ID: TIntegerField;
    ibTotForMenDENOMINAZIONE: TIBStringField;
    ibTotForMenIMPONIB: TFloatField;
    ibTotForMenIVATO: TFloatField;
    ibTotForMenSPESE: TFloatField;
    ibTotCliMen: TIBDataSet;
    SmallintField1: TSmallintField;
    IntegerField2: TIntegerField;
    IBStringField2: TIBStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure stampeClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fStatistiche: TfStatistiche;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfStatistiche.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TfStatistiche.BitBtn1Click(Sender: TObject);
var
Scelta : String;
begin
ibFattMens.Open;
scelta:=InputBox('Scegliere la Stampa :','1)Tutti i Docum. - 2)Solo Acq. e Vendite','1');
   With (dmodAz.rePRN) Do
   Begin
if scelta='1' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'fStFattMensile1.frf');
if scelta='2' then
     LoadFromFile(ExtractFilePath(Application.ExeName)+'fStFattMensile2.frf');

     ShowReport;
End;
ibFattMens.Close;
end;

procedure TfStatistiche.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

procedure TfStatistiche.BitBtn3Click(Sender: TObject);
var
Scelta,Scelta1,Scelta2 : String;
begin
scelta2:=InputBox('Scegliere la Stampa :','1)Totali - 2)Mensili','1');
scelta:=InputBox('Scegliere la Stampa :','1)Solo Fatture - 2)Con bolle Carico','1');
scelta1:=InputBox('Scegliere l ordinamento :','1) x Ragione Sociale - 2) x Importo - 3) x Spese','1');

if scelta2='1' then
begin
ibTotFor.Close;
ibTotFor.SelectSQL.Clear;
ibTotFor.SelectSQL.Add('select distinct clifor_id,tab_cli_for.denominazione,');
ibTotFor.SelectSQL.Add('sum(totale) as IMPONIB,sum(totale_ivato) as IVATO,');
ibTotFor.SelectSQL.Add('sum(TOT_SPESE) as SPESE from tab_documenti');
ibTotFor.SelectSQL.Add('join tab_cli_for');
ibTotFor.SelectSQL.Add('on tab_documenti.clifor_id=tab_cli_for.id_cli_for');
ibTotFor.SelectSQL.Add('where (tipo_doc=24) or (tipo_doc=27)');
if scelta='2' then
ibTotFor.SelectSQL.Add(' or (tipo_doc=211)');
ibTotFor.SelectSQL.Add('group by clifor_id,tab_cli_for.denominazione');
if scelta1='1' then
ibTotFor.SelectSQL.Add('order by 2 ');
if scelta1='2' then
ibTotFor.SelectSQL.Add('order by 3 desc');
if scelta1='3' then
ibTotFor.SelectSQL.Add('order by 5 desc');


ibTotFor.Open;
With (dmodAz.rePRN) Do
Begin
LoadFromFile(ExtractFilePath(Application.ExeName)+'fStFattFor.frf');
ShowReport;
end;
end;
if scelta2='2' then
begin
ibTotForMen.Close;
ibTotForMen.SelectSQL.Clear;
ibTotForMen.SelectSQL.Add('select distinct mese,clifor_id,tab_cli_for.denominazione,');
ibTotForMen.SelectSQL.Add('sum(totale) as IMPONIB,sum(totale_ivato) as IVATO,');
ibTotForMen.SelectSQL.Add('sum(TOT_SPESE) as SPESE from FATT_MENSILE_DETT');
ibTotForMen.SelectSQL.Add('join tab_cli_for');
ibTotForMen.SelectSQL.Add('on FATT_MENSILE_DETT.clifor_id=tab_cli_for.id_cli_for');
ibTotForMen.SelectSQL.Add('where (tipo_doc=24) or (tipo_doc=27)');
if scelta='2' then
ibTotForMen.SelectSQL.Add(' or (tipo_doc=211)');
ibTotForMen.SelectSQL.Add('group by mese,clifor_id,tab_cli_for.denominazione');
if scelta1='1' then
ibTotForMen.SelectSQL.Add('order by 1,3 ');
if scelta1='2' then
ibTotForMen.SelectSQL.Add('order by 1,4 desc');
if scelta1='3' then
ibTotForMen.SelectSQL.Add('order by 1,6 desc');


ibTotForMen.Open;
With (dmodAz.rePRN) Do
Begin
LoadFromFile(ExtractFilePath(Application.ExeName)+'fStFattForMen.frf');
ShowReport;
end;



end;

end;

procedure TfStatistiche.BitBtn4Click(Sender: TObject);
var
Scelta,Scelta1,Scelta2 : String;
begin
scelta2:=InputBox('Scegliere la Stampa :','1)Totali - 2)Mensili','1');
scelta:=InputBox('Scegliere la Stampa :','1)Solo Fatture - 2)Con bolle Scarico e Vendita al Banco','1');
scelta1:=InputBox('Scegliere l ordinamento :','1) x Ragione Sociale - 2) x Importo - 3) x Spese','1');
if scelta2='1' then
begin
ibTotCli.Close;
ibTotCli.SelectSQL.Clear;
ibTotCli.SelectSQL.Add('select distinct clifor_id,tab_cli_for.denominazione,');
ibTotCli.SelectSQL.Add('sum(totale) as IMPONIB,sum(totale_ivato) as IVATO,');
ibTotCli.SelectSQL.Add('sum(TOT_SPESE) as SPESE from tab_documenti');
ibTotCli.SelectSQL.Add('join tab_cli_for');
ibTotCli.SelectSQL.Add('on tab_documenti.clifor_id=tab_cli_for.id_cli_for');
ibTotCli.SelectSQL.Add('where (tipo_doc=14) or (tipo_doc=17)');
if scelta='2' then
ibTotCli.SelectSQL.Add(' or (tipo_doc=210) or (tipo_doc=350)');
ibTotCli.SelectSQL.Add('group by clifor_id,tab_cli_for.denominazione');
if scelta1='1' then
ibTotCli.SelectSQL.Add('order by 2 ');
if scelta1='2' then
ibTotCli.SelectSQL.Add('order by 3 desc');
if scelta1='3' then
ibTotCli.SelectSQL.Add('order by 5 desc');

ibTotCli.Open;
With (dmodAz.rePRN) Do
Begin
LoadFromFile(ExtractFilePath(Application.ExeName)+'fStFattCli.frf');
ShowReport;
end;
end;
if scelta2='2' then
begin
ibTotCliMen.Close;
ibTotCliMen.SelectSQL.Clear;
ibTotCliMen.SelectSQL.Add('select distinct mese,clifor_id,tab_cli_for.denominazione,');
ibTotCliMen.SelectSQL.Add('sum(totale) as IMPONIB,sum(totale_ivato) as IVATO,');
ibTotCliMen.SelectSQL.Add('sum(TOT_SPESE) as SPESE from FATT_MENSILE_DETT');
ibTotCliMen.SelectSQL.Add('join tab_cli_for');
ibTotCliMen.SelectSQL.Add('on FATT_MENSILE_DETT.clifor_id=tab_cli_for.id_cli_for');
ibTotCliMen.SelectSQL.Add('where (tipo_doc=14) or (tipo_doc=17)');
if scelta='2' then
ibTotCliMen.SelectSQL.Add(' or (tipo_doc=210) or (tipo_doc=350)');
ibTotCliMen.SelectSQL.Add('group by mese,clifor_id,tab_cli_for.denominazione');
if scelta1='1' then
ibTotCliMen.SelectSQL.Add('order by 1,3 ');
if scelta1='2' then
ibTotCliMen.SelectSQL.Add('order by 1,4 desc');
if scelta1='3' then
ibTotCliMen.SelectSQL.Add('order by 1,6 desc');


ibTotCliMen.Open;
With (dmodAz.rePRN) Do
Begin
LoadFromFile(ExtractFilePath(Application.ExeName)+'fStFattCliMen.frf');
ShowReport;
end;
end;

end;
end.
