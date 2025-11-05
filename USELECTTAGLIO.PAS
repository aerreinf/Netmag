unit uselectTaglio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, Buttons;

type
  TfSelectTaglio = class(TForm)
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    IBQuery1PK_CODICE: TIntegerField;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1DATA: TDateField;
    IBQuery1NUMERO: TIntegerField;
    IBQuery1NUMERO_A: TIBStringField;
    IBQuery1TOTALE: TIntegerField;
    IBQuery1DIPENDENTE: TIBStringField;
    IBQuery1FASONISTA: TIBStringField;
    IBQuery1CLIENTE: TIBStringField;
    IBQuery1TAGLIA0: TIBStringField;
    IBQuery1TAGLIA1: TIBStringField;
    IBQuery1TAGLIA2: TIBStringField;
    IBQuery1TAGLIA3: TIBStringField;
    IBQuery1TAGLIA4: TIBStringField;
    IBQuery1TAGLIA5: TIBStringField;
    IBQuery1TAGLIA6: TIBStringField;
    IBQuery1TAGLIA7: TIBStringField;
    IBQuery1TAGLIA8: TIBStringField;
    IBQuery1TAGLIA9: TIBStringField;
    IBQuery1COLORE0: TIBStringField;
    IBQuery1COLORE1: TIBStringField;
    IBQuery1COLORE2: TIBStringField;
    IBQuery1COLORE3: TIBStringField;
    IBQuery1COLORE4: TIBStringField;
    IBQuery1COLORE5: TIBStringField;
    IBQuery1COLORE6: TIBStringField;
    IBQuery1COLORE7: TIBStringField;
    IBQuery1COLORE8: TIBStringField;
    IBQuery1COLORE9: TIBStringField;
    IBQuery1QTA00: TIntegerField;
    IBQuery1QTA01: TIntegerField;
    IBQuery1QTA02: TIntegerField;
    IBQuery1QTA03: TIntegerField;
    IBQuery1QTA04: TIntegerField;
    IBQuery1QTA05: TIntegerField;
    IBQuery1QTA06: TIntegerField;
    IBQuery1QTA07: TIntegerField;
    IBQuery1QTA08: TIntegerField;
    IBQuery1QTA09: TIntegerField;
    IBQuery1QTA10: TIntegerField;
    IBQuery1QTA11: TIntegerField;
    IBQuery1QTA12: TIntegerField;
    IBQuery1QTA13: TIntegerField;
    IBQuery1QTA14: TIntegerField;
    IBQuery1QTA15: TIntegerField;
    IBQuery1QTA16: TIntegerField;
    IBQuery1QTA17: TIntegerField;
    IBQuery1QTA18: TIntegerField;
    IBQuery1QTA19: TIntegerField;
    IBQuery1QTA20: TIntegerField;
    IBQuery1QTA21: TIntegerField;
    IBQuery1QTA22: TIntegerField;
    IBQuery1QTA23: TIntegerField;
    IBQuery1QTA24: TIntegerField;
    IBQuery1QTA25: TIntegerField;
    IBQuery1QTA26: TIntegerField;
    IBQuery1QTA27: TIntegerField;
    IBQuery1QTA28: TIntegerField;
    IBQuery1QTA29: TIntegerField;
    IBQuery1QTA30: TIntegerField;
    IBQuery1QTA31: TIntegerField;
    IBQuery1QTA32: TIntegerField;
    IBQuery1QTA33: TIntegerField;
    IBQuery1QTA34: TIntegerField;
    IBQuery1QTA35: TIntegerField;
    IBQuery1QTA36: TIntegerField;
    IBQuery1QTA37: TIntegerField;
    IBQuery1QTA38: TIntegerField;
    IBQuery1QTA39: TIntegerField;
    IBQuery1QTA40: TIntegerField;
    IBQuery1QTA41: TIntegerField;
    IBQuery1QTA42: TIntegerField;
    IBQuery1QTA43: TIntegerField;
    IBQuery1QTA44: TIntegerField;
    IBQuery1QTA45: TIntegerField;
    IBQuery1QTA46: TIntegerField;
    IBQuery1QTA47: TIntegerField;
    IBQuery1QTA48: TIntegerField;
    IBQuery1QTA49: TIntegerField;
    IBQuery1QTA50: TIntegerField;
    IBQuery1QTA51: TIntegerField;
    IBQuery1QTA52: TIntegerField;
    IBQuery1QTA53: TIntegerField;
    IBQuery1QTA54: TIntegerField;
    IBQuery1QTA55: TIntegerField;
    IBQuery1QTA56: TIntegerField;
    IBQuery1QTA57: TIntegerField;
    IBQuery1QTA58: TIntegerField;
    IBQuery1QTA59: TIntegerField;
    IBQuery1QTA60: TIntegerField;
    IBQuery1QTA61: TIntegerField;
    IBQuery1QTA62: TIntegerField;
    IBQuery1QTA63: TIntegerField;
    IBQuery1QTA64: TIntegerField;
    IBQuery1QTA65: TIntegerField;
    IBQuery1QTA66: TIntegerField;
    IBQuery1QTA67: TIntegerField;
    IBQuery1QTA68: TIntegerField;
    IBQuery1QTA69: TIntegerField;
    IBQuery1QTA70: TIntegerField;
    IBQuery1QTA71: TIntegerField;
    IBQuery1QTA72: TIntegerField;
    IBQuery1QTA73: TIntegerField;
    IBQuery1QTA74: TIntegerField;
    IBQuery1QTA75: TIntegerField;
    IBQuery1QTA76: TIntegerField;
    IBQuery1QTA77: TIntegerField;
    IBQuery1QTA78: TIntegerField;
    IBQuery1QTA79: TIntegerField;
    IBQuery1QTA80: TIntegerField;
    IBQuery1QTA81: TIntegerField;
    IBQuery1QTA82: TIntegerField;
    IBQuery1QTA83: TIntegerField;
    IBQuery1QTA84: TIntegerField;
    IBQuery1QTA85: TIntegerField;
    IBQuery1QTA86: TIntegerField;
    IBQuery1QTA87: TIntegerField;
    IBQuery1QTA88: TIntegerField;
    IBQuery1QTA89: TIntegerField;
    IBQuery1QTA90: TIntegerField;
    IBQuery1QTA91: TIntegerField;
    IBQuery1QTA92: TIntegerField;
    IBQuery1QTA93: TIntegerField;
    IBQuery1QTA94: TIntegerField;
    IBQuery1QTA95: TIntegerField;
    IBQuery1QTA96: TIntegerField;
    IBQuery1QTA97: TIntegerField;
    IBQuery1QTA98: TIntegerField;
    IBQuery1QTA99: TIntegerField;
    IBQuery1TOTALE_COLORE0: TIntegerField;
    IBQuery1TOTALE_COLORE1: TIntegerField;
    IBQuery1TOTALE_COLORE2: TIntegerField;
    IBQuery1TOTALE_COLORE3: TIntegerField;
    IBQuery1TOTALE_COLORE4: TIntegerField;
    IBQuery1TOTALE_COLORE5: TIntegerField;
    IBQuery1TOTALE_COLORE6: TIntegerField;
    IBQuery1TOTALE_COLORE7: TIntegerField;
    IBQuery1TOTALE_COLORE8: TIntegerField;
    IBQuery1TOTALE_COLORE9: TIntegerField;
    IBQuery1TOTALE_TAGLIA0: TIntegerField;
    IBQuery1TOTALE_TAGLIA1: TIntegerField;
    IBQuery1TOTALE_TAGLIA2: TIntegerField;
    IBQuery1TOTALE_TAGLIA3: TIntegerField;
    IBQuery1TOTALE_TAGLIA4: TIntegerField;
    IBQuery1TOTALE_TAGLIA5: TIntegerField;
    IBQuery1TOTALE_TAGLIA6: TIntegerField;
    IBQuery1TOTALE_TAGLIA7: TIntegerField;
    IBQuery1TOTALE_TAGLIA8: TIntegerField;
    IBQuery1TOTALE_TAGLIA9: TIntegerField;
    IBQuery1QTA_TOTALE: TIntegerField;
    IBQuery1SCAT: TFloatField;
    IBQuery1PASSATA: TIBStringField;
    IBQuery1F1: TIBStringField;
    IBQuery1F2: TIBStringField;
    IBQuery1F3: TIBStringField;
    IBQuery1F4: TIBStringField;
    IBQuery1F5: TIBStringField;
    IBQuery1F6: TIBStringField;
    IBQuery1F7: TIBStringField;
    IBQuery1F8: TIBStringField;
    IBQuery1F0: TIBStringField;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelectTaglio: TfSelectTaglio;

implementation

uses uBolConto;

{$R *.DFM}

procedure TfSelectTaglio.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Open;
end;

procedure TfSelectTaglio.DBGrid1DblClick(Sender: TObject);
begin
fBolConto.dsoRigheDoc.DataSet.FieldByName('SCONTO3').AsFloat:=
        DataSource1.DataSet['PK_CODICE'];
fBolConto.DBScheda.Field.AsInteger :=
         DataSource1.DataSet['NUMERO'];
Close;
end;

procedure TfSelectTaglio.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

end.
