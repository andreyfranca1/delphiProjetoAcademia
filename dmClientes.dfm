inherited dtmClientes: TdtmClientes
  OldCreateOrder = True
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select * from clientes'
      '')
    object SQLQuery1idClientes: TIntegerField
      FieldName = 'idClientes'
    end
    object SQLQuery1NomeCliente: TStringField
      FieldName = 'NomeCliente'
      Required = True
      Size = 150
    end
    object SQLQuery1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object SQLQuery1enderecoCliente: TStringField
      FieldName = 'enderecoCliente'
      Required = True
      Size = 100
    end
    object SQLQuery1cpfCliente: TStringField
      FieldName = 'cpfCliente'
      Required = True
      Size = 50
    end
    object SQLQuery1rgCliente: TStringField
      FieldName = 'rgCliente'
      Required = True
      Size = 50
    end
    object SQLQuery1pesoCliente: TFMTBCDField
      FieldName = 'pesoCliente'
      Required = True
      Precision = 12
      Size = 2
    end
    object SQLQuery1alturaCliente: TFMTBCDField
      FieldName = 'alturaCliente'
      Required = True
      Precision = 12
      Size = 2
    end
    object SQLQuery1Cidades_idCidade: TIntegerField
      FieldName = 'Cidades_idCidade'
      Required = True
    end
    object SQLQuery1cepCliente: TStringField
      FieldName = 'cepCliente'
      Required = True
      Size = 10
    end
    object SQLQuery1bairroCliente: TStringField
      FieldName = 'bairroCliente'
      Required = True
      Size = 50
    end
    object SQLQuery1sexoCliente: TStringField
      FieldName = 'sexoCliente'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idClientes: TIntegerField
      FieldName = 'idClientes'
    end
    object ClientDataSet1NomeCliente: TStringField
      FieldName = 'NomeCliente'
      Required = True
      Size = 150
    end
    object ClientDataSet1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object ClientDataSet1enderecoCliente: TStringField
      FieldName = 'enderecoCliente'
      Required = True
      Size = 100
    end
    object ClientDataSet1cpfCliente: TStringField
      FieldName = 'cpfCliente'
      Required = True
      Size = 50
    end
    object ClientDataSet1rgCliente: TStringField
      FieldName = 'rgCliente'
      Required = True
      Size = 50
    end
    object ClientDataSet1pesoCliente: TFMTBCDField
      FieldName = 'pesoCliente'
      Required = True
      Precision = 12
      Size = 2
    end
    object ClientDataSet1alturaCliente: TFMTBCDField
      FieldName = 'alturaCliente'
      Required = True
      Precision = 12
      Size = 2
    end
    object ClientDataSet1Cidades_idCidade: TIntegerField
      FieldName = 'Cidades_idCidade'
      Required = True
    end
    object ClientDataSet1cepCliente: TStringField
      FieldName = 'cepCliente'
      Required = True
      Size = 10
    end
    object ClientDataSet1bairroCliente: TStringField
      FieldName = 'bairroCliente'
      Required = True
      Size = 50
    end
    object ClientDataSet1nomeCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeCidade'
      LookupDataSet = cdsCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'nomeCidade'
      KeyFields = 'Cidades_idCidade'
      Size = 50
      Lookup = True
    end
    object ClientDataSet1sexoCliente: TStringField
      FieldName = 'sexoCliente'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryCidades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT cidades.`idCidade`, CONCAT(cidades.`nomeCidade`, "/", est' +
        'ados.siglaEstado) nomeCidade'
      'FROM cidades '
      'INNER JOIN estados ON estados.idEstado = cidades.`idEstado`'
      'ORDER BY cidades.`nomeCidade`')
    SQLConnection = dtmConexao.SQLConnection1
    Left = 144
    Top = 24
    object qryCidadesidCidade: TIntegerField
      FieldName = 'idCidade'
      Required = True
    end
    object qryCidadesnomeCidade: TStringField
      FieldName = 'nomeCidade'
      Required = True
      Size = 53
    end
  end
  object dspCidades: TDataSetProvider
    DataSet = qryCidades
    Left = 144
    Top = 96
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidades'
    Left = 136
    Top = 168
    object cdsCidadesidCidade: TIntegerField
      FieldName = 'idCidade'
      Required = True
    end
    object cdsCidadesnomeCidade: TStringField
      FieldName = 'nomeCidade'
      Required = True
      Size = 53
    end
  end
end
