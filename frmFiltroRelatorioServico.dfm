inherited formFiltroRelatorioServico: TformFiltroRelatorioServico
  Caption = 'Filtro de Relat'#243'rio de Servi'#231'os'
  ClientHeight = 169
  ClientWidth = 308
  ExplicitWidth = 324
  ExplicitHeight = 208
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnImprimir: TButton
    Left = 147
    Top = 136
    TabOrder = 2
    OnClick = btnImprimirClick
    ExplicitLeft = 147
    ExplicitTop = 136
  end
  inherited btnCancelar: TButton
    Left = 228
    Top = 136
    TabOrder = 3
    ExplicitLeft = 228
    ExplicitTop = 136
  end
  object edServico: TLabeledEdit
    Left = 8
    Top = 24
    Width = 249
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = 'Servi'#231'o:'
    TabOrder = 0
  end
  object edPreco: TLabeledEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Pre'#231'o:'
    TabOrder = 1
  end
end
