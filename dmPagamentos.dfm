inherited dtmPagamentos: TdtmPagamentos
  OldCreateOrder = True
  Height = 468
  Width = 652
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select * from pagamentos')
    object SQLQuery1idpagamento: TIntegerField
      FieldName = 'idpagamento'
    end
    object SQLQuery1idMatricula: TIntegerField
      FieldName = 'idMatricula'
      Required = True
    end
    object SQLQuery1dataVencimento: TDateField
      FieldName = 'dataVencimento'
      Required = True
    end
    object SQLQuery1preco: TFMTBCDField
      FieldName = 'preco'
      Required = True
      Precision = 12
      Size = 2
    end
    object SQLQuery1dataPagamento: TDateField
      FieldName = 'dataPagamento'
    end
  end
  inherited ClientDataSet1: TClientDataSet
    AggregatesActive = True
    object ClientDataSet1idpagamento: TIntegerField
      FieldName = 'idpagamento'
    end
    object ClientDataSet1idMatricula: TIntegerField
      FieldName = 'idMatricula'
      Required = True
    end
    object ClientDataSet1dataVencimento: TDateField
      FieldName = 'dataVencimento'
      Required = True
    end
    object ClientDataSet1preco: TFMTBCDField
      FieldName = 'preco'
      Required = True
      Precision = 12
      Size = 2
    end
    object ClientDataSet1dataPagamento: TDateField
      FieldName = 'dataPagamento'
    end
    object ClientDataSet1nomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeCliente'
      LookupDataSet = ClientDataSet2
      LookupKeyFields = 'idMatricula'
      LookupResultField = 'nomeliente'
      KeyFields = 'idMatricula'
      Lookup = True
    end
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from matriculas where ativo = 1')
    SQLConnection = dtmConexao.SQLConnection1
    Left = 224
    Top = 40
    object SQLQuery2idMatricula: TIntegerField
      FieldName = 'idMatricula'
    end
    object SQLQuery2dataMatricula: TDateField
      FieldName = 'dataMatricula'
      Required = True
    end
    object SQLQuery2idCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object SQLQuery2valorMatricula: TFMTBCDField
      FieldName = 'valorMatricula'
      Required = True
      Precision = 12
      Size = 2
    end
    object SQLQuery2professores_idProfessor: TIntegerField
      FieldName = 'professores_idProfessor'
    end
    object SQLQuery2ativo: TShortintField
      FieldName = 'ativo'
      Required = True
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 224
    Top = 168
    object ClientDataSet2idMatricula: TIntegerField
      FieldName = 'idMatricula'
    end
    object ClientDataSet2dataMatricula: TDateField
      FieldName = 'dataMatricula'
      Required = True
    end
    object ClientDataSet2idCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object ClientDataSet2valorMatricula: TFMTBCDField
      FieldName = 'valorMatricula'
      Required = True
      Precision = 12
      Size = 2
    end
    object ClientDataSet2professores_idProfessor: TIntegerField
      FieldName = 'professores_idProfessor'
    end
    object ClientDataSet2ativo: TShortintField
      FieldName = 'ativo'
      Required = True
    end
    object ClientDataSet2nomeliente: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeliente'
      LookupDataSet = ClientDataSetClientes
      LookupKeyFields = 'idclientes'
      LookupResultField = 'nomecliente'
      KeyFields = 'idCliente'
      Lookup = True
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Left = 224
    Top = 104
  end
  object SQLQueryInsert: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmConexao.SQLConnection1
    Left = 536
    Top = 32
  end
  object SQLQueryClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select idclientes, nomecliente, cpfCliente, rgCliente from clien' +
        'tes')
    SQLConnection = dtmConexao.SQLConnection1
    Left = 384
    Top = 40
    object SQLQueryClientesidclientes: TIntegerField
      FieldName = 'idclientes'
      Required = True
    end
    object SQLQueryClientesnomecliente: TStringField
      FieldName = 'nomecliente'
      Required = True
      Size = 150
    end
    object SQLQueryClientescpfCliente: TStringField
      FieldName = 'cpfCliente'
      Required = True
      Size = 50
    end
    object SQLQueryClientesrgCliente: TStringField
      FieldName = 'rgCliente'
      Required = True
      Size = 50
    end
  end
  object DataSetProviderClientes: TDataSetProvider
    DataSet = SQLQueryClientes
    Left = 384
    Top = 104
  end
  object ClientDataSetClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderClientes'
    Left = 384
    Top = 184
    object ClientDataSetClientesidclientes: TIntegerField
      FieldName = 'idclientes'
      Required = True
    end
    object ClientDataSetClientesnomecliente: TStringField
      FieldName = 'nomecliente'
      Required = True
      Size = 150
    end
    object ClientDataSetClientescpfCliente: TStringField
      FieldName = 'cpfCliente'
      Required = True
      Size = 50
    end
    object ClientDataSetClientesrgCliente: TStringField
      FieldName = 'rgCliente'
      Required = True
      Size = 50
    end
  end
end
