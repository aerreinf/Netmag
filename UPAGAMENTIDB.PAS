unit uPagamentiDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Mask;

type
  TfPagamentiDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Pagamenti: TDBNavigator;
    paView: TPanel;
    laDescr: TLabel;
    laID_Comune: TLabel;
    dbeDescr: TDBEdit;
    dbeID_Comune: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbcbEsclSabat: TDBCheckBox;
    dbcbEsclFesta: TDBCheckBox;
    LookTipoPag: TDBLookupComboBox;
    LookTipoPagDescr: TDBLookupComboBox;
    dbeNumRate: TDBEdit;
    Label3: TLabel;
    dbcbGiorniComm: TDBCheckBox;
    dbcbPersonRata: TDBCheckBox;
    gbScadenze: TGroupBox;
    dbragScadenze: TDBRadioGroup;
    Label4: TLabel;
    dbeGiorn1rata: TDBEdit;
    Label5: TLabel;
    dbeSpese: TDBEdit;
    dbePrimaRata: TDBEdit;
    procedure dbnTab_PagamentiClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPagamentiDB: TfPagamentiDB;

implementation

Uses uAzDM, uPubDM;

{$R *.DFM}

procedure TfPagamentiDB.dbnTab_PagamentiClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 paView.Enabled:=False;
 If (Button=nbInsert) Then
                       Begin
                        dbcbEsclSabat.Field.AsInteger:=0;
                        dbcbEsclFesta.Field.AsInteger:=0;
                        dbcbPersonRata.Field.AsInteger:=0;
                        dbcbGiorniComm.Field.AsInteger:=0;
                        paView.Enabled:=True;
                       End;
 If (Button=nbEdit) Then paView.Enabled:=True;
end;

procedure TfPagamentiDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dbnTab_Pagamenti.BtnClick(nbCancel);
end;

end.
