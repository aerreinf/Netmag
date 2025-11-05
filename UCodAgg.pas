unit UCodAgg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, IBCustomDataSet, StdCtrls, ExtCtrls, DBCtrls,
  RxLookup;

type
  TfCodAgg = class(TForm)
    fCodAgg: TDBGrid;
    DataSource1: TDataSource;
    IBDataSet1: TIBDataSet;
    IBDataSet1CODICE_ARTICOLO: TIBStringField;
    IBDataSet1CLI_FOR_ID: TIntegerField;
    IBDataSet1CODICE_AGGIUNTIVO: TIBStringField;
    IBDataSet1TIPO_CODICE_AGGIUNTIVO_ID: TSmallintField;
    IBDataSet1QUANTITA: TFloatField;
    IBDataSet1DESCR: TIBStringField;
    IBDataSet1VAR1_TG: TIBStringField;
    IBDataSet1VAR2_COL: TIBStringField;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCodAgg: TfCodAgg;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfCodAgg.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfCodAgg.FormShow(Sender: TObject);
begin
IBDataSet1.Open;
end;

procedure TfCodAgg.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 2 then
begin
RxDBLookupCombo1.Visible := True;
IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.add('select * from TAB_CODICI_AGGIUNTIVI');
IBDataSet1.SelectSQL.add('order by CODICE_AGGIUNTIVO');
IBDataSet1.Open;
end;
if (RadioGroup1.ItemIndex = 0) then
begin
RxDBLookupCombo1.Visible := False;
IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.add('select * from TAB_CODICI_AGGIUNTIVI');
IBDataSet1.SelectSQL.add('order by CODICE_AGGIUNTIVO');
IBDataSet1.Open;
end;
if  (RadioGroup1.ItemIndex = 1) then
begin
IBDataSet1.Close;
IBDataSet1.SelectSQL.Clear;
IBDataSet1.SelectSQL.add('select * from TAB_CODICI_AGGIUNTIVI');
IBDataSet1.SelectSQL.add('where codice_articolo is null');
IBDataSet1.SelectSQL.add('order by CODICE_AGGIUNTIVO');
IBDataSet1.Open;
RxDBLookupCombo1.Visible := False;
end;
end;

end.
