program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DataModuleUnit in 'DataModuleUnit.pas' {DataModule2: TDataModule},
  TownBookUntil in 'TownBookUntil.pas' {TownBookForm},
  EditFormUnit in 'EditFormUnit.pas' {EditForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TTownBookForm, TownBookForm);
  Application.CreateForm(TEditForm, EditForm);
  Application.Run;
end.
