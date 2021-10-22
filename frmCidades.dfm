inherited formCidades: TformCidades
  Caption = 'Cidades'
  ExplicitWidth = 1135
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    ExplicitLeft = -452
    ExplicitTop = -8
  end
  inherited btnPesquisar: TButton [2]
    Left = 868
    Top = 43
    Visible = False
    ExplicitLeft = 868
    ExplicitTop = 43
  end
  inherited btnNovo: TButton [3]
  end
  inherited btnExcluir: TButton [4]
  end
  inherited btnCancelar: TButton [5]
  end
  inherited btnRefresh: TButton [6]
    Left = 868
    Top = 43
    ExplicitLeft = 868
    ExplicitTop = 43
  end
  inherited btnFechar: TButton [7]
    Left = 989
    Top = 43
    ExplicitLeft = 989
    ExplicitTop = 43
  end
  inherited Panel3: TPanel [8]
  end
  inherited Panel1: TPanel [9]
  end
  inherited Panel4: TPanel [10]
  end
  inherited btnPrimeiro: TButton [11]
  end
  inherited btnAnterior: TButton [12]
  end
  inherited btnProximo: TButton [13]
  end
  inherited btnUltimo: TButton [14]
  end
  inherited DBGrid1: TDBGrid [15]
    Columns = <
      item
        Expanded = False
        FieldName = 'idCidade'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeCidade'
        Title.Caption = 'Nome da Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeEstado'
        Title.Caption = 'Estado'
        Visible = True
      end>
  end
  inherited btnStart: TButton [16]
  end
  inherited btnRollback: TButton [17]
  end
  inherited btnCommit: TButton [18]
  end
  inherited Panel2: TPanel [19]
  end
  inherited DataSource1: TDataSource
    DataSet = dtmCidades.ClientDataSet1
    OnDataChange = DataSource1DataChange
  end
end
