unit frmManutCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmManutCadastro, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TformManutCidades = class(TformManutCadastro)
    DBLookupEstado: TDBLookupComboBox;
    DBEditNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formManutCidades: TformManutCidades;

implementation

{$R *.dfm}

uses frmCidades;

end.
