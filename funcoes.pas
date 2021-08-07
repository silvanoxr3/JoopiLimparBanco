unit funcoes;

interface
        Uses Windows,SysUtils, Graphics, Tlhelp32, dbClient, Dialogs,ActiveX, forms, StdCtrls, Math,
         Registry,
         frxExportImage,  frxExportText,
  frxExportRTF,  frxExportPDF, frxExportHTML, frxClass,
        maskutils, classes, IDSmtp, IDmessage, IdSSLOpenSSL, WinInet;

Function ReplaceString(ToBeReplaced, ReplaceWith : string; TheString :string):string;
function Cgc(xCGC:String):Boolean;
function Cpf(xCPF:String):Boolean;
Function GerarGuid : String;
function FormatarCgcCpf(Text:String):String;
Function RetirarSujeira(VSString : String) : String;
Function Wordcount(str : string) : integer;
Function VerCamposRequeridos(DataSet : TClientDataSet): Boolean;
function iif(Condicao:Boolean;retornaTrue,retornaFalse:Variant):Variant;
function Extenso(pValor:Extended):String;
function ExtCem(pCem:String):String;
function StripDouble(pString:String):String;
function ReplaceAll(StartString, FindString, ReplaceString: String): String;
Function CreateUniqueID(HexMode:Boolean=True):String;
function KillTask(ExeFileName: string): Integer;
function Replicate(pString:String;xWidth:Integer):String;
Function Replace_All (VSOrigem, VSCaracter : String) : String;
function StrZero(xValue:Extended;xWidth:Integer;xDecimals:Integer):String;
function Right(pString:String;xWidth:Integer):String;
function Arredonda(VNVlr : Currency; VIQtdCas : Integer; StaOpe : String) : Extended;
function TrocaCar(VSCpo,VSVar1,VSVar2 : String):String;
function _Left(sString:String;iLength:Integer):String;
function PadR(sString:String;iLength:Integer;cChar:Char):String;
Function Extract (Delimitador:String; Num:Integer;Origem:String):String;
Function Posicao(SubString :String; Num:Integer; Origem:String):Integer;
Function UltimoDiaMes(VDData: TDateTime): TDateTime;
function Data_por_Extenso(p_Data: TDateTime): string;
function Mes_por_Extenso(p_Data: TDateTime): string;
Function SerialNumHD(FDrive:String) :String;
Function Crypt(Action, Src: String): String;
function Verifica_CPF(CPF: string; var Objeto: TEdit;Mensagem: Boolean = False):Boolean;
function Verifica_CNPJ(CNPJ: string; var Objeto: TEdit;Mensagem: Boolean = False):Boolean;
function RetiraMascara(S: string): string;
function VersaoExe: String;
function EnviarEmailIndy002(sAssunto: String; sMensagem : String): string;
function StrToHex(S: String): String;
function FormataCNPJ(CNPJ: string): string;
function FormataCPF(CPF: string): string;
function ZeroEsquerda(vZero: string; vQtd: integer): string;
function RoundTo5(Valor: Double; Casas: Integer): Double;
Function  SoLetra(Texto: String):Boolean;
Function  ExisteLetra(Texto: String):Boolean;
Procedure  SalvarLogTxt(Texto: String; Arquivo : String);
Function RetiraEnter(aText : string): string;
Function LerRegistroWindows(Chave : string): string;
procedure GravarRegistroWindows(Chave : string; ValorChave : String);
function GetSerialMotherBoard: String;
procedure GerarPDF_Fast(Report: TfrxReport; Exp: TfrxPDFExport; CaminhoPDF : String);



function Enviar_XML_Email(SmtpHost: String;
                                    SmtpPort: String;
                                    SmtpUser: String;
                                    SmtpPass: String;
                                    Para: String;
                                    EmailAssunto: String;
                                    EmailMsg: String;
                                    CaminhoXML: String;
                                    CaminhoPDF: String): string;


var
   SisCodigo_Usuario  : Integer;
   SisNome_Usuario    : String;
   SisPerfil_Usuario  : Integer;
   SisNivel_Usuario   : Integer;
   SisLogin_Usuario   : String;
   SisSenha_Usuario   : String;
   SisCodigo_Empresa  : Integer;
   SisNome_Empresa    : String;
   SisCodigoAcesso_Empresa : String;
   SisIntegraWEb_Empresa : String;
   SisEnviaEmailNFe_Empresa : String;
   SisCliente_Padrao  : Integer;
