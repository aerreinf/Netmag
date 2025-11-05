unit uSelectDep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, IBSQL;

type
  TfSelectDep = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    IBQuery1: TIBQuery;
    IBQuery1SCHEDA: TFloatField;
    IBQuery1CODICE_ARTICOLO: TIBStringField;
    IBQuery1DESCR: TIBStringField;
    DataSource1: TDataSource;
    IBSQL1: TIBSQL;
    IBQuery1DEP2: TFloatField;
    IBQuery1RIMASTI: TFloatField;
    IBQuery1QUANTITA: TFloatField;
    DBGrid2: TDBGrid;
    IBQuery2: TIBQuery;
    FloatField1: TFloatField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    FloatField4: TFloatField;
    DataSource2: TDataSource;
    IBQuery2DATA_DOC: TDateTimeField;
    IBQuery2NUM_DOC: TIntegerField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelectDep: TfSelectDep;

implementation

uses uBolConto;

{$R *.DFM}

procedure TfSelectDep.DBGrid1DblClick(Sender: TObject);
begin
//if fBolConto.RadioGroup1.ItemIndex = 0 then
fBolConto.DBScheda.Field.AsInteger :=
         DataSource1.DataSet['SCHEDA'];

//if fBolConto.RadioGroup1.ItemIndex = 1 then
//         DataSource1.DataSet['NUMERO'];
Close;

end;

procedure TfSelectDep.IBQuery1CalcFields(DataSet: TDataSet);
begin
IBSQL1.Close;
IBSQL1.ParamByName('parID_Doc').AsFloat :=
        IBQuery1SCHEDA.AsFloat;
IBSQL1.ExecQuery;
IBQuery1DEP2.AsFloat := IBSQL1.fieldbyname('F_1').AsInteger;
IBQuery1RIMASTI.AsFloat := IBQuery1QUANTITA.AsFloat -IBQuery1DEP2.AsFloat;

end;

procedure TfSelectDep.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfSelectDep.DBGrid1CellClick(Column: TColumn);
begin
if (fBolConto.intTipoDoc=515) then
begin
IBQuery2.Close;
IBQuery2.ParamByName('sch').AsInteger := IBQuery1.fieldbyname('scheda').AsInteger;
IBQuery2.Open;
end;
end;

end.
