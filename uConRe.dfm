object dmReC: TdmReC
  OldCreateOrder = False
  Left = 575
  Top = 263
  Height = 471
  Width = 548
  object ADORe: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=hSvp360585131pvSh;Persist Security ' +
      'Info=True;User ID=hsvp;Initial Catalog=Integrado;Data Source=192' +
      '.168.1.6,1534;Use Procedure for Prepare=1;Auto Translate=True;Pa' +
      'cket Size=4096;Workstation ID=USER-1177DF50F2;Use Encryption for' +
      ' Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object adoResp: TADOQuery
    Active = True
    Connection = mod_dad
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sng_profi')
    Left = 80
    Top = 16
  end
  object dsResp: TDataSource
    DataSet = adoResp
    Left = 136
    Top = 16
  end
  object adoBusca: TADOStoredProc
    Connection = ADORe
    CursorType = ctStatic
    AfterPost = adoBuscaAfterPost
    AfterDelete = adoBuscaAfterDelete
    ProcedureName = 'SNG_BUSCA;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@T'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = '1'
      end
      item
        Name = '@Busca'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = '%%'
      end
      item
        Name = '@Busca1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = '%%'
      end
      item
        Name = '@dataIni'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 44562d
      end
      item
        Name = '@dataFim'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 44592d
      end>
    Left = 80
    Top = 64
  end
  object dsBusca: TDataSource
    DataSet = adoBusca
    Left = 136
    Top = 64
  end
  object mod_dad: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=hSvp360585131pvSh;Persist Security ' +
      'Info=True;User ID=hsvp;Initial Catalog=Integrado;Data Source=192' +
      '.168.1.6,1534;Use Procedure for Prepare=1;Auto Translate=True;Pa' +
      'cket Size=4096;Workstation ID=USER-1177DF50F2;Use Encryption for' +
      ' Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 112
  end
  object adoLog: TADOStoredProc
    Connection = mod_dad
    ProcedureName = 'INCLUI_SEGURANCA_NOVO;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DESC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 250
        Value = '0'
      end
      item
        Name = '@USUARIO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = '2274'
      end
      item
        Name = '@TABELA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = '0'
      end
      item
        Name = '@COD'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 18
        Value = 0c
      end
      item
        Name = '@COD1'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 18
        Value = 0c
      end
      item
        Name = '@STR1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '0'
      end
      item
        Name = '@STR2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = '0'
      end>
    Left = 80
    Top = 112
  end
end
