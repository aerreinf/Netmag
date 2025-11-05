unit uCostiGest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, ToolEdit, CurrEdit, IBQuery, Menus;

type
  TfCostiGest = class(TForm)
    Label39: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel1: TPanel;
    Label53: TLabel;
    Label55: TLabel;
    Label69: TLabel;
    SpeedButton1: TSpeedButton;
    Label73: TLabel;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    lblContropartita: TLabel;
    lblImponibile: TLabel;
    lblIVAperc: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    IBDataSet1: TIBDataSet;
    IBDataSet1PK_CODICE: TIntegerField;
    IBDataSet1DESCRIZIONE: TIBStringField;
    IBDataSet1NOTE: TIBStringField;
    IBDataSet1COSTO: TFloatField;
    IBDataSet1FREQUENZA: TFloatField;
    DataSource1: TDataSource;
    IBDataSet1TOTALE: TFloatField;
    RxCalcEdit1: TRxCalcEdit;
    RxCalcEdit2: TRxCalcEdit;
    RxCalcEdit3: TRxCalcEdit;
    RxCalcEdit4: TRxCalcEdit;
    IBQuery1: TIBQuery;
    SpeedButton8: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Stampe1: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Pulsanti(boolMode: Boolean);
    procedure Calcoli;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Stampe1Click(Sender: TObject);
  private
    { Private declarations }
    totore,totgiorni : Double;
  public
    { Public declarations }
  end;

var
  fCostiGest: TfCostiGest;

implementation

uses uAzDM;

{$R *.dfm}

procedure TfCostiGest.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TfCostiGest.SpeedButton2Click(Sender: TObject);
begin
Calcoli;
end;

procedure TfCostiGest.SpeedButton3Click(Sender: TObject);
begin
DataSource1.DataSet.Insert;
Pulsanti(False);
DataSource1.DataSet.FieldByName('FREQUENZA').Asinteger := 1;
DBEdit1.SetFocus;
end;

procedure TfCostiGest.SpeedButton4Click(Sender: TObject);
begin
if DataSource1.DataSet.IsEmpty then exit;
Pulsanti(False);
DataSource1.DataSet.Edit;
end;

procedure TfCostiGest.SpeedButton5Click(Sender: TObject);
begin
DataSource1.DataSet.Cancel;
Calcoli;
Pulsanti(True);
end;

procedure TfCostiGest.SpeedButton6Click(Sender: TObject);
begin
if DataSource1.DataSet.IsEmpty then exit;
DataSource1.DataSet.FieldByName('TOTALE').AsFloat :=
 DataSource1.DataSet.FieldByName('COSTO').AsFloat*DataSource1.DataSet.FieldByName('FREQUENZA').AsFloat;
DataSource1.DataSet.Post;
Calcoli;
Pulsanti(True);
end;

procedure TfCostiGest.SpeedButton7Click(Sender: TObject);
begin
if DataSource1.DataSet.IsEmpty then exit;
If (MessageDlg('Eliminare riga?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
Then  Begin
DataSource1.DataSet.Delete;
Calcoli;
//Pulsanti(False);
End;
end;

procedure TfCostiGest.Pulsanti(boolMode: Boolean);
begin
 SpeedButton3.Enabled:=boolMode;
 SpeedButton4.Enabled:=boolMode;
 SpeedButton5.Enabled:=Not(boolMode);
 SpeedButton6.Enabled:=Not(boolMode);
 SpeedButton7.Enabled:=boolMode;
end;

procedure TfCostiGest.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
DBEdit2.SetFocus;
DBEdit2.SelectAll;
end;

end;

procedure TfCostiGest.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
DBEdit3.SetFocus;
DBEdit3.SelectAll;
end;

end;

procedure TfCostiGest.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
DBEdit6.SetFocus;
DBEdit6.SelectAll;
end;

end;

procedure TfCostiGest.FormShow(Sender: TObject);
begin
dmodAz.ibTabPersAz.Open;
totore := dmodAz.ibTabPersAz.fieldbyname('TOTORE').AsFloat;
totgiorni := dmodAz.ibTabPersAz.fieldbyname('TOTGIORNI').AsFloat;
dmodAz.ibTabPersAz.close;
if VarIsNull(totore) then totore := 8;
if VarIsNull(totgiorni) then totgiorni := 250;
IBDataSet1.Open;
Calcoli;
end;

procedure TfCostiGest.Calcoli;
begin
IBQuery1.Close;
//IBQuery1.SQL.Clear;
//IBQuery1.SQL.Add('select sum(totale) as RISULTATO from  COSTIGEST');
IBQuery1.OPEN;
RxCalcEdit1.Value := IBQuery1.FieldByName('RISULTATO').AsFloat;
RxCalcEdit2.Value := IBQuery1.FieldByName('RISULTATO').AsFloat/12;
RxCalcEdit3.Value := IBQuery1.FieldByName('RISULTATO').AsFloat/12/totgiorni;
RxCalcEdit4.Value := IBQuery1.FieldByName('RISULTATO').AsFloat/12/250/totore;
end;
procedure TfCostiGest.SpeedButton8Click(Sender: TObject);
begin
 dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'CostiGest.frf');
 dmodAz.rePRN.ShowReport;
end;

procedure TfCostiGest.Stampe1Click(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

end.
