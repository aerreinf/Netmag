inherited fTipo: TfTipo
  Left = 175
  Top = 245
  Caption = 'Tipo'
  ClientHeight = 90
  ClientWidth = 432
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 432
    Height = 63
    Enabled = False
    object laID_Zone: TLabel
      Left = 12
      Top = 12
      Width = 44
      Height = 16
      Caption = 'Codice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laDescr: TLabel
      Left = 84
      Top = 12
      Width = 74
      Height = 16
      Caption = 'Descrizione'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 12
      Top = 27
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
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 84
      Top = 27
      Width = 337
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
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 432
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoMarca: TDataSource
    DataSet = dmodAz.ibTab_Tipo
    Left = 292
    Top = 38
  end
end
