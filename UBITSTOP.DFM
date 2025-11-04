inherited fBitStop: TfBitStop
  Caption = 'Bit di Stop'
  ClientHeight = 106
  ClientWidth = 287
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 287
    Height = 77
    object laCodice: TLabel
      Left = 44
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 12
      Top = 44
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 104
      Top = 16
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoBitStop
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 104
      Top = 40
      Width = 161
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoBitStop
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 287
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoBitStop: TDataSource
    DataSet = dmodPub.ibTab_Bit_Stop
    Left = 238
    Top = 2
  end
end
