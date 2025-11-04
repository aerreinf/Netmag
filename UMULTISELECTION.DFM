object fMultiSelection: TfMultiSelection
  Left = 157
  Top = 189
  Width = 547
  Height = 277
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Scelta...'
  Color = clBtnFace
  Constraints.MinHeight = 277
  Constraints.MinWidth = 408
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object paView: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 206
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object cblSelection: TCheckListBox
      Left = 4
      Top = 4
      Width = 531
      Height = 198
      Align = alClient
      Columns = 2
      Flat = False
      ItemHeight = 16
      TabOrder = 0
    end
  end
  object paCtrl: TPanel
    Left = 0
    Top = 206
    Width = 539
    Height = 37
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bbClose: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Chiudi'
      TabOrder = 0
      OnClick = bbCloseClick
    end
  end
end
