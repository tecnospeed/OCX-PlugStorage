library spdPlugStorageX;

uses
  ComServ,
  spdPlugStorage_TLB in 'spdPlugStorage_TLB.pas',
  spdPlugStorageXImpl in 'spdPlugStorageXImpl.pas' {spdPlugStorageX: CoClass},
  spdPlugStorageConsts in 'spdPlugStorageConsts.pas';

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

{$R *.DCR}
begin
end.
