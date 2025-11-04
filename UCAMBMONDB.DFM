object fCambiMoneteDB: TfCambiMoneteDB
  Left = 187
  Top = 123
  BorderStyle = bsDialog
  Caption = 'Cambi monete'
  ClientHeight = 372
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbnCambiMonete: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dsoCambi_Monete
      VisibleButtons = [nbPrior, nbNext, nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Aggiungere moneta'
        'Delete record'
        'Modificare moneta'
        'Salvare'
        'Cancel edit'
        'Refresh data')
      TabOrder = 0
      OnClick = dbnCambiMoneteClick
    end
  end
  object paView: TPanel
    Left = 0
    Top = 41
    Width = 573
    Height = 331
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object pctrlCaMon: TPageControl
      Left = 8
      Top = 8
      Width = 549
      Height = 309
      ActivePage = tabs2
      Images = dmodPub.iliPub
      Style = tsFlatButtons
      TabOrder = 0
      object tabs1: TTabSheet
        Caption = 'Modifica/Inserimento'
        ImageIndex = 2
        object paEdit: TPanel
          Left = 0
          Top = 0
          Width = 541
          Height = 277
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object gbEditing: TGroupBox
            Left = 36
            Top = 24
            Width = 473
            Height = 225
            Enabled = False
            TabOrder = 0
            object laData: TLabel
              Left = 28
              Top = 32
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object laMonetaA: TLabel
              Left = 60
              Top = 76
              Width = 70
              Height = 13
              Caption = 'Moneta origine'
            end
            object laMonetaB: TLabel
              Left = 60
              Top = 144
              Width = 91
              Height = 13
              Caption = 'Moneta per cambio'
            end
            object laCambio: TLabel
              Left = 404
              Top = 160
              Width = 35
              Height = 13
              Caption = 'Cambio'
            end
            object bev1: TBevel
              Left = 200
              Top = 88
              Width = 97
              Height = 21
              Shape = bsBottomLine
            end
            object bev2: TBevel
              Left = 296
              Top = 108
              Width = 50
              Height = 22
              Shape = bsLeftLine
            end
            object bev3: TBevel
              Left = 200
              Top = 172
              Width = 97
              Height = 45
              Shape = bsTopLine
            end
            object ber4: TBevel
              Left = 296
              Top = 148
              Width = 13
              Height = 25
              Shape = bsLeftLine
            end
            object bev5: TBevel
              Left = 332
              Top = 148
              Width = 17
              Height = 29
              Shape = bsLeftLine
            end
            object bev6: TBevel
              Left = 332
              Top = 176
              Width = 109
              Height = 37
              Shape = bsTopLine
            end
            object tpDataID: TDateTimePicker
              Left = 64
              Top = 24
              Width = 113
              Height = 28
              CalAlignment = dtaLeft
              Date = 36773.8193687616
              Time = 36773.8193687616
              DateFormat = dfShort
              DateMode = dmComboBox
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Kind = dtkDate
              ParseInput = False
              ParentFont = False
              TabOrder = 0
              OnChange = tpDataIDChange
              OnKeyPress = tpDataIDKeyPress
            end
            object dbeData: TDBEdit
              Left = 196
              Top = 24
              Width = 13
              Height = 21
              DataField = 'ID_DATA'
              DataSource = dsoCambi_Monete
              TabOrder = 1
              Visible = False
            end
            object LookMonetaA: TDBLookupComboBox
              Left = 24
              Top = 96
              Width = 177
              Height = 21
              DataField = 'MONETA1_ID'
              DataSource = dsoCambi_Monete
              KeyField = 'ID_MONETE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Monete
              TabOrder = 2
              OnKeyPress = LookMonetaAKeyPress
            end
            object LookMonetaB: TDBLookupComboBox
              Left = 24
              Top = 164
              Width = 177
              Height = 21
              DataField = 'MONETA2_ID'
              DataSource = dsoCambi_Monete
              KeyField = 'ID_MONETE'
              ListField = 'DESCR'
              ListSource = dmodPub.dsoTab_Monete
              TabOrder = 3
              OnKeyPress = LookMonetaBKeyPress
            end
            object dbeCambio: TDBEdit
              Left = 280
              Top = 128
              Width = 121
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CAMBIO'
              DataSource = dsoCambi_Monete
              TabOrder = 4
              OnKeyPress = dbeCambioKeyPress
            end
          end
        end
      end
      object tabs2: TTabSheet
        Caption = 'Opzioni di visualizzazione'
        ImageIndex = 12
        object paOptVis: TPanel
          Left = 0
          Top = 0
          Width = 541
          Height = 277
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object gbFiltering: TGroupBox
            Left = 8
            Top = 12
            Width = 525
            Height = 177
            Caption = 'Opzioni di visualizzazione'
            TabOrder = 0
            object bev11: TBevel
              Left = 64
              Top = 52
              Width = 14
              Height = 109
              Shape = bsRightLine
            end
            object Bevel1: TBevel
              Left = 77
              Top = 52
              Width = 92
              Height = 13
              Shape = bsTopLine
            end
            object Bevel2: TBevel
              Left = 77
              Top = 104
              Width = 104
              Height = 17
              Shape = bsTopLine
            end
            object Bevel3: TBevel
              Left = 77
              Top = 160
              Width = 104
              Height = 17
              Shape = bsTopLine
            end
            object Bevel4: TBevel
              Left = 200
              Top = 52
              Width = 53
              Height = 13
              Shape = bsTopLine
            end
            object Bevel5: TBevel
              Left = 188
              Top = 53
              Width = 14
              Height = 51
              Shape = bsRightLine
            end
            object Bevel6: TBevel
              Left = 201
              Top = 104
              Width = 104
              Height = 17
              Shape = bsTopLine
            end
            object Bevel7: TBevel
              Left = 321
              Top = 156
              Width = 188
              Height = 17
              Shape = bsTopLine
            end
            object Bevel8: TBevel
              Left = 308
              Top = 52
              Width = 14
              Height = 105
              Shape = bsRightLine
            end
            object Bevel9: TBevel
              Left = 321
              Top = 52
              Width = 64
              Height = 13
              Shape = bsTopLine
            end
            object rabDataDaA: TRadioButton
              Left = 76
              Top = 32
              Width = 97
              Height = 17
              Caption = 'Da data a data'
              TabOrder = 1
              OnClick = rabDataDaAClick
            end
            object rabData: TRadioButton
              Left = 200
              Top = 32
              Width = 53
              Height = 17
              Caption = 'Data'
              TabOrder = 4
              OnClick = rabDataClick
            end
            object cboxMonete: TCheckBox
              Left = 320
              Top = 32
              Width = 65
              Height = 17
              Caption = 'Monete'
              TabOrder = 6
              OnClick = cboxMoneteClick
              OnKeyPress = cboxMoneteKeyPress
            end
            object tpDataDa: TDateTimePicker
              Left = 84
              Top = 80
              Width = 105
              Height = 21
              CalAlignment = dtaLeft
              Date = 36773.8632372801
              Time = 36773.8632372801
              DateFormat = dfShort
              DateMode = dmComboBox
              Enabled = False
              Kind = dtkDate
              ParseInput = False
              TabOrder = 2
              OnKeyPress = tpDataDaKeyPress
            end
            object tpDataA: TDateTimePicker
              Left = 84
              Top = 136
              Width = 105
              Height = 21
              CalAlignment = dtaLeft
              Date = 36773.8632948843
              Time = 36773.8632948843
              DateFormat = dfShort
              DateMode = dmComboBox
              Enabled = False
              Kind = dtkDate
              ParseInput = False
              TabOrder = 3
              OnKeyPress = tpDataAKeyPress
            end
            object tpData: TDateTimePicker
              Left = 208
              Top = 80
              Width = 105
              Height = 21
              CalAlignment = dtaLeft
              Date = 36773.863499919
              Time = 36773.863499919
              DateFormat = dfShort
              DateMode = dmComboBox
              Enabled = False
              Kind = dtkDate
              ParseInput = False
              TabOrder = 5
              OnKeyPress = tpDataKeyPress
            end
            object rabTutti: TRadioButton
              Left = 20
              Top = 32
              Width = 49
              Height = 17
              Caption = 'Tutti'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = rabTuttiClick
            end
            object ListMonete: TCheckListBox
              Left = 328
              Top = 60
              Width = 185
              Height = 89
              Enabled = False
              ItemHeight = 13
              TabOrder = 7
            end
          end
          object bbShow: TBitBtn
            Left = 400
            Top = 232
            Width = 123
            Height = 25
            Caption = 'Mostra'
            TabOrder = 1
            OnClick = bbShowClick
          end
          object edSQL: TEdit
            Left = 8
            Top = 196
            Width = 525
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
      object tabs3: TTabSheet
        Caption = 'Visualizzazione'
        ImageIndex = 5
        object paVis: TPanel
          Left = 0
          Top = 0
          Width = 541
          Height = 277
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object dbgCaMon: TDBGrid
            Left = 8
            Top = 8
            Width = 525
            Height = 261
            DataSource = dsoQ_Cambi_Monete
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbgCaMonDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_DATA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Moneta A'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Moneta B'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAMBIO'
                Visible = True
              end>
          end
        end
      end
    end
  end
  object dsoCambi_Monete: TDataSource
    DataSet = dmodPub.ibTab_Cambi_Monete
    Left = 272
    Top = 4
  end
  object dsoQ_Cambi_Monete: TDataSource
    DataSet = dmodPub.ibQue_Cambi_Monete
    Left = 308
    Top = 4
  end
end
