unit spdPlugStorage_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 04/02/2020 14:26:09 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\SysWow64\spdPlugStorageX.ocx (1)
// LIBID: {2479991A-C276-46E7-9D66-D8F937244958}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses
{$IF COMPILERVERSION >= 23}
  winapi.Windows, winapi.ActiveX, system.win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Vcl.OleServer,
{$ELSE}
  Windows, ActiveX, StdVCL, Graphics, OleCtrls, OleServer,
{$IFEND}
  Classes, Variants;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  spdPlugStorageMajorVersion = 1;
  spdPlugStorageMinorVersion = 0;

  LIBID_spdPlugStorage: TGUID = '{2479991A-C276-46E7-9D66-D8F937244958}';

  IID_IspdPlugStorageX: TGUID = '{3A48F416-297E-421E-8518-FAB4B792450F}';
  DIID_IspdPlugStorageXEvents: TGUID = '{C6D98397-0918-4B4B-9D25-6D872AD8021E}';
  CLASS_spdPlugStorageX: TGUID = '{642CC66E-FC24-4218-B5AD-B6F111856829}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IspdPlugStorageX = interface;
  IspdPlugStorageXDisp = dispinterface;
  IspdPlugStorageXEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  spdPlugStorageX = IspdPlugStorageX;


// *********************************************************************//
// Interface: IspdPlugStorageX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A48F416-297E-421E-8518-FAB4B792450F}
// *********************************************************************//
  IspdPlugStorageX = interface(IDispatch)
    ['{3A48F416-297E-421E-8518-FAB4B792450F}']
    function Get_Token: WideString; safecall;
    procedure Set_Token(const Value: WideString); safecall;
    function Get_Login: WideString; safecall;
    procedure Set_Login(const Value: WideString); safecall;
    function Get_Senha: WideString; safecall;
    procedure Set_Senha(const Value: WideString); safecall;
    function Get_Servidor: WideString; safecall;
    procedure Set_Servidor(const Value: WideString); safecall;
    function EnviarXml(const aXml: WideString): WideString; safecall;
    procedure Set_Hooked(const Value: WideString); safecall;
    property Token: WideString read Get_Token write Set_Token;
    property Login: WideString read Get_Login write Set_Login;
    property Senha: WideString read Get_Senha write Set_Senha;
    property Servidor: WideString read Get_Servidor write Set_Servidor;
    property Hooked: WideString write Set_Hooked;
  end;

// *********************************************************************//
// DispIntf:  IspdPlugStorageXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A48F416-297E-421E-8518-FAB4B792450F}
// *********************************************************************//
  IspdPlugStorageXDisp = dispinterface
    ['{3A48F416-297E-421E-8518-FAB4B792450F}']
    property Token: WideString dispid 201;
    property Login: WideString dispid 202;
    property Senha: WideString dispid 203;
    property Servidor: WideString dispid 204;
    function EnviarXml(const aXml: WideString): WideString; dispid 205;
    property Hooked: WideString writeonly dispid 206;
  end;

// *********************************************************************//
// DispIntf:  IspdPlugStorageXEvents
// Flags:     (4096) Dispatchable
// GUID:      {C6D98397-0918-4B4B-9D25-6D872AD8021E}
// *********************************************************************//
  IspdPlugStorageXEvents = dispinterface
    ['{C6D98397-0918-4B4B-9D25-6D872AD8021E}']
  end;

// *********************************************************************//
// The Class CospdPlugStorageX provides a Create and CreateRemote method to          
// create instances of the default interface IspdPlugStorageX exposed by              
// the CoClass spdPlugStorageX. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdPlugStorageX = class
    class function Create: IspdPlugStorageX;
    class function CreateRemote(const MachineName: string): IspdPlugStorageX;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TspdPlugStorageX
