object frmBarDBNav: TfrmBarDBNav
  Left = 0
  Top = 0
  Width = 341
  Height = 29
  TabOrder = 0
  object tbarDBNav: TToolBar
    Left = 12
    Top = 0
    Width = 309
    Height = 29
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tool bar database navigator'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Images = dmodAnag.iList1
    TabOrder = 0
    object sep0: TToolButton
      Left = 0
      Top = 2
      Width = 8
      Caption = 'sep0'
      Style = tbsSeparator
    end
    object tbtnExit: TToolButton
      Left = 8
      Top = 2
      Caption = 'Exit'
      ImageIndex = 0
    end
    object sep1: TToolButton
      Left = 31
      Top = 2
      Width = 8
      Caption = 'sep1'
      Style = tbsSeparator
    end
    object tbtnOK: TToolButton
      Left = 39
      Top = 2
      Caption = 'Post'
      ImageIndex = 4
    end
    object tbtnCancel: TToolButton
      Left = 62
      Top = 2
      Caption = 'Cancel'
      ImageIndex = 7
    end
    object sep2: TToolButton
      Left = 85
      Top = 2
      Width = 8
      Caption = 'sep2'
      Style = tbsSeparator
    end
    object sep3: TToolButton
      Left = 93
      Top = 2
      Width = 8
      Caption = 'sep3'
      Style = tbsSeparator
    end
    object sep4: TToolButton
      Left = 101
      Top = 2
      Width = 8
      Caption = 'sep4'
      Style = tbsSeparator
    end
    object tbtnFirst: TToolButton
      Left = 109
      Top = 2
      Caption = 'First'
      ImageIndex = 8
    end
    object tbtnPrior: TToolButton
      Left = 132
      Top = 2
      Caption = 'Prior'
      ImageIndex = 9
    end
    object tbtnNext: TToolButton
      Left = 155
      Top = 2
      Caption = 'Next'
      ImageIndex = 10
    end
    object tbtnLast: TToolButton
      Left = 178
      Top = 2
      Caption = 'Last'
      ImageIndex = 11
    end
    object sep5: TToolButton
      Left = 201
      Top = 2
      Width = 8
      Caption = 'sep5'
      Style = tbsSeparator
    end
  end
end
