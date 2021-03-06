unit frmConfirmaCobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TformConfirmaCobranca = class(TForm)
    DateTimePicker1: TDateTimePicker;
    LabelDataCobranca: TLabel;
    btnGerar: TButton;
    btnCancelar: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConfirmaCobranca: TformConfirmaCobranca;

implementation

{$R *.dfm}

uses dmPagamentos;

procedure TformConfirmaCobranca.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TformConfirmaCobranca.btnGerarClick(Sender: TObject);
var
  idMatricula : integer;
  preco : currency;
  aviso: integer;
  mensagem : string;

begin
    mensagem := 'Voc? deseja mesmo gerar cobran?as para o dia ' + DateToStr(DateTimePicker1.Date) + ' ?';
  aviso := MessageDlg(mensagem, mtCustom, [mbYes, mbCancel], 0);
  if aviso = mrYes then
  begin


    dtmPagamentos.ClientDataSet2.Open;
    dtmPagamentos.ClientDataSet2.First;

  while not dtmPagamentos.ClientDataSet2.Eof do
  begin

    idMatricula := dtmPagamentos.ClientDataSet2idMatricula.Value;
    preco := dtmPagamentos.ClientDataSet2valorMatricula.AsCurrency;

    dtmPagamentos.SQLQueryInsert.SQL.Clear;
    dtmPagamentos.SQLQueryInsert.SQL.Add
      ('INSERT INTO pagamentos(idMatricula, dataVencimento, preco)');
    dtmPagamentos.SQLQueryInsert.SQL.Add
      ('VALUES ( :idMatricula, :dataVencimento, :preco)');
    dtmPagamentos.SQLQueryInsert.Params[0].AsInteger := idMatricula;
    dtmPagamentos.SQLQueryInsert.Params[1].AsDate := DateTimePicker1.Date;
    dtmPagamentos.SQLQueryInsert.Params[2].AsCurrency := preco;
    dtmPagamentos.SQLQueryInsert.ExecSQL;
    dtmPagamentos.ClientDataSet2.Next;

  end;
  ShowMessage('Cobran?as Geradas');
  dtmPagamentos.ClientDataSet2.Close;
  dtmPagamentos.atualizarRegistros;
  Close;
  end
  else
  begin
    Close;
  end;

end;

end.
