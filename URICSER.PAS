unit uRicSer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGrids, Db, IBCustomDataSet, IBQuery;

type
  TfRicSer = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    IBQuery1ID_DOC: TFloatField;
    IBQuery1CODICE: TIBStringField;
    IBQuery1DESCRIZIONE: TIBStringField;
    IBQuery1ID_DET_DOC: TFloatField;
    IBQuery1SERIALE: TIBStringField;
    IBQuery1NUM_DOC: TIntegerField;
    IBQuery1DATA_DOC: TDateTimeField;
    IBQuery1CLIFOR_ID: TIntegerField;
    IBQuery1CLIENTE: TStringField;
    Edit1: TEdit;
    Button3: TButton;
    IBQuery1CAUSALE_MAGAZZINO: TIBStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRicSer: TfRicSer;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfRicSer.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfRicSer.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
Edit1.SelectAll;
IBQuery1.Close;
//IBQuery1.Open;
//dmodAz.ibqTab_Cli.Close;
//dmodAz.ibqTab_Cli.Open;
end;

procedure TfRicSer.Button2Click(Sender: TObject);
begin
with IBQuery1 do
begin
Close;
sql.Clear;
sql.Add('SELECT seriali.*, tab_documenti.Num_doc,tab_documenti.data_doc,');
sql.Add('tab_documenti.CLIFOR_ID,tab_documenti.CAUSALE_MAGAZZINO ');
sql.Add('from seriali join tab_documenti on (seriali.id_doc=tab_documenti.id_documento)');
sql.Add('WHERE (SERIALE=:a) OR (SERIALE=:b)');
sql.Add('order by seriale,data_doc');
ParamByName('a').AsString := edit1.Text;
ParamByName('b').AsString := UpperCase(edit1.Text);
Open;
END;
Edit1.SetFocus;
Edit1.SelectAll;
end;

procedure TfRicSer.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
Button2.Click;
end;

procedure TfRicSer.Button3Click(Sender: TObject);
begin
with IBQuery1 do
begin
Close;
sql.Clear;
sql.Add('SELECT seriali.*, tab_documenti.Num_doc,tab_documenti.data_doc,');
sql.Add('tab_documenti.CLIFOR_ID,tab_documenti.CAUSALE_MAGAZZINO ');
sql.Add('from seriali join tab_documenti on (seriali.id_doc=tab_documenti.id_documento)');
sql.Add('order by seriale,data_doc');
Open;
END;
end;

procedure TfRicSer.Edit1Enter(Sender: TObject);
begin
Edit1.SetFocus;
Edit1.SelectAll;
end;

end.
