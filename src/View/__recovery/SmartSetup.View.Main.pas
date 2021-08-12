unit SmartSetup.View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.WinXCtrls,
  acPNG,
  Vcl.StdCtrls,
  Vcl.OleCtrls,
  SHDocVw,
  JvComputerInfoEx,
  ShlObj,
  ComObj,
  FileCtrl,
  Midaslib,
  Registry,
  Zip,
  WinSock,
  JclSecurity,
  UrlMon,
  ShellAPI,
  JclSysInfo,
  System.UITypes;

type
  TfrmInicio = class(TForm)
    pnBackground: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SplitView1: TSplitView;
    Image1: TImage;
    Panel1: TPanel;
    pnNavegadores: TPanel;
    Image2: TImage;
    Panel7: TPanel;
    lbLogo: TLabel;
    imgLogo: TImage;
    shpChrome: TShape;
    lbNavegadores: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape1: TShape;
    imgChrome: TImage;
    lbChrome: TLabel;
    imgFirefox: TImage;
    shpFirefox: TShape;
    lbFirefox: TLabel;
    lbOpera: TLabel;
    imgOpera: TImage;
    shpOpera: TShape;
    shpOperaGX: TShape;
    lbOperaGX: TLabel;
    imgOperaGX: TImage;
    imgVivaldi: TImage;
    Label2: TLabel;
    shpVivaldi: TShape;
    Panel8: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    shpVs: TShape;
    lbBibliotecas: TLabel;
    Shape8: TShape;
    imgVs: TImage;
    lbVs: TLabel;
    shpDx: TShape;
    lbDx: TLabel;
    imgDx: TImage;
    Shape11: TShape;
    lbNet452: TLabel;
    Image6: TImage;
    Shape12: TShape;
    Image7: TImage;
    Label7: TLabel;
    Panel10: TPanel;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Label14: TLabel;
    Shape24: TShape;
    Image13: TImage;
    Label15: TLabel;
    Shape25: TShape;
    Label16: TLabel;
    Image14: TImage;
    Shape26: TShape;
    Label17: TLabel;
    Image15: TImage;
    Shape27: TShape;
    Label18: TLabel;
    Image16: TImage;
    Shape28: TShape;
    Image17: TImage;
    Label19: TLabel;
    Image18: TImage;
    imgChromeClick: TImage;
    Panel2: TPanel;
    Image19: TImage;
    Panel3: TPanel;
    Image20: TImage;
    Panel4: TPanel;
    Image21: TImage;
    Panel5: TPanel;
    Image22: TImage;
    pnEssenciais: TPanel;
    imgEssenciais: TImage;
    imgFirefoxClick: TImage;
    imgOperaClick: TImage;
    imgOperaGXClick: TImage;
    imgVivaldiClick: TImage;
    Shape7: TShape;
    lbNet461: TLabel;
    Shape29: TShape;
    Label20: TLabel;
    Shape30: TShape;
    lbNet471: TLabel;
    Shape31: TShape;
    lbNet472: TLabel;
    Label23: TLabel;
    Shape32: TShape;
    imgWinrar: TImage;
    Label24: TLabel;
    Label25: TLabel;
    Image29: TImage;
    Shape33: TShape;
    shp7zip: TShape;
    img7zip: TImage;
    lb7zip: TLabel;
    Shape35: TShape;
    imgB1Archiver: TImage;
    Label27: TLabel;
    Shape36: TShape;
    Image32: TImage;
    Label28: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image24: TImage;
    imgVsClick: TImage;
    imgDxClick: TImage;
    imgNet452Click: TImage;
    imgNet461Click: TImage;
    imgNet462Click: TImage;
    imgNet471: TImage;
    imgNet472Click: TImage;
    imgWinrarClick: TImage;
    img7zipClick: TImage;
    imgJavaClick: TImage;
    imgB1ArchiverClick: TImage;
    imgExtractNowClick: TImage;
    Panel6: TPanel;
    Shape4: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Label1: TLabel;
    Shape13: TShape;
    Image8: TImage;
    Label3: TLabel;
    Shape14: TShape;
    Label4: TLabel;
    Image9: TImage;
    Shape15: TShape;
    Label5: TLabel;
    Image10: TImage;
    Shape16: TShape;
    Label6: TLabel;
    Image11: TImage;
    Shape17: TShape;
    Image12: TImage;
    Label8: TLabel;
    Image23: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure pnNavegadoresMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnNavegadoresMouseLeave(Sender: TObject);
    procedure imgChromeClickClick(Sender: TObject);
    procedure imgFirefoxClickClick(Sender: TObject);
    procedure imgOperaClickClick(Sender: TObject);
    procedure imgOperaGXClickClick(Sender: TObject);
    procedure imgVivaldiClickClick(Sender: TObject);
    procedure pnNavegadoresClick(Sender: TObject);
    procedure pnEssenciaisClick(Sender: TObject);
    procedure imgVsClickClick(Sender: TObject);
    procedure imgDxClickClick(Sender: TObject);
    procedure imgNet452ClickClick(Sender: TObject);
    procedure imgNet461ClickClick(Sender: TObject);
    procedure imgNet462ClickClick(Sender: TObject);
    procedure imgNet471Click(Sender: TObject);
    procedure imgNet472ClickClick(Sender: TObject);
    procedure imgWinrarClickClick(Sender: TObject);
    procedure img7zipClickClick(Sender: TObject);
    procedure imgJavaClickClick(Sender: TObject);
    procedure imgB1ArchiverClickClick(Sender: TObject);
    procedure imgExtractNowClickClick(Sender: TObject);
  private
    Origem : String;
    Destino : String;
    { Private declarations }
  public
    function BaixarArquivo(Origem, Destino: string): Boolean;
    function ShellExecuteAndWait(Operation, FileName, Parameter,
  Directory: String; Show: Word; bWait: Boolean): Longint;
    function CriarPasta(Caminho: String): boolean;
    procedure DownloadLink(Link, Nome:String);
    { Public declarations }
  end;

