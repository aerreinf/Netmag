unit UsceltaBanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls;

type
  TfSceltaBanca = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    abi,cab,descrbanca,STATO : string;
  end;

var
  fSceltaBanca: TfSceltaBanca;

implementation

uses uAzDM, frmuScadenze;

{$R *.dfm}

procedure TfSceltaBanca.FormShow(Sender: TObject);
begin
DataSource1.DataSet.Close;
DataSource1.DataSet.Open;
end;

procedure TfSceltaBanca.Button2Click(Sender: TObject);
begin
STATO := '0';
Close;
end;

procedure TfSceltaBanca.Button1Click(Sender: TObject);
begin
STATO := '1';
Close;

end;

end.
