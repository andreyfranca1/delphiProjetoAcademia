unit frmRelatorioProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmRelatorioImpressao, Data.FMTBcd,
  Data.DB, Data.SqlExpr, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TformRelatorioProfessor = class(TformRelatorioImpressao)
    QRDBText1: TQRDBText;
    SQLQuery1idProfessor: TIntegerField;
    SQLQuery1nomeProfessor: TStringField;
    SQLQuery1dataNascimento: TDateField;
    SQLQuery1sexoProfessor: TStringField;
    SQLQuery1enderecoProfessor: TStringField;
    SQLQuery1cpfProfessor: TStringField;
    SQLQuery1rgProfessor: TStringField;
    SQLQuery1cidades_idCidade: TIntegerField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelatorioProfessor: TformRelatorioProfessor;

implementation

{$R *.dfm}

uses dmConexao;

end.
