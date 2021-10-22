inherited formManutClientes: TformManutClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 359
  ExplicitWidth = 564
  ExplicitHeight = 398
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 13
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 194
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel [2]
    Left = 400
    Top = 13
    Width = 100
    Height = 13
    Caption = 'Data de Nasicmento:'
  end
  object Label5: TLabel [3]
    Left = 8
    Top = 69
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label6: TLabel [4]
    Left = 303
    Top = 69
    Width = 56
    Height = 13
    Caption = 'Identidade:'
  end
  object Label7: TLabel [5]
    Left = 8
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Peso:'
  end
  object Label8: TLabel [6]
    Left = 174
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Altura:'
  end
  object Label9: TLabel [7]
    Left = 349
    Top = 251
    Width = 23
    Height = 13
    Caption = 'CEP:'
  end
  object Label10: TLabel [8]
    Left = 400
    Top = 194
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object Label11: TLabel [9]
    Left = 8
    Top = 256
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  inherited btnInserir: TButton
    Left = 368
    Top = 324
    TabOrder = 11
    ExplicitLeft = 368
    ExplicitTop = 324
  end
  inherited btnCancelar: TButton
    Left = 457
    Top = 324
    TabOrder = 12
    ExplicitLeft = 457
    ExplicitTop = 324
  end
  object DBEditNome: TDBEdit
    Left = 8
    Top = 32
    Width = 361
    Height = 21
    DataField = 'NomeCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 0
  end
  object DBEditEndereco: TDBEdit
    Left = 8
    Top = 213
    Width = 361
    Height = 21
    DataField = 'enderecoCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 7
  end
  object DBEditDataNascimento: TDBEdit
    Left = 400
    Top = 32
    Width = 132
    Height = 21
    DataField = 'dataNascimento'
    DataSource = formClientes.DataSource1
    TabOrder = 1
  end
  object DBEditCPF: TDBEdit
    Left = 8
    Top = 88
    Width = 249
    Height = 21
    DataField = 'cpfCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 2
  end
  object DBEditIdentidade: TDBEdit
    Left = 303
    Top = 88
    Width = 237
    Height = 21
    DataField = 'rgCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 3
  end
  object DBEditPeso: TDBEdit
    Left = 8
    Top = 152
    Width = 89
    Height = 21
    DataField = 'pesoCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 4
  end
  object DBEditAltura: TDBEdit
    Left = 174
    Top = 152
    Width = 83
    Height = 21
    DataField = 'alturaCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 5
  end
  object DBEditCEP: TDBEdit
    Left = 349
    Top = 275
    Width = 183
    Height = 21
    DataField = 'cepCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 10
  end
  object DBEditBairro: TDBEdit
    Left = 400
    Top = 213
    Width = 132
    Height = 21
    DataField = 'bairroCliente'
    DataSource = formClientes.DataSource1
    TabOrder = 8
  end
  object DBLookupComboBoxCidade: TDBLookupComboBox
    Left = 8
    Top = 275
    Width = 273
    Height = 21
    DataField = 'nomeCidade'
    DataSource = formClientes.DataSource1
    TabOrder = 9
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 303
    Top = 128
    Width = 82
    Height = 53
    Caption = 'Sexo'
    DataField = 'sexoCliente'
    DataSource = formClientes.DataSource1
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 6
    Values.Strings = (
      'M'
      'F')
  end
end
