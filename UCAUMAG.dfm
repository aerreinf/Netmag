inherited fCauMag: TfCauMag
  Left = 223
  Top = 131
  Caption = 'Causale Magazzino'
  ClientHeight = 326
  ClientWidth = 448
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited paView: TPanel
    Width = 448
    Height = 94
    Align = alTop
    Enabled = False
    object laCodice: TLabel
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
    object Label2: TLabel
      Left = 156
      Top = 44
      Width = 80
      Height = 14
      Caption = 'Controcausale'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object laDescr: TLabel
      Left = 105
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
    object laTipoArt: TLabel
      Left = 4
      Top = 44
      Width = 67
      Height = 14
      Caption = 'Controparte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCodice: TDBEdit
      Left = 4
      Top = 17
      Width = 97
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODICE_CAUSALE'
      DataSource = dsoCauMag
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 156
      Top = 57
      Width = 73
      Height = 20
      DataField = 'CONTROCAUSALE'
      DataSource = dsoCauMag
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object dbeDescr: TDBEdit
      Left = 105
      Top = 17
      Width = 338
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCR_CAUSALE'
      DataSource = dsoCauMag
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 232
      Top = 57
      Width = 213
      Height = 20
      DataField = 'CONTROCAUSALE'
      DataSource = dsoCauMag
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object LookControParte: TDBLookupComboBox
      Left = 4
      Top = 57
      Width = 147
      Height = 20
      DataField = 'CONTROPARTE'
      DataSource = dmodAz.dsoTab_Cau_Mag
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODICE'
      ListField = 'DESCR'
      ListSource = dsoControparte
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited tbarControl: TToolBar
    Width = 448
    inherited sep4: TToolButton
      Visible = False
    end
    inherited tbtnPrev: TToolButton
      OnClick = tbtnPrevClick
    end
    inherited tbtnNext: TToolButton
      OnClick = tbtnNextClick
    end
  end
  object pctrlCauMag: TPageControl
    Left = 0
    Top = 121
    Width = 448
    Height = 205
    ActivePage = tabs5
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 2
    object tabs1: TTabSheet
      Caption = '- &1 -'
      object pa1: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 173
        Align = alClient
        BevelOuter = bvLowered
        Color = 10485760
        Enabled = False
        TabOrder = 0
        object Label3: TLabel
          Left = 234
          Top = 152
          Width = 79
          Height = 14
          Caption = 'Ultima Vendita'
        end
        object Label4: TLabel
          Left = 133
          Top = 152
          Width = 81
          Height = 14
          Caption = 'Costo Acquisti'
        end
        object Label5: TLabel
          Left = 13
          Top = 152
          Width = 87
          Height = 14
          Caption = 'Ultimo Acquisto'
        end
        object Label1: TLabel
          Left = 354
          Top = 152
          Width = 79
          Height = 14
          Caption = 'Ultima Vendita'
          Visible = False
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 16
          Top = 32
          Width = 129
          Height = 45
          Caption = 'Qta. Acquisti'
          Columns = 3
          DataField = 'QTA_ACQUISTI'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 152
          Top = 84
          Width = 129
          Height = 45
          Caption = 'Fattur. Vendita'
          Columns = 3
          DataField = 'FATTURATO_VENDITA'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 1
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 288
          Top = 32
          Width = 129
          Height = 45
          Caption = 'Qta. Vendita'
          Columns = 3
          DataField = 'QTA_VENDITA'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 16
          Top = 84
          Width = 129
          Height = 45
          Caption = 'Val. Acquisti'
          Columns = 3
          DataField = 'VAL_ACQUISTI'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 152
          Top = 32
          Width = 129
          Height = 45
          Caption = 'Fattur. Acquisto'
          Columns = 3
          DataField = 'FATTURATO_ACQUISTI'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 4
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 288
          Top = 84
          Width = 129
          Height = 45
          Caption = 'Val. Vendita'
          Columns = 3
          DataField = 'VAL_VENDITA'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 5
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object dbcbADataUltVen: TDBCheckBox
          Left = 216
          Top = 136
          Width = 97
          Height = 17
          Caption = 'Aggiorna Data'
          DataField = 'DATA_ULTIMA_VENDITA'
          DataSource = dsoCauMag
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbcbAUltCostAcq: TDBCheckBox
          Left = 104
          Top = 136
          Width = 110
          Height = 17
          Caption = 'Aggiorna Ultimo'
          DataField = 'COSTO_ULTIMO'
          DataSource = dsoCauMag
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbcbADataUltAcq: TDBCheckBox
          Left = 3
          Top = 136
          Width = 97
          Height = 17
          Caption = 'Aggiorna Data'
          DataField = 'DATA_ULTIMO_ACQUISTO'
          DataSource = dsoCauMag
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 320
          Top = 136
          Width = 113
          Height = 17
          Caption = 'Aggiorna Prezzo'
          DataField = 'DATA_ULTIMA_VENDITA'
          DataSource = dsoCauMag
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
          Visible = False
        end
        object DBRadioGroup31: TDBRadioGroup
          Left = 16
          Top = -1
          Width = 401
          Height = 33
          Cursor = crHandPoint
          Caption = 'Tipo Mov.'
          Columns = 3
          DataField = 'MOV_NON_VALIDO'
          DataSource = dsoCauMag
          Items.Strings = (
            'Nessuno'
            'Carico'
            'Scarico')
          TabOrder = 10
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
      end
    end
    object tabs2: TTabSheet
      Caption = '- &2 -'
      ImageIndex = 1
      object pa2: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 173
        Align = alClient
        BevelOuter = bvLowered
        Color = 10485760
        Enabled = False
        TabOrder = 0
        object DBRadioGroup7: TDBRadioGroup
          Left = 16
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. altre Entrate'
          Columns = 3
          DataField = 'VAL_ALTRE_ENTRATE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup8: TDBRadioGroup
          Left = 16
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. altre Entrate'
          Columns = 3
          DataField = 'QTA_ALTRE_ENTRATE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 1
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup9: TDBRadioGroup
          Left = 152
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. altre Uscite'
          Columns = 3
          DataField = 'QTA_ALTRE_USCITE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup10: TDBRadioGroup
          Left = 152
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. altre Uscite'
          Columns = 3
          DataField = 'VAL_ALTRE_USCITE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup11: TDBRadioGroup
          Left = 288
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Giac. Iniz.'
          Columns = 3
          DataField = 'VAL_GIACENZA_INIZIALE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 4
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup12: TDBRadioGroup
          Left = 288
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Giac. Iniz.'
          Columns = 3
          DataField = 'QTA_GIACENZA_INIZIALE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 5
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
      end
    end
    object tabs3: TTabSheet
      Caption = '- &3 -'
      ImageIndex = 2
      object pa3: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 173
        Align = alClient
        BevelOuter = bvLowered
        Color = 10485760
        Enabled = False
        TabOrder = 0
        object DBRadioGroup13: TDBRadioGroup
          Left = 16
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Ordinato'
          Columns = 3
          DataField = 'VAL_ORDINATO'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup14: TDBRadioGroup
          Left = 16
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Ordinato'
          Columns = 3
          DataField = 'QTA_ORDINATO'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 1
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup15: TDBRadioGroup
          Left = 152
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Reso Cli.'
          Columns = 3
          DataField = 'QTA_RESO_CLIENTE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup16: TDBRadioGroup
          Left = 152
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Reso Cli.'
          Columns = 3
          DataField = 'VAL_RESO_CLIENTE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup17: TDBRadioGroup
          Left = 288
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Reso Forn.'
          Columns = 3
          DataField = 'VAL_RESO_FORNITORE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 4
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup18: TDBRadioGroup
          Left = 288
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Reso Forn.'
          Columns = 3
          DataField = 'QTA_RESO_FORNITORE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 5
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
      end
    end
    object tabs4: TTabSheet
      Caption = '- &4 -'
      ImageIndex = 3
      object pa4: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 173
        Align = alClient
        BevelOuter = bvLowered
        Color = 10485760
        Enabled = False
        TabOrder = 0
        object DBRadioGroup19: TDBRadioGroup
          Left = 16
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Impegnato'
          Columns = 3
          DataField = 'VAL_IMPEGNATO'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup20: TDBRadioGroup
          Left = 16
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Impegnato'
          Columns = 3
          DataField = 'QTA_IMPEGNATO'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 1
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup21: TDBRadioGroup
          Left = 152
          Top = 20
          Width = 129
          Height = 45
          BiDiMode = bdLeftToRight
          Caption = 'Qta. Evasa Cli.'
          Columns = 3
          DataField = 'QTA_EVASA_CLIENTE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          ParentBiDiMode = False
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup22: TDBRadioGroup
          Left = 152
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Evasa Cli.'
          Columns = 3
          DataField = 'VAL_EVASO_CLIENTE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup23: TDBRadioGroup
          Left = 288
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Evasa Forn.'
          Columns = 3
          DataField = 'VAL_EVASO_FORNITORE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 4
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup24: TDBRadioGroup
          Left = 288
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Evasa Forn.'
          Columns = 3
          DataField = 'QTA_EVASA_FORNITORE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 5
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
      end
    end
    object tabs5: TTabSheet
      Caption = '5'
      ImageIndex = 4
      object pa5: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 173
        Align = alClient
        BevelOuter = bvLowered
        Color = 10485760
        Enabled = False
        TabOrder = 0
        object DBRadioGroup25: TDBRadioGroup
          Left = 16
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Impegnato'
          Columns = 3
          DataField = 'VAL_IMPEGNATO'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup26: TDBRadioGroup
          Left = 16
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Impegnato'
          Columns = 3
          DataField = 'QTA_IMPEGNATO'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 1
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup27: TDBRadioGroup
          Left = 152
          Top = 20
          Width = 129
          Height = 45
          BiDiMode = bdLeftToRight
          Caption = 'Qta. Evasa Cli.'
          Columns = 3
          DataField = 'QTA_EVASA_CLIENTE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          ParentBiDiMode = False
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup28: TDBRadioGroup
          Left = 152
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Evasa Cli.'
          Columns = 3
          DataField = 'VAL_EVASO_CLIENTE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup29: TDBRadioGroup
          Left = 288
          Top = 72
          Width = 129
          Height = 45
          Caption = 'Val. Evasa Forn.'
          Columns = 3
          DataField = 'VAL_EVASO_FORNITORE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 4
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
        object DBRadioGroup30: TDBRadioGroup
          Left = 288
          Top = 20
          Width = 129
          Height = 45
          Caption = 'Qta. Evasa Forn.'
          Columns = 3
          DataField = 'QTA_EVASA_FORNITORE'
          DataSource = dsoCauMag
          Items.Strings = (
            ''
            '+'
            '-')
          TabOrder = 5
          Values.Strings = (
            '0'
            '1'
            '-1')
        end
      end
    end
  end
  object dsoCauMag: TDataSource
    DataSet = dmodAz.ibTab_Cau_Mag
    Left = 314
  end
  object dsoControparte: TDataSource
    DataSet = IbqControparte
    Left = 366
    Top = 3
  end
  object IbqControparte: TIBQuery
    Database = dmodAz.ibdbAzUni
    Transaction = dmodAz.ibtrDef
    SQL.Strings = (
      'SELECT * FROM TAB_CONTROPARTE')
    Left = 400
    object IbqControparteCODICE: TSmallintField
      FieldName = 'CODICE'
      Origin = '"TAB_CONTROPARTE"."CODICE"'
    end
    object IbqControparteDESCR: TIBStringField
      FieldName = 'DESCR'
      Origin = '"TAB_CONTROPARTE"."DESCR"'
    end
  end
end
