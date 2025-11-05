unit frmuSelectArticolo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Db;

type
  TfrmSelectArticolo = class(TForm)
    dbgArticoli: TDBGrid;
    pnlCtrl: TPanel;
    rxdblcCodice: TRxDBLookupCombo;
    rxdblcDescr: TRxDBLookupCombo;
    dsArticoli: TDataSource;
    bbOK: TBitBtn;
    procedure bbOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private

   public
    boolTrovato: Boolean;
    strCodice,strDescr: String;
  end;

var
  frmSelectArticolo: TfrmSelectArticolo;

implementation

{$R *.DFM}

procedure TfrmSelectArticolo.bbOKClick(Sender: TObject);
begin
 boolTrovato:=True;
 Close;
end;

procedure TfrmSelectArticolo.FormShow(Sender: TObject);
begin
 boolTrovato:=False;
 Try
  If (strDescr<>'')
   Then dsArticoli.DataSet.Locate('descr',strDescr,[]);
  If (strCodice<>'')
   then dsArticoli.DataSet.Locate('Codice_Articolo',strCodice,[]);
 Except

 End;
end;

end.
