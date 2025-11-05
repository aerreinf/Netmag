unit uCreaListWiz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons, DBCtrls, Db, Grids, DBGrids;

type
  TfCreaListWiz = class(TForm)
    paView: TPanel;
    paCtrl: TPanel;
    bbCancel: TBitBtn;
    pCtrlOptions: TPageControl;
    tabs1: TTabSheet;
    tabs2: TTabSheet;
    tabs3: TTabSheet;
    Panel1: TPanel;
    paStandard: TPanel;
    rbStdCosto: TRadioButton;
    rbStdPrezzo: TRadioButton;
    paAcqVen: TPanel;
    rbCostAcq: TRadioButton;
    rbPrezVend: TRadioButton;
    paList: TPanel;
    rbAltroList: TRadioButton;
    rbListCli: TRadioButton;
    rbListFor: TRadioButton;
    ragBase: TRadioGroup;
    Panel2: TPanel;
    cbMargine: TCheckBox;
    cbComprIVA: TCheckBox;
    cbAppSconti: TCheckBox;
    cbPrezziDinamici: TCheckBox;
    cbTuttiArticoli: TCheckBox;
    Label1: TLabel;
    edScontoPerc: TEdit;
    edSconto2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edRicaricoPerc: TEdit;
    laMoneta: TLabel;
    udRicarico: TUpDown;
    udScontoPerc: TUpDown;
    LookMonetaDescr: TDBLookupComboBox;
    Label4: TLabel;
    Panel3: TPanel;
    edCodice_Listino: TEdit;
    edDescr: TEdit;
    tpDataInizioVal: TDateTimePicker;
    tpDataFineVal: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LookListino: TDBLookupComboBox;
    dsoListino: TDataSource;
    LookArrotond: TDBLookupComboBox;
    dsoArrot: TDataSource;
    dsoMonete: TDataSource;
    paGruppi: TPanel;
    LookFam: TDBLookupComboBox;
    LookGruppo: TDBLookupComboBox;
    LookMarca: TDBLookupComboBox;
    LookTipo: TDBLookupComboBox;
    dsoFam: TDataSource;
    dsoGruppo: TDataSource;
    dsoMarca: TDataSource;
    dsoTipo: TDataSource;
    bbFiltraGruppo: TBitBtn;
    tabs4: TTabSheet;
    paGruFil: TPanel;
    dbgGruFil: TDBGrid;
    dsoRicerca: TDataSource;
    paBaseSel: TPanel;
    bbFiltraSel: TBitBtn;
    LookListArticoli: TDBLookupListBox;
    dsoArticoli: TDataSource;
    edDa: TEdit;
    edA: TEdit;
    bbOK: TBitBtn;
    rabCategoria: TRadioButton;
    rabDaA: TRadioButton;
    rabTutti: TRadioButton;
    edRicaricoLire: TEdit;
    lblRic2Lire: TLabel;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    edSconto3: TEdit;
    UpDown3: TUpDown;
    Label10: TLabel;
    cbF: TCheckBox;
    cbG: TCheckBox;
    cbM: TCheckBox;
    cbT: TCheckBox;
    procedure ragBaseClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure tpDataInizioValChange(Sender: TObject);
    procedure tpDataInizioValDblClick(Sender: TObject);
    procedure tpDataFineValChange(Sender: TObject);
    procedure tpDataFineValDblClick(Sender: TObject);
    procedure edScontoPercChange(Sender: TObject);
    procedure edSconto2Change(Sender: TObject);
    procedure edRicaricoPercChange(Sender: TObject);
    procedure cbPrezziDinamiciClick(Sender: TObject);
    procedure cbAppScontiClick(Sender: TObject);
    procedure cbComprIVAClick(Sender: TObject);
    procedure cbMargineClick(Sender: TObject);
    procedure rbAltroListClick(Sender: TObject);
    procedure rbListCliClick(Sender: TObject);
    procedure rbListForClick(Sender: TObject);
    procedure rbStdCostoClick(Sender: TObject);
    procedure rbStdPrezzoClick(Sender: TObject);
    procedure rbCostAcqClick(Sender: TObject);
    procedure rbPrezVendClick(Sender: TObject);
    procedure edCodice_ListinoChange(Sender: TObject);
    procedure edDescrChange(Sender: TObject);
    procedure bbFiltraGruppoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbFiltraSelClick(Sender: TObject);
    procedure LookListArticoliDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rabTuttiClick(Sender: TObject);
    procedure edScontoPercExit(Sender: TObject);
    procedure edSconto2Exit(Sender: TObject);
    procedure edRicaricoPercExit(Sender: TObject);
    procedure edRicaricoLireExit(Sender: TObject);
    procedure edSconto3Exit(Sender: TObject);
   private
    
    Procedure BasePrezzoArt; //1
    Procedure BasePrezzoUlt; //2
    Procedure BaseMedia;     //3
    Procedure BaseListino;   //4

    Procedure BaseGruppi;
    Procedure BaseSel;
   public
     dDataInizVal,dDataFineVal: TDateTime;
     strDescr,strCodice: String;
     strArrotond: String;

     iIvato,iDinamico,iScontato,iRicaricaPerc: Integer;
     dpRicarico,dpRicaricoPerc,dpSconto1,dpSconto2,dpSconto3: Double;

     iBaseTipo: Integer;
     cBaseTipoAV: Char;

     iListinoAltCliFor: integer;
     iStandCostoPrezzo: Integer;
     iCosrAcqPrezVend: Integer;

     // Dati del listino collegato
     strListino_Collegato: String;
     dpLisTCollRicarico: Double;
     dpListCollSconto1,dpListCollSconto2,dpListCollSconto3: Double;
     // Totale ricarico
     dpTotRicarico: Double;


  End;

