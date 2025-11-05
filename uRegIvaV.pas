unit uRegIvaV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Mask, ToolEdit, RxDBComb, Grids,
  DBGrids;

type
  TfRegIvaV = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    Label7: TLabel;
    RadioGroup2: TRadioGroup;
    medatada: TDateEdit;
    medataa: TDateEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  boolVendita: Boolean;
    { Public declarations }
  end;

var
  fRegIvaV: TfRegIvaV;

implementation

{$R *.dfm}

procedure TfRegIvaV.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TfRegIvaV.FormShow(Sender: TObject);
begin
if boolVendita then
 self.Caption:='Registro Iva Acquisti'
else
 self.Caption:='Registro Iva Vendite';
end;

end.
