unit uCopiaDist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls;

type
  TfCopiaDist = class(TForm)
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    IBQuery1PK_CODICE: TIntegerField;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR_ARTICOLO: TIBStringField;
    IBQuery1MANODOPERA: TFloatField;
    IBQuery1RICAMO: TFloatField;
    IBQuery1FASONISTA: TFloatField;
    IBQuery1SITUAZIONE: TFloatField;
    IBQuery1COPPE: TFloatField;
    IBQuery1ACCESSORI: TFloatField;
    IBQuery1ALTRO1: TFloatField;
    IBQuery1ALTRO2: TFloatField;
    IBQuery1ALTRO3: TFloatField;
    IBQuery1ALTRO4: TFloatField;
    IBQuery1COSTO: TFloatField;
    IBQuery1RICAR1PERC: TFloatField;
    IBQuery1RICAR2PERC: TFloatField;
    IBQuery1RICAR_LIRE: TFloatField;
    IBQuery1PREZZO_VENDITA: TFloatField;
    IBQuery1COSTO_ACCESS_TOTALE: TFloatField;
    IBQuery1COSTO_TOTALE: TFloatField;
    IBQuery1DATA_CREAZIONE: TDateTimeField;
    IBQuery1CODCLI: TIntegerField;
    IBQuery1RICAR_LIRE2: TFloatField;
    DataSource1: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    IBQuery1ID_CLI_FOR: TIntegerField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DENOMINAZIONE: TIBStringField;
    IBQuery1COGNOME: TIBStringField;
    IBQuery1NOME: TIBStringField;
    IBQuery1NOME_ALTRO: TIBStringField;
    IBQuery1FULL_NAME: TIBStringField;
    IBQuery1INDIRIZZO: TIBStringField;
    IBQuery1COMUNE_ID: TIntegerField;
    IBQuery1PARTITA_IVA: TIBStringField;
    IBQuery1CODICE_FISCALE: TIBStringField;
    IBQuery1PERSONA_FISICA: TSmallintField;
    IBQuery1PIANO_CONTI_ID: TIntegerField;
    IBQuery1CONTO_CORRENTE: TIBStringField;
    IBQuery1MONETA_ID: TIBStringField;
    IBQuery1PAGAMENTO_ID: TIBStringField;
    IBQuery1CODICE_ZONA_ID: TIBStringField;
    IBQuery1CODICE_SOTTO_ZONA_ID: TIBStringField;
    IBQuery1CATEGORIA_CLIENTE_ID: TIBStringField;
    IBQuery1AGENTE_ID: TIBStringField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1LINGUA_ID: TIBStringField;
    IBQuery1CODICE_LISTINO: TIBStringField;
    IBQuery1SCONTO_TESTATA1: TFloatField;
    IBQuery1SCONTO_TESTATA2: TFloatField;
    IBQuery1TEL1: TIBStringField;
    IBQuery1TEL2: TIBStringField;
    IBQuery1FAX: TIBStringField;
    IBQuery1EMAIL: TIBStringField;
    IBQuery1INTERNET: TIBStringField;
    IBQuery1DATA_DI_NASCITA: TDateTimeField;
    IBQuery1SESSO: TIntegerField;
    IBQuery1TITOLO_ID: TIntegerField;
    IBQuery1PORTO_ID: TIBStringField;
    IBQuery1FIDO: TFloatField;
    IBQuery1ABILITA_PARTITA: TSmallintField;
    IBQuery1FATTURA_RIEPILOGATIVA: TIntegerField;
    IBQuery1ACCORPA_ARTICOLI: TSmallintField;
    IBQuery1IVA_SOSPESA: TSmallintField;
    IBQuery1POS_RIF_BOLLE: TSmallintField;
    IBQuery1CODICE_IVA_ESENTE: TIBStringField;
    IBQuery1RIP_RIF_BOLLE: TIntegerField;
    IBQuery1ESCLUDI_MESE1: TIntegerField;
    IBQuery1RIP_RIF_ORDINI: TIntegerField;
    IBQuery1ESCLUDI_MESE2: TIntegerField;
    IBQuery1TIPO_CONTO_ID: TSmallintField;
    IBQuery1NAZIONE_ID: TIntegerField;
    IBQuery1NAZIONE_DI_NASCITA_ID: TIntegerField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1RISCHIO: TFloatField;
    IBQuery1GG_SCADENZA1: TIntegerField;
    IBQuery1GG_SCADENZA2: TIntegerField;
    IBQuery1CONTROPARTITA_ID: TIntegerField;
    IBQuery1TIPO_CONTROPARTITA: TSmallintField;
    IBQuery1CERTIFICATO: TSmallintField;
    IBQuery1DENOMINAZIONE2: TIBStringField;
    IBQuery1INDIRIZZO2: TIBStringField;
    IBQuery1LOCALITA: TIBStringField;
    IBQuery1COMUNE_DI_NASCITA_ID: TIntegerField;
    IBQuery1CAB_ID: TIBStringField;
    IBQuery1ABI_ID: TIBStringField;
    IBQuery1TITOLO_DESCR: TIBStringField;
    IBQuery1COMNASC_DESCR: TIBStringField;
    IBQuery1CAPNASC_DESCR: TIBStringField;
    IBQuery1NAZNASC_DESCR: TIBStringField;
    IBQuery1COM_DESCR: TIBStringField;
    IBQuery1CAP_DESCR: TIBStringField;
    IBQuery1PR_DESCR: TIBStringField;
    IBQuery1CAB_DESCR: TIBStringField;
    IBQuery1ABI_DESCR: TIBStringField;
    IBQuery1NAZ_DESCR: TIBStringField;
    IBQuery1FASON: TIBStringField;
    IBQuery1NOTE: TIBStringField;
    IBQuery1CG: TIBStringField;
    IBQuery1CA: TIBStringField;
    IBQuery1COD2: TIBStringField;
    IBQuery1CR: TIBStringField;
    Button1: TButton;
    DBGrid2: TDBGrid;
    IBQuery2: TIBQuery;
    IBQuery2FK_DISTINTE: TIntegerField;
    IBQuery2CODICE_ARTICOLO: TIBStringField;
    IBQuery2DESCR_ARTICOLO: TIBStringField;
    IBQuery2QTA: TFloatField;
    IBQuery2COSTO: TFloatField;
    IBQuery2PREZZO: TFloatField;
    IBQuery2FLAG_SCATOLO: TIBStringField;
    IBQuery2PK_CODICE: TIntegerField;
    DataSource2: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCopiaDist: TfCopiaDist;

