inherited formRelatorioCidade: TformRelatorioCidade
  Caption = 'formRelatorioCidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
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
        Left = 597
        Width = 119
        Size.Values = (
          44.979166666666670000
          1579.562500000000000000
          0.000000000000000000
          314.854166666666700000)
        FontSize = 10
        ExplicitLeft = 597
        ExplicitWidth = 119
      end
    end
    inherited TitleBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      inherited QRLabel2: TQRLabel
        Size.Values = (
          87.312500000000000000
          190.500000000000000000
          15.875000000000000000
          1357.312500000000000000)
        Caption = 'Relat'#243'rio de Cidades'
        FontSize = 20
      end
    end
    inherited ColumnHeaderBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object QRLabel3: TQRLabel
        Left = 8
        Top = 11
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          29.104166666666670000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 112
        Top = 11
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          29.104166666666670000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 299
        Top = 11
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          791.104166666666700000
          29.104166666666670000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estado'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    inherited DetailBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object QRDBText1: TQRDBText
        Left = 8
        Top = 17
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          44.979166666666670000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'idCidade'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 112
        Top = 17
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          44.979166666666670000
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
      object QRDBText3: TQRDBText
        Left = 299
        Top = 17
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          791.104166666666700000
          44.979166666666670000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'idEstado'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    inherited PageFooterBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      inherited QRSysData3: TQRSysData
        Width = 8
        Size.Values = (
          44.979166666666670000
          1778.000000000000000000
          63.500000000000000000
          21.166666666666670000)
        FontSize = 10
        ExplicitWidth = 8
      end
    end
  end
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      'select * from cidades')
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
  end
end
