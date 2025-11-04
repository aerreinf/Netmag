inherited fBitDati: TfBitDati
  Left = 314
  Top = 163
  Caption = 'Bit di Dati'
  ClientHeight = 112
  ClientWidth = 287
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 287
    Height = 83
    object laCodice: TLabel
      Left = 48
      Top = 20
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 16
      Top = 48
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 104
      Top = 16
      Width = 77
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoBitDati
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 104
      Top = 44
      Width = 161
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoBitDati
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
  object dsoBitDati: TDataSource
    DataSet = dmodPub.ibTab_Bit_Dati
    Left = 236
    Top = 2
  end
end
