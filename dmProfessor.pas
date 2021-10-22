unit dmProfessor;

interface

uses
  System.SysUtils, System.Classes, dmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TdtmProfessor = class(TdtmCadastro)
    qryCidades: TSQLQuery;
    qryCidadesidCidade: TIntegerField;
    qryCidadesnomeCidade: TStringField;
    dspCidades: TDataSetProvider;
    cdsCidades: TClientDataSet;
    cdsCidadesidCidade: TIntegerField;
    cdsCidadesnomeCidade: TStringField;
    SQLQuery1idProfessor: TIntegerField;
    SQLQuery1nomeProfessor: TStringField;
    SQLQuery1dataNascimento: TDateField;
    SQLQuery1sexoProfessor: TStringField;
    SQLQuery1enderecoProfessor: TStringField;
    SQLQuery1cpfProfessor: TStringField;
    SQLQuery1rgProfessor: TStringField;
    SQLQuery1cidades_idCidade: TIntegerField;
    ClientDataSet1idProfessor: TIntegerField;
    ClientDataSet1nomeProfessor: TStringField;
    ClientDataSet1dataNascimento: TDateField;
    ClientDataSet1sexoProfessor: TStringField;
    ClientDataSet1enderecoProfessor: TStringField;
    ClientDataSet1cpfProfessor: TStringField;
    ClientDataSet1rgProfessor: TStringField;
    ClientDataSet1cidades_idCidade: TIntegerField;
    ClientDataSet1nomeCidade: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmProfessor: TdtmProfessor;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

end.
