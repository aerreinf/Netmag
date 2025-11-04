inherited fCauInt: TfCauInt
  Left = 241
  Top = 215
  Caption = 'Causali Interne'
  ClientHeight = 83
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Height = 56
    Enabled = False
    object Label1: TLabel
      Left = 8
      Top = 8
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
    object Label2: TLabel
      Left = 112
      Top = 8
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
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'ID_CAUSALE'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 24
      Width = 241
      Height = 18
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = DataSource1
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
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
  end
  object DataSource1: TDataSource
    DataSet = dmodAz.Tab_Causali
    Left = 328
    Top = 8
  end
end
