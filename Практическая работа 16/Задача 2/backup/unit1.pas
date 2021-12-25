unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var num1, num2, num3, phantDiff1, phantDiff2: real;
begin
  num1:=StrToFloat(Edit1.Text);
  num2:=StrToFloat(Edit2.Text);
  num3:=StrToFloat(Edit3.Text);
  phantDiff1:=num2-num1;
  phantDiff2:=num3-num2;
  if phantDiff1=phantDiff2 then
     ShowMessage('Числа являются элементами арифметической прогрессии. Разность прогрессии ' + FloatToStr(phantDiff1));
  ShowMessage('Числа НЕ являются элементами арифметической прогрессии.');
end;
end.

