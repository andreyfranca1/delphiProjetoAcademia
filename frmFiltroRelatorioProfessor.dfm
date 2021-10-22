inherited formFiltroRelatorioProfessor: TformFiltroRelatorioProfessor
  Caption = 'Filtro de Relat'#243'rio de Professores'
  ClientHeight = 189
  ExplicitWidth = 463
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnImprimir: TButton
    Top = 152
    TabOrder = 3
    OnClick = btnImprimirClick
    ExplicitTop = 152
  end
  inherited btnCancelar: TButton
    Top = 152
    TabOrder = 4
    ExplicitTop = 152
  end
  object edNome: TLabeledEdit
    Left = 8
    Top = 24
    Width = 431
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    TabOrder = 0
  end
  object edCPF: TLabeledEdit
    Left = 8
    Top = 88
    Width = 233
    Height = 21
    EditLabel.Width = 23
    EditLabel.Height = 13
    EditLabel.Caption = 'CPF:'
    TabOrder = 1
  end
  object edIdentidade: TLabeledEdit
    Left = 256
    Top = 88
    Width = 183
    Height = 21
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'Identidade:'
    TabOrder = 2
  end
end
