object fRemConn: TfRemConn
  Left = 201
  Top = 168
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Connessione Remota...'
  ClientHeight = 162
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object paSetUps: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 121
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object laServer: TLabel
      Left = 44
      Top = 16
      Width = 46
      Height = 20
      Caption = 'Server'
    end
    object laProtocol: TLabel
      Left = 308
      Top = 16
      Width = 70
      Height = 20
      Caption = 'Protocollo'
    end
    object laPath: TLabel
      Left = 22
      Top = 60
      Width = 73
      Height = 20
      Caption = 'Percorso *'
    end
    object laNB: TLabel
      Left = 156
      Top = 88
      Width = 399
      Height = 19
      Caption = '* Per conoscere il percorso, rivolgersi all'#39'amministratore.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object edServer: TEdit
      Left = 104
      Top = 12
      Width = 193
      Height = 28
      TabOrder = 0
      Text = 'localhost'
      OnExit = edServerExit
    end
    object cobProtocols: TComboBox
      Left = 384
      Top = 12
      Width = 193
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 1
      OnExit = cobProtocolsExit
      Items.Strings = (
        'TCP/IP'
        'SPX'
        'Named Pipe')
    end
    object edPath: TEdit
      Left = 104
      Top = 56
      Width = 473
      Height = 28
      TabOrder = 2
      Text = '\'
      OnExit = edPathExit
    end
  end
  object paControl: TPanel
    Left = 0
    Top = 121
    Width = 597
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object bbExit: TBitBtn
      Left = 494
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Esci'
      TabOrder = 0
      OnClick = bbExitClick
    end
  end
end
