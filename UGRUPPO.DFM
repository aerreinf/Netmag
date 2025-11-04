inherited fGruppo: TfGruppo
  Caption = 'Gruppo'
  ClientHeight = 108
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Height = 81
    Enabled = False
    object laID_Zone: TLabel
      Left = 4
      Top = 4
      Width = 38
      Height = 14
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDescr: TLabel
      Left = 76
      Top = 4
      Width = 65
      Height = 14
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 220
      Top = 44
      Width = 16
      Height = 14
      Caption = 'Sc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 292
      Top = 44
      Width = 19
      Height = 14
      Caption = 'Ric.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 291
      Top = 57
      Width = 65
      Height = 19
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'RIC'
      DataSource = dsoMarca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbeCodice: TDBEdit
      Left = 4
      Top = 16
      Width = 65
      Height = 19
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoMarca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dbeDescr: TDBEdit
      Left = 76
      Top = 16
      Width = 281
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoMarca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 219
      Top = 57
      Width = 65
      Height = 19
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'SC'
      DataSource = dsoMarca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited tbarControl: TToolBar
    Color = clSilver
    ParentColor = False
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoMarca: TDataSource
    DataSet = dmodAz.ibTab_Gruppo
    Left = 252
    Top = 22
  end
end
