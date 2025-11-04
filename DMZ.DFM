object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 0
  Width = 0
  object ZIbSqlDatabase1: TZIbSqlDatabase
    Database = 'c:\geibdb\gazdemo.gdb'
    Encoding = etNone
    Login = 'sysdba'
    Password = 'masterkey'
    LoginPrompt = False
    SqlDialect = 1
    Connected = True
    Left = 8
  end
  object ZIbSqlTransact1: TZIbSqlTransact
    Options = [toHourGlass]
    AutoCommit = True
    Database = ZIbSqlDatabase1
    TransIsolation = ziDefault
    Left = 80
  end
  object ZIbSqlTable1: TZIbSqlTable
    Database = ZIbSqlDatabase1
    Transaction = ZIbSqlTransact1
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = []
    ReadOnly = True
    Left = 144
  end
end