//   SisVendedor_Padrao : Integer;
   SisEmpresa_Venda   : Integer;
   SisFormaPagto_Venda : Integer;
   SisData_Sistema      : TDateTime;
   SisFantasia_Empresa  : String;
   SisEndereco_Empresa  : String;
   SisCidade_Empresa    : String;
   SisEstado_Empresa    : String;
   SisSiglaEstado_Empresa : String;
   SisCNPJ_Empresa      : String;
   SisInsc_Empresa      : String;
   SisEmiteCupom_Empresa : String;
   SisEmiteNFE_Empresa   : String;
   SisRegime_Empresa     : String;
   SisWSLevis_Empresa    : String;
   SisAtivou_ECF         : String;
   SisPorta_ECF          : String;
   SisModelo_ECF         : String;
   SisModeloECF_Caixa    : Integer;
   SisPortaECF_Caixa     : String;
   SisVelocidadeEcf_Caixa : String;
   SisTimeoutEcf_Caixa    : String;
   SisPercSimples_Empresa : Currency;
   SisGaveta_Caixa        : Integer;
   SisSeparaCompProd_Caixa : String;
   SisEmail_Empresa        : String;
   SisTelefone1_Empresa    : String;
   SisOPCAOCONSPROD_EMPRESA : String;
   SisDDDWhats_Empresa : String;
   SisPercAprovCred_Empresa : Currency;


   SisID_Computador : Integer;

   SisIDEmpresa_TrocoSimples : Integer;
   SisINTEGRA_TROCOSIMPLES   : String;
   SisUsuario_TrocoSimples : String;
   SisSenha_TrocoSimples : String;

   SisACSESTOQUE_CADPRODUTO : String;


   SisPercJuros_Empresa   : Currency;
   SisValorJuros_Empresa  : Currency;
   SisPercMulta_Empresa   : Currency;
   SisValorMulta_Empresa  : Currency;

   SisModoEmissao_Caixa   : String;
   SisPreview_Caixa       : String;
   SisDocFiscal_Caixa     : String;
   SisEmiteECF_Caixa      : String;
   SisCodigo_EtiquetaBalanca : Integer;
   SisAbreGaveta_Caixa    : String;
   SisAtivaImpressora_Caixa : String;
   SisAtivaBalanca_Caixa : String;
   SisPesquisaPadrao_Produto : String;
   SisCaixa_Padrao       : Integer;
   SisCodigo_SAT         : Integer;
   SisHabilitaCFE_Caixa  : String;
   SisHabilitaECF_Caixa  : String;
   SisControlaMesa_Caixa : String;
   SisSenhaPDV_Caixa : String;
   SisViaCozinha_Caixa : String;
   SisViaExpedicao_Caixa : String;
   SisAtivaBalanca_Usuario : String;
   SisExclui_LanctoCaixa : String;
   SisTipo_FrenteCaixa : String;
   SisImpressoraPDV_Caixa : String;
   SisTipoEstoque_Producao : Integer;
   SisControlaProducao_Empresa : String;
   SisCortaPapel_Caixa : String;
   SisComandoGaveta_Caixa : String;
   SisUsaGrade_Produto : String;
   SisCUPOMPROMOCAO_Caixa : String;
   SisSTAALFAABRIRCONSULTA_CAIXA : String;
   SisIMPRIMECONFISSAODIVIDA_CAIXA : String;
   SisTEXTOCONFISSAODIVIDA_CAIXA : String;
   SisNUMIMPRESSAO_CONFISSAOPDV : Integer;
   SisUSAFRENTECAIXANOVA : String;
   SisCORPADRAO_CAIXA : String;
   SisImpressoraExpedicao_Caixa : String;
   //
   SisEnviaEmailNFCe_Caixa : String;
   SisCPFNaNotaProduto_Caixa : String;
   SisEnviaNFCeWhatsapp_Caixa : String;
   SisTextoWhatsVenda_Caixa : String;


   // -- PERMISSÕES DO USUARIO
   SisAcessaFast_Usuario : String;
   SisAcessaPDV_Usuario : String;
   SisAcessaCheff_Usuario : String;
   SisCancelaItemVenda_Usuario : String;
   SisLimpaTelaPDV_Usuario : String;
   SisControlaEstoque_Usuario : String;
   SisVerCalculado_FechCaixa : String;
   SisACESSARESVENDAPDV_USUARIO : String;
   SisACESSABAIXADUPLIPDV_USUARIO : String;
   SisACESSADASHBOARD_USUARIO : String;
   SisCancelaVenda_Usuario : String;
   SisFILTRAPEDIDO_USUARIO : String;

   // -- Configuracoes de Venda
   ConfigVenda_ClientePadrao : Integer;
   ConfigVenda_Acs_ClientePadrao : String;

   ConfigVenda_IdSerieNFCE       : Integer;
   ConfigVenda_VendedorPadrao : Integer;
   ConfigVenda_TipoEstoquePadrao : Integer;
   ConfigVenda_Acs_VendedorPadrao : String;
   ConfigVenda_PercDesconto : Currency;
   ConfigVenda_MsgOrcamento : String;
   ConfigVenda_MsgPedido    : String;
   ConfigVenda_MsgCupom     : String;
   ConfigVenda_MsgNFE       : String;
   ConfigVenda_CFOPPadrao   : Integer;
   ConfigVenda_CFOPDevolucao  : Integer;
   ConfigVenda_CFOPFEPadrao   : Integer;
   ConfigVenda_TransportadoraPadrao : Integer;
   ConfigVenda_TipoImpressaoNFCe : String;
   ConfigVenda_TipoImpressaoCFe  : String;
   ConfigVenda_ABRIRCAIXA_OS : String;
   ConfigVenda_NUMIMPRESSAO_RECIBOPDV : Integer;


   SisBloqueada_Empresa : String;


   ConfigVenda_CaixaPadrao : Integer;

   // -- PARAMETROS INICIAIS
   INI_GravaLog : String;
   INI_OPCAO_PESQ_PRODUTO : String;


   RegistroWindowsSerialCNPJ : String;
   VALIDADE_EXPIRADA_POR_HD : Boolean;


const
   SisTeclaPesquisa  = VK_F2;
   SisTeclaExcluir   = VK_F4;
   SisTeclaAtualiza  = VK_F5;
   SisTeclaInclui    = VK_F3;
   SisTeclaGrava     = VK_F8;
   SisTeclaAcessoUsuario = VK_F11;
   SisTeclaSair      = VK_Escape;


implementation

Function GerarGuid : String;
Var
   G : TGuid;
begin
   CoCreateGuid(G);
   Result := IntToHex(G.D1,1) + '' + IntToHex(G.D2,1) + '' + IntToHex(G.D3,1) + '';
   Result := Result + IntToHex(G.D4[0],1)+IntToHex(G.D4[1],1)+IntToHex(G.D4[3],1)+IntToHex(G.D4[4],1)+IntToHex(G.D4[5],1)+IntToHex(G.D4[6],1)+IntToHex(G.D4[7],1);
End;


Function CreateUniqueID(HexMode:Boolean=True):String;
Var A : Int64;
Begin
  a := Trunc(Now*100000000);
  If HexMode Then Result := IntToHex(a,14) Else Result := IntToStr(a);
  Sleep(50);
End;


Function VerCamposRequeridos(DataSet : TClientDataSet): Boolean;
Var
   i : Integer;
Begin
   Result := True;
   For i := 0 To DataSet.Fields.Count - 1 do
   Begin
      If DataSet.Fields[i].Required then
      Begin
         If DataSet.Fields[i].Text = '' then
         Begin
            ShowMessage('Campo '+DataSet.Fields[i].DisplayName+' esta em branco e é um campo requerido');
            Result := False;
            Exit;
         End;
      End;
   End;
End;
//=========================================================================//
//  Autor .............: Márcio Roberto Sales
//  Data ..............: 15/02/2000
//  Função/Procedimento: TrocaCar
//  Objetivo ..........: Troca um caracter pelo outro em uma string
//  Lista de Argumentos: VSCpo -> Variavel ou campo a ser alterado
//                       VSVar1,VSVar2 -> Respectivamente, o caracter a ser
//                       substituido e o caracter que será inserido
//  Retorno ...........: String com os caracteres modificados
//=========================================================================//
function TrocaCar(VSCpo,VSVar1,VSVar2 : String):String;
var
   i : Integer;
begin
	for i := 1 to Length(Trim(VSCpo)) do
   begin
      if Copy(Trim(VSCpo),i,1) = VSVar1 then
      begin
         Delete(VSCpo,i,1);
         Insert(VSVar2,VSCpo,i);
      end;
   end;
   //
   Result := VSCpo;
end;


//=======================================================================//
// Analista/Programador: Márcio Roberto Sales
// Data ...............: 08/02/1999
// Função/Procedimento : Replicate
// Argumentos .........: pString -> o valor a ser replicado
//								 pWidth  -> número de vezes que será replicado o
//                                  valor da variável pString.
// Retorno ............: Uma string contendo o valor replicado.
// Objetivo ...........: Replicata n vezes um valor passado como argumento
//
//
//=======================================================================//
function Replicate(pString:String;xWidth:Integer):String;
Var
	nCount:Integer;
	pStr:String;
begin
	pStr:='';
	for nCount:=1 to xWidth do
      pStr := pStr + pString;
	Result:=pStr;
end;
//=========================================================================//
//  Autor .............: Tone Cezar da Costa
//  Data ..............: 04/03/99
//  Função/Procedimento: Retirar Uma SubString de uma String
//  Objetivo ..........: Retirar Uma SubString de uma String
//  Retorno ...........: Variavel sem a SubString
//  Lista de Argumentos: VSOrigem -> Variavel na qual vai ser retirada a SubString
//                       VSCaracter -> Variavel que vai ser retirada da Origem
//=========================================================================//

Function Replace_All(VSOrigem, VSCaracter : String) : String;
Var
  VIpos, VITam : Integer;
