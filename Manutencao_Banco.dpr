program Manutencao_Banco;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipalConversor},
  funcoes in 'funcoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipalConversor, FPrincipalConversor);
  Application.Run;
end.
