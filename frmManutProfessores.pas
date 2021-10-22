unit frmManutProfessores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmManutCadastro, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TformManutProfessores = class(TformManutCadastro)
    DBEditNome: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditDataNascimento: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditCPF: TDBEdit;
    Label5: TLabel;
    DBEditIdentidade: TDBEdit;
    Label6: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    Cidades: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formManutProfessores: TformManutProfessores;

implementation

{$R *.dfm}

uses frmProfessor;

end.
