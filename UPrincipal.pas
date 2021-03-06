unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,  ComObj,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, MidasLib,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,

   SqlExpr,



  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.ComCtrls,
  Data.FMTBcd, Datasnap.Provider, Vcl.Samples.Gauges;

type
  TFPrincipalConversor = class(TForm)
    FDConnectionFirebird: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    EditBanco: TEdit;
    Label4: TLabel;
    CDSGravaMovtoEstoque: TFDQuery;
    Panel2: TPanel;
    Panel1: TPanel;
    Button2: TButton;
    Gauge1: TGauge;
    QryExecuta: TFDQuery;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ExecutaSQL(VSSql: String);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalConversor: TFPrincipalConversor;
  VSSql : String;

implementation

{$R *.dfm}

uses funcoes;

procedure TFPrincipalConversor.Button1Click(Sender: TObject);
begin
   Gauge1.MaxValue  := 57;
    Gauge1.Progress := 0;

    VSSql := 'UPDATE saldocaixa SET VALOR_SALDOCAIXA = 0';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 1;

    VSSql := 'UPDATE mesa SET CODIGO_PEDIDO = 0';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 2;

    VSSql := 'UPDATE MESA SET SITUACAO_MESA = '+QuotedStr('L');
    ExecutaSQL(VSSql);
    Gauge1.Progress := 3;


    VSSql := 'DELETE FROM BAIXA_TITULO';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 4;

    VSSql := 'DELETE FROM TITULOPAGAR';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 5;




    VSSql := 'DELETE FROM BAIXA_DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 6;

    VSSql := 'DELETE FROM DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 7;


    VSSql := 'DELETE FROM CHEQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress :=  8;


    VSSql := 'DELETE FROM SALDOESTOQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 9;


    VSSql := 'DELETE FROM ESTOQUEDIARIO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 10;

    VSSql := 'DELETE FROM MANIFESTODEST';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 11;

    VSSql := 'DELETE FROM MENSAGEMWHATS';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 11;



    VSSql := 'DELETE FROM MDFE_CONDUTOR';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 12;




    VSSql := 'DELETE FROM MDFE_EVENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 13;



    VSSql := 'DELETE FROM MDFE_LOG';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 14;




    VSSql := 'DELETE FROM MDFE_MUNICIPIOCARREGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 15;



    VSSql := 'DELETE FROM MDFE_NFE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 16;



    VSSql := 'DELETE FROM MDFE_PERCURSO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 17;



    VSSql := 'DELETE FROM MDFE_REBOQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 18;





    VSSql := 'DELETE FROM MDFE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 19;


    VSSql := 'DELETE FROM MOVTOESTOQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 20;

    VSSql := 'DELETE FROM MOVTOCAIXA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 21;

    VSSql := 'DELETE FROM CAMPANHAWHATS';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 22;

    VSSql := 'DELETE FROM CAMPANHAWHATS_CLIENTE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 23;

    VSSql := 'DELETE FROM ABERTURA_CAIXA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 24;


    VSSql := 'DELETE FROM ABERTURA_FORMAPAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 25;

    VSSql := 'DELETE FROM FECHAMENTO_CAIXA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 26;


    VSSql := 'DELETE FROM FECHAMENTO_FORMAPAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 27;

    VSSql := 'DELETE FROM NOTACOMPRA_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 28;

    VSSql := 'DELETE FROM NOTACOMPRA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 29;

    VSSql := 'DELETE FROM CUPOM_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 30;

    VSSql := 'DELETE FROM CUPOM';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 31;

    VSSql := 'DELETE FROM AJUSTE_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 32;

    VSSql := 'DELETE FROM AJUSTE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 33;

    VSSql := 'DELETE FROM PROMOCAO_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 34;

    VSSql := 'DELETE FROM PROMOCAO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 35;

    VSSql := 'DELETE FROM PEDIDO_PAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 36;

    VSSql := 'DELETE FROM PEDIDO_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 37;

    VSSql := 'DELETE FROM PEDIDO_CHEQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 37;

    VSSql := 'DELETE FROM PEDIDO_ACRESCIMO';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_CARTAO';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_PAGAMENTOPARCIAL';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_PRODUTOCANC';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;



    VSSql := 'DELETE FROM PEDIDO_PRODUTODET';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_PRODUTOENTREGUE';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;

    VSSql := 'DELETE FROM PEDIDO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 39;


    VSSql := 'DELETE FROM NFE_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 40;

    VSSql := 'DELETE FROM NFE_DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 41;

    VSSql := 'DELETE FROM NFE_PAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 42;


    VSSql := 'DELETE FROM NFE_EVENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 43;


    VSSql := 'DELETE FROM NFE_LOG';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 44;


    VSSql := 'DELETE FROM NFE_NFREFERENCIADA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 45;


    VSSql := 'DELETE FROM NFE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 46;



    VSSql := 'DELETE FROM ORDEMSERVICO_SERVICO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 47;

    VSSql := 'DELETE FROM ORDEMSERVICO_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 48;

    VSSql := 'DELETE FROM ORDEMSERVICO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 49;




    VSSql := 'DELETE FROM TRANSFERENCIAETQ_PROD';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 50;
    VSSql := 'DELETE FROM TRANSFERENCIAETQ';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 51;





    Gauge1.Progress := 52;

    VSSql := 'DELETE FROM NFCE_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 53;


    VSSql := 'DELETE FROM NFCE_DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 54;

    VSSql := 'DELETE FROM NFCE_LOG';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 55;


    VSSql := 'DELETE FROM NFCE_PAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 56;



    VSSql := 'DELETE FROM NFCE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 57;



    Showmessage('Processo Concluido com Sucesso!');

