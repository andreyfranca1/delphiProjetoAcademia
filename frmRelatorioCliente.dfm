inherited formRelatorioCliente: TformRelatorioCliente
  Caption = 'Relat'#243'rio Clientes'
  ExplicitWidth = 813
  ExplicitHeight = 741
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    Top = 8
    DataSet = SQLQuery1
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ExplicitTop = 8
    inherited PageHeaderBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      inherited QRLabel1: TQRLabel
        Size.Values = (
          60.854166666666670000
          0.000000000000000000
          0.000000000000000000
          494.770833333333300000)
        FontSize = 14
      end
      inherited QRSysData1: TQRSysData
        Left = 535
        Width = 101
        Height = 23
        Size.Values = (
          60.854166666666670000
          1415.520833333333000000
          0.000000000000000000
          267.229166666666700000)
        Font.Height = -19
        ParentFont = False
        FontSize = 14
        ExplicitLeft = 535
        ExplicitWidth = 101
        ExplicitHeight = 23
      end
    end
    inherited TitleBand1: TQRBand
      Frame.DrawBottom = True
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      inherited QRLabel2: TQRLabel
        Size.Values = (
          87.312500000000000000
          190.500000000000000000
          15.875000000000000000
          1357.312500000000000000)
        Caption = 'Relat'#243'rio de Clientes'
        FontSize = 20
      end
    end
    inherited ColumnHeaderBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
    end
    inherited DetailBand1: TQRBand
      Height = 67
      Frame.DrawBottom = True
      Size.Values = (
        177.270833333333300000
        1899.708333333333000000)
      ExplicitHeight = 67
      object QRDBText5: TQRDBText
        Left = 121
        Top = 6
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          320.145833333333300000
          15.875000000000000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'NomeCliente'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 48
        Top = 6
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          15.875000000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'idClientes'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 377
        Top = 6
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          15.875000000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'cpfCliente'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 66
        Top = 38
        Width = 94
        Height = 17
        Size.Values = (
          44.979166666666670000
          174.625000000000000000
          100.541666666666700000
          248.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'enderecoCliente'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 0
        Top = 6
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          15.875000000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'C'#243'digo:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 80
        Top = 6
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          15.875000000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Nome:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 343
        Top = 6
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          907.520833333333300000
          15.875000000000000000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'CPF:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 526
        Top = 6
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          1391.708333333333000000
          15.875000000000000000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Identidade:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 594
        Top = 6
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          15.875000000000000000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'rgCliente'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 0
        Top = 38
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          100.541666666666700000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 343
        Top = 38
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          907.520833333333300000
          100.541666666666700000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Cidade:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 394
        Top = 38
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1042.458333333333000000
          100.541666666666700000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'nomeCidade'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 577
        Top = 38
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          1526.645833333333000000
          100.541666666666700000
          182.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'siglaEstado'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 526
        Top = 38
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1391.708333333333000000
          100.541666666666700000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Estado:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    inherited PageFooterBand1: TQRBand
      Top = 225
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      ExplicitTop = 225
      object QRDBText1: TQRDBText [0]
        Left = 32
        Top = 62
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          164.041666666666700000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'idClientes'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      inherited QRSysData3: TQRSysData
        Size.Values = (
          44.979166666666670000
          1778.000000000000000000
          63.500000000000000000
          121.708333333333300000)
        FontSize = 10
      end
    end
  end
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      'select * from clientes'
      'inner join cidades'
      'on clientes.Cidades_idCidade = cidades.idCidade'
      'inner join estados '
      'on cidades.idEstado = estados.idEstado')
    Left = 179
    Top = 344
    object SQLQuery1idClientes: TIntegerField
      FieldName = 'idClientes'
      Required = True
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
    object SQLQuery1sexoCliente: TStringField
      FieldName = 'sexoCliente'
      Required = True
      FixedChar = True
      Size = 1
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
    object SQLQuery1idCidade: TIntegerField
      FieldName = 'idCidade'
      Required = True
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
    object SQLQuery1idEstado_1: TIntegerField
      FieldName = 'idEstado_1'
      Required = True
    end
    object SQLQuery1siglaEstado: TStringField
      FieldName = 'siglaEstado'
      Required = True
      Size = 2
    end
  end
end
