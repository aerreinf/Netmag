unit uPrnForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, FR_Class, FR_ERtf, FR_ETxt, Fr_Shape, FR_CBar,
  Fr_Graph, FR_Desgn, FR_Rich, FR_FMemo, FR_OLE;

type
  TprnForm = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    frShapeObject1: TfrShapeObject;
    frTextExportObject1: TfrTextExportObject;
    frRichExportObject1: TfrRichExportObject;
    rePRN: TfrReport;
    frGraphObject1: TfrGraphObject;
    frCodeBarreObject1: TfrCodeBarreObject;
    reDes: TfrDesigner;
    frFramedMemoObject1: TfrFramedMemoObject;
    frRichObject1: TfrRichObject;
    frOLEObject1: TfrOLEObject;
    procedure rePRNGetValue(const ParName: String; var ParValue: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    a:integer;
  end;

var
  prnForm: TprnForm;

implementation

uses uAzDM, frmStListR, frmStampaCodeBar;

{$R *.DFM}

procedure TprnForm.rePRNGetValue(const ParName: String;
  var ParValue: Variant);
begin

if a=1 then
begin
if ParName = 'Sconti' then
ParValue := 'Gli articoli a sconto 99% sono compresi nell''offerta principale (Art.15 comma 1 lett.2 Art.21 comma 2 lett.4)';
end;

end;

end.
