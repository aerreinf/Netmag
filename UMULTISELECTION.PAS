unit uMultiSelection;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, ExtCtrls, Buttons, Variants;

type
  TSelItem = Record
              strDescr: String[25];
              vaID_Codice: Variant;
              bVisible: Boolean;
              bChecked: Boolean;
             End;
  TfMultiSelection = class(TForm)
    paView: TPanel;
    cblSelection: TCheckListBox;
    paCtrl: TPanel;
    bbClose: TBitBtn;
    procedure bbCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
   dynItems: Array of TSelItem;
   intDynCntr: Integer;
   intSelectedTotal: Integer;  // total selected items
   bDynCreated: Boolean; // indicates if array is created
   bBoxFilled: Boolean;  // indicates if listbox is filled
   strLinePartSQL: String;


   // Reads data from table and puts it in the dynItem dynamic array
   Procedure Create_Dyn(strTableName,strFieldIDName,strFieldDescrName,
                 strWHERE: String;bWHERE,bPubDB: Boolean);
   // fills out box
   Procedure Fill_Check_List;
   // count selected items
   Procedure Count_and_Update_Selection;
   // set selected(checked) in dynItems array!
 End;

Var
  fMultiSelection: TfMultiSelection;

Implementation

Uses uPubDM, uAzDM;

{$R *.DFM}

{ TfMultiSelection }


{ TfMultiSelection }

Procedure TfMultiSelection.Count_and_Update_Selection;
Var
 iCntr,iAllItems: Integer;
Begin
 // if array is not created and box not filled ---> exit
 If Not((bDynCreated) OR (bBoxFilled))
  Then Exit;
 Try
  strLinePartSQL:='';
  intSelectedTotal:=0;
  With (cblSelection) Do
  Begin
   iAllItems:=Items.Count;
   For iCntr:=0 To iAllItems-1 Do
   Begin
    dynItems[iCntr].bChecked:=Checked[iCntr];
    If (Checked[iCntr])
     Then Begin
           Inc(intSelectedTotal);
              strLinePartSQL:=strLinePartSQL+
                VarToStr(dynItems[iCntr].vaID_Codice)+',';
          End;
   End;
   strLinePartSQL:=COPY(strLinePartSQL,1,Length(strLinePartSQL)-1);
   strLinePartSQL:=strLinePartSQL;
   If (intSelectedTotal=0)
    Then strLinePartSQL:='Is Not Null';
  End;
 Except
  intSelectedTotal:=-1; // error occured
 End;
End;

Procedure TfMultiSelection.Create_Dyn(strTableName,strFieldIDName,strFieldDescrName,
                 strWHERE: String;bWHERE,bPubDB: Boolean);
Var
 strSQL,strSQLCntr: String;
 intCntr: Integer;
 strDescr: String;
 vaID: Variant;
Begin
 Try
  If (bWHERE)
   Then Begin
         strSQL:='SELECT '+strFieldIDName+','+strFieldDescrName+' FROM '+strTableName+' WHERE '+strWHERE;
         strSQLCntr:='SELECT Count(*) FROM '+strTableName+' WHERE '+strWHERE;
        End
   Else Begin
         strSQL:='SELECT '+strFieldIDName+','+strFieldDescrName+' FROM '+strTableName;
         strSQLCntr:='SELECT Count(*) FROM '+strTableName;
        End;
  If (bPubDB)
   Then
        Begin
         dmodAz.ibqRicerca.Close;
         dmodAz.ibqRicerca.SQL.Clear;
         dmodAz.ibqRicerca.SQL.Add(strSQL);
         dmodAz.ibqRicerca.Open;
         dmodAz.ibqRicerca.First;
          // RecordCount
          dmodAz.ibqCNTR.Close;
           dmodAz.ibqCNTR.SQL.Clear;
            dmodAz.ibqCNTR.SQL.Add(strSQLCntr);
           dmodAz.ibqCNTR.Open;
            intDynCntr:=dmodAz.ibqCNTR.FieldByName('COUNT').AsInteger;
           dmodAz.ibqCNTR.Close;

          // Read data From query
          If (intDynCntr>0)
           Then Begin
                 SetLength(dynItems,intDynCntr);
                 For intCntr:=0 To intDynCntr-1 Do
                 Begin
                  vaID:=dmodAz.ibqRicerca.FieldByName(strFieldIDName).AsVariant;
                  strDescr:=dmodAz.ibqRicerca.FieldByName(strFieldDescrName).AsString;
                  dynItems[intCntr].strDescr:=strDescr;
                  dynItems[intCntr].vaID_Codice:=vaID;
                  dynItems[intCntr].bVisible:=True;
                  dynItems[intCntr].bChecked:=False;
                  dmodAz.ibqRicerca.Next;
                 End;
                 dmodAz.ibqRicerca.Close;
                End
           Else intDynCntr:=0;
        End
   Else
        Begin
         dmodAz.ibqRicerca.Close;
         dmodAz.ibqRicerca.SQL.Clear;
         dmodAz.ibqRicerca.SQL.Add(strSQL);
         dmodAz.ibqRicerca.Open;
         dmodAz.ibqRicerca.First;
          // RecordCount
          dmodAz.ibqCNTR.Close;
           dmodAz.ibqCNTR.SQL.Clear;
            dmodAz.ibqCNTR.SQL.Add(strSQLCntr);
           dmodAz.ibqCNTR.Open;
            intDynCntr:=dmodAz.ibqCNTR.FieldByName('COUNT').AsInteger;
           dmodAz.ibqCNTR.Close;

          // Read data From query
          If (intDynCntr>0)
           Then Begin
                 SetLength(dynItems,intDynCntr);
                 For intCntr:=0 To intDynCntr-1 Do
                 Begin
                  vaID:=dmodAz.ibqRicerca.FieldByName(strFieldIDName).AsVariant;
                  strDescr:=dmodAz.ibqRicerca.FieldByName(strFieldDescrName).AsString;
                  dynItems[intCntr].strDescr:=strDescr;
                  dynItems[intCntr].vaID_Codice:=vaID;
                  dynItems[intCntr].bVisible:=True;
                  dynItems[intCntr].bChecked:=False;
                  dmodAz.ibqRicerca.Next;
                 End;
                 dmodAz.ibqRicerca.Close;
                End
           Else intDynCntr:=0;
        End;
  bDynCreated:=True;
 Except
  bDynCreated:=False;
  intDynCntr:=0;
  dynItems:=Nil;
 End;
End;

Procedure TfMultiSelection.Fill_Check_List;
Var
 iCntr: Integer;
Begin
 // if dynItems is not created then exit
 If Not(bDynCreated)
  Then Exit;
  // else fill the checjlistbox with items from dyn!
 Try
  With (cblSelection) Do
  Begin
   Items.Clear;
   For iCntr:=0 To intDynCntr-1 Do
    If (dynitems[iCntr].bVisible)
     Then Items.Add(dynItems[iCntr].strDescr);
  End;
  bBoxFilled:=True;
 Except
  // if errors that means that the box is not filled
  cblSelection.Items.Clear;
  bBoxFilled:=False;
 End;
End;

Procedure TfMultiSelection.bbCloseClick(Sender: TObject);
Begin
 Close;
End;

Procedure TfMultiSelection.FormClose(Sender: TObject;
  Var Action: TCloseAction);
Begin
 Count_and_Update_Selection;
End;

Procedure TfMultiSelection.FormCreate(Sender: TObject);
Begin
 bBoxFilled:=False;
 bDynCreated:=False;
End;

End.
