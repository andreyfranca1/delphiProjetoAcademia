unit frmManutCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformManutCadastro = class(TForm)
    btnInserir: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formManutCadastro: TformManutCadastro;

implementation

{$R *.dfm}



procedure TformManutCadastro.btnCancelarClick(Sender: TObject);
begin
  Close();
end;

end.
