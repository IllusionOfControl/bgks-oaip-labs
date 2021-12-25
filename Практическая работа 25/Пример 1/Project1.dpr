program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

Begin
  Application.Initialize;
  form2:=tform2.create(application);  form2.Show ;
  form2.Update ;  form2.Label1.Update ;
  Application.CreateForm(TForm1, Form1);
  form2.Hide ;		  form2.Free;
   Application.Run;
end.

