unit frmFiltroRelatorioMatricula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroRelatorio, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TformFiltroRelatorioMatricula = class(TformFiltroRelatorio)
    edNome: TLabeledEdit;
    Label1: TLabel;
    EditDataComeco: TEdit;
    EditDataFinal: TEdit;
    Label2: TLabel;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroRelatorioMatricula: TformFiltroRelatorioMatricula;

implementation

{$R *.dfm}

uses frmRelatorioMatricula;

procedure TformFiltroRelatorioMatricula.btnImprimirClick(Sender: TObject);
begin
  inherited;
  formRelatorioMatricula := TformRelatorioMatricula.Create(self);
  try
    sqlFiltro := 'where 1=1';

    if trim(edNome.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(nomeCliente) like UPPER(' +
        QuotedStr(edNome.Text + '%') + ')';
    end;
    if (trim(EditDataComeco.Text) <> '') and (trim(EditDataFinal.Text) <> '') then
    begin
      sqlFiltro := sqlFiltro + ' and dataMatricula BETWEEN ' + QuotedStr(EditDataComeco.Text) + ' AND ' + QuotedStr(EditDataFinal.Text);
    end;

    formRelatorioMatricula.SQLQuery1.SQL.Append(sqlFiltro);

    formRelatorioMatricula.ClientDataSet1.Close;
    formRelatorioMatricula.ClientDataSet1.Open;
    formRelatorioMatricula.ClientDataSet2.Close;
    formRelatorioMatricula.ClientDataSet2.Open;
    formRelatorioMatricula.QuickRep1.Preview;
  finally
    FreeAndNil(formRelatorioMatricula);
  end;
end;

end.
