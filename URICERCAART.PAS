unit uRicercaArt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Db, Grids, DBGrids, Buttons, IBCustomDataSet, IBQuery,
  RxLookup, RXCtrls;

type
  TfRicercaArt = class(TForm)
    paCtrl: TPanel;
    paView: TPanel;
    dbgResult: TDBGrid;
    dsoRicArt: TDataSource;
    edParam: TEdit;
    cbMarca: TCheckBox;
    Label1: TLabel;
    rxdblcMarca: TRxDBLookupCombo;
    cbGruppo: TCheckBox;
    Label2: TLabel;
    rxdblcGruppo: TRxDBLookupCombo;
    dsoGRUPPO: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    cbFamiglia: TCheckBox;
    rxdblcFamiglia: TRxDBLookupCombo;
    cbTipo: TCheckBox;
    rxdblcTipo: TRxDBLookupCombo;
    dsoFAMIGLIA: TDataSource;
    dsoTIPO: TDataSource;
    bbVis: TBitBtn;
    dsoMARCA: TDataSource;
    bbPassa: TBitBtn;
    bbEsci: TBitBtn;
    RBCat: TRadioButton;
    rabDescr: TRadioButton;
    rabCod_Art: TRadioButton;
    bbMod: TBitBtn;
    RxLabel1: TRxLabel;
    IBQuery1: TIBDataSet;
    IBQuery1TOTART: TIntegerField;
    procedure bbEsciClick(Sender: TObject);
    procedure bbPassaClick(Sender: TObject);
    procedure bbVisClick(Sender: TObject);
    procedure edParamKeyPress(Sender: TObject; var Key: Char);
    procedure dbgResultDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rabDescrClick(Sender: TObject);
    procedure rabCod_ArtClick(Sender: TObject);
    procedure RBCatClick(Sender: TObject);
    procedure rxdblcMarcaChange(Sender: TObject);
    procedure rxdblcMarcaExit(Sender: TObject);
    procedure rxdblcFamigliaChange(Sender: TObject);
    procedure rxdblcFamigliaExit(Sender: TObject);
    procedure rxdblcGruppoChange(Sender: TObject);
    procedure rxdblcGruppoExit(Sender: TObject);
    procedure rxdblcTipoChange(Sender: TObject);
    procedure rxdblcTipoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbModClick(Sender: TObject);
  private
    { Private declarations }
  public
    boolPass: Boolean;
     strMarca, strFamiglia , strGruppo, strTipo: String;
  end;

var
  fRicercaArt: TfRicercaArt;

implementation

uses uAzDM, uModPrezzo, uArticoli;

{$R *.DFM}

procedure TfRicercaArt.bbEsciClick(Sender: TObject);
begin
 boolPass:=False;
 Close;
end;

