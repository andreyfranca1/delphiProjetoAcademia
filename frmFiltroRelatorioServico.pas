unit frmFiltroRelatorioServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroRelatorio, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TformFiltroRelatorioServico = class(TformFiltroRelatorio)
    edServico: TLabeledEdit;
    edPreco: TLabeledEdit;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroRelatorioServico: TformFiltroRelatorioServico;

implementation

{$R *.dfm}

uses frmRelatorioServicos;

procedure TformFiltroRelatorioServico.btnImprimirClick(Sender: TObject);
begin
  inherited;
  formRelatorioServico := TformRelatorioServico.Create(self);
  try
    sqlFiltro := 'where 1=1';

    if trim(edServico.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(nomeServico) like UPPER(' +
        QuotedStr(edServico.Text + '%') + ')';
    end;
    if trim(edPreco.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and (precoServico) = (' +
        QuotedStr(edPreco.Text) + ')';
    end;
    sqlFiltro := sqlFiltro + ' order by nomeServico';

    formRelatorioServico.SQLQuery1.Close;

    formRelatorioServico.SQLQuery1.SQL.Append(sqlFiltro);
    formRelatorioServico.SQLQuery1.Open;
    formRelatorioServico.SQLQuery1.First;
    formRelatorioServico.QuickRep1.Preview;
  finally
    FreeAndNil(formRelatorioServico);
  end;
end;

end.