end;

procedure TFPrincipalConversor.Button2Click(Sender: TObject);
begin
    Gauge1.MaxValue := 67;
    Gauge1.Progress := 0;

    VSSql := 'UPDATE saldocaixa SET VALOR_SALDOCAIXA = 0';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 1;

    VSSql := 'UPDATE mesa SET CODIGO_PEDIDO = 0';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 2;

    VSSql := 'UPDATE MESA SET SITUACAO_MESA = '+QuotedStr('L');
    ExecutaSQL(VSSql);
    Gauge1.Progress := 3;


    VSSql := 'DELETE FROM BAIXA_TITULO';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 4;

    VSSql := 'DELETE FROM TITULOPAGAR';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 5;


    VSSql := 'DELETE FROM BAIXA_DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 6;

    VSSql := 'DELETE FROM DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 7;


    VSSql := 'DELETE FROM CHEQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress :=  8;


    VSSql := 'DELETE FROM SALDOESTOQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 9;


    VSSql := 'DELETE FROM ESTOQUEDIARIO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 10;


    VSSql := 'DELETE FROM MANIFESTODEST';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 11;

    VSSql := 'DELETE FROM MENSAGEMWHATS';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 11;


    VSSql := 'DELETE FROM MDFE_CONDUTOR';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 12;




    VSSql := 'DELETE FROM MDFE_EVENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 13;



    VSSql := 'DELETE FROM MDFE_LOG';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 14;




    VSSql := 'DELETE FROM MDFE_MUNICIPIOCARREGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 15;



    VSSql := 'DELETE FROM MDFE_NFE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 16;



    VSSql := 'DELETE FROM MDFE_PERCURSO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 17;



    VSSql := 'DELETE FROM MDFE_REBOQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 18;





    VSSql := 'DELETE FROM MDFE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 19;


    VSSql := 'DELETE FROM MOVTOESTOQUE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 20;

    VSSql := 'DELETE FROM MOVTOCAIXA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 21;


    VSSql := 'DELETE FROM CAMPANHAWHATS';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 22;

    VSSql := 'DELETE FROM CAMPANHAWHATS_CLIENTE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 23;


    VSSql := 'DELETE FROM ABERTURA_CAIXA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 24;

    VSSql := 'DELETE FROM ABERTURA_FORMAPAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 25;


    VSSql := 'DELETE FROM FECHAMENTO_CAIXA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 26;

    VSSql := 'DELETE FROM FECHAMENTO_FORMAPAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 27;

    VSSql := 'DELETE FROM NOTACOMPRA_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 28;

    VSSql := 'DELETE FROM NOTACOMPRA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 29;

    VSSql := 'DELETE FROM CUPOM_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 30;

    VSSql := 'DELETE FROM CUPOM';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 31;


    VSSql := 'DELETE FROM PROMOCAO_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 32;

    VSSql := 'DELETE FROM PROMOCAO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 33;

    VSSql := 'DELETE FROM AJUSTE_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 34;

    VSSql := 'DELETE FROM AJUSTE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 35;

    VSSql := 'DELETE FROM PEDIDO_PAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 36;

    VSSql := 'DELETE FROM PEDIDO_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 37;

    VSSql := 'DELETE FROM PEDIDO_CHEQUE';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;

    VSSql := 'DELETE FROM PEDIDO_ACRESCIMO';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_CARTAO';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_PAGAMENTOPARCIAL';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_PRODUTOCANC';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;



    VSSql := 'DELETE FROM PEDIDO_PRODUTODET';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO_PRODUTOENTREGUE';
    ExecutaSQL(VSSql);
    Gauge1.Progress := 38;


    VSSql := 'DELETE FROM PEDIDO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 39;


    VSSql := 'DELETE FROM NFE_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 40;

    VSSql := 'DELETE FROM NFE_DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 41;

    VSSql := 'DELETE FROM NFE_PAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 42;


    VSSql := 'DELETE FROM NFE_EVENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 43;


    VSSql := 'DELETE FROM NFE_LOG';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 44;


    VSSql := 'DELETE FROM NFE_NFREFERENCIADA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 45;


    VSSql := 'DELETE FROM NFE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 46;



    VSSql := 'DELETE FROM ORDEMSERVICO_SERVICO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 47;

    VSSql := 'DELETE FROM ORDEMSERVICO_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 48;

    VSSql := 'DELETE FROM ORDEMSERVICO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 49;


    VSSql := 'DELETE FROM CLIENTE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 50;


    VSSql := 'DELETE FROM TRANSFERENCIAETQ_PROD';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 51;
    VSSql := 'DELETE FROM TRANSFERENCIAETQ';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 52;


    VSSql := 'DELETE FROM PRODUTO_COMPONENTE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 53;


    VSSql := 'DELETE FROM PRODUTO_EMPRESA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 54;


    VSSql := 'DELETE FROM PRODUTO_DETALHE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 55;



    VSSql := 'DELETE FROM PRODUTO_CATEGORIADETALHE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 56;



    VSSql := 'DELETE FROM PRODUTO_CATEGORIA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 57;

    VSSql := 'DELETE FROM PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 58;

    VSSql := 'DELETE FROM NFCE_PRODUTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 59;


    VSSql := 'DELETE FROM NFCE_DUPLICATA';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 60;

    VSSql := 'DELETE FROM NFCE_LOG';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 61;


    VSSql := 'DELETE FROM NFCE_PAGAMENTO';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 62;



    VSSql := 'DELETE FROM NFCE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 63;

    VSSql := 'DELETE FROM FORNECEDOR';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 64;



    VSSql := 'DELETE FROM CAMPANHAWHATS';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 65;


    VSSql := 'DELETE FROM CAMPANHAWHATS_CLIENTE';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 66;



    VSSql := 'DELETE FROM MENSAGEMWHATS';
    ExecutaSQL(VSSql);

    Gauge1.Progress := 67;




    Showmessage('Processo Concluido com Sucesso!');
end;

procedure TFPrincipalConversor.ExecutaSQL(VSSql: String);
begin
  try
     QryExecuta.Close;
     QryExecuta.SQL.Clear;
     QryExecuta.SQL.Add(VSSql);
     QryExecuta.ExecSQL;
  except
    raise EDatabaseError.Create('Erro na Execu??o do SQL ');

  end;
end;

procedure TFPrincipalConversor.FormShow(Sender: TObject);
var
  BancoDeDados : String;
    Arq        : TextFile;
begin

   // Conecta no Banco de Dados do Firebird configurado no Arquivo INI
   AssignFile(Arq , 'ConexaoJoopi.ini');
   Reset(Arq);
   Readln(Arq, BancoDeDados);
   Flush(Arq);
   CloseFile(Arq);

   // Novo Banco
   FDConnectionFirebird.Connected := False;
   FDConnectionFirebird.Params.Database :=  BancoDeDados;

   EditBanco.Text := BancoDeDados;

   Try
      FDConnectionFirebird.Connected := True;
   Except
      On e :Exception do
      Begin
         Showmessage('Erro ao Tentar Conectar!');
         Application.ProcessMessages;
         Application.Terminate;
      End;
   End;




   PageControl1.ActivePageIndex := 0;
end;

end.
