unit uStBC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Db, StdCtrls;

type
  TfStBC = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fStBC: TfStBC;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfStBC.Button1Click(Sender: TObject);
begin
Close;
end;

end.
