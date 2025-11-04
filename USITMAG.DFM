object fSitMag: TfSitMag
  Left = 320
  Top = 196
  BorderStyle = bsSingle
  Caption = 'Situazione Magazzino'
  ClientHeight = 130
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 96
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Art. Accessori'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Art. Vendita'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 56
    Top = 104
    Width = 75
    Height = 25
    Caption = '&Esci'
    TabOrder = 2
    OnClick = Button3Click
  end
  object RadioGroup1: TRadioGroup
    Left = 192
    Top = 8
    Width = 113
    Height = 81
    Caption = 'Ordinare per'
    ItemIndex = 0
    Items.Strings = (
      'Codice'
      'Descrizione')
    TabOrder = 3
  end
  object Button4: TButton
    Left = 16
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Lista Vendita'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 96
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Lista Acc.'
    TabOrder = 5
  end
end
