inherited fSottoZone: TfSottoZone
  Left = 215
  Top = 201
  Caption = 'SottoZone'
  ClientHeight = 121
  ClientWidth = 436
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 436
    Height = 94
    object laID_Sotto_Zone: TLabel
      Left = 20
      Top = 8
      Width = 50
      Height = 16
      Caption = 'Codice'
    end
    object laDescr: TLabel
      Left = 88
      Top = 8
      Width = 83
      Height = 16
      Caption = 'Descrizione'
    end
    object laZona: TLabel
      Left = 20
      Top = 56
      Width = 36
      Height = 16
      Caption = 'Zona'
    end
    object dbeID_Codice_Sotto_Zona: TDBEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ID_CODICE_SOTTO_ZONE'
      DataSource = dsoSottoZone
      TabOrder = 0
    end
    object dbeDescr: TDBEdit
      Left = 87
      Top = 24
      Width = 337
      Height = 22
      CharCase = ecUpperCase
      DataField = 'DESCR'
      DataSource = dsoSottoZone
      TabOrder = 1
    end
    object edZona: TEdit
      Left = 87
      Top = 52
      Width = 309
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 2
      OnExit = edZonaExit
    end
    object bbLoozZona: TBitBtn
      Left = 404
      Top = 52
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 3
      OnClick = bbLoozZonaClick
    end
    object dbeZona: TDBEdit
      Left = 396
      Top = 52
      Width = 9
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CODICE_ZONA_ID'
      DataSource = dsoSottoZone
      TabOrder = 4
      Visible = False
      OnChange = dbeZonaChange
    end
  end
  inherited tbarControl: TToolBar
    Width = 436
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
  object dsoSottoZone: TDataSource
    DataSet = dmodAz.ibTab_SottoZone
    Left = 246
    Top = 2
  end
end
