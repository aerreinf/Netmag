unit frmStampaCodeBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, FR_Class;

type
  TfStampaCodeBar = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fStampaCodeBar: TfStampaCodeBar;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfStampaCodeBar.FormShow(Sender: TObject);
begin
dmodAz.ibTablearticoli.Active := True;
end;

procedure TfStampaCodeBar.FormDestroy(Sender: TObject);
begin
dmodAz.ibTablearticoli.Active := False;
end;

procedure TfStampaCodeBar.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfStampaCodeBar.Button2Click(Sender: TObject);
begin
dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'StampaBarCode.frf');
dmodAz.rePRN.ShowReport;

end;

end.
