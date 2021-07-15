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

// $Rev: 45604 $
// File generated on 06/02/2020 14:03:27 from Type Library described below.

// ************************************************************************  //
// Type Lib: spdPlugStorage.ridl (1)
// LIBID: {2479991A-C276-46E7-9D66-D8F937244958}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v4.0 StdVCL, (stdvcl40.dll)
// SYS_KIND: SYS_WIN64
// Cmdline:
//   "C:\Program Files (x86)\Embarcadero\RAD Studio\9.0\bin\gentlb.exe" -P -TspdPlugStorage.tlb -E64 -D"c:\dev\componentes\nota_segura\src\ocx\" spdPlugStorage.ridl
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

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
// Flags:     (0)
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

implementation

uses System.Win.ComObj;

class function CospdPlugStorageX.Create: IspdPlugStorageX;
begin
  Result := CreateComObject(CLASS_spdPlugStorageX) as IspdPlugStorageX;
end;

class function CospdPlugStorageX.CreateRemote(const MachineName: string): IspdPlugStorageX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdPlugStorageX) as IspdPlugStorageX;
end;

end.
