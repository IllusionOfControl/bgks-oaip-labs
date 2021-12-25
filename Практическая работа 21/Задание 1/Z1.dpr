program Z1;

uses
  Forms,
  ZD1 in 'ZD1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
