unit uSitMag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db;

type
  TfSitMag = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RadioGroup1: TRadioGroup;
    Button4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSitMag: TfSitMag;

implementation

uses uPrnBrogl, uAzDM, uPrnForm;

{$R *.DFM}

procedure TfSitMag.Button2Click(Sender: TObject);
begin

 With (dmodAz.ibqContabile_Articolo) Do
 Begin
  Close;
   SQL.Clear;
SQL.Add('Select a.CODICE_ARTICOLO, a.DEPOSITO_ID, a.CLI_FOR_ID,');
SQL.Add('a.TIPO_CLI_FOR_ID, a.DESCR, a.QTA_ACQUISTI, a.VAL_ACQUISTI,');
SQL.Add('a.DATA_ULTIMO_ACQUISTO, a.QTA_VENDITA, a.VAL_VENDITA, a.DATA_ULTIMA_VENDITA,');
SQL.Add('a.QTA_ALTRE_ENTRATE, a.VAL_ALTRE_ENTRATE, a.QTA_ALTRE_USCITE,');
SQL.Add('a.VAL_ALTRE_USCITA, a.QTA_RESO_CLIENTE, a.VAL_RESO_CLIENTE, a.QTA_RESO_FORNITORE,');
SQL.Add('a.VAL_RESO_FORNITORE, a.QTA_ORDINATO, a.VAL_ORDINATO, a.QTA_IMPEGNATO,');
SQL.Add('a.VAL_QTA_IMPEGNATO, a.QTA_EVASA_CLIENTE, a.VAL_EVASO_CLIENTE, a.QTA_EVASA_FORNITORE,');
SQL.Add('a.VAL_EVASO_FORNITORE, a.QTA_GIACENZA_INIZIALE, a.COSTO_GIACENZA_INIZIALE,');
SQL.Add('a.VAL_GIACENZA_INIZIALE, a.GIACENZA_ATTUALE, a.DISPONIBILITA,');
SQL.Add('a.COSTO_ULTIMO, a.MED_PREZZO_VEND, a.ULT_COSTO_ACQ, a.MEDIO_COSTO_ACQ, a.ULT_PREZZO_VEND,');
SQL.Add('B.descr as ArtDescr, C.descr as Deposito');
SQL.Add('FROM tab_contabile_articolo A join tab_articoli B');
SQL.Add('on A.codice_articolo=B.codice_articolo');
SQL.Add('join tab_depositi C on A.DEPOSITO_ID=C.codice');
SQL.Add('where b.Flag_Accessorie =''N''');



if RadioGroup1.ItemIndex = 0 then
SQL.Add('Order By C.Codice,a.Codice_articolo')
else
SQL.Add('Order By C.Codice,b.descr');
end;

   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazMag.frf');
     ShowReport;
 End;

end;

procedure TfSitMag.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TfSitMag.Button1Click(Sender: TObject);
begin

 With (dmodAz.ibqContabile_Articolo) Do
 Begin
  Close;
   SQL.Clear;
SQL.Add('Select a.CODICE_ARTICOLO, a.DEPOSITO_ID, a.CLI_FOR_ID,');
SQL.Add('a.TIPO_CLI_FOR_ID, a.DESCR, a.QTA_ACQUISTI, a.VAL_ACQUISTI,');
SQL.Add('a.DATA_ULTIMO_ACQUISTO, a.QTA_VENDITA, a.VAL_VENDITA, a.DATA_ULTIMA_VENDITA,');
SQL.Add('a.QTA_ALTRE_ENTRATE, a.VAL_ALTRE_ENTRATE, a.QTA_ALTRE_USCITE,');
SQL.Add('a.VAL_ALTRE_USCITA, a.QTA_RESO_CLIENTE, a.VAL_RESO_CLIENTE, a.QTA_RESO_FORNITORE,');
SQL.Add('a.VAL_RESO_FORNITORE, a.QTA_ORDINATO, a.VAL_ORDINATO, a.QTA_IMPEGNATO,');
SQL.Add('a.VAL_QTA_IMPEGNATO, a.QTA_EVASA_CLIENTE, a.VAL_EVASO_CLIENTE, a.QTA_EVASA_FORNITORE,');
SQL.Add('a.VAL_EVASO_FORNITORE, a.QTA_GIACENZA_INIZIALE, a.COSTO_GIACENZA_INIZIALE,');
SQL.Add('a.VAL_GIACENZA_INIZIALE, a.GIACENZA_ATTUALE, a.DISPONIBILITA,');
SQL.Add('a.COSTO_ULTIMO, a.MED_PREZZO_VEND, a.ULT_COSTO_ACQ, a.MEDIO_COSTO_ACQ, a.ULT_PREZZO_VEND,');
SQL.Add('B.descr as ArtDescr, C.descr as Deposito');
SQL.Add('FROM tab_contabile_articolo A join tab_articoli B');
SQL.Add('on A.codice_articolo=B.codice_articolo');
SQL.Add('join tab_depositi C on A.DEPOSITO_ID=C.codice');
SQL.Add('where b.Flag_Accessorie =''S''');



if RadioGroup1.ItemIndex = 0 then
SQL.Add('Order By C.Codice,a.Codice_articolo')
else
SQL.Add('Order By C.Codice,b.descr');
end;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frSituazMag.frf');
     ShowReport;
 End;


end;

procedure TfSitMag.Button4Click(Sender: TObject);
begin
dmodAz.ibTab_Articoli.Close;
dmodAz.ibTab_Articoli.SelectSQL.Clear;
dmodAz.ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
dmodAz.ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE like ''N''');
if RadioGroup1.ItemIndex = 0 then
dmodAz.ibTab_Articoli.SelectSQL.Add('Order By CODICE_ARTICOLO')
else
dmodAz.ibTab_Articoli.SelectSQL.Add('Order By descr');

dmodAz.ibTab_Articoli.Open;
  dmodAz.ibTab_Articoli.Open;
   With (dmodAz.rePRN) Do
   Begin
     LoadFromFile(ExtractFilePath(Application.ExeName)+'frArtMag.frf');
     ShowReport;
 End;

end;

procedure TfSitMag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dmodAz.ibTab_Articoli.Close;
dmodAz.ibTab_Articoli.SelectSQL.Clear;
dmodAz.ibTab_Articoli.SelectSQL.Add('select * from TAB_ARTICOLI');
dmodAz.ibTab_Articoli.SelectSQL.Add('Where FLAG_ACCESSORIE like ''N''');
dmodAz.ibTab_Articoli.SelectSQL.Add('order by codice_articolo');
end;

end.
