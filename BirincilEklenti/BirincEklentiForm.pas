unit BirincEklentiForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmBirinciEklentiFormu = class(TForm)
    btnMesajGoster: TButton;
    edtBirinciSayi: TEdit;
    Label1: TLabel;
    edtIkinciSayi: TEdit;
    Label2: TLabel;
    btnTopla: TButton;
    procedure btnMesajGosterClick(Sender: TObject);
    procedure btnToplaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBirinciEklentiFormu: TfrmBirinciEklentiFormu;

implementation

{$R *.dfm}

procedure TfrmBirinciEklentiFormu.btnMesajGosterClick(Sender: TObject);
begin
 ShowMessage('Hello world!');
end;

procedure TfrmBirinciEklentiFormu.btnToplaClick(Sender: TObject);
begin
 ShowMessage('Ýþlem sonucunuz: ' + IntToStr(StrToInt(edtBirinciSayi.Text) + StrToInt(edtIkinciSayi.Text)));
end;

end.