Var
  fCreaListWiz: TfCreaListWiz;

Implementation

Uses uPubDM, uAzDM;

{$R *.DFM}

procedure TfCreaListWiz.ragBaseClick(Sender: TObject);
begin
 iBaseTipo:=ragBase.ItemIndex;
 If (iBaseTipo=0)
  Then paStandard.Visible:=True
  Else paStandard.Visible:=False;
 If ((iBaseTipo=1)OR(iBaseTipo=2))
  Then paAcqVen.Visible:=True
  Else paAcqVen.Visible:=False;
 If (iBaseTipo=3)
  Then paList.Visible:=True
  Else paList.Visible:=False;

end;

procedure TfCreaListWiz.bbCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TfCreaListWiz.FormShow(Sender: TObject);
begin
 iBaseTipo:=3;
 tpDataInizioVal.Date:=Now;
 tpDataFineVal.Date:=Now+1;
end;

procedure TfCreaListWiz.bbOKClick(Sender: TObject);
begin
 dmodaz.ibqContabile_Articolo.Open;
 strCodice:=edCodice_Listino.Text;
 strDescr:=edDescr.Text;
 dDataInizVal:=tpDataInizioVal.Date;
 dDataFineVal:=tpDataFineVal.Date;
 If (cbAppSconti.Checked)
   Then iScontato:=1
   Else iScontato:=0;
 If (cbComprIVA.Checked)
   Then iIVATO:=1
   Else iIVATO:=0;
 If (cbPrezziDinamici.Checked) 
   Then iDinamico:=1
   Else iDinamico:=0;
 //verificare se nei tutti campi sono inseriti coretti dati

 { TODO 1 -olom -cproger : verificare se nei tutti campi sono inseriti coretti dati }

 // Create and Exit
 Case (iBaseTipo) Of
   0: BasePrezzoArt;
   1: BasePrezzoUlt;
   2: BaseMedia;
   3: BaseListino;

   4: BaseGruppi;
   5: BaseSel;
 End;


 Close;
end;

procedure TfCreaListWiz.tpDataInizioValChange(Sender: TObject);
begin
 dDataInizVal:=tpDataInizioVal.Date;
end;

procedure TfCreaListWiz.tpDataInizioValDblClick(Sender: TObject);
begin
 tpDataInizioVal.DateTime:=Now;
end;

procedure TfCreaListWiz.tpDataFineValChange(Sender: TObject);
begin
 dDataFineVal:=tpDataFineVal.Date;
end;

procedure TfCreaListWiz.tpDataFineValDblClick(Sender: TObject);
begin
 tpDataFineVal.DateTime:=Now;
end;

procedure TfCreaListWiz.edScontoPercChange(Sender: TObject);
begin
 Try
  dpSconto1:=StrToFloat(edScontoPerc.Text);
 Except
  dpSconto1:=0;edScontoPerc.Text:='0';
 End;

End;

procedure TfCreaListWiz.edSconto2Change(Sender: TObject);
begin
 Try
  dpSconto2:=StrToFloat(edSconto2.Text);
 Except
  dpSconto2:=0;edSconto2.Text:='0';
 End;
end;

procedure TfCreaListWiz.edRicaricoPercChange(Sender: TObject);
begin
 Try
  dpRicaricoPerc:=StrToFloat(edRicaricoPerc.Text);
 Except
  dpRicaricoPerc:=0;edRicaricoPerc.Text:='0';
 End;
end;

procedure TfCreaListWiz.cbPrezziDinamiciClick(Sender: TObject);
begin
 If (cbPrezziDinamici.Checked) Then iDinamico:=1
                               Else iDinamico:=0;
end;

procedure TfCreaListWiz.cbAppScontiClick(Sender: TObject);
begin
 If (cbAppSconti.checked) Then iScontato:=1
                          Else iScontato:=0;
end;

procedure TfCreaListWiz.cbComprIVAClick(Sender: TObject);
begin
 If (cbComprIVA.Checked) Then iIvato:=1
                         Else iIvato:=0;
end;

procedure TfCreaListWiz.cbMargineClick(Sender: TObject);
begin
 If (cbMargine.Checked) Then iRicaricaPerc:=1
                        Else iRicaricaPerc:=0;
end;

procedure TfCreaListWiz.rbAltroListClick(Sender: TObject);
begin
 iListinoAltCliFor:=0;
end;

procedure TfCreaListWiz.rbListCliClick(Sender: TObject);
begin
 iListinoAltCliFor:=1
end;

procedure TfCreaListWiz.rbListForClick(Sender: TObject);
begin
 iListinoAltCliFor:=2;
end;

