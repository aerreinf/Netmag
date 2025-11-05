unit uOrdPrezzi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, IBCustomDataSet, IBQuery;

type
  TfOrdPrezzi = class(TForm)
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1DESCR2: TIBStringField;
    IBQuery1CODICE_IVA_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA1_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA2_ID: TIBStringField;
    IBQuery1UNITA_DI_MISURA3_ID: TIBStringField;
    IBQuery1SCONTO1: TFloatField;
    IBQuery1SCONTO2: TFloatField;
    IBQuery1SCONTO3: TFloatField;
    IBQuery1PROVVIGIONE: TFloatField;
    IBQuery1PESO_NETTO_KG: TFloatField;
    IBQuery1PESO_LORDO_KG: TFloatField;
    IBQuery1SCORTA_MIN: TFloatField;
    IBQuery1SCORTA_MAX: TFloatField;
    IBQuery1LOTTO_RIORDINO: TFloatField;
    IBQuery1GG_APPROVVIGIONAMENTO: TIntegerField;
    IBQuery1QTA_X_CONFEZIONE: TIntegerField;
    IBQuery1ANNO: TIntegerField;
    IBQuery1DESCR_AGGIUNTIVA_ID: TIBStringField;
    IBQuery1PREZZO_BASE: TFloatField;
    IBQuery1COSTO_STANDART: TFloatField;
    IBQuery1TIPO_ARTICOLO_ID: TSmallintField;
    IBQuery1FATT_CONV1: TFloatField;
    IBQuery1FATT_CONV2: TFloatField;
    IBQuery1COSTO_ID: TIntegerField;
    IBQuery1RICAVO_ID: TIntegerField;
    IBQuery1GIORNI_MAX_INVENDUTO: TIntegerField;
    IBQuery1ASPETTO_ID: TIBStringField;
    IBQuery1RIORDINO_MESE_DA: TSmallintField;
    IBQuery1RIORDINO_MESE_A: TSmallintField;
    IBQuery1RIORDINO_GIORNO_DA: TSmallintField;
    IBQuery1RIORDINO_GIORNO_A: TSmallintField;
    IBQuery1STAGIONE_ID: TIBStringField;
    IBQuery1GRUPPO_ALTERNATIVO: TIBStringField;
    IBQuery1PRODUTTORE_ID: TIBStringField;
    IBQuery1CATEGORIA_ARTICOLO_ID: TIBStringField;
    IBQuery1CATEGORIA_MERCEOLOGICA_ID: TIntegerField;
    IBQuery1CODICE_BASE: TIBStringField;
    IBQuery1DERIVATO: TSmallintField;
    IBQuery1VARIANTE1_ID: TIBStringField;
    IBQuery1VARIANTE2_ID: TIBStringField;
    IBQuery1VARIANTE3_ID: TIBStringField;
    IBQuery1NUM_VARIANTI: TIntegerField;
    IBQuery1TIPO_COSTO_ID: TSmallintField;
    IBQuery1TIPO_RICAVO_ID: TSmallintField;
    IBQuery1OMAGGIO: TSmallintField;
    IBQuery1TIPO_CLI_FOR_ID: TSmallintField;
    IBQuery1CLI_FOR_ID: TIntegerField;
    IBQuery1CODE_BAR: TIBStringField;
    IBQuery1DESCR_CODE_BAR: TIBStringField;
    IBQuery1NON_STAMPA_INVENTARIO: TSmallintField;
    IBQuery1NON_STAMPA_REGISTRO: TSmallintField;
    IBQuery1NOMENCLATURA: TIntegerField;
    IBQuery1FATT_CONV1_NOMENCLATURA: TFloatField;
    IBQuery1FATT_CONV2_NOMENCLATURA: TFloatField;
    IBQuery1PROV_ORDINE: TIntegerField;
    IBQuery1COSTO_ULTIMO: TFloatField;
    IBQuery1DATA_COSTO_ULTIMO: TDateTimeField;
    IBQuery1NUM_REPARTO: TIntegerField;
    IBQuery1TIPO_CODE_BAR_ID: TSmallintField;
    IBQuery1CONTO_ACQUISTO: TIntegerField;
    IBQuery1CONTO_VENDITA: TIntegerField;
    IBQuery1UN_MIS2_VAL: TIntegerField;
    IBQuery1UN_MIS3_VAL: TIntegerField;
    IBQuery1CAT_ART_FAMIGLIA_ID: TIntegerField;
    IBQuery1CAT_ART_GRUPPO_ID: TIntegerField;
    IBQuery1CAT_ART_MARCA_ID: TIntegerField;
    IBQuery1FOTO_PERCORSO: TIBStringField;
    IBQuery1CAT_ART_TIPO_ID: TIntegerField;
    IBQuery1FLAG_ACCESSORIE: TIBStringField;
    IBQuery1DATAMOD: TDateTimeField;
    IBQuery1SCONTO4: TFloatField;
    IBQuery1PREZZO_IVATO: TFloatField;
    IBQuery1P2IVATO: TFloatField;
    IBQuery1P3IVATO: TFloatField;
    IBQuery1P4IVATO: TFloatField;
    IBQuery1P5IVATO: TFloatField;
    IBQuery1SC21: TFloatField;
    IBQuery1SC22: TFloatField;
    IBQuery1SC23: TFloatField;
    IBQuery1SC31: TFloatField;
    IBQuery1SC32: TFloatField;
    IBQuery1SC33: TFloatField;
    IBQuery1SC41: TFloatField;
    IBQuery1SC42: TFloatField;
    IBQuery1SC43: TFloatField;
    IBQuery1SC51: TFloatField;
    IBQuery1SC52: TFloatField;
    IBQuery1SC53: TFloatField;
    IBQuery1R2: TFloatField;
    IBQuery1R3: TFloatField;
    IBQuery1R4: TFloatField;
    IBQuery1R5: TFloatField;
    IBQuery1IMP2: TFloatField;
    IBQuery1IMP3: TFloatField;
    IBQuery1IMP4: TFloatField;
    IBQuery1IMP5: TFloatField;
    IBQuery1RICARPREC: TFloatField;
    IBQuery1P6IVATO: TFloatField;
    IBQuery1IMP6: TFloatField;
    IBQuery1STRUTT: TFloatField;
    IBQuery1CA: TFloatField;
    IBQuery1CG: TFloatField;
    IBQuery1AG: TFloatField;
    IBQuery1CA2: TFloatField;
    IBQuery1CG2: TFloatField;
    IBQuery1AG2: TFloatField;
    IBQuery1CA3: TFloatField;
    IBQuery1CG3: TFloatField;
    IBQuery1AG3: TFloatField;
    IBQuery1CA4: TFloatField;
    IBQuery1CG4: TFloatField;
    IBQuery1AG4: TFloatField;
    IBQuery1CA5: TFloatField;
    IBQuery1CG5: TFloatField;
    IBQuery1AG5: TFloatField;
    IBQuery1CA6: TFloatField;
    IBQuery1CG6: TFloatField;
    IBQuery1AG6: TFloatField;
    IBQuery1ID_OFFERTA: TIntegerField;
    IBQuery1CR: TFloatField;
    IBQuery1CR2: TFloatField;
    IBQuery1CR3: TFloatField;
    IBQuery1CR4: TFloatField;
    IBQuery1CR5: TFloatField;
    IBQuery1CR6: TFloatField;
    Label1: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrdPrezzi: TfOrdPrezzi;

