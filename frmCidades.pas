unit frmCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmCadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TformCidades = class(TformCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCidades: TformCidades;

implementation

{$R *.dfm}

uses dmCidades, dmConexao;

end.