Begin
  VITam := Length(VSCaracter);
  Repeat
    VIPos := Pos(VSCaracter, VsOrigem);
    IF VIPos > 0 Then Delete(VSOrigem,VIPos,VITam);
  Until VIPos <= 0;
  Result := VSOrigem;
End;

//=======================================================================//
// Analista/Programador: Márcio Roberto Sales
// Data ...............: 08/02/1999
// Função/Procedimento : StrZero
// Argumentos .........: xValue    -> um valor númerico.
//								 pWidth    -> quantidade de zeros a serem inseridos
//                                    a esquerda do número.
//                       xDecimals -> quantidade de zeros a serem inseridos
//												  a direita do número.
// Retorno ............: Uma string contendo o número com os zeros.
// Objetivo ...........: Insere Zeros a Esquerda ou a Direita de um número.
//
//
//=======================================================================//
function StrZero(xValue:Extended;xWidth:Integer;xDecimals:Integer):String;
Var
 	sValue:String;
begin
	Str(xValue:xWidth:xDecimals,sValue);
	Result:=Right(Replicate('0',xWidth)+Trim(sValue),xWidth);
end;

function Right(pString:String;xWidth:Integer):String;
begin
	Result:=Copy(pString,Length(pString)-xWidth+1,xWidth);
end;

//=========================================================================//
//  Autor .............: Tone Cezar
//  Data ..............: 28/02/2001
//  Função/Procedimento: Arredonda
//  Objetivo ..........: Arredondar o valor de um numero
//  Lista de Argumentos: VNVlr -> Valor a ser arredondado
//                       VIQtdCas -> Quantidade de Casas Decimais
//								 StaOpe -> A - Arredonda, T - Trucar o Valor
//  Retorno ...........: O Valor do Arredondado.
//=========================================================================//

function Arredonda(VNVlr : Currency;  VIQtdCas : Integer; StaOpe : String) : Extended;
Var
  i, Centena : Integer;
  V : Int64;
  Vlr : Currency;
  VSVlr : String;
Begin
  Centena := 10;
  If StaOpe = 'T' then
  Begin
     For i := 1 to (VIQtdCas - 1) do
        Centena := Centena * 10;
     VNVlr := (VNVlr * Centena) ;
     I := Pos(',',FloatToStr(VNVlr));
     If I = 0 then
       VSVlr := FloatToStr(VNVlr)
     Else
        VSVlr := Copy(FloatToStr(VNVlr),1,i-1);
     V := StrToInt(VSVlr);
	  VNVlr := V / Centena;
	  Result := VNVlr;
  End
  Else Begin
     IF VIQtdCas = 2 then
     Begin
        VNvlr := VNVlr + 0.005;
    	  Vlr := Trunc(VNVlr*100);
        Result := Vlr / 100;
     End
     Else IF VIQtdCas = 3 then
     Begin
        VNvlr := VNVlr + 0.0005;
 	      Vlr := Trunc(VNVlr*1000);
        Result := Vlr / 1000;
     End;
  End;
End;

function PadR(sString:String;iLength:Integer;cChar:Char):String;
begin
	Result:=_Left(sString+Replicate(cChar,iLength),iLength);
end;

function _Left(sString:String;iLength:Integer):String;
begin
	Result:=Copy(sString,1,iLength);
end;

//=========================================================================//
//  Autor .............: Silvano Augusto Monteiro da Silva
//  Data ..............: 22/03/2001
//  Função/Procedimento: Extract
//  Objetivo ..........: Extrai o pedaço de uma variavel String delimitado por um caracter
//  Lista de Argumentos: Extract(Delimitador,Numero,Origem)
//                       - Delimitador - qualquer caracter entre aspas simples
//                       - Numero - numero do delimitador ate onde sera extraido o pedaco
//                       - Origem - Variavel String de Origem
//  Retorno ...........: Retorna os Caracteres pegos em uma Variavel String
//=========================================================================//
Function Extract (Delimitador:String; Num:Integer;Origem:String):String;
var
   VIcont, VInum, VIind, VIinc, VIqtd : integer;
   VSchar,Result1 : string;

begin
   VIcont := 0;
   VInum  := 0;
   VIind  := 0;
   VIqtd  := 0;
   VIinc  := 1;
   Repeat
      VIcont := VIcont + 1;
      VIqtd  := VIqtd + 1;
      VSchar  := Copy (Origem,VIcont,1);
      IF VSchar = Delimitador then
      begin
         VInum := VInum + 1;
         IF VInum = Num then
         begin
            Result1 := Copy (Origem,VIinc,VIqtd - 1);
         end;
         VIinc := VIcont + 1;
         VIqtd := 0;
      end;
      IF VSchar = '' then
      begin
         VInum := VInum + 1;
         IF VInum = Num then
         begin
            Result1 := Copy (Origem,VIinc,VIqtd - 1);
         end;
         VIind := 1;
      end
   Until VIind = 1;
   Result := Result1;
end;

function KillTask(ExeFileName: string): Integer;
const
   PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = 
