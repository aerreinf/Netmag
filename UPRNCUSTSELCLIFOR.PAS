unit uPrnCustSelCliFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TfPrnCustSel = class(TForm)
    Panel1: TPanel;
    cbDaCliFor: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cbACliFor: TComboBox;
    cbZona: TComboBox;
    cbAgente: TComboBox;
    cbPag: TComboBox;
    cbRag: TComboBox;
    bbEsci: TBitBtn;
    bbStampaSel2: TBitBtn;
    chCliFor: TCheckBox;
    chZona: TCheckBox;
    chRag: TCheckBox;
    chPag: TCheckBox;
    chAgente: TCheckBox;
    chOperator: TCheckBox;
    cbZoneCodice: TComboBox;
    cbRagCod: TComboBox;
    cbAgenteCodice: TComboBox;
    cbPagCod: TComboBox;
    procedure bbStampaSel2Click(Sender: TObject);
    procedure chCliForClick(Sender: TObject);
    procedure chZonaClick(Sender: TObject);
    procedure chAgenteClick(Sender: TObject);
    procedure chPagClick(Sender: TObject);
    procedure chRagClick(Sender: TObject);
    procedure bbEsciClick(Sender: TObject);
    procedure chOperatorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    bPerCli: Boolean;
    sqlOperator: String;

    Procedure Fill_Boxes;
    Function Check_For_Total_Selection: Boolean;
  end;

var
  fPrnCustSel: TfPrnCustSel;

implementation

uses uAzDM, uPrnForm;

{$R *.DFM}

{ TForm1 }

function TfPrnCustSel.Check_For_Total_Selection: Boolean;
begin
 Result:=True; // speriamo che sono selezionati tutti Combo
 If ((chCliFor.Checked) AND ((cbDaCliFor.ItemIndex=-1) Or (cbACliFor.ItemIndex=-1)))
  Then Result:=False;
 If ((chZona.Checked) AND (cbZona.ItemIndex=-1))
  Then Result:=False;
 If ((chAgente.Checked) AND (cbAgente.ItemIndex=-1))
  Then Result:=False;
 If ((chPag.Checked) AND (cbPag.ItemIndex=-1))
  Then Result:=False;
 If ((chRag.Checked) AND (cbRag.ItemIndex=-1))
  Then Result:=False;
end;

Procedure TfPrnCustSel.Fill_Boxes;
Var
 bOpened: Boolean; // Variabile, per cosa è? :) hai usato Query? si o no rimani come era!!!
Begin

 TRY
  cbDaCliFor.Items.Clear;
  cbACliFor.Items.Clear;
  cbAgente.Items.Clear;
  cbZona.Items.Clear;
  cbPag.Items.Clear;
  cbRag.Items.Clear;
  With (dmodAz) Do
  Begin
   //  Cli o For
   If (bPerCli)
    Then
     Begin
      bOpened:=ibqTab_Cli.Active;
      ibqTab_Cli.Active:=True;
      ibqTab_Cli.First;
      While Not(ibqTab_Cli.EoF) Do
      Begin
       cbDaCliFor.Items.Add(ibqTab_CliDENOMINAZIONE.AsString);
       cbACliFor.Items.Add(ibqTab_CliDENOMINAZIONE.AsString);
       ibqTab_Cli.Next;
      End;

      ibqTab_Cli.Active:=bOpened;
     End
    Else
     Begin
      bOpened:=ibqTab_For.Active;
      ibqTab_For.Active:=True;
      ibqTab_For.First;
      While Not(ibqTab_For.EoF) Do
      Begin
       cbDaCliFor.Items.Add(ibqTab_ForDENOMINAZIONE.AsString);
       cbACliFor.Items.Add(ibqTab_ForDENOMINAZIONE.AsString);
       ibqTab_For.Next;
      End;

      ibqTab_For.Active:=bOpened;
     End;
   // ZONE
   bOpened:=ibTab_Zone.Active;
   ibTab_Zone.Active:=True;
   ibTab_Zone.First;
   While Not(ibTab_Zone.EoF) Do
   Begin
    cbZona.Items.Add(ibTab_Zone.FieldByName('DESCR').AsString);
    cbZoneCodice.Items.Add(ibTab_Zone.FieldByName('ID_CODICE_ZONA').AsString);
    ibTab_Zone.Next;
   End;

   ibTab_Zone.Active:=bOpened;

   // AGENTI
   bOpened:=ibTab_Agenti.Active;
   ibTab_Agenti.Active:=True;
   ibTab_Agenti.First;
   While Not(ibTab_Agenti.EoF) Do
   Begin
    cbAgente.Items.Add(ibTab_Agenti.FieldByName('DESCR').AsString);
    cbAgenteCodice.Items.Add(ibTab_Agenti.FieldByName('CODICE').AsString);
    ibTab_Agenti.Next;
   End;

    ibTab_Agenti.Active:=bOpened;

   // PAGAMENTI
   bOpened:=ibTab_Pagamenti.Active;
   ibTab_Pagamenti.Active:=True;
   ibTab_Pagamenti.First;
   While Not(ibTab_Pagamenti.EoF) Do
   Begin
    cbPag.Items.Add(ibTab_Pagamenti.FieldByName('DESCR').AsString);
    cbPagCod.Items.Add(ibTab_Pagamenti.FieldByName('CODICE').AsString);
    ibTab_Pagamenti.Next;
   End;

    ibTab_Pagamenti.Active:=bOpened;

   // RAGGRUPPAMENTI
   bOpened:=ibTab_Raggruppamenti.Active;
   ibTab_Raggruppamenti.Active:=True;
   ibTab_Raggruppamenti.First;
   While Not(ibTab_Raggruppamenti.EoF) Do
   Begin
    cbRag.Items.Add(ibTab_Raggruppamenti.FieldByName('DESCR').AsString);
    cbRagCod.Items.Add(ibTab_Raggruppamenti.FieldByName('CODICE').AsString);
    ibTab_Raggruppamenti.Next;
   End;

    ibTab_Raggruppamenti.Active:=bOpened;
  End;
 Except
 End;

