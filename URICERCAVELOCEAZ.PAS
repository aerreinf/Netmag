unit uRicercaVeloceAZ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfRicercaVeloceAZSQL = class(TForm)
    Panel1: TPanel;
    edTesto: TEdit;
    bbRefresh: TBitBtn;
    paView: TPanel;
    dbgDati: TDBGrid;
    dsoDati: TDataSource;
    procedure bbRefreshClick(Sender: TObject);
    procedure dbgDatiDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edTestoChange(Sender: TObject);
    procedure edTestoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    strTabella, strCampoWhere, strValore, strResCampoCodice,
     strCampo2,  strCampo3, strSQL,deposito: String;
    vaResValore, vaResValore2, vaResValore3, vaResCodice: Variant;

    intRichieste: Integer;

    boolAdditionalWhere: Boolean;
    strAdditionalWhere: String;

   Procedure GetValues;

  end;

var
  fRicercaVeloceAZSQL: TfRicercaVeloceAZSQL;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfRicercaVeloceAZSQL.bbRefreshClick(Sender: TObject);
begin
 // Prepare SQL
 If (boolAdditionalWhere)
  Then strSQL:='SELECT * FROM '+strTabella+' WHERE '+strAdditionalWhere+' AND '+strCampoWhere+' LIKE '''+strValore+'%'' order by '+strCampoWhere+';'
  Else strSQL:='SELECT * FROM '+strTabella+' WHERE '+strCampoWhere+' LIKE '''+strValore+'%'' order by '+strCampoWhere+';';

 // Execute SQL
 If (intRichieste=33)then
 begin
  if (boolAdditionalWhere)
  Then strSQL:='SELECT tab_articoli.*,tab_contabile_articolo.giacenza_attuale from '+strTabella+' left join tab_contabile_articolo'+
   ' on tab_articoli.codice_articolo=tab_contabile_articolo.codice_articolo'+
   ' WHERE '+strAdditionalWhere+' AND '+strCampoWhere+' LIKE '''+strValore+'%'' order by '+strCampoWhere+';'

  Else strSQL:='SELECT tab_contabile_articolo.giacenza_attuale,tab_contabile_articolo.deposito_id,tab_articoli.codice_articolo,tab_articoli.descr,tab_articoli.PREZZO_BASE,tab_articoli.COSTO_STANDART from '+strTabella+' left join tab_contabile_articolo'+
   ' on tab_articoli.codice_articolo=tab_contabile_articolo.codice_articolo'+' WHERE tab_articoli.'+strCampoWhere+' LIKE '''+strValore+'%''  order by tab_articoli.codice_Articolo,deposito_id ;';
  end;

 With (dmodAz.ibqRicerca) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add(strSQL);
  Open;
 End;
end;

procedure TfRicercaVeloceAZSQL.dbgDatiDblClick(Sender: TObject);
begin
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
end;

procedure TfRicercaVeloceAZSQL.GetValues;
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
//close;
end;


procedure TfRicercaVeloceAZSQL.FormShow(Sender: TObject);
begin
 bbRefresh.Click;
end;

procedure TfRicercaVeloceAZSQL.FormActivate(Sender: TObject);
begin
  edTesto.SetFocus;
  edTesto.Text:=strValore;
end;

procedure TfRicercaVeloceAZSQL.edTestoChange(Sender: TObject);
begin
 strValore:=edTesto.Text;
end;

procedure TfRicercaVeloceAZSQL.edTestoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then bbRefresh.Click;
end;

end.
