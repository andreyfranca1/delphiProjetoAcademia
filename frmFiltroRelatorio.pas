unit frmFiltroRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformFiltroRelatorio = class(TForm)
    btnImprimir: TButton;
    btnCancelar: TButton;
  private
    FsqlFiltro: string;
    { Private declarations }
  public
    { Public declarations }
    property sqlFiltro : string read FsqlFiltro write FsqlFiltro;
  end;

var
  formFiltroRelatorio: TformFiltroRelatorio;

implementation

{$R *.dfm}

end.
