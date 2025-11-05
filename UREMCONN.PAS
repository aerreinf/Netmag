unit uRemConn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TfRemConn = class(TForm)
    paSetUps: TPanel;
    edServer: TEdit;
    laServer: TLabel;
    paControl: TPanel;
    cobProtocols: TComboBox;
    laProtocol: TLabel;
    laPath: TLabel;
    edPath: TEdit;
    laNB: TLabel;
    bbExit: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure edServerExit(Sender: TObject);
    procedure edPathExit(Sender: TObject);
    procedure cobProtocolsExit(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sConnectionString: String;
    sHost: String;
    sPath: String;
    sProtocol: String;

    Procedure Get_Connection_String;

  end;

var
  fRemConn: TfRemConn;

implementation

{$R *.DFM}

procedure TfRemConn.FormShow(Sender: TObject);
begin
// init

end;

procedure TfRemConn.Get_Connection_String;
Var
 strSuffixProt: String;
 strPreficsProt: String;
begin
 If (cobProtocols.ItemIndex=-1)
  Then cobProtocols.ItemIndex:=0;
 strPreficsProt:='';
 Case (cobProtocols.ItemIndex) Of
  0: strSuffixProt:=':';
  1: strSuffixProt:='@';
  2: Begin strSuffixProt:='\';strPreficsProt:='\\';End
 End;
 sConnectionString:=strPreficsProt+sHost+strSuffixProt+sPath;
end;

procedure TfRemConn.edServerExit(Sender: TObject);
begin
 sHost:=edServer.Text;
end;

procedure TfRemConn.edPathExit(Sender: TObject);
begin
 sPath:=edPath.Text;
end;

procedure TfRemConn.cobProtocolsExit(Sender: TObject);
begin
 sProtocol:=cobProtocols.Text;
end;

procedure TfRemConn.bbExitClick(Sender: TObject);
begin
 Get_Connection_String;
 Close;
end;

end.
