unit uCodIVADB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfCodIVADB = class(TForm)
    paCtrl: TPanel;
    dbnTab_CodIVA: TDBNavigator;
    paView: TPanel;
    laCodice: TLabel;
    laDescr: TLabel;
    dbeCodice: TDBEdit;
    dbeDescr: TDBEdit;
    laAliq: TLabel;
    dbeAliq: TDBEdit;
    dbeIndetr: TDBEdit;
    laIndetr: TLabel;
    LookCollIVACod: TDBLookupComboBox;
    LookCollIVADesc: TDBLookupComboBox;
    laIvaColleg: TLabel;
    laTipoOper: TLabel;
    laNonSogg: TLabel;
    LookNonSogg: TDBLookupComboBox;
    laNonImpon: TLabel;
    LookNonImpon: TDBLookupComboBox;
    laEsenzione: TLabel;
    LookEsenzione: TDBLookupComboBox;
    laSigla: TLabel;
    dbeSiglaIdent: TDBEdit;
    laRifIVA: TLabel;
    dbeRiferIVA: TDBEdit;
    LookClass: TDBLookupComboBox;
    procedure LookClassCloseUp(Sender: TObject);
    procedure dbnTab_CodIVAClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure disable_all_lookups;
    Procedure get_lookup_state;
  public
    { Public declarations }
  end;

var
  fCodIVADB: TfCodIVADB;

implementation

Uses uPubDM, uAzDM;

{$R *.DFM}

procedure TfCodIVADB.disable_all_lookups;
begin
 // Disabe all lookups
 LookNonSogg.Enabled:=False;
 LookNonImpon.Enabled:=False;
 LookEsenzione.Enabled:=False;
 // set values to nil
 dmodAz.ibTab_Codici_IVA.FieldByName('NON_SOGGETTO_IVA_ID').AsInteger:=0;
 dmodAz.ibTab_Codici_IVA.FieldByName('NON_IMPONIBILE_IVA_ID').AsInteger:=0;
 dmodAz.ibTab_Codici_IVA.FieldByName('ESENTE').AsInteger:=0;
end;

procedure TfCodIVADB.get_lookup_state;
Var intVal: Integer;
begin
 disable_all_lookups;
 intVal:=dmodAz.ibTab_Codici_IVA.FieldByName('CLASSIFICAZIONE').AsInteger;
 Case (intVal) Of
  1: LookNonImpon.Enabled:=True;
  2: LookEsenzione.Enabled:=True;
  3: LookNonSogg.Enabled:=True;
 End;
end;

procedure TfCodIVADB.LookClassCloseUp(Sender: TObject);
Var intval: Integer;
begin
 // Check vals and disable/enable lookups
 //    1 Non Imponibile
 //    2 Esente
 //    3 Non Soggetta
 //    4 Imponibile
 disable_all_lookups;
 intVal:=dmodAz.ibTab_Codici_IVA.FieldByName('CLASSIFICAZIONE').AsInteger;
 Case (intVal) Of
  1: LookNonImpon.Enabled:=True;
  2: LookEsenzione.Enabled:=True;
  3: LookNonSogg.Enabled:=True;
 End;


end;

procedure TfCodIVADB.dbnTab_CodIVAClick(Sender: TObject;
  Button: TNavigateBtn);
begin
 paView.Enabled:=False;
 If (Button=nbPost) Then Exit;
 If (Button=nbEdit) Then Begin paView.Enabled:=True;dbeCodice.SetFocus;Exit;End;
 If (Button=nbInsert) Then paView.Enabled:=True;dbeCodice.SetFocus;
 If (dbnTab_CodIVA.DataSource.DataSet.IsEmpty) Then Exit;
 get_lookup_state;
end;

procedure TfCodIVADB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// dbnTab_CodIVA.BtnClick(nbCancel);
end;

end.