var
  frmInicio: TfrmInicio;

implementation

{$R *.dfm}

uses SmartSetup.Model.InterfaceCallback, SmartSetup.View.Download;


function TfrmInicio.BaixarArquivo(Origem, Destino: string): Boolean;
var
  Status: TObjetoCallback;
begin
  Status := TObjetoCallback.Create;
  try
    Result := UrlDownloadToFile(nil, PChar(Origem), PChar(Destino),
    0, Status) = 0;
  except
    Result := False;
  end;
end;

function TfrmInicio.CriarPasta(Caminho: String): boolean;
var
Parametros: String;
begin
  if DirectoryExists(Caminho) then
    Result := False
  else
    CreateDir(Caminho);
end;

procedure TfrmInicio.DownloadLink(Link, Nome: String);
begin
  Origem := Link;
  Destino := ExtractFilePath(Application.ExeName) + 'Downloads\' + Nome;
  try
    frmDownload := TfrmDownload.Create(nil);
    frmDownload.Show;
    if BaixarArquivo(Origem, Destino) then
    begin
      frmDownload.lbStatus.Caption := 'Download Concluído';
      if MessageDlg('Download concluído, deseja instalar?', mtinformation, [mbyes, mbno],0)=mryes then
        ShellExecuteAndWait('open', Destino, '', '', SW_SHOWNORMAL, True);
    end
    else
      MessageDlg('Erro ao tentar efetuar o download', mtInformation, [mbOK], 0);
  except
     on E: Exception do
     MessageDlg('Erro ao tentar efetuar o download', mtInformation, [mbOK], 0);
  end;
  frmDownload.Close;
  frmDownload.Free;
end;

procedure TfrmInicio.FormCreate(Sender: TObject);
var teste:string;
begin
  teste := ExtractFilePath(Application.ExeName) + 'downloads';
  CriarPasta(teste);
  TabSheet1.TabVisible := False;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;

  PageControl1.ActivePage := PageControl1.Pages[0];

  lbLogo.Visible := False;
  imgLogo.Visible := False;
end;

procedure TfrmInicio.Image1Click(Sender: TObject);
begin
  if SplitView1.Opened then
  begin
    SplitView1.Close;
    lbLogo.Visible := False;
    imgLogo.Visible := False;
    {Show panel label}
    pnNavegadores.ShowCaption := False;
  end
  else
   begin
    SplitView1.Open;
    lbLogo.Visible := True;
    imgLogo.Visible := True;

    {Show panel label}
    pnNavegadores.ShowCaption := True;
  end

