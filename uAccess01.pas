unit uAccess01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, IniFiles;

type
  TfAcWhole = class(TForm)
    paBack: TPanel;
    laUserName: TLabel;
    edUserName: TEdit;
    laPassword: TLabel;
    edPassword: TEdit;
    bbExit: TBitBtn;
    bbOK: TBitBtn;
    pbarWaitForEnter: TProgressBar;
    tWaistTime: TTimer;
    laWarning: TLabel;
    bbOpt: TBitBtn;
    procedure tWaistTimeTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure edUserNameExit(Sender: TObject);
    procedure edPasswordExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbOptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    intModRes: Integer;
    strPass,strUser,strConnStr,Azienda: String;
    strHost, strPath: String;

    procedure WriteIniFile;
    procedure ReadIniFile;
  end;



var
  fAcWhole: TfAcWhole;

implementation

uses uRemConn;

{$R *.DFM}

procedure TfAcWhole.tWaistTimeTimer(Sender: TObject);
begin
 With (pbarWaitForEnter) Do
 Begin
  StepIt;
  If (Position=Max)Or(Position=Min) Then Step:=-Step;
 End;
 If (laWarning.Font.Color=clRed) Then laWarning.Font.Color:=clWhite
                                 Else laWarning.Font.Color:=clRed;
End;

procedure TfAcWhole.FormActivate(Sender: TObject);
begin
 tWaistTime.Enabled:=True;
 intModRes:=0;
 // Check if ini file exists
 If (FileExists(ChangeFileExt(Application.EXEName, '.ini')))
  Then Begin
        ReadIniFile;
        edUserName.Text:=strUser;
        edPassword.text := strPass;
        bbOk.Click;
       End
  Else Begin
        bbOpt.Click;
        WriteIniFile
       End;
end;

procedure TfAcWhole.bbOKClick(Sender: TObject);
begin
 intModRes:=1;
end;

procedure TfAcWhole.edUserNameExit(Sender: TObject);
begin
 strUser:=edUserName.Text;
end;

procedure TfAcWhole.edPasswordExit(Sender: TObject);
begin
 strPass:=edPassword.Text;
end;

procedure TfAcWhole.ReadIniFile;
begin
  With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
  Try
    strHost := ReadString('SETUP','Server','localhost');
    strPath := ReadString('SETUP','Path','C:\GEIBDB\');
    strConnStr := ReadString('SETUP','ConnStr','localhost:C:\GEIBDB\');
    strUser := ReadString('SETUP','User','SYSDBA');
    Azienda := ReadString('SETUP','Azienda','Consu.MAtica');
    strPass := ReadString('SETUP','Pass','masterkey');
  Finally
    Free;
  End;
end;

procedure TfAcWhole.WriteIniFile;
begin
  With TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini')) Do
  Try
    WriteString('INFO','Company','Consu.Matica');
    WriteString('INFO','Key','df767ajhe8');
    WriteString('INFO','CORE','D5/IB6');

    WriteString('SETUP','Server',strHost);
    WriteString('SETUP','Path',strPath);
    WriteString('SETUP','ConnStr',strConnStr);
    WriteString('SETUP','User',strUser);

  Finally Free; End;
end;




procedure TfAcWhole.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 strPass:=edPassword.Text;
// WriteIniFile;
end;

procedure TfAcWhole.bbOptClick(Sender: TObject);
begin
 With (TfRemConn.Create(Self)) Do
 Begin
  edServer.Text:=strHost;
  edPath.Text:=strPath;
  ShowModal;
  strHost:=sHost;
  strConnStr:=sConnectionString;
  strPath:=sPath;
 End;
end;

end.
