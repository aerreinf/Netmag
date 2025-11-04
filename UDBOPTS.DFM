object fDBOpts: TfDBOpts
  Left = 183
  Top = 105
  Width = 610
  Height = 320
  Caption = 'Options - Database'
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 610
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  PixelsPerInch = 96
  TextHeight = 13
  object paCtrl: TPanel
    Left = 0
    Top = 252
    Width = 602
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 500
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object paView: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 252
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object pctrlDBOpt: TPageControl
      Left = 8
      Top = 7
      Width = 583
      Height = 232
      ActivePage = tsGeneral
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object tsGeneral: TTabSheet
        Caption = 'General'
        object paGeneral: TPanel
          Left = 0
          Top = 0
          Width = 575
          Height = 204
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Transactions'
        ImageIndex = 1
        object paTrans: TPanel
          Left = 0
          Top = 0
          Width = 575
          Height = 204
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object cboxTransAuto: TCheckBox
            Left = 12
            Top = 28
            Width = 137
            Height = 17
            Caption = 'Automatic transactions'
            TabOrder = 0
            OnClick = cboxTransAutoClick
          end
          object gboxTransOpts: TGroupBox
            Left = 156
            Top = 8
            Width = 405
            Height = 49
            Enabled = False
            TabOrder = 1
            object laTransType: TLabel
              Left = 12
              Top = 20
              Width = 24
              Height = 13
              Caption = 'Type'
            end
            object laTransAutoTimer: TLabel
              Left = 224
              Top = 20
              Width = 60
              Height = 13
              Caption = 'Time interval'
            end
            object laUnTransTimer: TLabel
              Left = 372
              Top = 20
              Width = 19
              Height = 13
              Caption = '[ms]'
            end
            object cobTransType: TComboBox
              Left = 44
              Top = 16
              Width = 165
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              Items.Strings = (
                'Commit'
                'Rollback'
                'Commit retaining'
                'Rollback retaining (IB ver 6)')
            end
            object edTransTimeer: TEdit
              Left = 292
              Top = 16
              Width = 73
              Height = 21
              TabOrder = 1
              Text = '1000'
            end
          end
        end
      end
    end
  end
end
