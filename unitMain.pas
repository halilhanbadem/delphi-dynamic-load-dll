unit unitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    modulesList: TStringList;
    Path: string;
  public
    { Public declarations }
    procedure loadModules(modulesFolder: String);
    procedure setModules(modulesFolder: String);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  loadModules(Path);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  modulesList := TStringList.Create;
  Path := ExtractFilePath(Application.ExeName) + '\Modules\';
end;

procedure TfrmMain.loadModules(modulesFolder: String);
type
  TModuleInfo = function: string;
  TBtnProc = procedure(Sender: TObject) of object;
  TCreateModule = procedure;
var
  getModuleInfo: TModuleInfo;
  btnProc: TBtnProc;
  createModule: TCreateModule;
  Ptr: TFarProc;
  LoadDll: Cardinal;
  I: Integer;
  moduleBtn: TButton;
  Test: String;
begin
  setModules(modulesFolder);
  for I := 0 to modulesList.Count - 1 do
  begin
    LoadDll := LoadLibrary(pChar(modulesList[I]));
    Test := modulesList[I];
    if LoadDll <> 0 then
    begin
      Ptr := GetProcAddress(LoadDll, 'moduleInfo');
      @getModuleInfo := Ptr;
      Ptr := GetProcAddress(LoadDll, 'createModule');
      @createModule := Ptr;
      createModule;

      moduleBtn := TButton.Create(frmMain);
      moduleBtn.Parent := frmMain;
      moduleBtn.Name := 'modulbtn' + I.ToString;
      moduleBtn.Width := 100;
      moduleBtn.Height := 50;
      moduleBtn.Caption := getModuleInfo;
      moduleBtn.Top := 10;
      moduleBtn.Left := (I + 1) * 150;

      Ptr := GetProcAddress(LoadDll, 'showModule');
      @btnProc := Ptr;
      moduleBtn.OnClick := btnProc;

    end;
  end;
end;

procedure TfrmMain.setModules(modulesFolder: String);
var
  SR: TSearchRec;
begin
  modulesList.Clear;
  if FindFirst(modulesFolder + '*.dll', faArchive, SR) = 0 then
  begin
    repeat
      modulesList.Add(Path + SR.Name);
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
  modulesList.Text := Trim(modulesList.Text);
end;

end.