procedure TfCreaListWiz.rbStdCostoClick(Sender: TObject);
begin
 iStandCostoPrezzo:=0;
 cBaseTipoAV:='C';
end;

procedure TfCreaListWiz.rbStdPrezzoClick(Sender: TObject);
begin
 iStandCostoPrezzo:=1;
 cBaseTipoAV:='P';
end;

procedure TfCreaListWiz.rbCostAcqClick(Sender: TObject);
begin
 iCosrAcqPrezVend:=0;
 cBaseTipoAV:='A';
end;

procedure TfCreaListWiz.rbPrezVendClick(Sender: TObject);
begin
 iCosrAcqPrezVend:=1;
 cBaseTipoAV:='V';

end;

procedure TfCreaListWiz.BaseMedia;
Var
 intFK_Iva{,intArtCntr,intCntr}: Integer;
 strCodiceArticolo: String;
 dIva: Double;
begin
 TRY
   // media
  // Base Listino
  With (dmodAz.ibTab_Listino) Do
  Begin
   Open;
    Insert;
     FieldByName('Codice').AsString:=strCodice;
     FieldByName('Descr').AsString:=strDescr;
     FieldByName('DATA_INIZIO_VALIDITA').AsDateTime:=dDataInizVal;
     FieldByName('DATA_Fine_VALIDITA').AsDateTime:=dDataFineVal;
     FieldByName('MONETE_ID').Value:=LookMonetaDescr.KeyValue;
     FieldByName('SCONTATO').AsInteger:=iScontato;
     FieldByName('IVATO').AsInteger:=iIvato;
     FieldByName('ARROTONDAMENTO_ID').Value:=LookArrotond.KeyValue;
     FieldByName('PERC_PROVV').AsFloat:=dpRicaricoPerc;
    Post;
  End;
  dmodAz.ibTab_Articoli.Open;
  dmodAz.ibTab_Det_Articolo.Open;
  //   intArtCntr:=dmodAz.ibTab_Articoli.RecordCount;
  //  For intCntr:=0 To intArtCntr-1 Do
  While Not(dmodAz.ibTab_Articoli.Eof) Do
  Begin
   // leggi articolo poi scrivi in det_art
   strCodiceArticolo:=dmodAz.ibTab_Articoli.FieldByName('CODICE_ARTICOLO').AsString;

   // IVA per Articolo
   Try
    intFK_Iva:=dmodAz.ibTab_Articoli.FieldByName('CODICE_IVA_ID').AsInteger;
    If (dmodAz.ibTab_Codici_IVA.Locate('CODICE',intFK_Iva,[])) Then 
     dIVA:=dmodAz.ibTab_Codici_IVAALIQUOTA.AsFloat
    Else dIVA:=0;
   Except 
    dIVA:=0;
   End; 

    // Inserire la riga con i campi
    dmodAz.ibTab_Det_Articolo.Insert;
    
    dmodAz.ibTab_Det_Articolo.FieldByName('BASE_TIPO').AsString:=cBaseTipoAV;
    dmodAz.ibTab_Det_Articolo.FieldByName('BASE').AsInteger:=iBaseTipo;
    
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_ARTICOLO').AsString:=strCodiceArticolo;
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_LISTINO').AsString:=strCodice;

     dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=iDinamico;

     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA_PERC').AsFloat:=dpRicaricoPerc;
     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA').AsFloat:=dpRicarico;

     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=iScontato;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO1').AsFloat:=dpSconto1;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO2').AsFloat:=dpSconto2;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO3').AsFloat:=dpSconto3;
     // se esiste in contabile art
     If (dmodAz.ibqContabile_Articolo.Locate('CODICE_ARTICOLO',strCodiceArticolo,[])) Then 
      Begin
       //If Not(cbPrezziDinamici.Checked) Then  // se è dinamico
        Begin
         If (iStandCostoPrezzo=0) Then // Costo 
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMEDIO_COSTO_ACQ.AsFloat;
          End                          
         Else  // Prezzo 
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMED_PREZZO_VEND.AsFloat;
          End
        End // non dinamico
      End;
    If (iScontato=1)
     Then Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
             dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*
               ( (dpSconto1+dpSconto2+dpSconto3) / 100);
{           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
             dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
             dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto3/100;
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
             dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
             dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto2/100;}
          End;
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicarico;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicaricoPerc*
       dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat/100;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=
      ( dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+
         dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat * dIVA/100 );
    dmodAz.ibTab_Det_Articolo.FieldByName('IVA').AsFloat:= dIVA;
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     (dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat);

       
    dmodAz.ibTab_Det_Articolo.Post;

   dmodAz.ibTab_Articoli.Next;
  End;
 Finally
  // Apply all updates!
  dmodAz.ibTab_Listino.ApplyUpdates;
  dmodAz.ibTab_Det_Articolo.ApplyUpdates;
 End;

end;

procedure TfCreaListWiz.BasePrezzoArt;
Var
 intFK_Iva{,intArtCntr,intCntr}: Integer;
 strCodiceArticolo: String;
 dIva: Double;
