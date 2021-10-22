unit dmMatricula;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.DBXCommon, Data.SqlExpr,
  dmCadastro;

type
  TdtmMatricula = class(TdtmCadastro)
    SQLQuery1idCliente: TIntegerField;
    ClientDataSet1idMatricula: TIntegerField;
    ClientDataSet1dataMatricula: TDateField;
    ClientDataSet1idCliente: TIntegerField;
    DataSource1: TDataSource;
    ClientDataSet2: TClientDataSet;
    SQLQuery2: TSQLQuery;
    sqlNovaChave: TSQLQuery;
    ClientDataSet1SQLQuery2: TDataSetField;
    SQLQuery2idServicosMatriculas: TIntegerField;
    SQLQuery2Matriculas_idMatricula: TIntegerField;
    SQLQuery2Servicos_idServicos: TIntegerField;
    SQLQuery1idMatricula: TIntegerField;
    SQLQuery1dataMatricula: TDateField;
    SQLQuery1valorMatricula: TFMTBCDField;
    ClientDataSet1valorMatricula: TFMTBCDField;
    SQLQueryClientes: TSQLQuery;
    SQLQueryClientesidclientes: TIntegerField;
    SQLQueryClientesnomecliente: TStringField;
    DataSetProviderClientes: TDataSetProvider;
    ClientDataSetClientes: TClientDataSet;
    ClientDataSetClientesidclientes: TIntegerField;
    ClientDataSetClientesnomecliente: TStringField;
    ClientDataSet1nomeCliente: TStringField;
    SQLQueryServicos: TSQLQuery;
    SQLQueryServicosidServico: TIntegerField;
    SQLQueryServicosnomeServico: TStringField;
    SQLQueryServicosprecoServico: TFMTBCDField;
    ClientDataSetServicos: TClientDataSet;
    DataSetProviderServicos: TDataSetProvider;
    ClientDataSetServicosidServico: TIntegerField;
    ClientDataSetServicosnomeServico: TStringField;
    ClientDataSetServicosprecoServico: TFMTBCDField;
    ClientDataSet2idServicosMatriculas: TIntegerField;
    ClientDataSet2Matriculas_idMatricula: TIntegerField;
    ClientDataSet2Servicos_idServicos: TIntegerField;
    ClientDataSet2nomeServico: TStringField;
    SQLQuery2precoServico: TFMTBCDField;
    ClientDataSet2precoServico: TFMTBCDField;
    SQLQuery3: TSQLQuery;
    SQLQuery3precoServico: TFMTBCDField;
    SQLQuery1professores_idProfessor: TIntegerField;
    ClientDataSet1professores_idProfessor: TIntegerField;
    SQLQueryProfessor: TSQLQuery;
    DataSetProviderProfessor: TDataSetProvider;
    ClientDataSetProfessor: TClientDataSet;
    SQLQueryProfessoridProfessor: TIntegerField;
    SQLQueryProfessornomeProfessor: TStringField;
    ClientDataSetProfessoridProfessor: TIntegerField;
    ClientDataSetProfessornomeProfessor: TStringField;
    ClientDataSet1nomeProfessor: TStringField;
    SQLQueryClientescpfCliente: TStringField;
    SQLQueryClientesrgCliente: TStringField;
    ClientDataSetClientescpfCliente: TStringField;
    ClientDataSetClientesrgCliente: TStringField;
    SQLQuery1ativo: TShortintField;
    ClientDataSet1ativo: TShortintField;
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure ClientDataSet2BeforePost(DataSet: TDataSet);
    procedure ClientDataSet2NewRecord(DataSet: TDataSet);
    procedure ClientDataSet2BeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    function getNovaChave(Chave: string): integer;
  public
    { Public declarations }
  end;

var
  dtmMatricula: TdtmMatricula;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

procedure TdtmMatricula.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idMatricula.Value := getNovaChave('MATRICULAS');
  ClientDataSet1valorMatricula.Value := 0;
  ClientDataSet1ativo.Value := 1;
  ClientDataSet1dataMatricula.Value := Now
end;

procedure TdtmMatricula.ClientDataSet2BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (ClientDataSet2.State in dsEditModes) then
          ClientDataSet2.Edit;
  ClientDataSet2precoServico.Value := SQLQuery3precoServico.AsCurrency;
  ClientDataSet1valorMatricula.Value := ClientDataSet1ValorMatricula.Value - SQLQuery3precoServico.value;
end;

procedure TdtmMatricula.ClientDataSet2BeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLQuery3.Close;
  SQLQuery3.Params[0].AsInteger := ClientDataSet2Servicos_idServicos.AsInteger;
  SQLQuery3.Open;
  ClientDataSet2precoServico.Value := SQLQuery3precoServico.AsCurrency;
  ClientDataSet1valorMatricula.Value := SQLQuery3precoServico.AsCurrency + ClientDataSet1valorMatricula.Value;
end;

procedure TdtmMatricula.ClientDataSet2NewRecord(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet2idServicosMatriculas.Value := getNovaChave('ITEMMATRICULAS');
  ClientDataSet2Matriculas_idMatricula.Value := ClientDataSet1idMatricula.AsInteger;
end;

function TdtmMatricula.getNovaChave(Chave: string): integer;
begin
  try
    sqlNovaChave.Close;
    sqlNovaChave.SQL.Clear;
    sqlNovaChave.SQL.Add('update sequencias');
    sqlNovaChave.SQL.Add('set valor = valor + 1');
    sqlNovaChave.SQL.Add('where chave = ' + QuotedStr(Chave));
    sqlNovaChave.ExecSQL;

    sqlNovaChave.Close;
    sqlNovaChave.SQL.Clear;
    sqlNovaChave.SQL.Add('select valor from sequencias ');
    sqlNovaChave.SQL.Add(' where chave = ' + QuotedStr(Chave));
    sqlNovaChave.Open;

    if sqlNovaChave.IsEmpty then
    begin
      sqlNovaChave.Close;
      sqlNovaChave.SQL.Clear;
      sqlNovaChave.SQL.Add('insert into sequencias ');
      sqlNovaChave.SQL.Add('values(' + QuotedStr(Chave) + ', 1)');
      sqlNovaChave.Open;
      result := 1;
    end
    else
      result := sqlNovaChave.Fields[0].AsInteger;
  finally
    sqlNovaChave.Close;
  end;
end;

end.
