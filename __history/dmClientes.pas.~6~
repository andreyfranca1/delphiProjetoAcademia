unit dmClientes;

interface

uses
  System.SysUtils, System.Classes, dmCadastro, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TdtmClientes = class(TdtmCadastro)
    SQLQuery1idClientes: TIntegerField;
    SQLQuery1NomeCliente: TStringField;
    SQLQuery1dataNascimento: TDateField;
    SQLQuery1enderecoCliente: TStringField;
    SQLQuery1cpfCliente: TStringField;
    SQLQuery1rgCliente: TStringField;
    SQLQuery1pesoCliente: TFMTBCDField;
    SQLQuery1alturaCliente: TFMTBCDField;
    SQLQuery1Cidades_idCidade: TIntegerField;
    SQLQuery1cepCliente: TStringField;
    SQLQuery1bairroCliente: TStringField;
    ClientDataSet1idClientes: TIntegerField;
    ClientDataSet1NomeCliente: TStringField;
    ClientDataSet1dataNascimento: TDateField;
    ClientDataSet1enderecoCliente: TStringField;
    ClientDataSet1cpfCliente: TStringField;
    ClientDataSet1rgCliente: TStringField;
    ClientDataSet1pesoCliente: TFMTBCDField;
    ClientDataSet1alturaCliente: TFMTBCDField;
    ClientDataSet1Cidades_idCidade: TIntegerField;
    ClientDataSet1cepCliente: TStringField;
    ClientDataSet1bairroCliente: TStringField;
    qryCidades: TSQLQuery;
    qryCidadesidCidade: TIntegerField;
    qryCidadesnomeCidade: TStringField;
    dspCidades: TDataSetProvider;
    cdsCidades: TClientDataSet;
    cdsCidadesidCidade: TIntegerField;
    cdsCidadesnomeCidade: TStringField;
    ClientDataSet1nomeCidade: TStringField;
    SQLQuery1sexoCliente: TStringField;
    ClientDataSet1sexoCliente: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmClientes: TdtmClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}
procedure TdtmClientes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  cdsCidades.Close;
  cdsCidades.Open;
end;

end.
