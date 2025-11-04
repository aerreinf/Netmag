object fSplLoading: TfSplLoading
  Left = 256
  Top = 198
  AlphaBlend = True
  AlphaBlendValue = 245
  BorderStyle = bsNone
  BorderWidth = 1
  Caption = 'N e t  m @ g'
  ClientHeight = 151
  ClientWidth = 344
  Color = clBlue
  TransparentColor = True
  TransparentColorValue = 8454143
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object paBack: TPanel
    Left = 0
    Top = 0
    Width = 344
    Height = 151
    Align = alClient
    BevelOuter = bvLowered
    Color = 16744448
    TabOrder = 0
    object paOnBack: TPanel
      Left = 12
      Top = 44
      Width = 321
      Height = 17
      Color = 8454143
      TabOrder = 0
      object pbarLoadProcess: TProgressBar
        Left = 4
        Top = 4
        Width = 313
        Height = 9
        Min = 0
        Max = 100
        TabOrder = 0
      end
    end
    object stLoadIsOnWay: TStaticText
      Left = 12
      Top = 8
      Width = 321
      Height = 25
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Attendere... Netm@g verr'#224' ora caricato'
      Color = 13304629
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object spInfo: TSecretPanel
      Left = 14
      Top = 70
      Width = 317
      Height = 75
      Lines.Strings = (
        'Consu.Matica'
        ''
        'Gestionale'
        ''
        '2001 - 2002'
        ''
        '-'
        ''
        'Connessione a:'
        ''
        '- database Pub;'
        ''
        '- database Azienda.'
        ''
        ''
        'Preparazione di:'
        ''
        '- transazioni.'
        ''
        'fatto.')
      TextStyle = bvRaised
      BevelInner = bvLowered
      BevelOuter = bvRaised
      Color = 8454143
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Georgia'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
  end
end
