inherited formFiltroRelatorioMatricula: TformFiltroRelatorioMatricula
  Caption = 'Filtro de Relat'#243'rio de Matr'#237'culas'
  ClientHeight = 252
  ClientWidth = 297
  ExplicitWidth = 313
  ExplicitHeight = 291
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 69
    Width = 81
    Height = 13
    Caption = 'Matr'#237'culas entre:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 115
    Width = 121
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'E'
  end
  inherited btnImprimir: TButton
    Left = 108
    Top = 219
    TabOrder = 3
    OnClick = btnImprimirClick
    ExplicitLeft = 108
    ExplicitTop = 219
  end
  inherited btnCancelar: TButton
    Left = 205
    Top = 219
    TabOrder = 4
    ExplicitLeft = 205
    ExplicitTop = 219
  end
  object edNome: TLabeledEdit
    Left = 8
    Top = 24
    Width = 273
    Height = 21
    EditLabel.Width = 82
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome do Cliente:'
    TabOrder = 0
  end
  object EditDataComeco: TEdit
    Left = 8
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditDataFinal: TEdit
    Left = 8
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