implementation

uses uAzDM, uOrdini, uOrdDet;

{$R *.DFM}

procedure TfOrdPrezzi.Button1Click(Sender: TObject);
begin
  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsFloat:=
        IBQuery1.fieldByname('PREZZO_BASE').AsFloat;

  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('AGENTE').AsFloat:=
        IBQuery1.fieldByname('AG').AsFloat;


   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_GRUPPO').AsFloat:=
        IBQuery1.fieldByname('CG').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_REPARTO').AsFloat:=
        IBQuery1.fieldByname('CR').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_AREA').AsFloat:=
        IBQuery1.fieldByname('CA').AsFloat;
close;
end;

procedure TfOrdPrezzi.Button2Click(Sender: TObject);
begin
  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsFloat:=
        IBQuery1.fieldByname('IMP2').AsFloat;

  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('AGENTE').AsFloat:=
        IBQuery1.fieldByname('AG2').AsFloat;


   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_GRUPPO').AsFloat:=
        IBQuery1.fieldByname('CG2').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_REPARTO').AsFloat:=
        IBQuery1.fieldByname('CR2').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_AREA').AsFloat:=
        IBQuery1.fieldByname('CA2').AsFloat;
close;

end;

procedure TfOrdPrezzi.Button3Click(Sender: TObject);
begin
  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsFloat:=
        IBQuery1.fieldByname('IMP3').AsFloat;

  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('AGENTE').AsFloat:=
        IBQuery1.fieldByname('AG3').AsFloat;


   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_GRUPPO').AsFloat:=
        IBQuery1.fieldByname('CG3').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_REPARTO').AsFloat:=
        IBQuery1.fieldByname('CR3').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_AREA').AsFloat:=
        IBQuery1.fieldByname('CA3').AsFloat;
close;

end;

procedure TfOrdPrezzi.Button4Click(Sender: TObject);
begin
  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsFloat:=
        IBQuery1.fieldByname('IMP4').AsFloat;

  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('AGENTE').AsFloat:=
        IBQuery1.fieldByname('AG4').AsFloat;


   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_GRUPPO').AsFloat:=
        IBQuery1.fieldByname('CG4').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_REPARTO').AsFloat:=
        IBQuery1.fieldByname('CR4').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_AREA').AsFloat:=
        IBQuery1.fieldByname('CA4').AsFloat;
close;

end;

procedure TfOrdPrezzi.Button5Click(Sender: TObject);
begin
  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsFloat:=
        IBQuery1.fieldByname('IMP5').AsFloat;

  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('AGENTE').AsFloat:=
        IBQuery1.fieldByname('AG5').AsFloat;


   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_GRUPPO').AsFloat:=
        IBQuery1.fieldByname('CG5').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_REPARTO').AsFloat:=
        IBQuery1.fieldByname('CR5').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_AREA').AsFloat:=
        IBQuery1.fieldByname('CA5').AsFloat;
close;

end;

procedure TfOrdPrezzi.Button6Click(Sender: TObject);
begin
  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('PREZZO_UNITA').AsFloat:=
        IBQuery1.fieldByname('IMP6').AsFloat;

  fArtPerOrd.dsoOrdDet.DataSet.FieldByName('AGENTE').AsFloat:=
        IBQuery1.fieldByname('AG6').AsFloat;


   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_GRUPPO').AsFloat:=
        IBQuery1.fieldByname('CG6').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_REPARTO').AsFloat:=
        IBQuery1.fieldByname('CR6').AsFloat;

   fArtPerOrd.dsoOrdDet.DataSet.FieldByName('CAPO_AREA').AsFloat:=
        IBQuery1.fieldByname('CA6').AsFloat;
close;

end;

end.
