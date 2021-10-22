object formFiltroCadastro: TformFiltroCadastro
  Left = 0
  Top = 0
  Caption = 'formFiltroCadastro'
  ClientHeight = 263
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    310
    263)
  PixelsPerInch = 96
  TextHeight = 13
  object btnFiltrar: TButton
    Left = 123
    Top = 230
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Filtrar'
    TabOrder = 0
    OnClick = btnFiltrarClick
    ExplicitLeft = 448
    ExplicitTop = 266
  end
  object btnCancelar: TButton
    Left = 227
    Top = 230
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
    ExplicitLeft = 552
    ExplicitTop = 266
  end
end
