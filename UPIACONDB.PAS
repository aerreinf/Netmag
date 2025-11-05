unit uPiaConDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls;

type
  TfPianoContiDB = class(TForm)
    paCtrl: TPanel;
    dbnTab_Piano_Conti: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPianoContiDB: TfPianoContiDB;

implementation

{$R *.DFM}

end.