// Help String      : spdPlugStorageX Control
// Default Interface: IspdPlugStorageX
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TspdPlugStorageX = class(TOleServer)
  private
    FIntf: IspdPlugStorageX;
    function GetDefaultInterface: IspdPlugStorageX;
  protected
    procedure InitServerData; override;
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Login: WideString;
    procedure Set_Login(const Value: WideString);
    function Get_Senha: WideString;
    procedure Set_Senha(const Value: WideString);
    function Get_Servidor: WideString;
    procedure Set_Servidor(const Value: WideString);
    procedure Set_Hooked(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IspdPlugStorageX);
    procedure Disconnect; override;
    function EnviarXml(const aXml: WideString): WideString;
    property DefaultInterface: IspdPlugStorageX read GetDefaultInterface;
    property Hooked: WideString write Set_Hooked;
    property Token: WideString read Get_Token write Set_Token;
    property Login: WideString read Get_Login write Set_Login;
    property Senha: WideString read Get_Senha write Set_Senha;
    property Servidor: WideString read Get_Servidor write Set_Servidor;
  published
  end;

function CreatePlugStorageX: TspdPlugStorageX;
procedure DestroyPlugStorageX(aPlugStorageX: TspdPlugStorageX);
procedure Register;

resourcestring
  dtlServerPage = 'Tecnospeed PlugStorage';

  dtlOcxPage = 'Tecnospeed PlugStorage';

{$R *.dcr}
implementation

uses
  SyncObjs,
  {$IF COMPILERVERSION >= 23}
  System.Win.ComObj;
  {$ELSE}
  ComObj;
  {$IFEND}

class function CospdPlugStorageX.Create: IspdPlugStorageX;
begin
  Result := CreateComObject(CLASS_spdPlugStorageX) as IspdPlugStorageX;
end;

class function CospdPlugStorageX.CreateRemote(const MachineName: string): IspdPlugStorageX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdPlugStorageX) as IspdPlugStorageX;
end;

var
  CS_PlugStorageOCX: TCriticalSection;

procedure TspdPlugStorageX.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{642CC66E-FC24-4218-B5AD-B6F111856829}';
    IntfIID:   '{3A48F416-297E-421E-8518-FAB4B792450F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TspdPlugStorageX.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IspdPlugStorageX;
  end;
end;

procedure TspdPlugStorageX.ConnectTo(svrIntf: IspdPlugStorageX);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TspdPlugStorageX.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TspdPlugStorageX.GetDefaultInterface: IspdPlugStorageX;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TspdPlugStorageX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TspdPlugStorageX.Destroy;
begin
  inherited Destroy;
end;

function TspdPlugStorageX.Get_Token: WideString;
begin
  Result := DefaultInterface.Token;
end;

procedure TspdPlugStorageX.Set_Token(const Value: WideString);
begin
  DefaultInterface.Token := Value;
end;

function TspdPlugStorageX.Get_Login: WideString;
begin
  Result := DefaultInterface.Login;
end;

procedure TspdPlugStorageX.Set_Login(const Value: WideString);
begin
  DefaultInterface.Login := Value;
end;

function TspdPlugStorageX.Get_Senha: WideString;
begin
  Result := DefaultInterface.Senha;
end;

procedure TspdPlugStorageX.Set_Senha(const Value: WideString);
begin
  DefaultInterface.Senha := Value;
end;

function TspdPlugStorageX.Get_Servidor: WideString;
begin
  Result := DefaultInterface.Servidor;
end;

procedure TspdPlugStorageX.Set_Servidor(const Value: WideString);
begin
  DefaultInterface.Servidor := Value;
end;

procedure TspdPlugStorageX.Set_Hooked(const Value: WideString);
begin
  DefaultInterface.Hooked := Value;
end;

function TspdPlugStorageX.EnviarXml(const aXml: WideString): WideString;
begin
  Result := DefaultInterface.EnviarXml(aXml);
end;

function CreatePlugStorageX: TspdPlugStorageX;
begin
  CS_PlugStorageOCX.Enter;
  try
    Result := TspdPlugStorageX.Create(nil);
  finally
    CS_PlugStorageOCX.Leave;
  end;
end;

procedure DestroyPlugStorageX(aPlugStorageX: TspdPlugStorageX);
begin
  CS_PlugStorageOCX.Enter;
  try
    aPlugStorageX.Free;
  finally
    CS_PlugStorageOCX.Leave;
  end;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TspdPlugStorageX]);
end;


initialization
  CS_PlugStorageOCX := TCriticalSection.Create;
finalization
  CS_PlugStorageOCX.Free;
end.