UpperCase(ExeFileName))
      or (UpperCase(FProcessEntry32.szExeFile) = UpperCase
(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess
(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function ReplaceAll(StartString, FindString, ReplaceString: String): String;
//
// Substitui, em uma cadeia de caracteres, todas as ocorrências
// de uma string por outra
//
// StartString: Cadeia de strings
// FindString: String a ser substituida
// ReplaceString : String Substituta
//
var
NewStrBuffer: String;
CutText: String;
FindLength: Integer;
StartLength: LongInt;
TagStart: LongInt;
begin
FindLength := Length(FindString);
NewStrBuffer := '';
if FindLength = 0 then
   begin
   result := StartString;
   Exit;
   end;
if (FindString = ReplaceString) then
   begin
   result := StartString;
   Exit;
   end;
if Pos(FindString, StartString) <> 0 then  //if find tag found
   begin
   while Pos(FindString, StartString) <> 0 do
         begin
         StartLength := Length(StartString);
         TagStart := Pos(FindString, StartString);
         CutText := Copy(StartString, 0, TagStart - 1);
         StartString := Copy(StartString, TagStart + FindLength,StartLength - (TagStart + (FindLength - 1)));
         NewStrBuffer := NewStrBuffer + CutText + ReplaceString;
         end;
   NewStrBuffer := NewStrBuffer + StartString;
   result := NewStrBuffer;
   end
else
   begin
   result := StartString;
   end;
end;


//=======================================================================//
// Analista/Programador: Márcio Roberto Sales
// Data ...............: 08/02/1999
// Função/Procedimento : Extenso
// Argumentos .........: pValor -> valor em ponto flutuante
// Retorno ............: Uma string contendo o valor por extenso.
// Objetivo ...........: Retorna o valor passado como argumento
//                       por extenso.
//
//=======================================================================//
function Extenso(pValor:Extended):String;
Const
	aCifra:Array[1..6,1..2] of String = ((' TRILHÃO,',' TRILHÕES,'),
                                        (' BILHÃO,',' BILHÕES,'),
                                        (' MILHÃO,',' MILHÕES,'),
                                        (' MIL,',' MIL,'),
                                        ('',''),
                                        (' CENTAVO',' CENTAVOS'));
Var
	tStr,tExtenso,tSubs : String;
	tX,tCentavos : Integer;
begin
	tSubs := ''; tExtenso := ''; tStr := StrZero(pValor,18,2);
	tCentavos := StrToInt(Copy(tStr,17,2));
	if pValor > 0 then
	begin
		if tCentavos > 0 then
			tExtenso:=ExtCem(StrZero(tCentavos,3,0))+aCifra[6,Trunc(iif(tCentavos=1,1,2))];
		if trunc(pValor) > 0 then
			tExtenso:=iif(trunc(pValor)=1,' REAL',' REAIS')+iif(tCentavos>0,' E','')+tExtenso;
		for tX := 5 Downto 1 do
		begin
			tSubs:=Copy(tStr,(tX*3)-2,3);
			if StrToInt(tSubs) > 0 then
				tExtenso:=ExtCem(tSubs)+aCifra[tX,Trunc(iif(StrToInt(tSubs)=1,1,2))]+''+tExtenso;
		end;
	end;
	Result:=StripDouble(tExtenso);
end;

//=======================================================================//
// Analista/Programador: Márcio Roberto Sales
// Data ...............: 08/02/1999
// Função/Procedimento : ExtCem
// Argumentos .........: pCem -> valor ou centena ou dezena ou unitário do
//                               tipo string.
// Retorno ............: Uma string contendo o valor por extenso.
// Objetivo ...........: Função auxiliar a função Extenso, que trata os
//                       valores de Centena, Dezena ou Unitário.
//
//
//=======================================================================//
function ExtCem(pCem:String):String;
Const
	aCent:Array[1..9] of string = (' CENTO',
                                  ' DUZENTOS',
                                  ' TREZENTOS',
                                  ' QUATROCENTOS',
                                  ' QUINHENTOS',
                                  ' SEISCENTOS',
                                  ' SETECENTOS',
                                  ' OITOCENTOS',
                                  ' NOVECENTOS');
	aVint:Array[1..9] of string = (' ONZE',
   										 ' DOZE',
                                  ' TREZE',
                                  ' QUATORZE',
                                  ' QUINZE',
                                  ' DEZESSEIS',
                                  ' DEZESSETE',
                                  ' DEZOITO',
                                  ' DEZENOVE');
	aDez:Array[1..9]  of string = (' DEZ',
                                  ' VINTE',
                                  ' TRINTA',
                                  ' QUARENTA',
                                  ' CINQUENTA',
                                  ' SESSENTA',
                                  ' SETENTA',
                                  ' OITENTA',
                                  ' NOVENTA');
	aUnit:Array[1..9] of string = (' UM',
    								       ' DOIS',
                                  ' TREIS',
                                  ' QUATRO',
                                  ' CINCO',
                                  ' SEIS',
                                  ' SETE',
                                  ' OITO',
                                  ' NOVE');
Var
	aVal:Array[1..3] of integer;
	text:String;
begin
	text:='';
	aVal[1]:=StrToInt(Copy(pCem,1,1));
	aVal[2]:=StrToInt(Copy(pCem,2,1));
	aVal[3]:=StrToInt(Copy(pCem,3,1));
	if StrToInt(pCem) > 0 then
   begin
		if	StrToInt(pCem) = 100 then
			text:=' CEM'
		else
      begin
			if aVal[1] > 0 then
				text:=aCent[aVal[1]]+iif((aVal[2]+aVal[3])>0,' E','');
			if(aVal[2] = 1) and (aVal[3] > 0) then
				text:=text+''+aVint[Aval[3]]
			else
         begin
				if aVal[2] > 0 then
					text:=text+''+aDez[aVal[2]]+iif(aVal[3]>0,' E','');
            text:=text+iif(aVal[3]>0,''+aUnit[aVal[3]],'');
			end;
		end;
	end;
	text:=text+'';
	Result:=text;
end;

{ ***** }
function StripDouble(pString:String):String;
begin
	while pos('',pString)>0 do
      Delete(pString,pos('',pString),1);
  	Result:=pString
end;

//=======================================================================//
// Analista/Programador: Márcio Roberto Sales
// Data ...............: 08/02/1999
// Função/Procedimento : iff
// Argumentos .........: Condicao     -> Uma condição (Ex.: x > 0)
//                       RetornaTrue  -> Valor a ser retornado  caso a
//                                      condição for verdadeira (esta
//                                      variável é do tipo variant).
//                       RetornaFalse -> Valor a ser retornado  caso a
//                                      condição for  falsa  (esta va-
//                                      riável é do tipo variant).
// Retorno ............: RetornaTrue ou RetornaFalse.
// Objetivo ...........: Retornar de acordo com a condição  um  valor
//                       estabelecido pelos os argumentos.
//=======================================================================//
function iif(Condicao:Boolean;retornaTrue,retornaFalse:Variant):Variant;
begin
	if Condicao then
		Result := retornaTrue
   else
		Result := retornaFalse;
end;
//
// Recupera a Posicao de um caracter dentro da string
// Ex:
// 10.100.100
// Posicao('.',2,'10.001.100')
// Ela vai retornar a posicao 6



Function Posicao (SubString :String; Num:Integer; Origem:String):Integer;
var
   VIcont, VInum, VIind, VIinc, VIqtd, Result1 : integer;
   VSinf,VSchar : string;

begin
   VIcont := 0;
   VInum  := 0;
   VIind  := 0;
   VIqtd  := 0;
   VIinc  := 1;
   Repeat
      VIcont := VIcont + 1;
      VIqtd  := VIqtd + 1;
      VSchar  := Copy (Origem,VIcont,1);
      IF VSchar = SubString then
      begin
         VInum := VInum + 1;
         IF VInum = Num then
         begin
            Result1 := VIqtd;
         end;
         VIinc := VIcont + 1;
      end;
      IF VSchar = '' then
      begin
         VInum := VInum + 1;
         IF VInum = Num then
         begin
            Result1 := 0;
         end;
         VIind := 1;
      end
   Until VIind = 1;
   Result := Result1;
end;

//=========================================================================//
//  Autor .............: Internet
//  Data ..............: 11/02/03
//  Função/Procedimento: WordCount
//  Objetivo ..........: Contar quantas Palavras tem uma String
//  Lista de Argumentos: Str -> String a ser contada as palavras
//  Retorno ...........: Numero de Palavras
//=========================================================================//

Function wordcount(str : string) : integer;
// Retorna o número de palavras que contem em uma string
var
count : integer;
i : integer;
len : integer;
begin
len := length(str);
count := 0;
i := 1;
while i <= len do
      begin
      while ((i <= len) and ((str[i] = #32) or (str[i] = #9) or (Str[i] = ';'))) do
            inc(i);
            if i <= len then
               inc(count);
             while ((i <= len) and ((str[i] <> #32) and (str[i] <> #9) and (Str[i] <> ';'))) do
                   inc(i);
      end;
      wordcount := count;
end;


//=======================================================================//
// Analista/Programador: Márcio Roberto Sales
// Data ...............: 08/02/1999
// Função/Procedimento : CGC
// Argumentos .........: xCGC -> o CGC
// Retorno ............: Verdadeiro ou Falso ( Se verdadeiro CGC correto,
//                                             caso contrário incorreto)
// Objetivo ...........: Faz a validação do CGC
//
//
//=======================================================================//
function Cgc(xCGC:String):Boolean;
Var
	d1,d4,xx,nCount,fator,resto,digito1,digito2:Integer;
	Check:String;
begin
	d1:=0;d4:=0;xx:=1;
   try
	   for nCount := 1 to Length(xCGC)-2 do
   	begin
			if Pos(Copy(xCGC,nCount,1),'/-.') = 0 then
         begin
         	if xx < 5 then
            	fator := 6-xx
            else fator := 14 - xx;
         	d1 := d1 + StrToInt(Copy(xCGC,nCount,1)) * fator;
            if xx < 6 then
            	fator := 7 - xx
            else fator := 15 - xx;
         	d4 := d4 + StrToInt(Copy(xCGC,nCount,1)) * fator;
         	xx:=xx+1;
         end;
      end;
   except
      on EConvertError do
      begin
         Result := False;
      end;
      on Exception do
      begin
         Result := False;
      end;
   end;
	resto:=(d1 mod 11);
	if resto < 2then
		digito1 := 0
	else
		digito1 := 11 - resto;
	d4 := d4 + 2 * digito1;
	resto := (d4 mod 11);
	if resto < 2then
		digito2 := 0
	else
		digito2 := 11 - resto;
   Check := IntToStr(Digito1)+IntToStr(Digito2);
	if Check <> Right(xCGC,2) then
		Result:=False
	else
		Result:=True;
end;

//=======================================================================//
// Analista/Programador: Márcio Roberto Sales
// Data ...............: 08/02/1999
// Função/Procedimento : CPF
// Argumentos .........: xCPF -> o CPF
// Retorno ............: Verdadeiro ou Falso ( Se verdadeiro CPF correto,
//                                             caso contrário incorreto)
// Objetivo ...........: Faz a validação do CPF
//
//
//=======================================================================//
function Cpf(xCPF:String):Boolean;
Var
	d1,d4,xx,nCount,resto,digito1,digito2:Integer;
	Check:String;
begin
	d1:=0;d4:=0;xx:=1;
   try
		for nCount := 1 to Length(xCPF)-2 do
		begin
    		if Pos(Copy(xCPF,nCount,1),'/-.') = 0 then
	    	begin
		    	d1 := d1 + (11 - xx) * StrToInt(Copy(xCPF,nCount,1));
   			d4 := d4 + (12 - xx) * StrToInt(Copy(xCPF,nCount,1));
   			xx := xx + 1;
    		end;
      end;
   except
      on EConvertError do
      begin
         Result := False;
      end;
      on Exception do
      begin
         Result := False;
      end;
   end;
	resto := (d1 mod 11);
	if resto < 2 then
		digito1 := 0
	else
		digito1 := 11 - resto;
	d4 := d4 + 2 * digito1;
	resto := (d4 mod 11);
	if resto < 2 then
	 	digito2 := 0
	else
		digito2 := 11 - resto;
	Check := IntToStr(Digito1) + IntToStr(Digito2);
	if Check <> Right(xCPF,2) then
		Result:=False
	else
		Result:=True;
end;


//
// Substitui, em uma cadeia de caracteres, todas as ocorrências
// de uma string por outra
//
// ToBeReplaced: String a ser substituida
// ReplaceWith : String Substituta
// TheString: Cadeia de strings
//
Function ReplaceString(ToBeReplaced, ReplaceWith : string; TheString :string):string;
var
Position:  Integer;
LenToBeReplaced:  Integer;
TempStr:  String;
TempSource:   String;
begin
LenToBeReplaced:=length(ToBeReplaced);
TempSource:=TheString;
TempStr:='';
repeat
      position := pos(ToBeReplaced, TempSource);
      if (position <> 0) then
         begin
         TempStr := TempStr + copy(TempSource, 1, position-1); //Part before ToBeReplaced
         TempStr := TempStr + ReplaceWith; //Tack on replace with string
         TempSource := copy(TempSource, position+LenToBeReplaced, length(TempSource));  // Update what's left
         end
      else
         begin
         Tempstr := Tempstr + TempSource; // Tack on the rest of the string
         end;
until (position = 0);
Result:=Tempstr;
end;


function FormatarCgcCpf(Text:String):String;
var
   S : String;
   i, Code : integer;
Begin
   If Text <> '' then
   Begin
      // Retirar todos os caracteres desnecessarios
    	S := Trim(RetirarSujeira(Text));
   	  Val(S,i,Code);
      IF Length(S) = 11 then
      Begin
        Text := Copy(S,1,3) + '.' + Copy(S,4,3) + '.' + Copy(S,7,3) + '-' + Copy(S,10,2);
      End
      Else If Length(S) = 14 then
      Begin
         Text := Copy(S,1,2)+'.'+Copy(S,3,3)+'.'+Copy(S,6,3)+'/'+Copy(S,9,4)+'-'+Copy(S,13,2);
      End;
      Result := Text;
   End;
end;

function RetirarSujeira(VSString : String) : String;
begin
   // Retirar as Barras que porventura o usuario tenha colocado
   While Pos('/',VSString) > 0 do
   Begin
      Delete(VSString,Pos('/',VSString),1);
   End;
   While Pos('(',VSString) > 0 do
   Begin
      Delete(VSString,Pos('(',VSString),1);
   End;
   While Pos(')',VSString) > 0 do
   Begin
      Delete(VSString,Pos(')',VSString),1);
   End;
   // Retirar pontos que porventura o usuario tenha colocado
   While Pos('.',VSString) > 0 do
   Begin
      Delete(VSString,Pos('.',VSString),1);
   End;
   // Retirar tracos que porventura o usuario tenha colocado
   While Pos('-',VSString) > 0 do
   Begin
      Delete(VSString,Pos('-',VSString),1);
   End;
   // Retirar tracos que porventura o usuario tenha colocado
   While Pos('\',VSString) > 0 do
   Begin
      Delete(VSString,Pos('\',VSString),1);
   End;
   // Retirar tracos que porventura o usuario tenha colocado
   While Pos('=',VSString) > 0 do
   Begin
      Delete(VSString,Pos('=',VSString),1);
   End;



   Result := VSString;
end;

function UltimoDiaMes(VDData: TDateTime): TDateTime; // Ultimo dia do mes //////////////////////////////////////////////////////////
var
  Ano, Mes, Dia : word;
        AuxData : TDateTime;
begin
   DecodeDate(VDData, Ano, Mes, Dia);
   Dia := 27;
   Repeat
     try
       Inc(Dia);
       AuxData := EncodeDate(Ano,Mes,Dia);
     except
       Break;
     end;
   until Dia = 31;
   Result := AuxData;
end;

function Data_por_Extenso(p_Data: TDateTime): string;
var
  nrdia: Integer;
  diasemana: array[1..7] of string;
  meses: array[1..12] of string;
  dia, mes, ano: Word;
begin
  diasemana[1] := 'Domingo';
  diasemana[2] := 'Segunda-feira';
  diasemana[3] := 'Terça-feira';
  diasemana[4] := 'Quarta-feira';
  diasemana[5] := 'Quinta-feira';
  diasemana[6] := 'Sexta-feira';
  diasemana[7] := 'Sábado';
  meses[1] := 'Janeiro';
  meses[2] := 'Fevereiro';
  meses[3] := 'Março';
  meses[4] := 'Abril';
  meses[5] := 'Maio';
  meses[6] := 'Junho';
  meses[7] := 'Julho';
  meses[8] := 'Agosto';
  meses[9] := 'Setembro';
  meses[10] := 'Outubro';
  meses[11] := 'Novembro';
  meses[12] := 'Dezembro';
  DecodeDate(p_Data, ano, mes, dia);
  nrdia := DayOfWeek(Date);
  Data_por_Extenso := diasemana[nrdia] + ', ' + IntToStr(dia) + ' de ' + meses[mes] + ' de ' + IntToStr(ano);
end;


function Mes_por_Extenso(p_Data: TDateTime): string;
var
  nrdia: Integer;
  diasemana: array[1..7] of string;
  meses: array[1..12] of string;
  dia, mes, ano: Word;
begin
  diasemana[1] := 'Domingo';
  diasemana[2] := 'Segunda-feira';
  diasemana[3] := 'Terça-feira';
  diasemana[4] := 'Quarta-feira';
  diasemana[5] := 'Quinta-feira';
  diasemana[6] := 'Sexta-feira';
  diasemana[7] := 'Sábado';
  meses[1] := 'Janeiro';
  meses[2] := 'Fevereiro';
  meses[3] := 'Março';
  meses[4] := 'Abril';
  meses[5] := 'Maio';
  meses[6] := 'Junho';
  meses[7] := 'Julho';
  meses[8] := 'Agosto';
  meses[9] := 'Setembro';
  meses[10] := 'Outubro';
  meses[11] := 'Novembro';
  meses[12] := 'Dezembro';
  DecodeDate(p_Data, ano, mes, dia);
  nrdia := DayOfWeek(Date);
  Mes_por_Extenso := meses[mes];
end;




Function SerialNumHD(FDrive:String) :String;
var
   Serial:DWord;
   DirLen,Flags: DWord;
   DLabel : Array[0..11] of Char;
  NotUsed:     DWORD; 
  VolumeFlags: DWORD; 
  VolumeInfo:  array[0..MAX_PATH] of Char; 
  VolumeSerialNumber: DWORD;    
begin
   try
      //anterior  GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
      GetVolumeInformation(PChar(FDrive + ':\'),
    nil, SizeOf(VolumeInfo), @Serial, NotUsed, 
    VolumeFlags, nil, 0);
      Result := IntToHex(Serial,8);
   except
      Result :='';
   end;
end;

Function Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
    KeyPos : Integer;
    OffSet : Integer;
    Dest, Key : String;
    SrcPos : Integer;
    SrcAsc : Integer;
    TmpSrcAsc : Integer;
    Range : Integer;
begin
   if (Src = '') Then
   begin
      Result:= '';
      Goto Fim;
   end;

   Key :=
   'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
   Dest := '';
   KeyLen := Length(Key);
   KeyPos := 0;
   SrcPos := 0;
   SrcAsc := 0;
   Range := 256;

   if (Action = UpperCase('C')) then
   begin
      Randomize;
      OffSet := Random(Range);
      Dest := Format('%1.2x',[OffSet]);
      for SrcPos := 1 to Length(Src) do
      begin
         Application.ProcessMessages;
         SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
         if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
         SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
         Dest := Dest + Format('%1.2x',[SrcAsc]);
         OffSet := SrcAsc;
      end;
   end
   Else if (Action = UpperCase('D')) then
   begin
      OffSet := StrToInt('$'+ copy(Src,1,2));
      SrcPos := 3;
      repeat
         SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
         if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
         TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
         if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
         else TmpSrcAsc := TmpSrcAsc - OffSet;
         Dest := Dest + Chr(TmpSrcAsc);
         OffSet := SrcAsc;
         SrcPos := SrcPos + 2;
      until (SrcPos >= Length(Src));
   end;
   Result:= Dest;
   Fim:
end;

function  Verifica_CPF(CPF: string; var Objeto: TEdit; Mensagem: Boolean = False):Boolean;
var
   N1, N2, N3, N4, N5, N6, N7, N8, N9: integer;
   D1, D2: integer;
   Digitado, Calculado: string;
begin

   Result := False;

   if Trim(CPF) = '' then Exit;

   // CNPJ Isento
   if CPF = 'ISENTO' then
   begin
      Result := True;
      Exit;
   end;

   if Length(CPF) > 11 then
      CPF := RetiraMascara(CPF);

   CPF := FormatFloat('00000000000;0', StrToFloat(CPF));

   try
      N1 := StrToInt(CPF[1]);
      N2 := StrToInt(CPF[2]);
      N3 := StrToInt(CPF[3]);
      N4 := StrToInt(CPF[4]);
      N5 := StrToInt(CPF[5]);
      N6 := StrToInt(CPF[6]);
      N7 := StrToInt(CPF[7]);
      N8 := StrToInt(CPF[8]);
      N9 := StrToInt(CPF[9]);

      D1 := N9 * 2 + N8 * 3 + N7 * 4 + N6 * 5 + N5 * 6 + N4 * 7 + N3 * 8 + N2 * 9 + N1 * 10;
      D1 := 11 - (D1 mod 11);

      if d1 >= 10 then
         D1 := 0;

      D2 := D1 * 2 + N9 * 3 + N8 * 4 + N7 * 5 + N6 * 6 + N5 * 7 + N4 * 8 + N3 * 9 + N2 * 10 + N1 * 11;
      D2 := 11 - (D2 mod 11);

      if D2 >= 10 then
         D2 := 0;

      Calculado := IntToStr(D1) + IntToStr(D2);
      Digitado := CPF[10] + CPF[11];

      if Calculado = Digitado then begin
         Objeto.Text := FormatMaskText('000.000.000-00;0;', CPF);
         Result := True;
      end
      else begin
         if Mensagem then
            MessageDlg('Número de CPF inválido !!!', mtError, [mbOK], 0);
         Objeto.SetFocus;
      end;
   except
      if Mensagem then
         MessageDlg('Número de CPF inválido !!!', mtError, [mbOK], 0);
      Objeto.SetFocus;
   end;
end;

function Verifica_CNPJ(CNPJ: string; var Objeto: TEdit; Mensagem: Boolean = False):Boolean;
var
   N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12: integer;
   D1, D2: integer;
   Digitado, Calculado: string;
begin

   Result := False;

   if Trim(CNPJ) = '' then Exit;

   // CNPJ Isento
   if CNPJ = 'ISENTO' then
   begin
      Result := True;
      Exit;
   end;

   if Length(CNPJ) > 14 then
      CNPJ := RetiraMascara(CNPJ);

   CNPJ := FormatFloat('00000000000000;0', StrToFloat(CNPJ));

   try
      N1 := StrToInt(CNPJ[1]);
      N2 := StrToInt(CNPJ[2]);
      N3 := StrToInt(CNPJ[3]);
      N4 := StrToInt(CNPJ[4]);
      N5 := StrToInt(CNPJ[5]);
      N6 := StrToInt(CNPJ[6]);
      N7 := StrToInt(CNPJ[7]);
      N8 := StrToInt(CNPJ[8]);
      N9 := StrToInt(CNPJ[9]);
      N10 := StrToInt(CNPJ[10]);
      N11 := StrToInt(CNPJ[11]);
      N12 := StrToInt(CNPJ[12]);

      D1 := N12 * 2 + N11 * 3 + N10 * 4 + N9 * 5 + N8 * 6 + N7 * 7 + N6 * 8 + N5 * 9 + N4 * 2 + N3 * 3 + N2 * 4 + N1 * 5;
      if D1 = 0 then Raise Exception.Create('Erro');
      D1 := 11 - (D1 mod 11);

      if D1 >= 10 then
         D1 := 0;

      D2 := D1 * 2 + N12 * 3 + N11 * 4 + N10 * 5 + N9 * 6 + N8 * 7 + N7 * 8 + N6 * 9 + N5 * 2 + N4 * 3 + N3 * 4 + N2 * 5 + N1 * 6;
      D2 := 11 - (D2 mod 11);

      if D2 >= 10 then
         D2 := 0;

      Calculado := intToStr(D1) + IntToStr(D2);
      Digitado := CNPJ[13] + CNPJ[14];

      if Calculado = Digitado then begin
         Objeto.Text := FormatMaskText('00.000.000/0000-00;0', CNPJ);
         Result := True;
      end
      else begin
         if Mensagem then
            MessageDlg('Número do CNPJ inválido !!!', mtError, [mbOk], 0);
         Objeto.SetFocus
      end;
   except
      if Mensagem then
         MessageDlg('Número do CNPJ inválido !!!', mtError, [mbOk], 0);
      Objeto.SetFocus;
   end;
end;

function RetiraMascara(S: string): string;
var
   C, Tamanho: Integer;
begin
   // Retira todos os caracteres literais da string passada como parâmetro.
   // Essa função é usada para informações que só devem aceitar números mas
   // que possuem uma máscara em particular. Por esse motivo além de retirar
   // os caracteres a rotina ainda retorna vazio se S = '0'.
   Tamanho := Length(S);
   for C := Tamanho downto 1 do begin
      if not (S[C] in ['0'..'9']) then
         Delete(S, C, 1);
   end;
   if S <> '0' then
      Result := S
   else
      Result := '';
end;

Function VersaoExe: String;
type
   PFFI = ^vs_FixedFileInfo;
var
   F : PFFI;
   Handle : Dword;
   Len : Longint;
   Data : Pchar;
   Buffer : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
    Arquivo := Application.ExeName;
    Parquivo := StrAlloc(Length(Arquivo) + 1);
    StrPcopy(Parquivo, Arquivo);
    Len := GetFileVersionInfoSize(Parquivo, Handle);
    Result := '';

    if Len > 0 then
    begin
       Data:=StrAlloc(Len+1);
       if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
       begin
          VerQueryValue(Data, '\',Buffer,Tamanho);
          F := PFFI(Buffer);
          Result := Format('%d.%d.%d.%d',
          [HiWord(F^.dwFileVersionMs),
          LoWord(F^.dwFileVersionMs),
          HiWord(F^.dwFileVersionLs),
          Loword(F^.dwFileVersionLs)]
          );
       end;
       StrDispose(Data);
    end;

   StrDispose(Parquivo);
end;


function EnviarEmailIndy002(sAssunto: String; sMensagem : String): string;
var
  IdSMTP    : TIdSMTP;
  IdMessage : TIdMessage;
//  IdISSLOHANDLERSocket : TIdSSLIOHandlerSocket;
  Flags : Cardinal;
begin
{
  if not InternetGetConnectedState(@Flags, 0) then
  begin
        //ShowMessage('Você não está conectado à Internet');
  end
  Else
  Begin
        //ShowMessage('Você está conectado à Internet');


     IdSMTP    := TIdSMTP.Create(Application);
      IdMessage := TIdMessage.Create(Application);
      IdISSLOHANDLERSocket := TIdSSLIOHandlerSocket.Create(Application);
      try
         IdSMTP.Host := 'smtp.gmail.com';
         IdSMTP.Port := StrToIntDef('465',25);
         IdSMTP.Username := 'log.fastcomercio@gmail.com';
         IdSMTP.Password := 'fastsucesso';

         //if SSL or TLS then
          //begin
            IdISSLOHANDLERSocket.SSLOptions.Method := sslvSSLv3;
            //if TLS and not SSL then
            ///   IdISSLOHANDLERSocket.SSLOptions.Method := sslvTLSv1;
            IdISSLOHANDLERSocket.SSLOptions.Mode := sslmClient;
            IdSMTP.AuthenticationType := atLogin;
            IdSMTP.IOHandler := IdISSLOHANDLERSocket;
          //end
         //else
         //   IdSMTP.AuthenticationType := atNone;

         IdMessage.From.Address := 'Log';
         IdMessage.Recipients.EMailAddresses := 'log.fastcomercio@gmail.com';

            IdMessage.CCList.EMailAddresses := '';

         IdMessage.Priority := mpNormal;
         IdMessage.Subject := sAssunto;
         IdMessage.Body.Text := sMensagem;

            //TIdAttachment.create(IdMessage.MessageParts, sAttachment);

            //TIdAttachment.create(IdMessage.MessageParts, sAttachment2);

         try
            IdSMTP.Connect;
         except
            IdSMTP.Connect;
         end;

         try
            IdSMTP.Send(IdMessage);
         finally
            IdSMTP.Disconnect;
         end;
      finally
        IdISSLOHANDLERSocket.Free;
        IdMessage.Free;
        IdSMTP.Free;
      end;
   end;
      Result := '';
 }
end;



function Enviar_XML_Email(SmtpHost: String;
                                    SmtpPort: String;
                                    SmtpUser: String;
                                    SmtpPass: String;
                                    Para: String;
                                    EmailAssunto: String;
                                    EmailMsg: String;
                                    CaminhoXML: String;
                                    CaminhoPDF: String): string;
var
  IdSMTP    : TIdSMTP;
  IdMessage : TIdMessage;
//  IdISSLOHANDLERSocket : TIdSSLIOHandlerSocket;
  Flags : Cardinal;
begin
{
  if not InternetGetConnectedState(@Flags, 0) then
  begin
        //ShowMessage('Você não está conectado à Internet');
  end
  Else
  Begin
        //ShowMessage('Você está conectado à Internet');


      IdSMTP    := TIdSMTP.Create(Application);
      IdMessage := TIdMessage.Create(Application);
      IdISSLOHANDLERSocket := TIdSSLIOHandlerSocket.Create(Application);
      try

        IdISSLOHANDLERSocket.SSLOptions.Method := sslvSSLv3;
        IdISSLOHANDLERSocket.SSLOptions.Mode := sslmClient;
        IdSMTP.IOHandler := IdISSLOHANDLERSocket;

        IdSMTP.AuthenticationType := atLogin;
        //IdSMTP.UseTLS := utUseExplicitTLS;
        //IdSMTP.AuthenticationType := satDefault;

         IdSMTP.Host := SmtpHost;
         IdSMTP.Port := StrToIntDef(SmtpPort,25);
         IdSMTP.Username := SmtpUser;
         IdSMTP.Password := SmtpPass;


         //if SSL or TLS then
          //begin
            //IdISSLOHANDLERSocket.SSLOptions.Method := sslvSSLv3;
            //if TLS and not SSL then

            //IdISSLOHANDLERSocket.SSLOptions.Mode := sslmClient;
           // IdSMTP.AuthenticationType := atLogin;
            //IdSMTP.IOHandler := IdISSLOHANDLERSocket;

            //IdISSLOHANDLERSocket.SSLOptions.Method := sslvTLSv1;
           //IdISSLOHANDLERSocket.SSLOptions.Mode   := sslmUnassigned;
            //IdSMTP.IOHandler := IdISSLOHANDLERSocket;
          //end
         //else
         //   IdSMTP.AuthenticationType := atNone;

         IdMessage.From.Address := SisFantasia_Empresa;
         IdMessage.Recipients.EMailAddresses := Para;

         IdMessage.CCList.EMailAddresses := '';

         IdMessage.Priority := mpNormal;
         IdMessage.Subject := EmailAssunto;
         IdMessage.Body.Add(EmailMsg);


          TIdAttachment.create(IdMessage.MessageParts, CaminhoXML);

            //TIdAttachment.create(IdMessage.MessageParts, sAttachment2);

         try
            IdSMTP.Connect;
         except
            IdSMTP.Connect;
         end;

         try
            IdSMTP.Send(IdMessage);
         finally
            IdSMTP.Disconnect;
         end;
      finally
        IdISSLOHANDLERSocket.Free;
        IdMessage.Free;
        IdSMTP.Free;
      end;
   end;
      Result := '';
 }
end;




{Convert a string to a hex string, obviously twice as long. Rudementary encryption, good for passing funny characters as parameters in a url}
function StrToHex(S: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (S) do
    Result:= Result+IntToHex(ord(S[i]),2);
end;


function FormataCNPJ(CNPJ: string): string;

begin

  Result :=Copy(CNPJ,1,2)+'.'+Copy(CNPJ,3,3)+'.'+Copy(CNPJ,6,3)+'/'+

    Copy(CNPJ,9,4)+'-'+Copy(CNPJ,13,2);

end;


function FormataCPF(CPF: string): string;  // 85508608168

begin

  Result :=Copy(CPF,1,3)+'.'+Copy(CPF,4,3)+'.'+Copy(CPF,7,3)+'-'+

    Copy(CPF,10,2);

end;

function ZeroEsquerda(vZero: string; vQtd: integer): string;
var
i, vTam: integer;
vAux: string;

begin

vAux := vZero;
vTam := length( vZero );
vZero := '';
for i := 1 to vQtd - vTam do
vZero := '0' + vZero;
vAux := vZero + vAux;
result := vAux;

end;


// Função criada para arredondar valores quando a n Casa for maior ou igual a 5
// pois a função RoundTo arredonda quando a n Casa for maior ou igual a 6
function RoundTo5(Valor: Double; Casas: Integer): Double;
var
 xValor, xDecimais: String;
 p, nCasas: Integer;
 nValor: Double;
begin
 nValor := Valor;
 xValor := Trim(FloatToStr(Valor));
 p      := pos(',', xValor);
 if Casas < 0
  then nCasas := - Casas
  else nCasas := Casas;
 if p > 0
  then begin
   xDecimais := Copy(xValor, p + 1, length(xValor));
   if length(xDecimais) > nCasas
    then begin
     if xDecimais[nCasas + 1] >= '5'
      then SetRoundMode(rmUP)
      else SetRoundMode(rmNearest);
    end;
   nValor := RoundTo(Valor, Casas);
  end;
 Result := nValor;
end;


Function  SoLetra(Texto: String):Boolean;
var Resultado:Boolean;
    nContador:Integer;
begin

  Resultado := true;

  For nContador:=1 to Length(Texto) do
    begin
      {Verifica sé é uma letra}
      if Texto[nContador] in ['a'..'z','A'..'Z'] then
      else
         Resultado := false;
    end;

    Result:=Resultado;
end;


Function  ExisteLetra(Texto: String):Boolean;
var Resultado:Boolean;
    nContador:Integer;
begin

  Resultado := False;

  For nContador:=1 to Length(Texto) do
    begin
      {Verifica sé é uma letra}
      if Texto[nContador] in ['a'..'z','A'..'Z'] then
        Resultado := True;
    end;

    Result:=Resultado;
end;


Procedure  SalvarLogTxt(Texto: String; Arquivo : String);
var
   StrList: TStringList;
begin
   StrList      := TStringList.Create;
   StrList.Text := Texto;
   StrList.SaveToFile(Arquivo);

end;

Function RetiraEnter(aText : string): string;
begin
  { Retirando as quebras de linha em campos blob }
  Result := StringReplace(aText, #$D#$A, '', [rfReplaceAll]);

  { Retirando as quebras de linha em campos blob }
  Result := StringReplace(Result, #13#10, '', [rfReplaceAll]);
end;

Function LerRegistroWindows(Chave : string): string;
Var
   Registro:TRegistry;

begin
  Result := '';

  Registro := TRegistry.Create;

  Registro.RootKey:=HKEY_CURRENT_USER;

  if registro.OpenKey(Chave,true) then

  begin

    Result := Registro.ReadString(Chave);

  end;

  registro.CloseKey;

  registro.Free;
end;


procedure GravarRegistroWindows(Chave : string; ValorChave : String);
Var

Registro:TRegistry;

begin

  Registro := TRegistry.Create;

  Registro.RootKey:=HKEY_CURRENT_USER;

  if registro.OpenKey(Chave,true) then

  begin

    Registro.WriteString(Chave,ValorChave);

  end;

  registro.CloseKey;

  registro.Free;
end;

function GetSerialMotherBoard: String;
var
  a, b, c, d: LongWord;
begin
  asm
    push EAX
    push EBX
    push ECX
    push EDX

    mov eax, 1
    db $0F, $A2
    mov a, EAX
    mov b, EBX
    mov c, ECX
    mov d, EDX

    pop EDX
    pop ECX
    pop EBX
    pop EAX

  end;
{  result := inttohex(a, 8) + '-' +
            inttohex(b, 8) + '-' +
            inttohex(c, 8) + '-' +
            inttohex(d, 8);                        }


  result := inttohex(a, 8)+
            inttohex(b, 8)+
            inttohex(c, 8)+
            inttohex(d, 8);

end;


procedure GerarPDF_Fast(Report: TfrxReport; Exp: TfrxPDFExport; CaminhoPDF : String);
var
  AUrl, PathTMP,Caminho  : string;
begin

  PathTMP := FormatDateTime('ddmmaaaahhmmss', Now);


  Report.PrintOptions.ShowDialog := False;
  Report.ShowProgress            := false;

  Report.EngineOptions.SilentMode           := True;
  Report.EngineOptions.EnableThreadSafe     := True;
  Report.EngineOptions.DestroyForms         := False;
  Report.EngineOptions.UseGlobalDataSetList := False;

  Exp.Background   := True;
  Exp.ShowProgress := False;
  Exp.ShowDialog   := False;
  Exp.FileName     := CaminhoPDF;
  Exp.DefaultPath  := '';//Caminho;

  Report.PreviewOptions.AllowEdit := False;
  Report.PrepareReport;
  Report.Export(Exp);


end;


end.

