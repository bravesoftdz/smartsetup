program SmartSetup;

uses
  Vcl.Forms,
  SmartSetup.View.Main in 'src\View\SmartSetup.View.Main.pas' {frmInicio},
  SmartSetup.View.Download in 'src\View\SmartSetup.View.Download.pas' {frmDownload},
  SmartSetup.Model.InterfaceCallback in 'src\Model\SmartSetup.Model.InterfaceCallback.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInicio, frmInicio);
  Application.CreateForm(TfrmDownload, frmDownload);
  Application.Run;
end.