begin
 TRY
   // Prezzo Articoli
  // Base Listino
  With (dmodAz.ibTab_Listino) Do
  Begin
   Open;
    Insert;
     FieldByName('Codice').AsString:=strCodice;
     FieldByName('Descr').AsString:=strDescr;
     FieldByName('DATA_INIZIO_VALIDITA').AsDateTime:=dDataInizVal;
     FieldByName('DATA_Fine_VALIDITA').AsDateTime:=dDataFineVal;
     FieldByName('MONETE_ID').Value:=LookMonetaDescr.KeyValue;
     FieldByName('SCONTATO').AsInteger:=iScontato;
     FieldByName('IVATO').AsInteger:=iIVATO;

     FieldByName('ARROTONDAMENTO_ID').Value:=LookArrotond.KeyValue;
     FieldByName('PERC_PROVV').AsFloat:=dpRicaricoPerc;
    Post;
  End;
  dmodAz.ibTab_Articoli.Open;
  dmodAz.ibTab_Det_Articolo.Open;
  //  intArtCntr:=dmodAz.ibTab_Articoli.RecordCount;
   //  For intCntr:=0 To intArtCntr-1 Do
  While Not(dmodAz.ibTab_Articoli.Eof) Do
  Begin
   // leggi articolo poi scrivi in det_art
   strCodiceArticolo:=dmodAz.ibTab_Articoli.FieldByName('CODICE_ARTICOLO').AsString;

   // IVA per Articolo
   Try
    intFK_Iva:=dmodAz.ibTab_Articoli.FieldByName('CODICE_IVA_ID').AsInteger;
    If (dmodAz.ibTab_Codici_IVA.Locate('CODICE',intFK_Iva,[])) Then 
     dIVA:=dmodAz.ibTab_Codici_IVAALIQUOTA.AsFloat
    Else dIVA:=0;
   Except 
    dIVA:=0;
   End; 

    // Inserire la riga con i campi
    dmodAz.ibTab_Det_Articolo.Insert;

     dmodAz.ibTab_Det_Articolo.FieldByName('BASE_TIPO').AsString:=cBaseTipoAV;
     dmodAz.ibTab_Det_Articolo.FieldByName('BASE').AsInteger:=iBaseTipo;
    
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_ARTICOLO').AsString:=strCodiceArticolo;
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_LISTINO').AsString:=strCodice;

     dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=iDinamico;

     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA_PERC').AsFloat:=dpRicaricoPerc;
     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA').AsFloat:=dpRicarico;

     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=iSCONTATO;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO1').AsFloat:=dpSconto1;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO2').AsFloat:=dpSconto2;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO3').AsFloat:=dpSconto3;

     // se esiste in contabile art
     // 080401 lom If (dmodAz.ibqContabile_Articolo.Locate('CODICE_ARTICOLO',strCodiceArticolo,[])) Then 
      Begin
       //If Not(cbPrezziDinamici.Checked) Then  // se è dinamico
        Begin
         If (iStandCostoPrezzo=0) 
          Then // Costo Standard
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibTab_ArticoliCosto_standart.AsFloat
         Else  // Prezzo Standard
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibTab_ArticoliPrezzo_Base.AsFloat;
        End // non dinamico
      End;

    If (iSCONTATO=1)
     Then Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*
               ( (dpSconto1+dpSconto2+dpSconto3) / 100);
{           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto2/100;
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto3/100;}
          End;
          
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
        dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicarico;
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
        dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicaricoPerc*
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat/100;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=
      (dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+
         dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat * dIVA/100);
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     (dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat);

    dmodAz.ibTab_Det_Articolo.FieldByName('IVA').AsFloat:= dIVA;
  

// -> SALVARE
    
    dmodAz.ibTab_Det_Articolo.Post;

   dmodAz.ibTab_Articoli.Next;
  End;
 Finally
  // Apply all updates!
  dmodAz.ibTab_Listino.ApplyUpdates;
  dmodAz.ibTab_Det_Articolo.ApplyUpdates;
 End;

end;

procedure TfCreaListWiz.BasePrezzoUlt;
Var
 intFK_Iva{,intArtCntr,intCntr}: Integer;
 strCodiceArticolo: String;
 dIva: Double;
