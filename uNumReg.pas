unit uNumReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, Grids, DBGrids, StdCtrls;

type
  TfNumReg = class(TForm)
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNumReg: TfNumReg;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfNumReg.FormShow(Sender: TObject);
begin

if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
end;

procedure TfNumReg.Button1Click(Sender: TObject);
begin
TRY
 dmodAz.ibtrDef.Commit;
EXCEPT
 dmodAz.ibtrDef.Rollback;
END;
Close;
end;

end.