procedure TfRicercaArt.bbPassaClick(Sender: TObject);
var
art : string;
begin
{art := dmodAz.ibqRicerca_Art.FieldByName('CODICE_ARTICOLO').AsString;
with dmodAz.ibTab_Articoli do
begin
close;
SelectSQL.Clear;
SelectSQL.add('select * from TAB_ARTICOLI');
SelectSQL.add('Where codice_articolo = '''+art+'''');
open;
end;}
//dmodAz.ibTab_Articoli.Locate('CODICE_ARTICOLO',
//   dmodAz.ibqRicerca_Art.FieldByName('CODICE_ARTICOLO').AsString,[]);
boolPass:=True;
fArticoli.Foto_Update;
Close;
End;

procedure TfRicercaArt.bbVisClick(Sender: TObject);
begin
 if not (RBCat.Checked) then
 begin

 With (dmodAz.ibTab_Articoli) Do
 Begin
  Close;
  SelectSQL.Clear;
  SelectSQL.Add('SELECT * FROM TAB_ARTICOLI');
//CODICE_ARTICOLO, DESCR, DESCR2, PREZZO_BASE, COSTO_STANDART,PREZZO_IVATO,DESCR_CODE_BAR
  If (rabCod_Art.Checked)
     Then SelectSQL.Add('WHERE CODICE_ARTICOLO LIKE '''+edParam.Text+'%''')
     Else SelectSQL.Add('WHERE DESCR LIKE '''+edParam.Text+'%''');
SelectSQL.add('order by codice_articolo');
  Open;
  end;

 With (IBQuery1) Do
 Begin
  Close;
  SelectSQL.Clear;
  SelectSQL.Add('SELECT count(*) as totart FROM TAB_ARTICOLI');
  If (rabCod_Art.Checked)
     Then SelectSQL.Add('WHERE CODICE_ARTICOLO LIKE '''+edParam.Text+'%''')
     Else SelectSQL.Add('WHERE DESCR LIKE '''+edParam.Text+'%''');
  Open;
 End;
 end
 else
 begin
  With (dmodAz.ibTab_Articoli) Do
 Begin
Close;
SelectSQL.Clear;

  SelectSQL.Add('SELECT * FROM TAB_ARTICOLI');
//SelectSQL.add('SELECT CODICE_ARTICOLO, DESCR, DESCR2, PREZZO_BASE, COSTO_STANDART,PREZZO_IVATO, DESCR_CODE_BAR FROM TAB_ARTICOLI');
SelectSQL.add('Where FLAG_ACCESSORIE like ''N''');

            If (cbMarca.Checked)
             Then SelectSQL.Add('And cat_art_marca_id = '+strMarca);
            If (cbTipo.Checked)
             Then SelectSQL.Add('And cat_art_tipo_id ='+strTipo);
            If (cbGruppo.Checked)
             Then SelectSQL.Add('And cat_art_gruppo_id = '+strGruppo);
            If (cbFamiglia.Checked)
             Then SelectSQL.Add('And cat_art_famiglia_id ='+strFamiglia);
//            IBQuery1.SQL.Add('))');


SelectSQL.add('order by codice_articolo');
Open;
end;
 With (IBQuery1) Do
 Begin
  Close;
  SelectSQL.Clear;
  SelectSQL.Add('SELECT count(*) as totart FROM TAB_ARTICOLI');
SelectSQL.add('Where FLAG_ACCESSORIE like ''N''');

            If (cbMarca.Checked)
             Then SelectSQL.Add('And cat_art_marca_id = '+strMarca);
            If (cbTipo.Checked)
             Then SelectSQL.Add('And cat_art_tipo_id ='+strTipo);
            If (cbGruppo.Checked)
             Then SelectSQL.Add('And cat_art_gruppo_id = '+strGruppo);
            If (cbFamiglia.Checked)
             Then SelectSQL.Add('And cat_art_famiglia_id ='+strFamiglia);
  Open;
end;
 end;
RxLabel1.Caption := IntToStr(IBQuery1TOTART.AsInteger);
RxLabel1.Visible := True;
end;

procedure TfRicercaArt.edParamKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key=#13)
   Then
   begin
    bbVis.Click;
   edParam.Text := '';
   edParam.SelectAll;
    end;
end;

procedure TfRicercaArt.dbgResultDblClick(Sender: TObject);
begin
 bbPassa.Click;
end;

procedure TfRicercaArt.FormShow(Sender: TObject);
begin
 dsoGRUPPO.DataSet.Open;
 dsoTIPO.DataSet.Open;
 dsoFAMIGLIA.DataSet.Open;
 dsoMARCA.DataSet.Open;
edParam.SetFocus;
end;

procedure TfRicercaArt.rabDescrClick(Sender: TObject);
begin
edParam.SetFocus;
edParam.SelectAll;
end;

procedure TfRicercaArt.rabCod_ArtClick(Sender: TObject);
begin
edParam.SetFocus;
edParam.SelectAll;
end;

procedure TfRicercaArt.RBCatClick(Sender: TObject);
begin
if (RBCat.Checked) then
begin
 rxdblcMarca.Enabled:= True;
 rxdblcFamiglia.Enabled:=True;
 rxdblcGruppo.Enabled:=True;
 rxdblcTipo.Enabled:=True;
 strMarca:='-1';
 strFamiglia:='-1';
 strGruppo:='-1';
 strTipo:='-1';

end
else
begin
 rxdblcMarca.Enabled:= False;
 rxdblcFamiglia.Enabled:=False;
 rxdblcGruppo.Enabled:=False;
 rxdblcTipo.Enabled:=False;

end;
end;

procedure TfRicercaArt.rxdblcMarcaChange(Sender: TObject);
begin
 strMarca:=rxdblcMarca.KeyValue;
end;

procedure TfRicercaArt.rxdblcMarcaExit(Sender: TObject);
begin
 strMarca:=rxdblcMarca.KeyValue;
end;

procedure TfRicercaArt.rxdblcFamigliaChange(Sender: TObject);
begin
 strFamiglia:=rxdblcFamiglia.KeyValue;
end;

procedure TfRicercaArt.rxdblcFamigliaExit(Sender: TObject);
begin
 strFamiglia:=rxdblcFamiglia.KeyValue;
end;

procedure TfRicercaArt.rxdblcGruppoChange(Sender: TObject);
begin
 strGruppo:=rxdblcGruppo.KeyValue;
end;

procedure TfRicercaArt.rxdblcGruppoExit(Sender: TObject);
begin
 strGruppo:=rxdblcGruppo.KeyValue;
end;

procedure TfRicercaArt.rxdblcTipoChange(Sender: TObject);
begin
 strTipo:=rxdblcTipo.KeyValue;
end;

procedure TfRicercaArt.rxdblcTipoExit(Sender: TObject);
begin
 strTipo:=rxdblcTipo.KeyValue;
end;

procedure TfRicercaArt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F6 THEN
bbEsci.Click;
end;

procedure TfRicercaArt.bbModClick(Sender: TObject);
begin
{fModPrezzo := TfModPrezzo.Create(Application);
fModPrezzo.ShowModal;
fModPrezzo.Free;}
//bbMod.
end;

end.
