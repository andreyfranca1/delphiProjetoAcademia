unit dmCidades;

interface

uses
  System.SysUtils, System.Classes, dmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TdtmCidades = class(TdtmCadastro)
    SQLQuery1idCidade: TIntegerField;
    SQLQuery1nomeCidade: TStringField;
    SQLQuery1idEstado: TIntegerField;
    ClientDataSet1idCidade: TIntegerField;
    ClientDataSet1nomeCidade: TStringField;
    ClientDataSet1idEstado: TIntegerField;
    qryEstados: TSQLQuery;
    dspEstados: TDataSetProvider;
    cdsEstados: TClientDataSet;
    SQLQuery1nomeEstado: TStringField;
    qryEstadosidEstado: TIntegerField;
    qryEstadossiglaEstado: TStringField;
    cdsEstadosidEstado: TIntegerField;
    cdsEstadossiglaEstado: TStringField;
    cdsEstadosnomeEstado: TStringField;
    ClientDataSet1nomeEstado: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmCidades: TdtmCidades;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
