unit uTerm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, RxMemDS;

type
  TfTerm = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1a: TStringField;
    RxMemoryData1b: TFloatField;
    RxMemoryData1c: TFloatField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    RxMemoryData1d: TFloatField;
    RxMemoryData1e: TFloatField;
    Edit6: TEdit;
    Edit7: TEdit;
    RxMemoryData1f: TFloatField;
    RxMemoryData1g: TFloatField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTerm: TfTerm;

implementation

uses uBollette;

{$R *.DFM}

procedure TfTerm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Edit2.SetFocus;
end;

procedure TfTerm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Edit3.SetFocus;
end;

procedure TfTerm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Edit4.SetFocus;
end;

procedure TfTerm.FormShow(Sender: TObject);
begin
RxMemoryData1.Active := True;
edit1.Text := '-';
Edit2.Text := '0';
edit3.Text := '0';
edit4.Text := '0';
edit5.Text := '0';
edit6.Text := '0';
edit7.Text := '0';
Edit1.SetFocus;
end;

procedure TfTerm.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfTerm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Edit6.SetFocus;
end;

procedure TfTerm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Edit5.SetFocus;
end;

procedure TfTerm.Button2Click(Sender: TObject);
begin
if RxMemoryData1.IsEmpty then exit;
RxMemoryData1.First;
fBolle.SpeedButton1.Click;
while not RxMemoryData1.Eof do
begin
fBolle.boolmodifica := False;
fBolle.dbeCodice.Field.AsString := RxMemoryData1.FieldByName('a').AsString;
fBolle.dbeCodiceExit(sender);
if fBolle.alberto = 0 then
begin
fBolle.DBEdit3.Field.AsFloat :=(RxMemoryData1.FieldByName('c').AsFloat);
fBolle.DBEdit3Exit(sender);
fBolle.BitBtn1.Click;
end;
RxMemoryData1.Next;
end;
Close;
end;

procedure TfTerm.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin

RxMemoryData1.Append;
RxMemoryData1.FieldByName('a').AsString := TrimRight(Edit1.Text);
RxMemoryData1.FieldByName('b').AsFloat := StrToFloat(TrimRight(Edit2.Text));
RxMemoryData1.FieldByName('c').AsFloat := StrToFloat(TrimRight(Edit3.Text));
RxMemoryData1.FieldByName('d').AsFloat := StrToFloat(TrimRight(Edit4.Text));
RxMemoryData1.FieldByName('e').AsFloat := StrToFloat(TrimRight(Edit5.Text));
RxMemoryData1.FieldByName('f').AsFloat := StrToFloat(TrimRight(Edit6.Text));
RxMemoryData1.FieldByName('g').AsFloat := StrToFloat(TrimRight(Edit7.Text));

RxMemoryData1.Post;
edit1.Text := '-';
Edit2.Text := '0';
edit3.Text := '0';
edit4.Text := '0';
edit5.Text := '0';
edit6.Text := '0';
edit7.Text := '0';

Edit1.SetFocus;
end;

end;

procedure TfTerm.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Edit7.SetFocus;
end;

end.
