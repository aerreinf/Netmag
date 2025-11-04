object fAcWhole: TfAcWhole
  Left = 212
  Top = 119
  AlphaBlend = True
  AlphaBlendValue = 250
  BorderStyle = bsNone
  Caption = 'Accessing whole'
  ClientHeight = 251
  ClientWidth = 263
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = 4227327
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object paBack: TPanel
    Left = 0
    Top = 0
    Width = 263
    Height = 251
    Align = alClient
    BevelOuter = bvLowered
    Color = 16765864
    TabOrder = 0
    object laUserName: TLabel
      Left = 24
      Top = 16
      Width = 106
      Height = 22
      Caption = 'User name:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPassword: TLabel
      Left = 24
      Top = 92
      Width = 100
      Height = 22
      Caption = 'Password:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laWarning: TLabel
      Left = 20
      Top = 160
      Width = 179
      Height = 13
      Caption = '* Verifica lo stato "Caps Lock"!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edUserName: TEdit
      Left = 20
      Top = 44
      Width = 221
      Height = 30
      CharCase = ecUpperCase
      Color = 12316157
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edUserNameExit
    end
    object edPassword: TEdit
      Left = 20
      Top = 120
      Width = 221
      Height = 30
      Color = 12316157
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      OnExit = edPasswordExit
    end
    object bbExit: TBitBtn
      Left = 24
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Kind = bkCancel
    end
    object bbOK: TBitBtn
      Left = 160
      Top = 184
      Width = 75
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbOKClick
      Kind = bkOK
    end
    object pbarWaitForEnter: TProgressBar
      Left = 24
      Top = 232
      Width = 213
      Height = 8
      Min = 0
      Max = 100
      Step = 1
      TabOrder = 4
    end
    object bbOpt: TBitBtn
      Left = 120
      Top = 184
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 5
      OnClick = bbOptClick
    end
  end
  object tWaistTime: TTimer
    OnTimer = tWaistTimeTimer
    Left = 12
    Top = 204
  end
end
