inherited formFiltroPagamentos: TformFiltroPagamentos
  Caption = 'Filtro de Pagamentos'
  ClientHeight = 240
  ClientWidth = 264
  ExplicitWidth = 280
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 77
    Width = 96
    Height = 13
    Caption = 'Data do Vencimento'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 133
    Width = 95
    Height = 13
    Caption = 'Data do Pagamento'
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 21
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
  end
  inherited btnFiltrar: TButton
    Left = 77
    Top = 199
    TabOrder = 3
    ExplicitLeft = 77
    ExplicitTop = 250
  end
  inherited btnCancelar: TButton
    Left = 181
    Top = 199
    TabOrder = 4
    ExplicitLeft = 181
    ExplicitTop = 250
  end
  object EditDataPagamento: TEdit
    Left = 24
    Top = 152
    Width = 186
    Height = 21
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TextHint = '__/__/____'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 40
    Width = 186
    Height = 21
    DataField = 'nomeCliente'
    DataSource = formPagamentos.DataSource1
    TabOrder = 0
  end
  object EditDataVencimento: TEdit
    Left = 24
    Top = 96
    Width = 186
    Height = 21
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = '__/__/____'
  end
end