End;

procedure TfPrnCustSel.bbStampaSel2Click(Sender: TObject);
Begin
 If Not(Check_For_Total_Selection)
  Then Begin
        MessageDlg('Attendere! Si prega di selezionare i campi obligatori',
               mtWarning,[mbOK],0);
        Exit;
       End;
 With (dmodAz.ibqRicerca) Do
 Begin
  Active:=False;
  SQL.Clear;
  If (bPerCli)
   Then SQL.Add('SELECT * FROM TAB_CLI_FOR WHERE TIPO=1')
   Else SQL.Add('SELECT * FROM TAB_CLI_FOR WHERE TIPO=2');
   // CLI O FOR
  If (chCliFor.Checked)
   Then Begin
         SQL.Add(sqlOperator+' DENOMINAZIONE Between "'+cbDaCliFor.Items[cbDaCliFor.ItemIndex]+'"'+
                            ' AND  "'+cbACliFor.Items[cbACliFor.ItemIndex]+'"');
         SQL.Add(' OR DENOMINAZIONE Between "'+UpperCase(cbDaCliFor.Items[cbDaCliFor.ItemIndex])+'"'+
                            ' AND  "'+UpperCase(cbACliFor.Items[cbACliFor.ItemIndex])+'"');
        End;
   // ZONA
  If (chZona.Checked)
   Then SQL.Add(sqlOperator+' CODICE_ZONA_ID = '+cbZoneCodice.Items[cbZona.ItemIndex]);
   // Agenti
  If (chAgente.Checked)
   Then SQL.Add(sqlOperator+' AGENTE_ID = '+cbAgenteCodice.Items[cbAgente.ItemIndex]);
   // Pag
  If (chPag.Checked)
   Then SQL.Add(sqlOperator+' PAGAMENTO_ID = '+cbPagCod.Items[cbPag.ItemIndex]);
   // Rag
  If (chRag.Checked)
   Then SQL.Add(sqlOperator+' , CATEGORIA_CLIENTE_ID = '+cbRagCod.Items[cbRag.ItemIndex]);
  Active:=True;
  // print
   If (bperCli)
    Then dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frCliSel.frf')
    Else dmodAz.rePRN.LoadFromFile(ExtractFilePath(Application.ExeName)+'frFornSel.frf');

   If (dmodAz.rePRN.PrepareReport)
    Then dmodAz.rePRN.ShowReport;
  End;

end;

procedure TfPrnCustSel.chCliForClick(Sender: TObject);
begin
 cbDaCliFor.Enabled:=chCliFor.Checked;
 cbACliFor.Enabled:=chCliFor.Checked;
end;

procedure TfPrnCustSel.chZonaClick(Sender: TObject);
begin
 cbZona.Enabled:=chZona.Checked;
end;

procedure TfPrnCustSel.chAgenteClick(Sender: TObject);
begin
 cbAgente.Enabled:=chAgente.Checked;
end;

procedure TfPrnCustSel.chPagClick(Sender: TObject);
begin
 cbPag.Enabled:=chPag.Checked;
end;

procedure TfPrnCustSel.chRagClick(Sender: TObject);
begin
 cbRag.Enabled:=chRag.Checked;
end;

procedure TfPrnCustSel.bbEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfPrnCustSel.chOperatorClick(Sender: TObject);
begin
 If (chOperator.Checked)
  Then sqlOperator:=' AND'
  Else sqlOperator:=' OR';
end;

procedure TfPrnCustSel.FormShow(Sender: TObject);
begin
 sqlOperator:=' AND';
end;

End.
