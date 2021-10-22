program PATP;

uses
  Vcl.Forms,
  dmCadastro in 'dmCadastro.pas' {dtmCadastro: TDataModule},
  frmCadastro in 'frmCadastro.pas' {formCadastro},
  dmConexao in 'dmConexao.pas' {dtmConexao: TDataModule},
  formMenu in 'formMenu.pas' {frmMenu},
  dmProfessor in 'dmProfessor.pas' {dtmProfessor: TDataModule},
  frmProfessor in 'frmProfessor.pas' {formProfessor},
  dmServicos in 'dmServicos.pas' {dtmServicos: TDataModule},
  frmServicos in 'frmServicos.pas' {formServicos},
  dmClientes in 'dmClientes.pas' {dtmClientes: TDataModule},
  frmClientes in 'frmClientes.pas' {formClientes},
  frmFiltroCadastro in 'frmFiltroCadastro.pas' {formFiltroCadastro},
  frmFiltroProfessor in 'frmFiltroProfessor.pas' {formFiltroProfessor},
  frmFiltroClientes in 'frmFiltroClientes.pas' {formFiltroClientes},
  frmManutCadastro in 'frmManutCadastro.pas' {formManutCadastro},
  frmManutProfessores in 'frmManutProfessores.pas' {formManutProfessores},
  frmManutServico in 'frmManutServico.pas' {formManutServico},
  frmManutClientes in 'frmManutClientes.pas' {formManutClientes},
  frmMatricula in 'frmMatricula.pas' {formMatricula},
  dmMatricula in 'dmMatricula.pas' {dtmMatricula: TDataModule},
  frmManutMatricula in 'frmManutMatricula.pas' {formManutMatricula},
  dmCidades in 'dmCidades.pas' {dtmCidades: TDataModule},
  frmCidades in 'frmCidades.pas' {formCidades},
  frmManutCidades in 'frmManutCidades.pas' {formManutCidades},
  frmFiltroServico in 'frmFiltroServico.pas' {formFiltroServico},
  frmPagamentos in 'frmPagamentos.pas' {formPagamentos},
  dmPagamentos in 'dmPagamentos.pas' {dtmPagamentos: TDataModule},
  frmManutPagamentos in 'frmManutPagamentos.pas' {formManutPagamentos},
  frmRelatorioImpressao in 'frmRelatorioImpressao.pas' {formRelatorioImpressao},
  frmRelatorioCliente in 'frmRelatorioCliente.pas' {formRelatorioCliente},
  frmRelatorioProfessor in 'frmRelatorioProfessor.pas' {formRelatorioProfessor},
  frmFiltroRelatorio in 'frmFiltroRelatorio.pas' {formFiltroRelatorio},
  frmFiltroRelatorioClientes in 'frmFiltroRelatorioClientes.pas' {formFiltroRelatorioClientes},
  frmFiltroRelatorioProfessor in 'frmFiltroRelatorioProfessor.pas' {formFiltroRelatorioProfessor},
  frmRelatorioServicos in 'frmRelatorioServicos.pas' {formRelatorioServico},
  frmFiltroRelatorioServico in 'frmFiltroRelatorioServico.pas' {formFiltroRelatorioServico},
  frmConfirmaCobranca in 'frmConfirmaCobranca.pas' {formConfirmaCobranca},
  frmRelatorioMatricula in 'frmRelatorioMatricula.pas' {formRelatorioMatricula},
  frmFiltroPagamentos in 'frmFiltroPagamentos.pas' {formFiltroPagamentos},
  frmFiltroRelatorioMatricula in 'frmFiltroRelatorioMatricula.pas' {formFiltroRelatorioMatricula};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.Run;
end.
