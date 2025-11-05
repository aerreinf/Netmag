unit uTaglPell;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, RXDBCtrl, RxLookup,
  DBCtrls, Grids, DBGrids;

type
  TfTaglPell = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DBGrid1: TDBGrid;
    SpeedButton10: TSpeedButton;
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Pulsanti(boolMode: Boolean);
  public
    { Public declarations }
  end;

var
  fTaglPell: TfTaglPell;

implementation

{$R *.dfm}

procedure TfTaglPell.SpeedButton10Click(Sender: TObject);
begin
Close;
end;

procedure TfTaglPell.Pulsanti(boolMode: Boolean);
begin
 SpeedButton1.Enabled:=boolMode;
 SpeedButton2.Enabled:=boolMode;
 SpeedButton4.Enabled:=Not(boolMode);
 SpeedButton3.Enabled:=Not(boolMode);
 SpeedButton5.Enabled:=boolMode;
end;

procedure TfTaglPell.SpeedButton1Click(Sender: TObject);
begin
Pulsanti(False);
end;

procedure TfTaglPell.SpeedButton2Click(Sender: TObject);
begin
Pulsanti(False);
end;

procedure TfTaglPell.SpeedButton3Click(Sender: TObject);
begin
Pulsanti(True);
end;

procedure TfTaglPell.SpeedButton4Click(Sender: TObject);
begin
Pulsanti(True);
end;

end.
