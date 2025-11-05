unit frmuTagliaColori;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, DBCGrids, Db, ExtCtrls, Buttons;

type
  TfrmTagliaColori = class(TForm)
    dsTaglia: TDataSource;
    dsColori: TDataSource;
    dbcgTaglia: TDBCtrlGrid;
    dbeTagliaN: TDBEdit;
    dbcgColore: TDBCtrlGrid;
    dbeColori: TDBEdit;
    Panel1: TPanel;
    bbEsci: TBitBtn;
    procedure bbEsciClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTagliaColori: TfrmTagliaColori;

implementation

{$R *.DFM}

procedure TfrmTagliaColori.bbEsciClick(Sender: TObject);
begin
 Close;
end;

end.
