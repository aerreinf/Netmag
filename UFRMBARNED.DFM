object frmBarNED: TfrmBarNED
  Left = 0
  Top = 0
  Width = 161
  Height = 270
  Align = alLeft
  TabOrder = 0
  DesignSize = (
    161
    270)
  object tbarNED: TToolBar
    Left = 8
    Top = 0
    Width = 121
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
    object tbtnNew: TToolButton
      Left = 8
      Top = 2
      Caption = 'New'
      ImageIndex = 1
    end
    object tbtnEdit: TToolButton
      Left = 31
      Top = 2
      Caption = 'Edit'
      ImageIndex = 2
    end
    object sep1: TToolButton
      Left = 54
      Top = 2
      Width = 8
      Caption = 'sep1'
      Style = tbsSeparator
    end
    object tbtnRefresh: TToolButton
      Left = 62
      Top = 2
      Caption = 'Refresh'
      ImageIndex = 18
    end
  end
end
