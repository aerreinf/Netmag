Unit uBaseForm3;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ExtCtrls, Db, StdCtrls;

Type
  TfBaseForm3 = Class(TForm)
    paView: TPanel;
    tbarControl: TToolBar;
    tbtnEsci: TToolButton;
    sep1: TToolButton;
    tbtnNuovo: TToolButton;
    tbtnModifica: TToolButton;
    sep2: TToolButton;
    tbtnSalva: TToolButton;
    tbtnAnulla: TToolButton;
    sep3: TToolButton;
    tbtnElimina: TToolButton;
    sep4: TToolButton;
    tbtnPrev: TToolButton;
    tbtnNext: TToolButton;
    sep5: TToolButton;
    procedure tbtnNuovoClick(Sender: TObject);
    procedure tbtnModificaClick(Sender: TObject);
    procedure tbtnEliminaClick(Sender: TObject);
    procedure tbtnAnullaClick(Sender: TObject);
    procedure tbtnSalvaClick(Sender: TObject);
    procedure tbtnEsciClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
   Private
    { Private declarations }
    Procedure ChangeDataSetsState(bOpen: Boolean);
   Public
    { Public declarations }
    Chiusura: Boolean;
    Procedure Edit_Mode(bMode: Boolean);
    Procedure Clean_All_TEdits;

  End;

Var
  fBaseForm3: TfBaseForm3;

  bCanClose: Boolean=True;

implementation

uses frmuPrincipale;

{$R *.DFM}                     

{ TfBaseForm3 }

procedure TfBaseForm3.Edit_Mode(bMode: Boolean);
begin
 // tbtn's
 bCanClose:=Not(bMode);
 tbtnEsci.Enabled:=Not(bMode);
 tbtnNuovo.Enabled:=Not(bMode);
 tbtnModifica.Enabled:=Not(bMode);
 tbtnSalva.Enabled:=(bMode);
 tbtnAnulla.Enabled:=(bMode);
 tbtnElimina.Enabled:=Not(bMode);
 tbtnPrev.Enabled:=Not(bMode);
 tbtnNext.Enabled:=Not(bMode);

 paView.Enabled:=(bMode);
end;

procedure TfBaseForm3.tbtnNuovoClick(Sender: TObject);
begin
 Edit_Mode(True);
 Clean_All_TEdits;
end;

procedure TfBaseForm3.tbtnModificaClick(Sender: TObject);
begin Edit_Mode(True);end;

procedure TfBaseForm3.tbtnEliminaClick(Sender: TObject);
begin Edit_Mode(False);end;

procedure TfBaseForm3.tbtnAnullaClick(Sender: TObject);
begin Edit_Mode(False);end;

procedure TfBaseForm3.tbtnSalvaClick(Sender: TObject);
begin Edit_Mode(False);end;

procedure TfBaseForm3.tbtnEsciClick(Sender: TObject);
begin
 Close;
end;

procedure TfBaseForm3.ChangeDataSetsState(bOpen: Boolean);
Var
 iCntr,iCntrDSO: Integer;
begin
 // Search for all data source components and open those datesets
  iCntrDSO:=Self.ComponentCount; // All components on form
  For iCntr:=0 To iCntrDSO-1 Do
  // Check if component is a Datesource:
  If (Self.Components[iCntr] is TDataSource)
   Then
    If ((Self.Components[iCntr] as TDataSource).Tag=0 )
     Then
        Try With (Self.Components[iCntr] as TDataSource) Do DataSet.Active:=bOpen;
       Except End;

end;

procedure TfBaseForm3.FormCreate(Sender: TObject);
begin
 ChangeDataSetsState(True);
end;

procedure TfBaseForm3.FormDestroy(Sender: TObject);
begin
// ChangeDataSetsState(False);
end;

Procedure TfBaseForm3.Clean_All_TEdits;
Var
 iCntr, iCntrComp: Integer;
Begin
 // Search for all data source components and open those datesets

 iCntrComp:=Self.ComponentCount; // All components on form
 For iCntr:=0 To iCntrComp-1 Do
  // Check if component is a Datesource:
  If (Self.Components[iCntr] is TEdit)
   Then With (Self.Components[iCntr] as TEdit) Do
         Text:='';
End;

procedure TfBaseForm3.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:=bCanClose;
end;

procedure TfBaseForm3.FormShow(Sender: TObject);
begin
//   ChangeDataSetsState(True);
end;

end.
