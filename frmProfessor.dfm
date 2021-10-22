inherited formProfessor: TformProfessor
  Caption = 'Professores'
  ExplicitWidth = 1135
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Left = 851
    Width = 237
    ExplicitLeft = 851
    ExplicitWidth = 237
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'idProfessor'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeProfessor'
        Title.Caption = 'Nome'
        Width = 256
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpfProfessor'
        Title.Caption = 'CPF'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rgProfessor'
        Title.Caption = 'Identidade'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataNascimento'
        Title.Caption = 'Data de Nascimento'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexoProfessor'
        Title.Caption = 'Sexo'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'enderecoProfessor'
        Title.Caption = 'Endere'#231'o'
        Width = 279
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeCidade'
        Title.Caption = 'Cidade'
        Width = 192
        Visible = True
      end>
  end
  inherited btnPesquisar: TButton
    Left = 851
    ExplicitLeft = 851
  end
  inherited DataSource1: TDataSource
    DataSet = dtmProfessor.ClientDataSet1
  end
end
