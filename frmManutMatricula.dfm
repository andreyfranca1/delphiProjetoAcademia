inherited formManutMatricula: TformManutMatricula
  Caption = 'Cadastro de Matr'#237'culas'
  ClientHeight = 433
  ClientWidth = 570
  ExplicitWidth = 586
  ExplicitHeight = 472
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 16
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel [1]
    Left = 444
    Top = 13
    Width = 88
    Height = 13
    Caption = 'Data da Matr'#237'cula:'
  end
  object Label4: TLabel [2]
    Left = 16
    Top = 317
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label1: TLabel [3]
    Left = 16
    Top = 69
    Width = 50
    Height = 13
    Caption = 'Professor:'
  end
  inherited btnInserir: TButton
    Left = 368
    Top = 372
    TabOrder = 7
    ExplicitLeft = 368
    ExplicitTop = 372
  end
  inherited btnCancelar: TButton
    Left = 457
    Top = 372
    TabOrder = 8
    ExplicitLeft = 457
    ExplicitTop = 372
  end
  object DBLookupCliente: TDBLookupComboBox
    Left = 16
    Top = 32
    Width = 312
    Height = 21
    DataField = 'nomeCliente'
    DataSource = formMatricula.DataSource1
    TabOrder = 0
  end
  object DBEditDataMatricula: TDBEdit
    Left = 405
    Top = 32
    Width = 127
    Height = 21
    DataField = 'dataMatricula'
    DataSource = formMatricula.DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 532
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomeServico'
        Title.Caption = 'Nome do Servi'#231'o'
        Width = 294
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precoServico'
        Title.Caption = 'Pre'#231'o Mensal'
        Width = 95
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 264
    Width = 400
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEditValorMatricula: TDBEdit
    Left = 16
    Top = 336
    Width = 121
    Height = 21
    DataField = 'valorMatricula'
    DataSource = formMatricula.DataSource1
    TabOrder = 6
  end
  object DBLookupProfessor: TDBLookupComboBox
    Left = 16
    Top = 88
    Width = 312
    Height = 21
    DataField = 'nomeProfessor'
    DataSource = formMatricula.DataSource1
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 405
    Top = 88
    Width = 127
    Height = 17
    BiDiMode = bdLeftToRight
    Caption = 'Ativo '
    DataField = 'ativo'
    DataSource = formMatricula.DataSource1
    ParentBiDiMode = False
    TabOrder = 3
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DataSource1: TDataSource
    DataSet = dtmMatricula.ClientDataSet2
    Left = 32
    Top = 376
  end
end