begin
 TRY
   // Prezzo Ultimo
  // Base Listino
  With (dmodAz.ibTab_Listino) Do
  Begin
   Open;
    Insert;
     FieldByName('Codice').AsString:=strCodice;
     FieldByName('Descr').AsString:=strDescr;
     FieldByName('DATA_INIZIO_VALIDITA').AsDateTime:=dDataInizVal;
     FieldByName('DATA_Fine_VALIDITA').AsDateTime:=dDataFineVal;
     FieldByName('MONETE_ID').Value:=LookMonetaDescr.KeyValue;
     FieldByName('SCONTATO').AsInteger:=iScontato;
     FieldByName('IVATO').AsInteger:=iIvato;
     FieldByName('ARROTONDAMENTO_ID').Value:=LookArrotond.KeyValue;
     FieldByName('PERC_PROVV').AsFloat:=dpRicaricoPerc;
    Post;
  End;
  dmodAz.ibTab_Articoli.Open;
  dmodAz.ibTab_Det_Articolo.Open;
  // intArtCntr:=dmodAz.ibTab_Articoli.RecordCount;
  //For intCntr:=0 To intArtCntr-1 Do
  While Not(dmodAz.ibTab_Articoli.Eof) Do
  Begin
   // leggi articolo poi scrivi in det_art
   strCodiceArticolo:=dmodAz.ibTab_Articoli.FieldByName('CODICE_ARTICOLO').AsString;

   // IVA per Articolo
   Try
    intFK_Iva:=dmodAz.ibTab_Articoli.FieldByName('CODICE_IVA_ID').AsInteger;
    If (dmodAz.ibTab_Codici_IVA.Locate('CODICE',intFK_Iva,[])) 
     Then dIVA:=dmodAz.ibTab_Codici_IVAALIQUOTA.AsFloat
     Else dIVA:=0;
   Except 
    dIVA:=0;
   End; 

    // Inserire la riga con i campi

    dmodAz.ibTab_Det_Articolo.Insert;

    dmodAz.ibTab_Det_Articolo.FieldByName('BASE_TIPO').AsString:=cBaseTipoAV;
    dmodAz.ibTab_Det_Articolo.FieldByName('BASE').AsInteger:=iBaseTipo;
    
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_ARTICOLO').AsString:=strCodiceArticolo;
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_LISTINO').AsString:=strCodice;

     dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=iDinamico;

     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA_PERC').AsFloat:=dpRicaricoPerc;
     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA').AsFloat:=dpRicarico;

     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=iScontato;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO1').AsFloat:=dpSconto1;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO2').AsFloat:=dpSconto2;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO3').AsFloat:=dpSconto3;
     // se esiste in contabile art
     If (dmodAz.ibqContabile_Articolo.Locate('CODICE_ARTICOLO',strCodiceArticolo,[])) Then 
      Begin
       //If Not(cbPrezziDinamici.Checked) Then  // se è dinamico
        Begin
         If (iCosrAcqPrezVend=0) Then // Costo 
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloULT_COSTO_ACQ.AsFloat;
          End                          
         Else  // Prezzo Standard
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloULT_PREZZO_VEND.AsFloat;
          End
        End // non dinamico
      End;
    
    If (iSCONTATO=1)
     Then Begin 
            dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*
               ( (dpSconto1+dpSconto2+dpSconto3) / 100);
{            dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto2/100;
            dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto3/100;}
          End;
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicarico;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicaricoPerc*
       dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat/100;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     (dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat);

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=
      ( dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+
         dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat * dIVA/100 );
    dmodAz.ibTab_Det_Articolo.FieldByName('IVA').AsFloat:= dIVA;
       

   // --> salvare
    dmodAz.ibTab_Det_Articolo.Post;

   dmodAz.ibTab_Articoli.Next;
  End;
 Finally
  // Apply all updates!
  dmodAz.ibTab_Listino.ApplyUpdates;
  dmodAz.ibTab_Det_Articolo.ApplyUpdates;
 End;
End;

procedure TfCreaListWiz.BaseListino;
Var
 intFK_Iva{,intArtCntr,intCntr}: Integer;
 strCodiceArticolo: String;
 dIva: Double;
begin

 TRY
  // listino collegato
  strListino_Collegato:=LookListino.KeyValue;

  // Base Listino
  With (dmodAz.ibTab_Listino) Do
  Begin
   Open;
    Insert;
     FieldByName('Codice').AsString:=strCodice;
     FieldByName('Descr').AsString:=strDescr;
     FieldByName('DATA_INIZIO_VALIDITA').AsDateTime:=dDataInizVal;
     FieldByName('DATA_Fine_VALIDITA').AsDateTime:=dDataFineVal;
     FieldByName('MONETE_ID').Value:=LookMonetaDescr.KeyValue;
     FieldByName('SCONTATO').AsInteger:=iScontato;
     FieldByName('IVATO').AsInteger:=iIvato;
     FieldByName('ARROTONDAMENTO_ID').Value:=LookArrotond.KeyValue;
     FieldByName('CODICE_ALTRO_LISTINO_ID').Value:=LookListino.KeyValue;
     FieldByName('PERC_PROVV').AsFloat:=dpRicaricoPerc;
    Post;
  End;
  dmodAz.ibTab_Listino.ApplyUpdates;
  dmodAz.ibTab_Articoli.Open;
  dmodAz.ibTab_Det_Articolo.Open;

  //  intArtCntr:=dmodAz.ibTab_Articoli.RecordCount;

  // Apri listino collegato
  dmodAz.ibTab_Listino.Locate('CODICE',strListino_Collegato,[]);

  While Not(dmodAz.ibTab_Articoli.Eof) Do

