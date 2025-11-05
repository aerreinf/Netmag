unit frmuListStampa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, Db, StdCtrls, Buttons;

type
  TfrmListiniStampa = class(TForm)
    rxdblcListino: TRxDBLookupCombo;
    dsListini: TDataSource;
    lblListino: TLabel;
    rbArtTutti: TRadioButton;
    rbArtFiltra: TRadioButton;
    bbStList: TBitBtn;
    rxdblcTipo: TRxDBLookupCombo;
    rxdblcGruppo: TRxDBLookupCombo;
    rxdblcMarca: TRxDBLookupCombo;
    rxdblcFamiglia: TRxDBLookupCombo;
    dsTipo: TDataSource;
    dsGruppo: TDataSource;
    dsMarca: TDataSource;
    dsFamiglia: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure bbStListClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
   private
    Procedure per_Stampa_Setta_Parametri;
   public
    { Public declarations }
  end;

var
  frmListiniStampa: TfrmListiniStampa;

implementation

uses uAzDM, uPrnForm;

{$R *.DFM}

procedure TfrmListiniStampa.per_Stampa_Setta_Parametri;
begin
 dmodaz.ibqryListCustom.Close;

  If (rbArtTutti.Checked) Then
   Begin
    dmodaz.ibqryListCustom.SQL.Clear;
    dmodaz.ibqryListCustom.SQL.Add('select * from TAB_DET_LISTINO');
    dmodaz.ibqryListCustom.SQL.Add(' Where CODICE_LISTINO = :parCodListino');
   End
  Else 
   Begin
    dmodaz.ibqryListCustom.SQL.Clear;
    dmodaz.ibqryListCustom.SQL.Add('select * from TAB_DET_LISTINO');
    dmodaz.ibqryListCustom.SQL.Add(' Where CODICE_LISTINO = :parCodListino and');
    dmodaz.ibqryListCustom.SQL.Add(' CODICE_ARTICOLO in (select codice_Articolo from TAB_ARTICOLI');
    dmodaz.ibqryListCustom.SQL.Add(' Where CAT_ART_FAMIGLIA_ID = :parFamiglia and');
    dmodaz.ibqryListCustom.SQL.Add(' CAT_ART_GRUPPO_ID = :parGruppo and');
    dmodaz.ibqryListCustom.SQL.Add('  CAT_ART_MARCA_ID = :parMarca and CAT_ART_TIPO_ID = :parTipo)');
    dmodaz.ibqryListCustom.ParamByName('parTipo').AsString:=rxdblcTipo.Value;
    dmodaz.ibqryListCustom.ParamByName('parMarca').AsString:=rxdblcMarca.Value;
    dmodaz.ibqryListCustom.ParamByName('parGruppo').AsString:=rxdblcGruppo.Value;
    dmodaz.ibqryListCustom.ParamByName('parFamiglia').AsString:=rxdblcFamiglia.Value;
   End;
 dmodaz.ibqryListCustom.ParamByName('parCodListino').AsString:=rxdblcListino.Value;

 dmodaz.ibqryListCustom.Open;
end;

procedure TfrmListiniStampa.bbStListClick(Sender: TObject);
begin
 per_Stampa_Setta_Parametri;
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frListini.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frListini.frf');
     ShowReport;
 End;

end;

procedure TfrmListiniStampa.BitBtn1Click(Sender: TObject);
begin
 per_Stampa_Setta_Parametri;
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frListini_A.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frListini_A.frf');
     ShowReport;
 End;
end;

procedure TfrmListiniStampa.BitBtn2Click(Sender: TObject);
begin
 per_Stampa_Setta_Parametri;
 // Prepare report
 If Not(FileExists(ExtractFilePath(Application.ExeName)+'frListini_B.frf'))
    Then  Begin
            MessageDlg('Il file di stampa non esiste!',mtError,[mbok],0);
            Exit;
          End;
  With (dmodAz.rePRN) Do
  Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frListini_B.frf');
     ShowReport;
 End;
end;

procedure TfrmListiniStampa.FormShow(Sender: TObject);
begin
 dsListini.DataSet.Open;
 dsTipo.DataSet.Open;
 dsMarca.DataSet.Open;
 dsGruppo.DataSet.Open;
 dsFamiglia.DataSet.Open;
end;

procedure TfrmListiniStampa.FormDestroy(Sender: TObject);
begin
 dsListini.DataSet.Close;
 dsTipo.DataSet.Close;
 dsMarca.DataSet.Close;
 dsGruppo.DataSet.Close;
 dsFamiglia.DataSet.Close;
end;

procedure TfrmListiniStampa.BitBtn3Click(Sender: TObject);
begin
 Close;
end;

end.
