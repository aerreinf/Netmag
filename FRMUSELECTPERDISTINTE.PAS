unit frmuSelectPerDistinte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RxLookup, Db, Buttons, Mask, ToolEdit, Menus;

type
  TfrmSelectPerDistinte = class(TForm)
    pnlOperate: TPanel;
    pnlCtrl: TPanel;
    dsArticoli: TDataSource;
    dsoGRUPPO: TDataSource;
    dsoTIPO: TDataSource;
    dsoFAMIGLIA: TDataSource;
    dsoMARCA: TDataSource;
    gbArticoli: TGroupBox;
    rabArtTutti: TRadioButton;
    rabArtDaA: TRadioButton;
    rabArtCat: TRadioButton;
    rxdblcDaArt: TRxDBLookupCombo;
    rxdblcAdArt: TRxDBLookupCombo;
    rxdblcAdArtCodice: TRxDBLookupCombo;
    rxdblcDaArtCodice: TRxDBLookupCombo;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbMarca: TCheckBox;
    cbFamiglia: TCheckBox;
    cbTipo: TCheckBox;
    cbGruppo: TCheckBox;
    bbEsci: TBitBtn;
    rgTipoStampa: TRadioGroup;
    bbStampa: TBitBtn;
    imgStampa: TImage;
    bvlStampa: TBevel;
    bvlBackImage: TBevel;
    lblGlass: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    rabData: TRadioButton;
    RadioButton1: TRadioButton;
    PopupMenu1: TPopupMenu;
    stampe: TMenuItem;
    procedure bbEsciClick(Sender: TObject);
    procedure rgTipoStampaExit(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure cbFamigliaClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure cbGruppoClick(Sender: TObject);
    procedure gbArticoliExit(Sender: TObject);
    procedure rxdblcDaArtCodiceChange(Sender: TObject);
    procedure rxdblcDaArtChange(Sender: TObject);
    procedure rxdblcAdArtCodiceChange(Sender: TObject);
    procedure rxdblcAdArtChange(Sender: TObject);
    procedure rabArtTuttiClick(Sender: TObject);
    procedure rabArtDaAClick(Sender: TObject);
    procedure rabArtCatClick(Sender: TObject);
    procedure bbStampaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rabDataClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure stampeClick(Sender: TObject);
   private
    strReport_FileName, DaData, adata: String;
    boolArtTutti, boolPerCategorie: Boolean;
    strCodiceArt1,strCodiceArt2: String;
    boolTipo, boolMarca, boolFamiglia, boolGruppo, boolData: Boolean;
    strTipo, strMarca, strFamiglia, strGruppo: String;
    Procedure Get_Values;
    Procedure Set_Nome_Di_Report;
    Procedure Make_SQL;
   public
    { Public declarations }
  end;

var
  frmSelectPerDistinte: TfrmSelectPerDistinte;

implementation

uses uAzDM, uPrnForm;

{$R *.DFM}

procedure TfrmSelectPerDistinte.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmSelectPerDistinte.rgTipoStampaExit(Sender: TObject);
begin
 Set_Nome_Di_Report;
end;

procedure TfrmSelectPerDistinte.Set_Nome_Di_Report;
begin
 //strReport_FileName
 Try
  bbStampa.Enabled:=True;
  Case (rgTipoStampa.ItemIndex) Of
    -1: bbStampa.Enabled:=False;
     0: strReport_FileName:='frDist_F_Rplg1.frf';
     1: strReport_FileName:='frDist_F_Dett1.frf';
     2: strReport_FileName:='frDist_F_Dett2.frf';
     3: strReport_FileName:='frDist_F_RplgMag.frf';
    Else bbStampa.Enabled:=False
  End;
 Except
   bbStampa.Enabled:=False;
 End;
end;

procedure TfrmSelectPerDistinte.cbMarcaClick(Sender: TObject);
begin
 boolMarca:=cbMarca.Checked; 
end;

procedure TfrmSelectPerDistinte.cbFamigliaClick(Sender: TObject);
begin
 boolFamiglia:=cbFamiglia.Checked;
end;

procedure TfrmSelectPerDistinte.cbTipoClick(Sender: TObject);
begin
 boolTipo:=cbTipo.Checked;
end;

procedure TfrmSelectPerDistinte.cbGruppoClick(Sender: TObject);
begin
 boolGruppo:=cbGruppo.Checked;
end;

procedure TfrmSelectPerDistinte.Get_Values;
begin

 If ((Not(boolArtTutti))AND (Not(boolPerCategorie)) AND (Not(boolData)))
 Then Begin
       strCodiceArt1:=rxdblcDaArt.keyvalue;
       strCodiceArt2:=rxdblcAdArt.keyvalue;

      End;
 If (boolPerCategorie) Then
 Begin
  If (boolTipo) Then
   Try strTipo:=rxdblcTipo.keyvalue;
   Except strTipo:='-1'  End;
  If (boolMarca) Then
   Try strMarca:=rxdblcMarca.keyvalue;
   Except strMarca:='-1'  End;
  If (boolFamiglia) Then
   Try strFamiglia:=rxdblcFamiglia.keyvalue;
   Except strFamiglia:='-1'  End;
  If (boolGruppo) Then
   Try strGruppo:=rxdblcGruppo.keyvalue;
   Except strGruppo:='-1'  End;
 End;

 if (boolData) then
 begin
 DaData := DateEdit1.Text;
 aData := DateEdit2.Text;
 end;
end;

procedure TfrmSelectPerDistinte.gbArticoliExit(Sender: TObject);
begin
 
 Get_Values;
end;

procedure TfrmSelectPerDistinte.rxdblcDaArtCodiceChange(Sender: TObject);
begin
 Try
   rxdblcDaArt.KeyValue:=rxdblcDaArtCodice.KeyValue
 Except
 End;
end;

procedure TfrmSelectPerDistinte.rxdblcDaArtChange(Sender: TObject);
begin
 Try
   rxdblcDaArtCodice.KeyValue:=rxdblcDaArt.KeyValue
 Except
 End;
end;

procedure TfrmSelectPerDistinte.rxdblcAdArtCodiceChange(Sender: TObject);
begin
 Try
   rxdblcAdArt.KeyValue:=rxdblcAdArtCodice.KeyValue
 Except
 End;
end;

procedure TfrmSelectPerDistinte.rxdblcAdArtChange(Sender: TObject);
begin
 Try
   rxdblcAdArtCodice.KeyValue:=rxdblcAdArt.KeyValue
 Except
 End;
end;

procedure TfrmSelectPerDistinte.rabArtTuttiClick(Sender: TObject);
begin
 boolArtTutti:=True;
 boolPerCategorie:=False;
 boolData := False;
end;

procedure TfrmSelectPerDistinte.rabArtDaAClick(Sender: TObject);
begin
 boolArtTutti:=False;
 boolPerCategorie:=False;
 boolData := False;
end;

procedure TfrmSelectPerDistinte.rabArtCatClick(Sender: TObject);
begin
 boolArtTutti:=False;
 boolPerCategorie:=True;
 boolData := False;
end;

procedure TfrmSelectPerDistinte.Make_SQL;
begin
 With (dmodAz) Do
 Begin
   ibqRicerca.Close;
   ibqRicerca.SQL.Clear;
   ibqRicerca.SQL.Add('select');
   ibqRicerca.SQL.Add('A.PK_CODICE, A.CODICE_ARTICOLO, A.DESCR_ARTICOLO, A.MANODOPERA,');
   ibqRicerca.SQL.Add('A.RICAMO, A.FASONISTA, A.SITUAZIONE, A.COPPE, A.ACCESSORI, A.ALTRO1,');
   ibqRicerca.SQL.Add('A.ALTRO2, A.ALTRO3, A.ALTRO4, A.COSTO, A.RICAR1PERC, A.RICAR2PERC,');
   ibqRicerca.SQL.Add('A.RICAR_LIRE, A.PREZZO_VENDITA, A.COSTO_ACCESS_TOTALE, A.COSTO_TOTALE,A.CODCLI,');

   ibqRicerca.SQL.Add('B.FK_DISTINTE, B.CODICE_ARTICOLO as B_codice_articolo,');
   ibqRicerca.SQL.Add('B.DESCR_ARTICOLO as B_descr_articolo, B.QTA as B_qta,');
   ibqRicerca.SQL.Add('B.COSTO as B_costo, B.PREZZO as B_prezzo,  B.FLAG_SCATOLO b_flag_scatolo,tab_cli_for.denominazione,tab_articoli.PREZZO_BASE');
   ibqRicerca.SQL.Add('from DISTINTE A left JOIN  DISTINTE_DETT B ON B.FK_DISTINTE = A.PK_CODICE');
   ibqRicerca.SQL.Add('left JOIN  tab_cli_for ON distinte.codcli=tab_cli_for.id_cli_for');
   ibqRicerca.SQL.Add('left JOIN  tab_articoli ON distinte.codice_articolo=tab_articoli.codice_articolo');
   ibqRicerca.SQL.Add('WHERE A.CODICE_ARTICOLO IS NOT NULL');


  If (rabArtDaA.Checked)
     Then Begin
           ibqRicerca.SQL.Add('AND A.CODICE_ARTICOLO >='''+strCodiceArt1+'''');
           ibqRicerca.SQL.Add('AND A.CODICE_ARTICOLO <='''+strCodiceArt2+'''');
          End;
  If (boolPerCategorie) Then
  Begin
   ibqRicerca.SQL.Add('AND A.CODICE_ARTICOLO IN (SELECT CODICE_ARTICOLO FROM TAB_ARTICOLI');
   ibqRicerca.SQL.Add('WHERE CODICE_ARTICOLO IS NOT NULL');
   If (boolTipo)
     Then ibqRicerca.SQL.Add('and CAT_ART_TIPO_ID ='+strTipo);
   If (boolMarca)
     Then ibqRicerca.SQL.Add('and CAT_ART_MARCA_ID ='+strMarca);
   If (boolFamiglia)
     Then ibqRicerca.SQL.Add('and CAT_ART_Famiglia_ID ='+strFamiglia);
   If (boolGruppo)
     Then ibqRicerca.SQL.Add('and CAT_ART_GRUPPO_ID ='+strGruppo);
   ibqRicerca.SQL.Add(')');
  End;

If (boolData) Then
  Begin
ibqRicerca.SQL.Add('AND A.DATA_CREAZIONE >=:parDataDa');
ibqRicerca.SQL.Add('AND A.DATA_CREAZIONE <=:parDataA');

ibqRicerca.ParamByName('parDataDa').AsDate:=strToDate(DaData);
ibqRicerca.ParamByName('parDataA').AsDate:=strToDate(adata);
end;

If (RadioButton1.Checked) Then
Begin
ibqRicerca.SQL.Add('AND A.CODCLI <>0');
end;

ibqRicerca.SQL.Add('ORDER by A.CODICE_ARTICOLO');
ibqRicerca.OpeN;

 End;// with ...


end;

procedure TfrmSelectPerDistinte.bbStampaClick(Sender: TObject);
begin
 Get_Values;

 Make_SQL;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+strReport_FileName);
     ShowReport;
 End;

end;

procedure TfrmSelectPerDistinte.FormShow(Sender: TObject);
begin
 dsArticoli.DataSet.Open;
 dsoGRUPPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoMARCA.DataSet.Open;
 boolArtTutti:=True;
 boolPerCategorie:=False;
 strCodiceArt1:='';
 strCodiceArt2:='';
 boolTipo:=False;
 boolMarca:=False;
 boolFamiglia:=False;
 boolGruppo:=False;
 strTipo:='-1';
 strMarca:='-1';
 strFamiglia:='-1';
 strGruppo:='-1';
 //
 rxdblcDaArt.KeyValue:=dsArticoli.DataSet.FieldByName('codice_articolo').AsString;
 rxdblcAdArt.KeyValue:=dsArticoli.DataSet.FieldByName('codice_articolo').AsString;
 rxdblcDaArtCodice.KeyValue:=dsArticoli.DataSet.FieldByName('codice_articolo').AsString;
 rxdblcAdArtCodice.KeyValue:=dsArticoli.DataSet.FieldByName('codice_articolo').AsString;
 //
 rxdblcGruppo.KeyValue:=dsoGRUPPO.DataSet.Fieldbyname('codice').AsInteger;
 rxdblcTipo.KeyValue:=dsoTIPO.DataSet.Fieldbyname('codice').AsInteger;
 rxdblcFamiglia.KeyValue:=dsoFAMIGLIA.DataSet.Fieldbyname('codice').AsInteger;
 rxdblcMarca.KeyValue:=dsoMARCA.DataSet.Fieldbyname('codice').AsInteger;
end;

procedure TfrmSelectPerDistinte.rabDataClick(Sender: TObject);
begin
 boolArtTutti:=False;
 boolPerCategorie:=False;
 boolData := true;
 DateEdit2.Date := Now;
end;

procedure TfrmSelectPerDistinte.RadioButton1Click(Sender: TObject);
begin
 boolArtTutti:=False;
 boolPerCategorie:=False;
 boolData := false;
 DateEdit2.Date := Now;
end;

procedure TfrmSelectPerDistinte.stampeClick(Sender: TObject);
begin
dmodAz.rePRN.DesignReport;
end;

end.
