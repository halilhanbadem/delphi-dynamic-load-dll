library IkinciEklenti;

{ Create: Halil Han }

uses
  System.SysUtils,
  System.Classes,
  ShareMem,
  Windows,
  Forms,
  Controls,
  unitIkinciEklenti in 'unitIkinciEklenti.pas' {frmIkinciEklenti};

{$R *.res}

 procedure createModule;
begin
 frmIkinciEklenti := TfrmIkinciEklenti.Create(nil);
end;

procedure showModule;
begin
  frmIkinciEklenti.Show;
end;

function moduleInfo: String;
begin
 Result := 'Ikinci Eklenti';
end;

Exports
 createModule, showModule, moduleInfo;

begin
end.
