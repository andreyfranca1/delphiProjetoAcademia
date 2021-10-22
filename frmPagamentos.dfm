inherited formPagamentos: TformPagamentos
  Caption = 'Pagamentos'
  ExplicitWidth = 1135
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    ExplicitLeft = 0
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'idMatricula'
        Title.Caption = 'C'#243'digo Matricula'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeCliente'
        Title.Caption = 'Cliente'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataVencimento'
        Title.Caption = 'Data de Vencimento'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco'
        Title.Caption = 'Valor'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataPagamento'
        Title.Caption = 'Data do Pagamento'
        Width = 64
        Visible = True
      end>
  end
  object btnGerarCobranca: TButton [21]
    Left = 945
    Top = 496
    Width = 143
    Height = 33
    Caption = 'Gerar Cobran'#231'as'
    TabOrder = 19
    OnClick = btnGerarCobrancaClick
  end
  inherited DataSource1: TDataSource
    DataSet = dtmPagamentos.ClientDataSet1
    OnDataChange = DataSource1DataChange
  end
end
