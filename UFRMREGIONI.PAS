unit uFrmRegioni;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, uFrmBarNED;

type
  TfrmRegioni = class(TFrame)
    paView: TPanel;
    dbgRegioni: TDBGrid;
    procedure FrameResize(Sender: TObject);
    procedure frmBarNED1tbtnNewClick(Sender: TObject);
    procedure frmBarNED1tbtnEditClick(Sender: TObject);
    procedure frmBarNED1tbtnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uAnagDM;

{$R *.DFM}

procedure TfrmRegioni.FrameResize(Sender: TObject);
begin
 dbgRegioni.Columns[0].Width:=Round(dbgRegioni.Width*0.25);
 dbgRegioni.Columns[1].Width:=Round(dbgRegioni.Width*0.75);
end;

procedure TfrmRegioni.frmBarNED1tbtnNewClick(Sender: TObject);
begin
 // Show form with new item to insert
end;

procedure TfrmRegioni.frmBarNED1tbtnEditClick(Sender: TObject);
begin
 // Show form with edit current item (that in grid)
end;

procedure TfrmRegioni.frmBarNED1tbtnDelClick(Sender: TObject);
begin
 // Delete current item (in grid)
end;

end.
