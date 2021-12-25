program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit2 in 'Unit2.pas' {ControlForm},
  Unit3 in 'Unit3.pas' {LifeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'MediaPlayer';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TControlForm, ControlForm);
  Application.CreateForm(TLifeForm, LifeForm);
  Application.Run;
end.
