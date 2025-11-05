unit uDescrAggDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TfDescrAggDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Descr_Agg: TDBNavigator;
    paView: TPanel;
    laCod: TLabel;
    Label1: TLabel;
    dbeCodice: TDBEdit;
    D1: TDBMemo;
    d2: TDBMemo;
    d3: TDBMemo;
    d4: TDBMemo;
    d6: TDBMemo;
    d5: TDBMemo;
    d8: TDBMemo;
    d7: TDBMemo;
    d9: TDBMemo;
    procedure dbnTab_Descr_AggClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDescrAggDB: TfDescrAggDB;

implementation

Uses uAzDM;

{$R *.DFM}

procedure TfDescrAggDB.dbnTab_Descr_AggClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 If (Button=nbInsert) Then
                       Begin
                        paView.Enabled:=True;
                        dbeCodice.SetFocus;
                       End;
 If (Button=nbEdit) Then
                       Begin
                        paView.Enabled:=True;
                        dbeCodice.SetFocus;
                       End;
 If (Button=nbPost) Then paView.Enabled:=False;
 If (Button=nbCancel) Then  paView.Enabled:=False;
end;

end.
