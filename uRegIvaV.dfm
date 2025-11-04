object fRegIvaV: TfRegIvaV
  Left = 189
  Top = 171
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Registro Iva Vendite'
  ClientHeight = 446
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 688
    Height = 62
    Align = alBottom
    Color = 15653740
    TabOrder = 0
    object Label6: TLabel
      Left = 313
      Top = 21
      Width = 42
      Height = 14
      Caption = 'Da Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 315
      Top = 43
      Width = 40
      Height = 14
      Caption = ' A Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 596
      Top = 24
      Width = 89
      Height = 35
      Cursor = crHandPoint
      Caption = '&Esci'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 472
      Top = 33
      Width = 94
      Height = 26
      Cursor = crHandPoint
      Caption = '&Stampa'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 6
      Width = 105
      Height = 51
      Cursor = crHandPoint
      Caption = 'Registri Iva'
      ItemIndex = 0
      Items.Strings = (
        'Tutti i Registri'
        'Scegli Registro')
      TabOrder = 0
    end
    object RadioGroup2: TRadioGroup
      Left = 208
      Top = 6
      Width = 105
      Height = 51
      Cursor = crHandPoint
      Caption = 'Periodo'
      ItemIndex = 0
      Items.Strings = (
        'Tutto'
        'Scegli')
      TabOrder = 1
    end
    object medatada: TDateEdit
      Left = 358
      Top = 14
      Width = 89
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
      Text = '01/01/2004'
    end
    object medataa: TDateEdit
      Left = 358
      Top = 36
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 116
      Top = 36
      Width = 75
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'ComboBox1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20')
    end
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 4
    Width = 678
    Height = 373
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
