unit frmBackRest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBServices, ComCtrls, StdCtrls, ExtCtrls, IniFiles;

type
  TfBackRest = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    ListBox1: TListBox;
    Panel2: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Animate1: TAnimate;
    Button2: TButton;
    StatusBar1: TStatusBar;
    IBBackupService1: TIBBackupService;
    IBConfigService1: TIBConfigService;
    IBRestoreService1: TIBRestoreService;
    IBBackupService2: TIBBackupService;
    IBConfigService2: TIBConfigService;
    IBRestoreService2: TIBRestoreService;
    Label5: TLabel;
    Label7: TLabel;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBackRest: TfBackRest;

implementation

uses uAzDM, uPubDM;

{$R *.dfm}

procedure TfBackRest.FormCreate(Sender: TObject);
Var
NetMagConfig : TInifile;
strUser,strPwd,stringaconnessione,stringabackup,servername,database,stringabackup2,database2,db: String;
begin
   stringaconnessione := '';
   stringabackup :='';
   servername := '';
   database := '';
   stringabackup2 := '';
   database2 := '';
   db := '';
   strUser := '';
   strPwd := '';

   NetMagConfig :=    TIniFile.Create(ChangeFileExt(Application.EXEName, '.ini'));
   stringabackup :=   NetMagConfig.ReadString('SETUP', 'BACKUP', '');
   stringabackup2 :=  NetMagConfig.ReadString('SETUP', 'BACKUP2', '');
   servername :=      NetMagConfig.ReadString('SETUP', 'SERVER', '');
   db :=              NetMagConfig.ReadString('SETUP', 'ConnStr', '');
   strUser :=         NetMagConfig.ReadString('SETUP','User','SYSDBA');
   strPwd :=         NetMagConfig.ReadString('SETUP','Pass','masterkey');

   NetMagConfig.Free;

   database := db+'GAZDEMO.GDB';
   database2 := db+'GPUBLIC.GDB';

   IBBackupService1.DatabaseName := database;
   IBBackupService1.ServerName := servername;
   IBBackupService1.BackupFile.Clear;
   IBBackupService1.BackupFile.Add(stringabackup);
   IBBackupService1.Params.Add('User_name='+strUser);
   IBBackupService1.Params.Add('password='+strPwd);


   IBConfigService1.DatabaseName := database;
   IBConfigService1.ServerName := servername;
   IBRestoreService1.DatabaseName.Add(database);
   IBRestoreService1.BackupFile.Add(stringabackup);
   IBRestoreService1.Params.Add('User_name='+strUser);
   IBRestoreService1.Params.Add('password='+strPwd);
   IBRestoreService1.ServerName := servername;

   IBBackupService2.DatabaseName := database2;
   IBBackupService2.ServerName := servername;
   IBBackupService2.BackupFile.Clear;
   IBBackupService2.BackupFile.Add(stringabackup2);
   IBBackupService2.Params.Add('User_name='+strUser);
   IBBackupService2.Params.Add('password='+strPwd);

   IBConfigService2.DatabaseName := database2;
   IBConfigService2.ServerName := servername;
   IBRestoreService2.DatabaseName.Add(database2);
   IBRestoreService2.BackupFile.Add(stringabackup2);
   IBRestoreService2.ServerName := servername;
   IBRestoreService2.Params.Add('User_name='+strUser);
   IBRestoreService2.Params.Add('password='+strPwd);

   Label2.Caption := database;
   Label4.Caption := stringabackup;

end;


procedure TfBackRest.Button1Click(Sender: TObject);
begin
Label2.Visible := False;
Label4.Visible := False;
Button1.Enabled := False;
Button2.Enabled := False;
Button3.Enabled := False;
Animate1.Visible := True;
Animate1.Active := True;
IBBackupService1.Active := True;
ListBox1.Items.Clear;
Application.ProcessMessages;
fBackRest.Update;
 try
   IBBackupService1.Verbose := True;
   IBBackupService1.ServiceStart;
   While Not IBBackupService1.Eof Do
    ListBox1.Items.Add(IBBackupService1.GetNextLine);
    ListBox1.ItemIndex := ListBox1.Items.Count -1;
    Application.ProcessMessages;
    fBackRest.Update;
 finally
    IBBackupService1.Active := False;
end;

IBBackupService2.Active := True;
Application.ProcessMessages;
fBackRest.Update;
 try
   IBBackupService2.Verbose := True;
   IBBackupService2.ServiceStart;
   While Not IBBackupService2.Eof Do
    ListBox1.Items.Add(IBBackupService2.GetNextLine);
    ListBox1.ItemIndex := ListBox1.Items.Count -1;
    Application.ProcessMessages;
    fBackRest.Update;
 finally
    IBBackupService2.Active := False;
    Animate1.Active := False;
    Animate1.Visible := False;
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button3.Enabled := True;
    Label2.Visible := True;
    Label4.Visible := True;
 end;

end;

procedure TfBackRest.Button2Click(Sender: TObject);
begin
If (MessageDlg('Confermi il Ripristino??',mtConfirmation,[mbOK,mbCancel],0)=mrCancel)
then Exit;
dmodAz.ibdbAzUni.Connected := False;

Label2.Visible := False;
Label4.Visible := False;
Button1.Enabled := False;
Button2.Enabled := False;
Button3.Enabled := False;
Animate1.Visible := True;
Animate1.Active := True;
IBBackupService1.Active := True;
ListBox1.Items.Clear;
Application.ProcessMessages;
fBackRest.Update;


IBConfigService1.Active := True;
 Try
    IBConfigService1.ShutdownDatabase(Forced,10);
    IBRestoreService1.Active := True;
    IBRestoreService1.ServiceStart;
     While Not IBRestoreService1.Eof Do
      ListBox1.Items.Add(IBRestoreService1.GetNextLine);
      ListBox1.ItemIndex := ListBox1.Items.Count -1;
      Application.ProcessMessages;
      fBackRest.Update;
 Finally
    IBConfigService1.BringDatabaseOnline;
    IBConfigService1.Active := False;
 end;

dmodPub.ibdbPub.Connected := False;
IBBackupService2.Active := True;
IBConfigService2.Active := True;
 Try
    IBConfigService2.ShutdownDatabase(Forced,10);
    IBRestoreService2.Active := True;
    IBRestoreService2.ServiceStart;
     While Not IBRestoreService2.Eof Do
      ListBox1.Items.Add(IBRestoreService2.GetNextLine);
      ListBox1.ItemIndex := ListBox1.Items.Count -1;
      Application.ProcessMessages;
      fBackRest.Update;
 Finally
    IBConfigService2.BringDatabaseOnline;
    IBConfigService2.Active := False;


    Animate1.Active := False;
    Animate1.Visible := False;
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button3.Enabled := True;
    Label2.Visible := True;
    Label4.Visible := True;
 end;

dmodAz.ibdbAzUni.Connected := True;
dmodPub.ibdbPub.Connected := True;
end;

procedure TfBackRest.Button3Click(Sender: TObject);
begin
Close;
end;

end.
