unit frmuCarScarMag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Db, Mask, DBCtrls, RxLookup,
  ToolEdit, RXDBCtrl, RxMemDS, IBCustomDataSet, IBQuery;

type
  TfrmCarScarMag = class(TForm)
    pnlIntestazione: TPanel;
    Panel2: TPanel;
    dbgCarScar: TDBGrid;
    dsCarScar: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    dsoArticoli: TDataSource;
    rxmdCarScar: TRxMemoryData;
    bbCancella: TBitBtn;
    edtCodice: TEdit;
    rxmdCarScarCODICE_ARTICOLO: TStringField;
    rxmdCarScarDESCR: TStringField;
    rxmdCarScarPREZZO_BASE: TFloatField;
    rxmdCarScarCOSTO_STANDART: TFloatField;
    rxmdCarScarFLAG_ACCESSORIE: TStringField;
    rxmdCarScarEuro: TFloatField;
    IBQuery2: TIBQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbCancellaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodiceEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarScarMag: TfrmCarScarMag;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfrmCarScarMag.BitBtn1Click(Sender: TObject);
begin
 Close
end;

procedure TfrmCarScarMag.bbCancellaClick(Sender: TObject);
begin
 While Not(rxmdCarScar.IsEmpty) Do rxmdCarScar.Delete;
end;

procedure TfrmCarScarMag.FormShow(Sender: TObject);
begin
 dsoArticoli.DataSet.Open;
 dsCarScar.DataSet.Open;
end;

procedure TfrmCarScarMag.edtCodiceKeyPress(Sender: TObject; var Key: Char);
begin
 If Not(Key=#13) Then
  Exit;
With IBQuery2 do
 Begin
close;
ParamByName('a').AsString := edtCodice.Text;
open;
end;
if IBQuery2.IsEmpty then
Exit;
  with (rxmdCarScar) do
  begin
   Insert;
    FieldByName('Codice_articolo').AsString:=
      dsoArticoli.DataSet.FieldByName('codice_articolo').AsString;
    FieldByName('descr').AsString:=
      dsoArticoli.DataSet.FieldByName('descr').AsString;
    FieldByName('prezzo_base').AsFloat:=
      dsoArticoli.DataSet.FieldByName('prezzo_base').AsFloat;
    FieldByName('costo_standart').AsFloat:=
      dsoArticoli.DataSet.FieldByName('costo_standart').AsFloat;

    FieldByName('euro').AsFloat:=
      dsoArticoli.DataSet.FieldByName('Prezzo_base').AsFloat*(1+dsoArticoli.DataSet.FieldByName('Codice_iva_id').AsFloat/100);
   Post;
  end;
edtCodice.Text := '';
edtCodice.SelectAll;
  end;

procedure TfrmCarScarMag.edtCodiceEnter(Sender: TObject);
begin
edtCodice.SelectAll;
end;

END.

