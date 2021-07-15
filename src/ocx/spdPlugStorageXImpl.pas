unit spdPlugStorageXImpl;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComServ, StdVCL, spdPlugStorage_TLB,
  ComObj, spdPlugStorage, spdPlugStorageConsts;

type
  TspdPlugStorageX = class(TAutoObject, IspdPlugStorageX)
  private
    { Private declarations }
    FServidor: WideString;
    FPlugStorage: TspdPlugStorage;
  protected
    { Protected declarations }
    procedure Initialize; override;

    function EnviarXml(const aXml: WideString): WideString; safecall;
    function Get_Login: WideString; safecall;
    function Get_Senha: WideString; safecall;
    function Get_Servidor: WideString; safecall;
    function Get_Token: WideString; safecall;
    procedure Set_Login(const Value: WideString); safecall;
    procedure Set_Senha(const Value: WideString); safecall;
    procedure Set_Servidor(const Value: WideString); safecall;
    procedure Set_Token(const Value: WideString); safecall;
    procedure Set_Hooked(const Value: WideString);safecall;
  end;

implementation

uses
  System.WideStrUtils, System.SysUtils;


{ TspdPlugStorageX }


function TspdPlugStorageX.EnviarXml(const aXml: WideString): WideString;
begin
  try
    Result := FPlugStorage.EnviarXml(aXml);
    if IsUTF8String(Result) then
      Result := UTF8Decode(Result);
  except on E:Exception do
    begin
      raise EspdPlugStorageException.Create(E.message);
    end;
  end;
end;

function TspdPlugStorageX.Get_Login: WideString;
begin
  Result := FPlugStorage.Login;
end;

function TspdPlugStorageX.Get_Senha: WideString;
begin
  Result := FPlugStorage.Senha;
end;

function TspdPlugStorageX.Get_Servidor: WideString;
begin
  Result := FPlugStorage.Servidor;
end;

function TspdPlugStorageX.Get_Token: WideString;
begin
  Result := FPlugStorage.Token;
end;

procedure TspdPlugStorageX.Initialize;
begin
  inherited;
  FPlugStorage := TspdPlugStorage.Create(nil);
end;


procedure TspdPlugStorageX.Set_Hooked(const Value: WideString);
begin
  FPlugStorage.Hooked := Value;
end;

procedure TspdPlugStorageX.Set_Login(const Value: WideString);
begin
  FPlugStorage.Login := Value;
end;

procedure TspdPlugStorageX.Set_Senha(const Value: WideString);
begin
  FPlugStorage.Senha := Value;
end;

procedure TspdPlugStorageX.Set_Servidor(const Value: WideString);
begin
  FPlugStorage.Servidor := Value;
end;

procedure TspdPlugStorageX.Set_Token(const Value: WideString);
begin
  FPlugStorage.Token := Value;
end;

initialization
  TAutoObjectFactory.Create(
    ComServer,
    TspdPlugStorageX,
    CLASS_spdPlugStorageX,
    ciMultiInstance,
    tmBoth);
end.
