unit unitIkinciEklenti;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmIkinciEklenti = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIkinciEklenti: TfrmIkinciEklenti;

implementation

{$R *.dfm}

procedure TfrmIkinciEklenti.Button1Click(Sender: TObject);
begin
 ShowMessage('IKINCI EKLENTÝ TESTTTT!');
end;

end.
