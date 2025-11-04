inherited fEsenteIva: TfEsenteIva
  Left = 243
  Top = 256
  Caption = 'Esenzioni Iva'
  ClientHeight = 90
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Height = 63
    inherited laCodice: TLabel
      Left = 2
      Width = 44
      Font.Charset = ANSI_CHARSET
      Font.Name = 'Arial'
      ParentFont = False
    end
    inherited laDescr: TLabel
      Left = 64
      Width = 74
      Font.Charset = ANSI_CHARSET
      Font.Name = 'Arial'
      ParentFont = False
    end
    inherited dbeCodice: TDBEdit
      Left = 2
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    inherited dbeDescr: TDBEdit
      Left = 64
      Width = 318
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited tbarControl: TToolBar
    inherited tbtnAnulla: TToolButton
      Hint = 'Annulla'
    end
  end
  inherited dsoCauTrasp: TDataSource
    DataSet = dmodPub.ibTab_Esente_IVA
  end
end
