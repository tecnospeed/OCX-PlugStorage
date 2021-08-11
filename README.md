# Componente Plug Storage

## Link para download do arquivo .ocx

<https://drive.google.com/file/d/1uKnmSPHX_fKh-rSK_hkNqORpA9BJC_jY/view?usp=sharing>

### Sobre o Componente

Trata-se de um componente na forma de controle ActiveX (*.ocx consumidos por linguagens compatíveis com ActiveX, como VB6, aplicações .NET, C++, Node.js, etc) ou de BPL/DCU (arquivos semelhantes a DLLs e objetos linkáveis consumidos diretamente pelo Delphi) incluído pelos clientes em seus projetos com o objetivo de facilitar a comunicação com o nosso produto Plug Storage.

O componente Plug Storage expõe métodos para a utilização direta do programador, alguns dos quais realizam requisições do tipo HTTPS.

### Forma de autenticação

Para utilizar os métodos é necessário ter um cadastro ativo no Plug Storage e se autenticar com nome de usuáriom senha e token de acesso.

### Interfaces

#### Métodos e propriedades

```
function EnviarXml(const aXml: WideString): WideString; safecall;

property Token: WideString read Get_Token write Set_Token;
property Login: WideString read Get_Login write Set_Login;
property Senha: WideString read Get_Senha write Set_Senha;
property Servidor: WideString read Get_Servidor write Set_Servidor;
property Hooked: WideString write Set_Hooked;
```

### Fluxo e conectividade

O componente se comunica via HTTPS com o Plug Storage via POST com https://app.plugstorage.com.br/api/invoices.
