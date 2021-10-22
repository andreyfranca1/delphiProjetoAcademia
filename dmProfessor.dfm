inherited dtmProfessor: TdtmProfessor
  OldCreateOrder = True
  Width = 255
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select * from professores')
    object SQLQuery1idProfessor: TIntegerField
      FieldName = 'idProfessor'
    end
    object SQLQuery1nomeProfessor: TStringField
      FieldName = 'nomeProfessor'
      Required = True
      Size = 150
    end
    object SQLQuery1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object SQLQuery1sexoProfessor: TStringField
      FieldName = 'sexoProfessor'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLQuery1enderecoProfessor: TStringField
      FieldName = 'enderecoProfessor'
      Required = True
      Size = 200
    end
    object SQLQuery1cpfProfessor: TStringField
      FieldName = 'cpfProfessor'
      Required = True
      Size = 50
    end
    object SQLQuery1rgProfessor: TStringField
      FieldName = 'rgProfessor'
      Required = True
      Size = 50
    end
    object SQLQuery1cidades_idCidade: TIntegerField
      FieldName = 'cidades_idCidade'
      Required = True
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idProfessor: TIntegerField
      FieldName = 'idProfessor'
    end
    object ClientDataSet1nomeProfessor: TStringField
      FieldName = 'nomeProfessor'
      Required = True
      Size = 150
    end
    object ClientDataSet1dataNascimento: TDateField
      FieldName = 'dataNascimento'
      Required = True
    end
    object ClientDataSet1sexoProfessor: TStringField
      FieldName = 'sexoProfessor'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1enderecoProfessor: TStringField
      FieldName = 'enderecoProfessor'
      Required = True
      Size = 200
    end
    object ClientDataSet1cpfProfessor: TStringField
      FieldName = 'cpfProfessor'
      Required = True
      Size = 50
    end
    object ClientDataSet1rgProfessor: TStringField
      FieldName = 'rgProfessor'
      Required = True
      Size = 50
    end
    object ClientDataSet1cidades_idCidade: TIntegerField
      FieldName = 'cidades_idCidade'
      Required = True
    end
    object ClientDataSet1nomeCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeCidade'
      LookupDataSet = cdsCidades
      LookupKeyFields = 'idCidade'
      LookupResultField = 'nomeCidade'
      KeyFields = 'cidades_idCidade'
      Lookup = True
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
    Left = 120
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
    Left = 120
    Top = 72
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidades'
    Left = 120
    Top = 120
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
