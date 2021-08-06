unit SmartSetup.Model.InterfaceCallback;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  UrlMon,
  ShellApi,
  Activex,
  ComCtrls,
  StdCtrls,
  Gauges;

type
   TObjetoCallback = class(TInterfacedObject, IBindStatusCallback)
  public
    function OnStartBinding(dwReserved: DWORD; pib: IBinding): HResult; stdcall;
    function GetPriority(out nPriority): HResult; stdcall;
    function OnLowResource(reserved: DWORD): HResult; stdcall;
    function OnProgress(ulProgress, ulProgressMax, ulStatusCode: ULONG; szStatusText: LPCWSTR): HResult; stdcall;
    function OnStopBinding(hresult: HResult; szError: LPCWSTR): HResult; stdcall;
    function GetBindInfo(out grfBINDF: DWORD; var bindinfo: TBindInfo): HResult; stdcall;
    function OnDataAvailable(grfBSCF: DWORD; dwSize: DWORD; formatetc: PFormatEtc; stgmed: PStgMedium): HResult; stdcall;
    function OnObjectAvailable(const iid: TGUID; punk: IUnknown): HResult; stdcall;
  end;

implementation

uses
  SmartSetup.View.Main, SmartSetup.View.Download;

{ TObjetoCallback }

function TObjetoCallback.OnProgress(ulProgress, ulProgressMax,
  ulStatusCode: ULONG; szStatusText: LPCWSTR): HResult;
begin
  if Assigned(frmInicio) then
    begin
      Application.ProcessMessages;
      case ulStatusCode of
        1: frmDownload.lbStatus.Caption := 'Conectando em: '+ szStatusText;
        2: frmDownload.lbStatus.Caption := 'Conectado em: '+ szStatusText;
        3: frmDownload.lbStatus.Caption := 'Redirecionando para: '+ szStatusText;
        4: begin
             frmDownload.lbStatus.Caption := 'Fazendo Download: '+ szStatusText;
             frmDownload.Gauge1.MaxValue := ulProgressMax;
             frmDownload.Gauge1.Progress := ulProgress;
           end;
        5: begin
             frmDownload.lbStatus.Caption := 'Baixando: ' + FormatFloat('#.#,',
             ulProgress div 1024)
             + ' de ' +
             FormatFloat('#.#,', ulProgressMax div 1024) + 'Kb';
             frmDownload.Gauge1.MaxValue := ulProgressMax;
             frmDownload.Gauge1.Progress := ulProgress;
           end;
        6: begin
             frmDownload.lbStatus.Caption := 'Final de Download: '+ szStatusText;
             frmDownload.lbStatus.Caption := 'Baixando: ' + FormatFloat('#.#,',
             ulProgressMax div 1024)
             + ' de ' +
             FormatFloat('#.#,', ulProgressMax div 1024) + 'Kb';
           end;
      end;
    end;
end;

function TObjetoCallback.GetBindInfo(out grfBINDF: DWORD;
  var bindinfo: TBindInfo): HResult;
begin

end;

function TObjetoCallback.GetPriority(out nPriority): HResult;
begin

end;

function TObjetoCallback.OnDataAvailable(grfBSCF, dwSize: DWORD;
  formatetc: PFormatEtc; stgmed: PStgMedium): HResult;
begin

end;

function TObjetoCallback.OnLowResource(reserved: DWORD): HResult;
begin

end;

function TObjetoCallback.OnObjectAvailable(const iid: TGUID;
  punk: IInterface): HResult;
begin

end;

function TObjetoCallback.OnStartBinding(dwReserved: DWORD;
  pib: IBinding): HResult;
begin

end;

function TObjetoCallback.OnStopBinding(hresult: HResult;
  szError: LPCWSTR): HResult;
begin

end;

end.
