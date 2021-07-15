unit spdPlugStorage;

interface

uses
  SysUtils, Classes, spdPlugStorageConsts;


type
  TTipoRetorno = (trJSON, trXML, trCSV);

  {Erro tratado em especial para o Plug Storage, como exemplo falta de login e senha}
  EspdPlugStorageException = class(Exception);

  TspdPlugStorage = class(TComponent)

  private
    FLogin: string;
    FToken: string;
    FSenha: string;
    FServidor: string;
    FTipoRetorno: TTipoRetorno;
    FHooked: string;
    procedure SetLogin(const Value: string);
    procedure SetSenha(const Value: string);
    procedure setToken(const Value: string);
    procedure SetServidor(const Value: string);
    function GetServidor: string;
    function GetTipoRetorno: TTipoRetorno;
    procedure SetTipoRetorno(const Value: TTipoRetorno);
    procedure SetHooked(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
	{Função para o envio do Plug Storage
    @param aXml: xml passado para o envio do nPlug Storage.
	@returns Retorna uma string informando se foi enviado com sucesso,
	juntamente com uma hash e um link dos detalhes da nota.}
    function EnviarXml(const aXml: WideString) : WideString;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
  	{Parâmetro para informar o Token}
    property Token : string read FToken write setToken;
    {Parâmetro para informar o Login}
	  property Login : string read FLogin write SetLogin;
  	{Parâmetro para informar a Senha}
    property Senha : string read FSenha write SetSenha;
	  {Parâmetro para informar o Servidor}
    property Servidor : string read GetServidor write SetServidor;
  	{Parâmetro para informar o Tipo de retorno}
    property TipoRetorno : TTipoRetorno read GetTipoRetorno write SetTipoRetorno;
    {Parâmetro para informar que o Plug Storage foi instanciado via componente}
    property Hooked : string write SetHooked;
  end;

procedure Register;

implementation

uses
  spdWebUtils, httpapp;

procedure Register;
begin
//  RegisterComponents('tecnoSpeed NFe', [TspdPlugStorage]);
end;

{ TspdPlugStorage }


constructor TspdPlugStorage.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TspdPlugStorage.Destroy;
begin
  inherited;
end;

function TspdPlugStorage.EnviarXml(const aXml: WideString) : WideString;

  procedure CheckParamsPlugStorage;
  begin
    if Length(FLogin) = 0 then
       raise EspdPlugStorageException.Create('O login da Plug Storage deve ser informado.');
    if Length(FSenha) = 0 then
       raise EspdPlugStorageException.Create('A senha da Plug Storage deve ser informado');
    if Length(FToken) = 0 then
       raise EspdPlugStorageException.Create('O token do parceiro do Plug Storage deve ser informado');
  end;

var
 _idHTTP: TspdHTTP;
 _xml: TStringList;
 _params: TStringList;
 _TipoRetorno, _ReturnedString: string;
 _QueryString : string;
begin
  // Verifica se a chamada foi executada por um componente.
  if FHooked = C_COMPONENTE then
    raise EspdPlugStorageException.Create('Método obsoleto. Infomações de utilização em: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006286894');

  CheckParamsPlugStorage;
  Result := '';
  _params := TStringList.Create;
  _idHTTP := TspdHTTP.Create;
  try

    if FServidor = EmptyStr then
    begin
      FServidor := 'https://app.plugstorage.com.br/api/invoices';
    end;

    if FileExists(aXml) then
    begin
      _xml := TStringList.Create;
      try
        _xml.LoadFromFile(aXml);
        _params.Add('xml=' + HTTPEncode(UTF8Encode(_xml.Text)));
      finally
        _xml.Free;
      end;
    end
    else
    begin
      _params.Add('xml=' + HTTPEncode(UTF8Encode(aXml)));
    end;

    _params.Text := StringReplace(_params.Text,'&amp;','/eamp/',[rfReplaceAll]);
    _params.Text := StringReplace(_params.Text,'&','/ecom/',[rfReplaceAll]);
    _QueryString := FServidor;

    if (FToken <> '') then
    begin
      _params.Text := _params.Text + '&token=' + FToken;
      _QueryString := FServidor + '?token=' + FToken;
    end;

    if FTipoRetorno = trJSON then
      _TipoRetorno := 'JSON'
    else if FTipoRetorno = trXML then
      _TipoRetorno := 'XML'
    else if FTipoRetorno = trCSV then
      _TipoRetorno := 'CSV';

    try
      _idHTTP.Username := FLogin;
      _idHTTP.Password := FSenha;
      _idHTTP.URI := _QueryString;
      _idHTTP.Post(_params.Text, _ReturnedString);
      if _ReturnedString = '' then
        _ReturnedString := 'Sem resposta do servidor. Verifique se as configurações do Plug Storage estão corretas.';
      Result := _ReturnedString;
    except
      on e: Exception do
        raise EspdPlugStorageException.Create(e.Message);
    end;
  finally
    FreeAndNil(_idHTTP);
    FreeAndNil(_params);
  end;
end;

function TspdPlugStorage.GetServidor: string;
begin
  if FServidor = EmptyStr then
  begin
    Result := 'https://app.plugstorage.com.br/api/invoices';
  end
  else
    Result := FServidor;
end;

function TspdPlugStorage.GetTipoRetorno: TTipoRetorno;
begin
  Result := FTipoRetorno;
end;

procedure TspdPlugStorage.SetHooked(const Value: string);
begin
  if Value = C_COMPONENTE then
    FHooked := Value;
end;

procedure TspdPlugStorage.SetLogin(const Value: string);
begin
  FLogin := Value;
end;

procedure TspdPlugStorage.SetSenha(const Value: string);
begin
  FSenha := Value;
end;

procedure TspdPlugStorage.SetServidor(const Value: string);
begin
  FServidor := Value;
end;

procedure TspdPlugStorage.SetTipoRetorno(const Value: TTipoRetorno);
begin
  FTipoRetorno := Value
end;

procedure TspdPlugStorage.setToken(const Value: string);
begin
  FToken := Value;
end;

end.
