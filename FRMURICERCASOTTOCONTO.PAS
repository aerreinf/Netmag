unit frmuRicercaSottoconto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, StdCtrls, Buttons, RxLookup, IBCustomDataSet, IBQuery,
  Grids, DBGrids, DBCtrls;

type
  TfrmRicercaSottoconto = class(TForm)
    pnlSelPC: TPanel;
    dsPianoDeiConti: TDataSource;
    rxdblcPianoContoNOME: TRxDBLookupCombo;
    rxdblcPianoConto: TRxDBLookupCombo;
    lblContoAcqVend: TLabel;
    bbOK: TBitBtn;
    bbEsci: TBitBtn;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery1ID_PIANO_CONTO: TIntegerField;
    IBQuery1GRUPPO: TIBStringField;
    IBQuery1CONTO: TIBStringField;
    IBQuery1SOTTOCONTO: TIBStringField;
    IBQuery1NOME_CONTO: TIBStringField;
    IBQuery1TIPO: TSmallintField;
    IBQuery1DESCR: TIBStringField;
    IBQuery1NATURA: TSmallintField;
    IBQuery1LIVELLO: TSmallintField;
    IBQuery1RIVENDITA: TSmallintField;
    IBQuery1STRUMENTALE: TSmallintField;
    IBQuery1INDEDUCIBILE: TFloatField;
    IBQuery1STAMPA_IN_BILANCIO: TSmallintField;
    IBQuery1VARIAZIONE_FISCALE: TSmallintField;
    IBQuery1DICH_REDDITI_ID: TIBStringField;
    IBQuery1RAGGRUPPAMENTO_ID: TIBStringField;
    IBQuery1CONTO_PERSONALIZZATO_ID: TIntegerField;
    IBQuery1CAPO_CONTO_CLI_FOR: TSmallintField;
    IBQuery1SPECIALE: TIntegerField;
    DBGrid1: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    procedure bbEsciClick(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rxdblcPianoContoChange(Sender: TObject);
    procedure rxdblcPianoContoNOMEChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
   private
    Procedure Get_Vals_PC;

   public
    boolSelected: Boolean;
    intID_PC,TIPO_CLIFOR: Integer;
    strNomeConto,strDescrPC: String;
  end;

var
  frmRicercaSottoconto: TfrmRicercaSottoconto;

implementation

uses uAzDM;

{$R *.DFM}

procedure TfrmRicercaSottoconto.bbEsciClick(Sender: TObject);
begin
 boolSelected:=False;
 Close;
end;

procedure TfrmRicercaSottoconto.bbOKClick(Sender: TObject);
begin
 Get_Vals_PC;
 boolSelected:=True;
 Close;
end;

procedure TfrmRicercaSottoconto.Get_Vals_PC;
begin
Try
intID_PC:=dsPianoDeiConti.DataSet.FieldByName('ID_PIANO_CONTO').AsInteger;
strDescrPC:=dsPianoDeiConti.DataSet.FieldByName('DESCR').AsString;
strNomeConto:=dsPianoDeiConti.DataSet.FieldByName('NOME_CONTO').AsString;
TIPO_CLIFOR :=dsPianoDeiConti.DataSet.FieldByName('CAPO_CONTO_CLI_FOR').AsInteger;
Except
intID_PC:=-1;
strDescrPC:='';
End;
end;

procedure TfrmRicercaSottoconto.FormShow(Sender: TObject);
begin
If Not(dsPianoDeiConti.DataSet.active)
Then  dsPianoDeiConti.DataSet.Open;
IBQuery1.Close;
IBQuery1.Open;
{rxdblcPianoContoNOME.KeyValue:=
 dsPianoDeiConti.DataSet.FieldByName('ID_PIANO_CONTO').asinteger;
 rxdblcPianoConto.KeyValue:=
    dsPianoDeiConti.DataSet.FieldByName('ID_PIANO_CONTO').asinteger;}

end;

procedure TfrmRicercaSottoconto.rxdblcPianoContoChange(Sender: TObject);
begin
 Try
  rxdblcPianoContoNOME.KeyValue:=rxdblcPianoConto.KeyValue;
  Get_Vals_PC;
 Except
 End;

end;

procedure TfrmRicercaSottoconto.rxdblcPianoContoNOMEChange(
  Sender: TObject);
begin
 Try
  rxdblcPianoConto.KeyValue:=rxdblcPianoContoNOME.KeyValue;
  Get_Vals_PC;
 Except
 End;

end;

procedure TfrmRicercaSottoconto.DBGrid1DblClick(Sender: TObject);
begin
rxdblcPianoContoNOME.KeyValue :=
 dsPianoDeiConti.DataSet.fieldbyname('ID_PIANO_CONTO').AsInteger;
bbOK.Click;
end;

END.
