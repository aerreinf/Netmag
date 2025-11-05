unit uTipoOfertaDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Mask, DBCGrids, Grids, DBGrids, Buttons, Db,
  RxDBComb, CurrEdit, RXDBCtrl, ToolEdit, ComCtrls, ToolWin;

type
  TfTipiOferteDB = class(TForm)
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
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    dsOfferte: TDataSource;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    RxDBCalcEdit3: TRxDBCalcEdit;
    RxDBCalcEdit4: TRxDBCalcEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    dbgResult: TDBGrid;
    dsoRicArt: TDataSource;
    tbarControl: TToolBar;
    tbtnEsci: TToolButton;
    sep1: TToolButton;
    tbtnNuovo: TToolButton;
    tbtnModifica: TToolButton;
    sep2: TToolButton;
    tbtnSalva: TToolButton;
    tbtnAnulla: TToolButton;
    sep3: TToolButton;
    tbtnElimina: TToolButton;
    sep4: TToolButton;
    tbtnPrev: TToolButton;
    tbtnNext: TToolButton;
    sep5: TToolButton;
    ToolButton1: TToolButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnPrevClick(Sender: TObject);
    procedure tbtnNextClick(Sender: TObject);
    procedure tbtnEsciClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);

  private
    Procedure Edit_Mode2(bMode: Boolean);
    Procedure Clean_All_TEdits2;

    { Private declarations }

  public
    { Public declarations }
  end;

var
  fTipiOferteDB: TfTipiOferteDB;

  bCanClose: Boolean=True;
implementation

Uses uPubDM, uAzDM, uRicercaArt, uArticoli;

{$R *.DFM}

procedure TfTipiOferteDB.DBGrid1DblClick(Sender: TObject);
var
a:integer;
begin
a:= dsOfferte.DataSet.fieldbyname('ID_OFFERTA').AsInteger;
With (dmodAz.ibqRicerca_Art) Do
Begin
Close;
SQL.Clear;
SQL.add('SELECT CODICE_ARTICOLO, DESCR, DESCR2, PREZZO_BASE, COSTO_STANDART,PREZZO_IVATO, DESCR_CODE_BAR FROM TAB_ARTICOLI');
sql.add('Where ID_OFFERTA = '+ inttostr(a));
SQL.add('order by codice_articolo');
Open;
 end;
end;

Procedure TfTipiOferteDB.Clean_All_TEdits2;
Var
 iCntr, iCntrComp: Integer;
Begin
 // Search for all data source components and open those datesets

 iCntrComp:=Self.ComponentCount; // All components on form
 For iCntr:=0 To iCntrComp-1 Do
  // Check if component is a Datesource:
  If (Self.Components[iCntr] is TEdit)
   Then With (Self.Components[iCntr] as TEdit) Do
         Text:='';
End;

procedure TfTipiOferteDB.Edit_Mode2(bMode: Boolean);
begin
 // tbtn's
 bCanClose:=Not(bMode);
 tbtnEsci.Enabled:=Not(bMode);
 tbtnNuovo.Enabled:=Not(bMode);
 tbtnModifica.Enabled:=Not(bMode);
 tbtnSalva.Enabled:=(bMode);
 tbtnAnulla.Enabled:=(bMode);
 tbtnElimina.Enabled:=Not(bMode);
 tbtnPrev.Enabled:=Not(bMode);
 tbtnNext.Enabled:=Not(bMode);

end;

procedure TfTipiOferteDB.tbtnNuovoClick(Sender: TObject);
begin
Edit_Mode2(True);
Clean_All_TEdits2;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
dsOfferte.DataSet.Insert;
end;


procedure TfTipiOferteDB.tbtnModificaClick(Sender: TObject);
begin
 Edit_Mode2(True);
 Clean_All_TEdits2;
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
// nuovo:=true;
 dsOfferte.DataSet.Edit;
end;

procedure TfTipiOferteDB.tbtnSalvaClick(Sender: TObject);
begin
try
 begin
 dsOfferte.DataSet.Post;

 if fArticoli.ChiChiama = 0 then
 dmodAz.ibtrDef.Commit
 else  dmodAz.ibtrDef.CommitRetaining;
end
except
 if fArticoli.chichiama = 0 then
 dmodAz.ibtrDef.Rollback
 else  dmodAz.ibtrDef.RollbackRetaining;
end;

Edit_Mode2(False);
dsOfferte.DataSet.Open;
end;

procedure TfTipiOferteDB.tbtnAnullaClick(Sender: TObject);
begin
Edit_Mode2(False);
 dsOfferte.DataSet.Cancel;
 if fArticoli.chichiama = 0 then
 dmodAz.ibtrDef.Rollback
 else  dmodAz.ibtrDef.RollbackRetaining;
 dsOfferte.DataSet.Open;

end;

procedure TfTipiOferteDB.tbtnEliminaClick(Sender: TObject);
begin
try
 begin
 dsOfferte.DataSet.Delete;
 if fArticoli.ChiChiama = 0 then
 dmodAz.ibtrDef.Commit
 else  dmodAz.ibtrDef.CommitRetaining;
end
except
 if fArticoli.chichiama = 0 then
 dmodAz.ibtrDef.Rollback
 else  dmodAz.ibtrDef.RollbackRetaining;
end;
Edit_Mode2(False);
dsOfferte.DataSet.Open;

end;

procedure TfTipiOferteDB.tbtnPrevClick(Sender: TObject);
begin
dsOfferte.DataSet.Prior;
end;

procedure TfTipiOferteDB.tbtnNextClick(Sender: TObject);
begin
dsOfferte.DataSet.Next;
end;

procedure TfTipiOferteDB.tbtnEsciClick(Sender: TObject);
begin
Close;
end;

procedure TfTipiOferteDB.ToolButton1Click(Sender: TObject);
begin
if dmodAz.ibTab_Articoli.Active = False then exit;

if (MessageDlg('Associare l''offerta corrente all''articolo : '+dmodAz.ibTab_Articoli.FieldByName('CODICE_ARTICOLO').AsString
           ,mtConfirmation,[mbOK,mbCancel],0)=mrCancel) then
Exit;

try
 begin
if not dmodAz.ibtrDef.InTransaction then
       dmodAz.ibtrDef.StartTransaction;
   dmodAz.ibTab_Articoli.Edit;
   dmodAz.ibTab_Articoli.FieldByName('ID_OFFERTA').AsInteger :=
      dsOfferte.DataSet.fieldbyname('ID_OFFERTA').asinteger;
 dmodAz.ibTab_Articoli.Post;
 dmodAz.ibtrDef.CommitRetaining;
end
except
 dmodAz.ibtrDef.RollbackRetaining;
end;

end;

end.
