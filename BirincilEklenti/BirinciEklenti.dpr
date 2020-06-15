library BirinciEklenti;

{ Create: Halil Han}

uses
  System.SysUtils,
  System.Classes,
  ShareMem,
  Windows,
  Forms,
  Controls,
  BirincEklentiForm in 'BirincEklentiForm.pas' {frmBirinciEklentiFormu};

{$R *.res}

procedure createModule;
begin
 frmBirinciEklentiFormu := TfrmBirinciEklentiFormu.Create(nil);
end;

procedure showModule;
begin
  frmBirinciEklentiFormu.Show;
end;

function moduleInfo: String;
begin
 Result := 'Birinci Eklenti';
end;

Exports
 createModule, showModule, moduleInfo;

begin
end.
