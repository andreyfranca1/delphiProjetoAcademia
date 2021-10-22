inherited formManutProfessores: TformManutProfessores
  Caption = 'Cadastro de Professores'
  ClientHeight = 295
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 13
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 69
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label3: TLabel [2]
    Left = 400
    Top = 13
    Width = 100
    Height = 13
    Caption = 'Data de Nasicmento:'
  end
  object Label5: TLabel [3]
    Left = 24
    Top = 128
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label6: TLabel [4]
    Left = 320
    Top = 128
    Width = 56
    Height = 13
    Caption = 'Identidade:'
  end
  object Cidades: TLabel [5]
    Left = 24
    Top = 192
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  inherited btnInserir: TButton
    Left = 373
    Top = 262
    TabOrder = 7
    ExplicitLeft = 373
    ExplicitTop = 262
  end
  inherited btnCancelar: TButton
    Left = 462
    Top = 262
    TabOrder = 8
    ExplicitLeft = 462
    ExplicitTop = 262
  end
  object DBEditNome: TDBEdit
    Left = 24
    Top = 32
    Width = 289
    Height = 21
    DataField = 'nomeProfessor'
    DataSource = formProfessor.DataSource1
    TabOrder = 0
  end
  object DBEditEndereco: TDBEdit
    Left = 24
    Top = 88
    Width = 289
    Height = 21
    DataField = 'enderecoProfessor'
    DataSource = formProfessor.DataSource1
    TabOrder = 2
  end
  object DBEditDataNascimento: TDBEdit
    Left = 400
    Top = 32
    Width = 121
    Height = 21
    DataField = 'dataNascimento'
    DataSource = formProfessor.DataSource1
    TabOrder = 1
  end
  object DBEditCPF: TDBEdit
    Left = 24
    Top = 147
    Width = 225
    Height = 21
    DataField = 'cpfProfessor'
    DataSource = formProfessor.DataSource1
    TabOrder = 4
  end
  object DBEditIdentidade: TDBEdit
    Left = 320
    Top = 147
    Width = 220
    Height = 21
    DataField = 'rgProfessor'
    DataSource = formProfessor.DataSource1
    TabOrder = 5
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 400
    Top = 69
    Width = 84
    Height = 45
    Caption = 'Sexo:'
    DataField = 'sexoProfessor'
    DataSource = formProfessor.DataSource1
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 3
    Values.Strings = (
      'M'
      'F')
  end
  object DBLookupComboBoxCidade: TDBLookupComboBox
    Left = 24
    Top = 211
    Width = 305
    Height = 21
    DataField = 'nomeCidade'
    DataSource = formProfessor.DataSource1
    TabOrder = 6
  end
end
