object fPianoContiDB: TfPianoContiDB
  Left = 239
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Piano dei Conti'
  ClientHeight = 452
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 50
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnTab_Piano_Conti: TDBNavigator
      Left = 10
      Top = 10
      Width = 276
      Height = 31
      DataSource = dmodAz.dsoTab_Agenti
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
  end
end
