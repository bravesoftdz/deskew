program deskewgui;

uses
  {$IFDEF UNIX}
  {$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}
  clocale,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  { you can add units after this }
  MainForm, AdvOptionsForm, DataModule, Runner, Utils, Options;

{$R *.res}

begin
  Application.Title:='Deskew GUI';
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TModule, Module);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAdvOptions, FormAdvOptions);
  Application.Run;
end.

