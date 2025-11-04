object frmBarMove: TfrmBarMove
  Left = 0
  Top = 0
  Width = 174
  Height = 270
  Align = alLeft
  TabOrder = 0
  DesignSize = (
    174
    270)
  object tbarMOVE: TToolBar
    Left = 8
    Top = 0
    Width = 142
    Height = 25
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tool bar'
    EdgeBorders = []
    Images = dmodPub.iliPub
    TabOrder = 0
    object sep0: TToolButton
      Left = 0
      Top = 2
      Width = 8
      Caption = 'sep0'
      Style = tbsSeparator
    end
    object tbtnFirst: TToolButton
      Left = 8
      Top = 2
      Caption = 'First'
      ImageIndex = 8
    end
    object tbtnPrior: TToolButton
      Left = 31
      Top = 2
      Caption = 'Prior'
      ImageIndex = 9
    end
    object tbtnNext: TToolButton
      Left = 54
      Top = 2
      Caption = 'Next'
      ImageIndex = 10
    end
    object tbtnLast: TToolButton
      Left = 77
      Top = 2
      Caption = 'Last'
      ImageIndex = 11
    end
    object sep1: TToolButton
      Left = 100
      Top = 2
      Width = 8
      Caption = 'sep1'
      Style = tbsSeparator
    end
  end
end
