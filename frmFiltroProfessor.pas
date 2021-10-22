unit frmFiltroProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroCadastro, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TformFiltroProfessor = class(TformFiltroCadastro)
    edNome: TLabeledEdit;
    edCPF: TLabeledEdit;
    edIdentidade: TLabeledEdit;
    procedure btnFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formFiltroProfessor: TformFiltroProfessor;

implementation

{$R *.dfm}

uses frmRelatorioProfessor;

procedure TformFiltroProfessor.btnFiltrarClick(Sender: TObject);
begin
  formRelatorioProfessor := TformRelatorioProfessor.Create(self);
  try

  sqlFiltro := 'where 1=1' ;

  if trim(edNome.Text) <> '' then
  begin
     sqlFiltro := sqlFiltro + ' and UPPER(nomeProfessor) like UPPER(' + QuotedStr(edNome.Text + '%') + ')';
  end;
    if trim(edCPF.Text) <> '' then
  begin
     sqlFiltro := sqlFiltro + ' and UPPER(CPFProfessor) = UPPER(' + QuotedStr(edCPF.Text) + ')';
  end;
    if trim(edIdentidade.Text) <> '' then
  begin
     sqlFiltro := sqlFiltro + ' and UPPER(RGProfessor) = UPPER(' + QuotedStr(edIdentidade.Text) + ')';
  end;
  sqlFiltro := sqlFiltro + ' order by nomeProfessor';

  finally
  FreeAndNil(formRelatorioProfessor);
  end;
  inherited;

end;

end.
