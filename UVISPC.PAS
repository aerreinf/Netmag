unit uVisPC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, Grids, DBGrids, IBQuery, StdCtrls, Mask, DBCtrls,
  ExtCtrls;

type
  TfVisPC = class(TForm)
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    DBGrid1: TDBGrid;
    IBQuery1ID_PIANO_CONTO: TIntegerField;
    IBQuery1GRUPPO: TIBStringField;
    IBQuery1CONTO: TIBStringField;
    IBQuery1SOTTOCONTO: TIBStringField;
    IBQuery1NOME_CONTO: TIBStringField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1NATURA: TSmallintField;
    IBQuery1LIVELLO: TSmallintField;
    IBQuery1RIVENDITA: TSmallintField;
    IBQuery1STRUMENTALE: TSmallintField;
    IBQuery1INDEDUCIBILE: TFloatField;
    IBQuery1STAMPA_IN_BILANCIO: TSmallintField;
    IBQuery1VARIAZIONE_FISCALE: TSmallintField;
    IBQuery1DICH_REDDITI_ID: TIBStringField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField;
    IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField;
    IBQuery1SPECIALE: TIntegerField;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup2: TRadioGroup;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button2: TButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
   Chiama,dx7,dx8: integer;
   dx5,dx6 : string;
    { Public declarations }
  end;

var
  fVisPC: TfVisPC;

implementation

uses uAzDM, frmuVisPrimaNota;

{$R *.DFM}

procedure TfVisPC.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from tab_piano_conti');
IBQuery1.SQL.Add('order by nome_conto');
IBQuery1.Open;
end
else
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from tab_piano_conti');
IBQuery1.SQL.Add('order by descr');
IBQuery1.Open;
end;
end;
procedure TfVisPC.FormShow(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.Open;
end;

procedure TfVisPC.Button1Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 0 then
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from tab_piano_conti');
IBQuery1.SQL.Add('order by descr');
IBQuery1.Open;
end;
if RadioGroup2.ItemIndex = 1 then
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from tab_piano_conti');
IBQuery1.SQL.Add('where CAPO_CONTO_CLI_FOR <>4');
IBQuery1.SQL.Add('order by descr');
IBQuery1.Open;
end;
if RadioGroup2.ItemIndex = 2 then
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from tab_piano_conti');
IBQuery1.SQL.Add('where CAPO_CONTO_CLI_FOR =1');
IBQuery1.SQL.Add('order by descr');
IBQuery1.Open;
end;
if RadioGroup2.ItemIndex = 3 then
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('select * from tab_piano_conti');
IBQuery1.SQL.Add('where CAPO_CONTO_CLI_FOR =2');
IBQuery1.SQL.Add('order by descr');
IBQuery1.Open;
end;

if CheckBox1.Checked then
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('SELECT * FROM tab_piano_conti WHERE NOME_CONTO LIKE '''+Edit1.Text+'%'' order by NOME_CONTO');
IBQuery1.Open;
end;

if CheckBox2.Checked then
begin
IBQuery1.Close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Add('SELECT * FROM tab_piano_conti WHERE DESCR LIKE '''+Edit2.Text+'%'' order by DESCR');
{
IBQuery1.SQL.Add('select * from tab_piano_conti');
IBQuery1.SQL.Add('where DESCR like parDESCR');
IBQuery1.SQL.Add('order by DESCR');
IBQuery1.ParamByName('parDESCR').AsString := Edit2.Text;
}
IBQuery1.Open;
end;

end;

procedure TfVisPC.DBGrid1DblClick(Sender: TObject);
begin
if Chiama =0 then
begin
dx5:= IBQuery1.fieldbyname('NOME_CONTO').AsString;

//frmVisPrimaNota.RxDBLookupCombo2.KeyValue  :=
//   IBQuery1.fieldbyname('NOME_CONTO').AsString;
   Close;
end;
if Chiama =1 then
begin
dx5:= IBQuery1.fieldbyname('NOME_CONTO').AsString;
dx7:= IBQuery1.fieldbyname('ID_PIANO_CONTO').Asinteger;
dx6:= IBQuery1.fieldbyname('DESCR').AsString;
dx8:= IBQuery1.fieldbyname('TIPO').AsInteger;
Close;
end;

end;

procedure TfVisPC.Button2Click(Sender: TObject);
begin
Close;
end;

end.