//  For intCntr:=0 To intArtCntr-1 Do
  Begin
   // leggi articolo poi scrivi in det_art
   strCodiceArticolo:=dmodAz.ibTab_Articoli.FieldByName('CODICE_ARTICOLO').AsString;
   dpTotRicarico:=dpRicarico+dmodAz.ibTab_Listino.fieldbyname('Perc_Provv').AsFloat;

   // IVA per Articolo
   Try
    intFK_Iva:=dmodAz.ibTab_Articoli.FieldByName('CODICE_IVA_ID').AsInteger;
    If (dmodAz.ibTab_Codici_IVA.Locate('CODICE',intFK_Iva,[])) Then 
     dIVA:=dmodAz.ibTab_Codici_IVAALIQUOTA.AsFloat
    Else dIVA:=0;
   Except 
    dIVA:=0;
   End; 

    // Inserire la riga con i campi

    dmodAz.ibTab_Det_Articolo.Insert;
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_ARTICOLO').AsString:=strCodiceArticolo;
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_LISTINO').AsString:=strCodice;

     dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=iDinamico;

     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA_PERC').AsFloat:=dpRicaricoPerc;
     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA').AsFloat:=dpRicarico;

     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=iScontato;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO1').AsFloat:=dpSconto1;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO2').AsFloat:=dpSconto2;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO3').AsFloat:=dpSconto3;

    If (iScontato=1)
     Then Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*
               ( (dpSconto1+dpSconto2+dpSconto3) / 100);
{           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto2/100;
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto3/100;}
          End; 

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicarico;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicaricoPerc*
       dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat/100;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=
      ( dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+
         dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat * dIVA/100 );
    dmodAz.ibTab_Det_Articolo.FieldByName('IVA').AsFloat:= dIVA;
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     (dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat);

       
    dmodAz.ibTab_Det_Articolo.Post;

   dmodAz.ibTab_Articoli.Next;
  End;
 Finally
  // Apply all updates!
  dmodAz.ibTab_Det_Articolo.ApplyUpdates;
 End;

end;

procedure TfCreaListWiz.edCodice_ListinoChange(Sender: TObject);
begin
 strCodice:=edCodice_Listino.Text;
end;

procedure TfCreaListWiz.edDescrChange(Sender: TObject);
begin
 strDescr:=edDescr.Text;
end;

procedure TfCreaListWiz.BaseGruppi;
Var
 intFK_Iva{,intArtCntr,intCntr}: Integer;
 strCodiceArticolo: String;
 dIva: Double;
begin
 TRY
   // Prezzo Ultimo
  // Base Listino
  With (dmodAz.ibTab_Listino) Do
  Begin
   Open;
    Insert;
     FieldByName('Codice').AsString:=strCodice;
     FieldByName('Descr').AsString:=strDescr;
     FieldByName('DATA_INIZIO_VALIDITA').AsDateTime:=dDataInizVal;
     FieldByName('DATA_Fine_VALIDITA').AsDateTime:=dDataFineVal;
     FieldByName('MONETE_ID').Value:=LookMonetaDescr.KeyValue;
     If (cbAppSconti.Checked)
      Then  FieldByName('SCONTATO').AsInteger:=1
       Else  FieldByName('SCONTATO').AsInteger:=0;
     If (cbComprIVA.Checked)
      Then FieldByName('IVATO').AsInteger:=1
      Else FieldByName('IVATO').AsInteger:=0;
     FieldByName('ARROTONDAMENTO_ID').Value:=LookArrotond.KeyValue;
     FieldByName('PERC_PROVV').AsFloat:=dpRicarico;
    Post;
  End;

  //  dmodAz.ibTab_Articoli.Open;
  dmodAz.ibTab_Det_Articolo.Open;
  // intArtCntr:=dmodAz.ibqRicerca.RecordCount;
//  For intCntr:=0 To intArtCntr-1 Do
  While Not(dmodAz.ibTab_Articoli.Eof) Do
  Begin
   // leggi articolo poi scrivi in det_art
   strCodiceArticolo:=dmodAz.ibqRicerca.FieldByName('CODICE_ARTICOLO').AsString;

   // IVA per Articolo
   Try
    intFK_Iva:=dmodAz.ibTab_Articoli.FieldByName('CODICE_IVA_ID').AsInteger;
    If (dmodAz.ibTab_Codici_IVA.Locate('CODICE',intFK_Iva,[])) Then 
     dIVA:=dmodAz.ibTab_Codici_IVAALIQUOTA.AsFloat
    Else dIVA:=0;
   Except 
    dIVA:=0;
   End; 

    // Inserire la riga con i campi

    dmodAz.ibTab_Det_Articolo.Insert;
    dmodAz.ibTab_Det_Articolo.FieldByName('BASE_TIPO').AsString:=cBaseTipoAV;
    dmodAz.ibTab_Det_Articolo.FieldByName('BASE').AsInteger:=iBaseTipo;
    
    dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_ARTICOLO').AsString:=
            strCodiceArticolo;
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_LISTINO').AsString:=
             strCodice;

    If (cbPrezziDinamici.Checked)
       Then dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=1
       Else dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=0;

    If (cbAppSconti.Checked)
       Then dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=1
       Else dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=0;

     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO1').AsFloat:=
             dpSconto1;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO2').AsFloat:=
             dpSconto2;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO3').AsFloat:=
             dpSconto3;

{     // azzerare prima
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=0;
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=0;
     dmodAz.ibTab_Det_Articolo.FieldByName('IVA').AsFloat:=dIVA;
}
     // se esiste in contabile art
     If (dmodAz.ibqContabile_Articolo.Locate('CODICE_ARTICOLO',strCodiceArticolo,[])) Then 
      Begin
       //If Not(cbPrezziDinamici.Checked) Then  // se è dinamico
        Begin
         If (iCosrAcqPrezVend=0) Then // Costo 
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMEDIO_COSTO_ACQ.AsFloat;
          End                          
         Else  // Prezzo Standard
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMED_PREZZO_VEND.AsFloat;
          End
        End // non dinamico
      End;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*
               ( (dpSconto1+dpSconto2+dpSconto3) / 100);

