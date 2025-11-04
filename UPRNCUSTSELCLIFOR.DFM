object fPrnCustSel: TfPrnCustSel
  Left = 336
  Top = 16
  Width = 336
  Height = 399
  Caption = 'Scelta...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 365
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 32
      Top = 40
      Width = 19
      Height = 16
      Caption = 'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 68
      Width = 10
      Height = 16
      Caption = 'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbDaCliFor: TComboBox
      Left = 60
      Top = 36
      Width = 249
      Height = 24
      Style = csDropDownList
      Ctl3D = False
      Enabled = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 0
    end
    object cbACliFor: TComboBox
      Left = 60
      Top = 64
      Width = 249
      Height = 24
      Style = csDropDownList
      Ctl3D = False
      Enabled = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 1
    end
    object cbZona: TComboBox
      Left = 60
      Top = 116
      Width = 249
      Height = 24
      Style = csDropDownList
      Ctl3D = False
      Enabled = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 2
    end
    object cbAgente: TComboBox
      Left = 60
      Top = 168
      Width = 249
      Height = 24
      Style = csDropDownList
      Ctl3D = False
      Enabled = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 3
    end
    object cbPag: TComboBox
      Left = 60
      Top = 220
      Width = 249
      Height = 24
      Style = csDropDownList
      Ctl3D = False
      Enabled = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 4
    end
    object cbRag: TComboBox
      Left = 60
      Top = 272
      Width = 249
      Height = 24
      Style = csDropDownList
      Ctl3D = False
      Enabled = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 5
    end
    object bbEsci: TBitBtn
      Left = 220
      Top = 332
      Width = 75
      Height = 25
      Caption = 'Esci'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = bbEsciClick
    end
    object bbStampaSel2: TBitBtn
      Left = 128
      Top = 332
      Width = 75
      Height = 25
      Caption = 'Stampa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbStampaSel2Click
    end
    object chCliFor: TCheckBox
      Left = 12
      Top = 12
      Width = 149
      Height = 17
      Caption = 'Clienti'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = chCliForClick
    end
    object chZona: TCheckBox
      Left = 12
      Top = 96
      Width = 65
      Height = 17
      Caption = 'Zona'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = chZonaClick
    end
    object chRag: TCheckBox
      Left = 12
      Top = 252
      Width = 145
      Height = 17
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = chRagClick
    end
    object chPag: TCheckBox
      Left = 12
      Top = 200
      Width = 109
      Height = 17
      Caption = 'Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = chPagClick
    end
    object chAgente: TCheckBox
      Left = 12
      Top = 148
      Width = 81
      Height = 17
      Caption = 'Agente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = chAgenteClick
    end
    object chOperator: TCheckBox
      Left = 164
      Top = 304
      Width = 141
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Visualizza tutti'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 13
      OnClick = chOperatorClick
    end
    object cbZoneCodice: TComboBox
      Left = 308
      Top = 116
      Width = 20
      Height = 24
      Style = csDropDownList
      Enabled = False
      ItemHeight = 16
      TabOrder = 14
      Visible = False
    end
    object cbRagCod: TComboBox
      Left = 308
      Top = 272
      Width = 20
      Height = 24
      Style = csDropDownList
      Enabled = False
      ItemHeight = 16
      TabOrder = 15
      Visible = False
    end
    object cbAgenteCodice: TComboBox
      Left = 308
      Top = 168
      Width = 20
      Height = 24
      Style = csDropDownList
      Enabled = False
      ItemHeight = 16
      TabOrder = 16
      Visible = False
    end
    object cbPagCod: TComboBox
      Left = 308
      Top = 220
      Width = 20
      Height = 24
      Style = csDropDownList
      Enabled = False
      ItemHeight = 16
      TabOrder = 17
      Visible = False
    end
  end
end
