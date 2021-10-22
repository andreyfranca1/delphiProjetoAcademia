unit frmRelatorioCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmRelatorioImpressao, Data.FMTBcd,
  Data.DB, Data.SqlExpr, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TformRelatorioCidade = class(TformRelatorioImpressao)
    SQLQuery1idCidade: TIntegerField;
    SQLQuery1nomeCidade: TStringField;
    SQLQuery1idEstado: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelatorioCidade: TformRelatorioCidade;

implementation

{$R *.dfm}

end.
