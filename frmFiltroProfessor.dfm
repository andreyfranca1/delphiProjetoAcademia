inherited formFiltroProfessor: TformFiltroProfessor
  Caption = 'Filtro de Professores'
  ClientHeight = 242
  ClientWidth = 265
  ExplicitWidth = 281
  ExplicitHeight = 281
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnFiltrar: TButton
    Left = 78
    Top = 209
    TabOrder = 3
    ExplicitLeft = 78
    ExplicitTop = 209
  end
  inherited btnCancelar: TButton
    Left = 182
    Top = 209
    TabOrder = 4
    ExplicitLeft = 182
    ExplicitTop = 209
  end
  object edNome: TLabeledEdit
    Left = 16
    Top = 32
    Width = 225
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    TabOrder = 0
  end
  object edCPF: TLabeledEdit
    Left = 16
    Top = 96
    Width = 225
    Height = 21
    EditLabel.Width = 23
    EditLabel.Height = 13
    EditLabel.Caption = 'CPF:'
    TabOrder = 1
  end
  object edIdentidade: TLabeledEdit
    Left = 16
    Top = 160
    Width = 225
    Height = 21
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'Identidade:'
    TabOrder = 2
  end
end