end;


procedure TfrmInicio.imgExtractNowClickClick(Sender: TObject);
begin
  DownloadLink('https://www.extractnow.com/extractnow.exe', 'extract-now.exe');
end;

procedure TfrmInicio.imgDxClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/visual-redist.exe', 'visual-redist.exe');
end;

procedure TfrmInicio.imgFirefoxClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/FirefoxSetup.exe', 'FirefoxSetup.exe');
end;

procedure TfrmInicio.imgJavaClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/java.exe', 'java-runtime.exe');
end;

procedure TfrmInicio.imgNet452ClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/ndp452.exe', 'NetFramework4-5-2.exe');
end;

procedure TfrmInicio.imgNet461ClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/NDP461.exe', 'Netframework4-6-1.exe');
end;

procedure TfrmInicio.imgNet462ClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/NDP462.exe', 'Netframework4-6-2.exe');
end;

procedure TfrmInicio.imgNet471Click(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/ndp471.exe', 'Netframework4-7-1.exe');
end;

procedure TfrmInicio.imgNet472ClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/ndp472.exe', 'Netframework4-7-2.exe');
end;

procedure TfrmInicio.imgOperaClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/OperaSetup.exe', 'OperaSetup.exe');
end;

procedure TfrmInicio.imgOperaGXClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/OperaGXSetup.exe', 'OperaGXSetup.exe');
end;

procedure TfrmInicio.imgVivaldiClickClick(Sender: TObject);
begin
  DownloadLink('https://downloads.vivaldi.com/stable/Vivaldi.4.1.2369.16.x64.exe', 'Vivaldi.exe');
end;

procedure TfrmInicio.imgVsClickClick(Sender: TObject);
begin
    DownloadLink('http://fmsoftware.online/downloads/visual-redist.exe', 'VisualAIO.exe')
end;

procedure TfrmInicio.imgWinrarClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/winrar-x64.exe', 'Winrar.exe')
end;

procedure TfrmInicio.img7zipClickClick(Sender: TObject);
begin
  DownloadLink('https://www.7-zip.org/a/7z1900-x64.exe', '7zip.exe');
end;

procedure TfrmInicio.imgB1ArchiverClickClick(Sender: TObject);
begin
  DownloadLink('http://b1.org/download-start/0/os=windows/B1FreeArchiver_1.7.120.exe', 'b1-archiver.exe');
end;

procedure TfrmInicio.imgChromeClickClick(Sender: TObject);
begin
  DownloadLink('http://fmsoftware.online/downloads/Chrome.exe', 'ChromeSetup.exe');
end;

function TFrmInicio.ShellExecuteAndWait(Operation, FileName, Parameter,
  Directory: String; Show: Word; bWait: Boolean): Longint;
var
  bOK: Boolean;
  Info: TShellExecuteInfo;
begin
  FillChar(Info, SizeOf(Info), Chr(0));
  Info.cbSize := SizeOf(Info);
  Info.fMask := SEE_MASK_NOCLOSEPROCESS;
  Info.lpVerb := PChar(Operation);
  Info.lpFile := PChar(FileName);
  Info.lpParameters := PChar(Parameter);
  Info.lpDirectory := PChar(Directory);
  Info.nShow := Show;
  bOK := Boolean(ShellExecuteEx(@Info));
  if bOK then
  begin
    if bWait then
    begin
      while WaitForSingleObject(Info.hProcess, 100) = WAIT_TIMEOUT do
        Application.ProcessMessages;
      bOK := GetExitCodeProcess(Info.hProcess, DWORD(Result));
    end
    else
      Result := 0;
  end;
  if not bOK then
    Result := -1;
end;
procedure TfrmInicio.pnEssenciaisClick(Sender: TObject);
begin
  PageControl1.ActivePage := PageControl1.Pages[1];
end;

procedure TfrmInicio.pnNavegadoresClick(Sender: TObject);
begin
  PageControl1.ActivePage := PageControl1.Pages[0];
end;

procedure TfrmInicio.pnNavegadoresMouseLeave(Sender: TObject);
begin
  pnNavegadores.Color := $00443731;
end;

procedure TfrmInicio.pnNavegadoresMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pnNavegadores.Color := $0054443D;
end;

end.
