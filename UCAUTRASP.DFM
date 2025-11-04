inherited fCauTrasp: TfCauTrasp
  Left = 197
  Top = 176
  Caption = 'Causale Trasporto'
  ClientHeight = 91
  ClientWidth = 386
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 386
    Height = 64
    object laCodice: TLabel
      Left = 20
      Top = 8
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 96
      Top = 8
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object dbeCodice: TDBEdit
      Left = 16
      Top = 24
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE'
      DataSource = dsoCauTrasp
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 91
      Top = 24
      Width = 282
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoCauTrasp
      TabOrder = 1
    end
  end
  inherited tbarControl: TToolBar
    Width = 386
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object dsoCauTrasp: TDataSource
    DataSet = dmodAz.ibTab_Cau_Trasp
    Left = 288
    Top = 2
  end
end
