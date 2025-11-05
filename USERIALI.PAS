unit uSeriali;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBCtrls;

type
  TfSeriali = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    a,i,DOC,DET_DOC : Integer;
    COD,DES : String;
  end;

var
  fSeriali: TfSeriali;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfSeriali.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TfSeriali.FormShow(Sender: TObject);
begin
edit1.SetFocus;
edit1.SelectAll;
edit2.Text := COD;
Edit5.Text := IntToStr(a);
i:= 0;
DataSource1.DataSet.Open;
end;

procedure TfSeriali.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
begin
i := i+1;
if i <= a then Button2.Click
else
Button1.Click;
end;
end;

procedure TfSeriali.Button2Click(Sender: TObject);
begin
with dmodAz do
begin
tabSeriali.Insert;
tabSeriali.FieldByName('Seriale').AsString := UpperCase(edit1.Text);
tabSeriali.FieldByName('CODICE').AsString := COD;
tabSeriali.FieldByName('DESCRIZIONE').AsString := DES;
tabSeriali.FieldByName('ID_DOC').AsFloat := DOC;
tabSeriali.FieldByName('ID_DET_DOC').AsFloat := DET_DOC;
tabSeriali.Post;
END;
edit1.SetFocus;
edit1.Text := '';
Edit1.SelectAll;
end;

procedure TfSeriali.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
begin
Edit3.Enabled := True;
Edit4.Enabled := True;
Edit5.Enabled := True;
Label1.Enabled := True;
Label2.Enabled := True;
Label3.Enabled := True;
Button3.Enabled := True;
end
else
begin
Edit3.Enabled := False;
Edit4.Enabled := False;
Label1.Enabled := False;
Label2.Enabled := False;
Label3.Enabled := False;
Edit5.Enabled := False;
Button3.Enabled := False;
end;
end;

procedure TfSeriali.Button3Click(Sender: TObject);
var
i,x,y,ser:integer;
w,z:string;
begin
x := length(Edit3.Text);
z := copy(edit3.text,(x-2),3);
w := copy(edit3.text,1,(x-3));
ser := StrToInt(z);

with dmodAz do
begin
for i:=1 to StrToInt(edit5.Text) do
begin
tabSeriali.Append;
tabSeriali.FieldByName('Seriale').AsString := w+IntToStr(ser);
tabSeriali.FieldByName('CODICE').AsString := COD;
tabSeriali.FieldByName('DESCRIZIONE').AsString := DES;
tabSeriali.FieldByName('ID_DOC').AsFloat := DOC;
tabSeriali.FieldByName('ID_DET_DOC').AsFloat := DET_DOC;
tabSeriali.Post;
ser := ser+1;
end;
END;

end;

end.
