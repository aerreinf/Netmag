Unit uRicercaVeloce;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, ExtCtrls, Buttons;

Type
  TfRicercaVeloceSQL = Class(TForm)
    Panel1: TPanel;
    paView: TPanel;
    dsoDati: TDataSource;
    dbgDati: TDBGrid;
    edTesto: TEdit;
    bbRefresh: TBitBtn;
    Procedure bbRefreshClick(Sender: TObject);
    procedure dbgDatiDblClick(Sender: TObject);
    procedure edTestoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
    strTabella, strCampoWhere, strValore, strResCampoCodice,
     strCampo2, strCampo3, strSQL: String;
    vaResValore, vaResValore2, vaResValore3, vaResCodice: Variant;

    intRichieste: Integer;

   Procedure GetValues;

  End;

Var
  fRicercaVeloceSQL: TfRicercaVeloceSQL;

Implementation

Uses uPubDM;

{$R *.DFM}

Procedure TfRicercaVeloceSQL.bbRefreshClick(Sender: TObject);
Begin
 // Prepare SQL
 strSQL:='SELECT * FROM '+strTabella+' WHERE '+strCampoWhere+' LIKE ''%'+strValore+'%'';';
 // Execute SQL
 With (dmodPub.ibqRicerca) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add(strSQL);
  Open;
 End;
End;

Procedure TfRicercaVeloceSQL.dbgDatiDblClick(Sender: TObject);
Begin
 // get params of table
 With (dbgDati.DataSource.DataSet) Do
 Begin
  vaResValore:=FieldByName(strCampoWhere).AsVariant;
 If (intRichieste>1)
  Then
   Begin
     If (intRichieste>2)
      Then vaResValore3:=FieldByName(strCampo3).AsVariant;
     vaResValore2:=FieldByName(strCampo2).AsVariant;
   End;
  vaResCodice:=FieldByName(strResCampoCodice).AsVariant;
 End;
 Close;
End;

procedure TfRicercaVeloceSQL.edTestoChange(Sender: TObject);
begin
 strValore:=edTesto.Text;
end;

procedure TfRicercaVeloceSQL.FormActivate(Sender: TObject);
begin
 edTesto.Text:=strValore;
end;

procedure TfRicercaVeloceSQL.FormShow(Sender: TObject);
begin
 bbRefresh.Click;
end;

procedure TfRicercaVeloceSQL.GetValues;
begin
 // get it
 bbRefresh.Click;
  // get params of table
 With (dbgDati.DataSource.DataSet) Do
 Begin
  vaResValore:=FieldByName(strCampoWhere).AsVariant;
 If (intRichieste>1)
  Then
   Begin
     If (intRichieste>2)
      Then vaResValore3:=FieldByName(strCampo3).AsVariant;
     vaResValore2:=FieldByName(strCampo2).AsVariant;
   End;
  vaResCodice:=FieldByName(strResCampoCodice).AsVariant;
 End;
end;

End.