{    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto2/100;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto3/100;
 }
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicarico;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicaricoPerc*
       dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat/100;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     (dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat);

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=
      (
       dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+
         dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat * dIVA/100
            );
    dmodAz.ibTab_Det_Articolo.FieldByName('IVA').AsFloat:= dIVA;
       
    dmodAz.ibTab_Det_Articolo.Post;

   dmodAz.ibqRicerca.Next;
  End;
 Finally
  // Apply all updates!
  dmodAz.ibTab_Listino.ApplyUpdates;
  dmodAz.ibTab_Det_Articolo.ApplyUpdates;
 End;
End;





procedure TfCreaListWiz.bbFiltraGruppoClick(Sender: TObject);
Var 
 strFamiglia,strMarca,strGruppo,strTipo: String;
begin
 With (dmodAz.ibqRicerca) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM TAB_ARTICOLI');
   SQL.Add('Where CODICE_ARTICOLO Is Not Null');
   If ((cbF.Checked)Or(cbM.Checked)Or(cbG.Checked)or(cbT.Checked))
    Then Begin
          If (cbF.Checked)
           Then Begin 
                  strFamiglia:=LookFam.KeyValue;
                  SQL.Add('AND CAT_ART_FAMIGLIA_ID like '''+strFamiglia+'''');                  
                End;  
          If (cbM.Checked)
           Then Begin
                  strMarca:=LookMarca.KeyValue;
                  SQL.Add('AND CAT_ART_MArca_ID like '''+strMarca+'''');
                End;  
          If (cbG.Checked)
           Then Begin 
                  strGruppo:=LookGruppo.KeyValue;
                  SQL.Add('AND CAT_ART_gruppo_ID like '''+strGruppo+'''');
                End;  
          If (cbT.Checked)
           Then Begin
                  strTipo:=LookTipo.KeyValue;
                  SQL.Add('AND CAT_ART_tipo_ID like '''+strTipo+'''');
                End;
         End;
   
  Open;
 End;
 pCtrlOptions.ActivePage:=tabs4;
end;

procedure TfCreaListWiz.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmodAz.ibqRicerca.Close;
 dmodAz.ibTab_Codici_IVA.Close;
end;



procedure TfCreaListWiz.BaseSel;
Var
 intFK_Iva,intArtCntr,intCntr: Integer;
 strCodiceArticolo: String;
 dIva: Double;
begin
 TRY
       // Prezzo Ultimo
  // Base Sel
  With (dmodAz.ibTab_Listino) Do
  Begin
   Open;
    Insert;
     FieldByName('Codice').AsString:=strCodice;
     FieldByName('Descr').AsString:=strDescr;
     FieldByName('DATA_INIZIO_VALIDITA').AsDateTime:=dDataInizVal;
     FieldByName('DATA_Fine_VALIDITA').AsDateTime:=dDataFineVal;
     FieldByName('MONETE_ID').Value:=LookMonetaDescr.KeyValue;
     If (cbAppSconti.Checked)
       Then  FieldByName('SCONTATO').AsInteger:=1
       Else  FieldByName('SCONTATO').AsInteger:=0;
     If (cbComprIVA.Checked)
      Then FieldByName('IVATO').AsInteger:=1
      Else FieldByName('IVATO').AsInteger:=0;
     FieldByName('ARROTONDAMENTO_ID').Value:=LookArrotond.KeyValue;
     FieldByName('PERC_PROVV').AsFloat:=dpRicarico;
    Post;
  End;

  //  dmodAz.ibTab_Articoli.Open;
  dmodAz.ibTab_Det_Articolo.Open;
   intArtCntr:=dmodAz.ibqRicerca.RecordCount;
  For intCntr:=0 To intArtCntr-1 Do
  Begin
   // leggi articolo poi scrivi in det_art
   strCodiceArticolo:=dmodAz.ibqRicerca.FieldByName('CODICE_ARTICOLO').AsString;

   // IVA per Articolo
   Try
    intFK_Iva:=dmodAz.ibTab_Articoli.FieldByName('CODICE_IVA_ID').AsInteger;
    If (dmodAz.ibTab_Codici_IVA.Locate('CODICE',intFK_Iva,[])) Then
     dIVA:=dmodAz.ibTab_Codici_IVAALIQUOTA.AsFloat
    Else dIVA:=0;
   Except 
    dIVA:=0;
   End; 

    // Inserire la riga con i campi

    dmodAz.ibTab_Det_Articolo.Insert;
    dmodAz.ibTab_Det_Articolo.FieldByName('BASE_TIPO').AsString:=cBaseTipoAV;
    dmodAz.ibTab_Det_Articolo.FieldByName('BASE').AsInteger:=iBaseTipo;
    
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_ARTICOLO').AsString:=
            strCodiceArticolo;
     dmodAz.ibTab_Det_Articolo.FieldByName('CODICE_LISTINO').AsString:=
             strCodice;

    If (cbPrezziDinamici.Checked)
       Then dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=1
       Else dmodAz.ibTab_Det_Articolo.FieldByName('DINAMICO').AsInteger:=0;

    If (cbAppSconti.Checked)
       Then dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=1
       Else dmodAz.ibTab_Det_Articolo.FieldByName('SCONTATO').AsInteger:=0;

     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO1').AsFloat:=
             dpSconto1;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO2').AsFloat:=
             dpSconto2;
     dmodAz.ibTab_Det_Articolo.FieldByName('SCONTO3').AsFloat:=
             dpSconto3;

     // se esiste in contabile art
     If (dmodAz.ibqContabile_Articolo.Locate('CODICE_ARTICOLO',strCodiceArticolo,[])) Then
      Begin
       //If Not(cbPrezziDinamici.Checked) Then  // se è dinamico
        Begin
         If (iCosrAcqPrezVend=0) Then // Costo
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMEDIO_COSTO_ACQ.AsFloat;
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMEDIO_COSTO_ACQ.AsFloat+
             dmodAz.ibqContabile_ArticoloMEDIO_COSTO_ACQ.AsFloat*dIVA/100;
          End
         Else  // Prezzo Standard
          Begin
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMED_PREZZO_VEND.AsFloat;
           dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO_IVATO').AsFloat:=
            dmodAz.ibqContabile_ArticoloMED_PREZZO_VEND.AsFloat+
             dmodAz.ibqContabile_ArticoloMED_PREZZO_VEND.AsFloat*dIVA/100;
          End
        End // non dinamico
      End;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
              dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*
               ( (dpSconto1+dpSconto2+dpSconto3) / 100);
{
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto2/100;

    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat-
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat*dpSconto3/100;
 }
    dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat:=
     dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat+dpRicarico*
       dmodAz.ibTab_Det_Articolo.FieldByName('PREZZO').AsFloat/100;

     dmodAz.ibTab_Det_Articolo.FieldByName('RICARICA_perc').AsFloat:=
             dpRicarico;
    dmodAz.ibTab_Det_Articolo.FieldByName('IVA').AsFloat:= dIVA;

    dmodAz.ibTab_Det_Articolo.Post;

   dmodAz.ibqRicerca.Next;
  End;
 Finally
  // Apply all updates!
  dmodAz.ibTab_Listino.ApplyUpdates;
  dmodAz.ibTab_Det_Articolo.ApplyUpdates;
 End;
End;

procedure TfCreaListWiz.bbFiltraSelClick(Sender: TObject);
Var
 strDa,strA: String;
begin
 //
 If (edDa.Text='')
  Then strDa:='%'
  Else strDa:=edDa.Text;
 If (edA.Text='')
  Then strA:='%'
  Else strA:=edA.Text;

 With (dmodAz.ibqRicerca) Do
 Begin
  Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM TAB_ARTICOLI');
   SQL.Add(' WHERE CODICE_ARTICOLO BETWEEN '''+strDa+
            ''' AND '''+strA+'''');
  
  Open;
 End;

end;

procedure TfCreaListWiz.LookListArticoliDblClick(Sender: TObject);
begin
 // Rotate articolo! :)
 edDa.Text:=edA.Text;
 edA.Text:=LookListArticoli.KeyValue;
end;

procedure TfCreaListWiz.FormCreate(Sender: TObject);
begin
 dmodAz.ibTab_Codici_IVA.Open;
 dmodAz.ibqContabile_Articolo.Open;
end;

procedure TfCreaListWiz.rabTuttiClick(Sender: TObject);
begin
 If (rabCategoria.checked)
  Then paGruppi.Visible:=True
  Else paGruppi.Visible:=False;
 If (rabDaA.checked)
  Then paBaseSel.Visible:=True
  Else paBaseSel.Visible:=False;
 
end;

procedure TfCreaListWiz.edScontoPercExit(Sender: TObject);
begin
 Try
  dpSconto1:=StrToFloat(edScontoPerc.Text);
 Except
  dpSconto1:=0;edScontoPerc.Text:='0';
 End;
end;

procedure TfCreaListWiz.edSconto2Exit(Sender: TObject);
begin
 Try
  dpSconto2:=StrToFloat(edSconto2.Text);
 Except
  dpSconto2:=0;edSconto2.Text:='0';
 End;
end;

procedure TfCreaListWiz.edRicaricoPercExit(Sender: TObject);
begin
 Try
  dpRicaricoPerc:=StrToFloat(edRicaricoPerc.Text);
 Except
  dpRicaricoPerc:=0;edRicaricoPerc.Text:='0';
 End;
end;

procedure TfCreaListWiz.edRicaricoLireExit(Sender: TObject);
begin
 Try
  dpRicarico:=StrToFloat(edRicaricoLire.Text);
 Except
  dpRicarico:=0;edRicaricoLire.Text:='0';
 End;
end;

procedure TfCreaListWiz.edSconto3Exit(Sender: TObject);
begin
 Try
  dpSconto3:=StrToFloat(edSconto3.Text);
 Except
  dpSconto3:=0;edSconto3.Text:='0';
 End;
end;

end.
