unit frmFiltroRelatorioProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroRelatorio, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TformFiltroRelatorioProfessor = class(TformFiltroRelatorio)
    edNome: TLabeledEdit;
    edCPF: TLabeledEdit;
    edIdentidade: TLabeledEdit;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroRelatorioProfessor: TformFiltroRelatorioProfessor;

implementation

{$R *.dfm}

uses frmRelatorioProfessor;

procedure TformFiltroRelatorioProfessor.btnImprimirClick(Sender: TObject);
begin
  inherited;
  formRelatorioProfessor := TformRelatorioProfessor.Create(self);
  try
    sqlFiltro := 'where 1=1';

    if trim(edNome.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(nomeProfessor) like UPPER(' +
        QuotedStr(edNome.Text + '%') + ')';
    end;
    if trim(edCPF.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(CPFProfessor) = UPPER(' +
        QuotedStr(edCPF.Text) + ')';
    end;
    if trim(edIdentidade.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(RGProfessor) = UPPER(' +
        QuotedStr(edIdentidade.Text) + ')';
    end;
    formRelatorioProfessor.SQLQuery1.Close;
    formRelatorioProfessor.SQLQuery1.SQL.Append(sqlFiltro);
    formRelatorioProfessor.SQLQuery1.Open;
    formRelatorioProfessor.SQLQuery1.First;

    formRelatorioProfessor.QuickRep1.Preview;
  finally
    FreeAndNil(formRelatorioProfessor);
  end;
end;

end.