implementation

uses uAzDM, frmuVisDistinta;

{$R *.dfm}

procedure TfCopiaDist.FormShow(Sender: TObject);
begin
IBQuery1.Open;
IBQuery2.Open;
end;

procedure TfCopiaDist.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfCopiaDist.DBGrid1DblClick(Sender: TObject);
begin
frmVisDistinta.dsDistinte.DataSet.FieldByName('MANODOPERA').AsFloat :=
        IBQuery1MANODOPERA.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('RICAMO').AsFloat :=
        IBQuery1RICAMO.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('FASONISTA').AsFloat :=
        IBQuery1FASONISTA.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('SITUAZIONE').AsFloat :=
        IBQuery1SITUAZIONE.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('COSTO_ACCESS_TOTALE').AsFloat :=
        IBQuery1COSTO_ACCESS_TOTALE.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('COPPE').AsFloat :=
        IBQuery1COPPE.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('ACCESSORI').AsFloat :=
        IBQuery1ACCESSORI.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('ALTRO1').AsFloat :=
        IBQuery1ALTRO1.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('ALTRO2').AsFloat :=
        IBQuery1ALTRO2.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('ALTRO3').AsFloat :=
        IBQuery1ALTRO3.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('ALTRO4').AsFloat :=
        IBQuery1ALTRO4.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('COSTO').AsFloat :=
        IBQuery1COSTO.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('RICAR1PERC').AsFloat :=
        IBQuery1RICAR1PERC.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('RICAR2PERC').AsFloat :=
        IBQuery1RICAR2PERC.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('RICAR_LIRE').AsFloat :=
        IBQuery1RICAR_LIRE.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('RICAR_LIRE2').AsFloat :=
        IBQuery1RICAR_LIRE2.AsFloat;
frmVisDistinta.dsDistinte.DataSet.FieldByName('PREZZO_VENDITA').AsFloat :=
        IBQuery1PREZZO_VENDITA.AsFloat;

IBQuery2.First;
while not ibquery2.eof do
begin
frmVisDistinta.dsDistinte_Det.DataSet.Insert;
frmVisDistinta.dsDistinte_Det.DataSet.FieldByName('CODICE_ARTICOLO').AsString :=
        IBQuery2CODICE_ARTICOLO.AsString;
frmVisDistinta.dsDistinte_Det.DataSet.FieldByName('DESCR_ARTICOLO').AsString :=
        IBQuery2DESCR_ARTICOLO.AsString;
frmVisDistinta.dsDistinte_Det.DataSet.FieldByName('QTA').AsFloat :=
        IBQuery2QTA.AsFloat;
frmVisDistinta.dsDistinte_Det.DataSet.FieldByName('COSTO').AsFloat :=
        IBQuery2COSTO.AsFloat;
frmVisDistinta.dsDistinte_Det.DataSet.FieldByName('PREZZO').AsFloat :=
        IBQuery2PREZZO.AsFloat;
frmVisDistinta.dsDistinte_Det.DataSet.FieldByName('FLAG_SCATOLO').AsString :=
        IBQuery2FLAG_SCATOLO.AsString;
frmVisDistinta.dsDistinte_Det.DataSet.FieldByName('FK_DISTINTE').AsInteger :=
        StrToInt(frmVisDistinta.DBEdit2.text);

frmVisDistinta.dsDistinte_Det.DataSet.Post;
IBQuery2.Next;
end;


Close;
end;

end.
