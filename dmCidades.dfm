inherited dtmCidades: TdtmCidades
  OldCreateOrder = True
  Width = 262
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select * from cidades')
    object SQLQuery1idCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object SQLQuery1nomeCidade: TStringField
      FieldName = 'nomeCidade'
      Required = True
      Size = 50
    end
    object SQLQuery1idEstado: TIntegerField
      FieldName = 'idEstado'
      Required = True
    end
    object SQLQuery1nomeEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeEstado'
      LookupDataSet = qryEstados
      LookupKeyFields = 'idEstado'
      LookupResultField = 'siglaEstado'
      KeyFields = 'idEstado'
      Size = 2
      Lookup = True
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idCidade: TIntegerField
      FieldName = 'idCidade'
    end
    object ClientDataSet1nomeCidade: TStringField
      FieldName = 'nomeCidade'
      Required = True
      Size = 50
    end
    object ClientDataSet1idEstado: TIntegerField
      FieldName = 'idEstado'
      Required = True
    end
    object ClientDataSet1nomeEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeEstado'
      LookupDataSet = cdsEstados
      LookupKeyFields = 'idEstado'
      LookupResultField = 'siglaEstado'
      KeyFields = 'idEstado'
      Size = 2
      Lookup = True
    end
  end
  object qryEstados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * from estados ')
    SQLConnection = dtmConexao.SQLConnection1
    Left = 128
    Top = 32
    object qryEstadosidEstado: TIntegerField
      FieldName = 'idEstado'
      Required = True
    end
    object qryEstadossiglaEstado: TStringField
      FieldName = 'siglaEstado'
      Required = True
      Size = 2
    end
  end
  object dspEstados: TDataSetProvider
    DataSet = qryEstados
    Left = 128
    Top = 80
  end
  object cdsEstados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstados'
    Left = 128
    Top = 152
    object cdsEstadosidEstado: TIntegerField
      FieldName = 'idEstado'
      Required = True
    end
    object cdsEstadossiglaEstado: TStringField
      FieldName = 'siglaEstado'
      Required = True
      Size = 2
    end
    object cdsEstadosnomeEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeEstado'
      LookupDataSet = qryEstados
      LookupKeyFields = 'idEstado'
      LookupResultField = 'siglaEstado'
      KeyFields = 'idEstado'
      Lookup = True
    end
  end
end
