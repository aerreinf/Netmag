unit uModPrezzo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TfModPrezzo = class(TForm)
    dbgResult: TDBGrid;
    bbVis: TBitBtn;
    bbEsci: TBitBtn;
    dsoRicArt: TDataSource;
    Edit1: TEdit;
    procedure bbEsciClick(Sender: TObject);
    procedure dbgResultColExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fModPrezzo: TfModPrezzo;

implementation

{$R *.dfm}

procedure TfModPrezzo.bbEsciClick(Sender: TObject);
begin
Close;
end;

procedure TfModPrezzo.dbgResultColExit(Sender: TObject);
Var
 dPrezzoIvato,dPrezzo,dIVA,dSconto1,Dsconto2,dSconto3 : Double;
 L2,L3,L4,L5,I2,I3,I4,I5,ScontoAcq : Double;
 strPrezIvato:String;
begin
edit1.Text := dbgResult.SelectedField.AsString;
{ Try
begin
dPrezzo := 0;
dPrezzoIvato := dsoRicArt.DataSet.FieldByName('PREZZO_IVATO').AsFloat;
dIVA:= dsoRicArt.DataSet.FieldByName('CODICE_IVA_ID').AsInteger;

dPrezzo := dPrezzoIvato/(1+dIVA/100);
dsoRicArt.DataSet.FieldByName('PREZZO_BASE').AsFloat:= dPrezzo;
end
 Except
dsoRicArt.DataSet.FieldByName('PREZZO_BASE').AsFloat := 0;
 End;}
end;

end.
