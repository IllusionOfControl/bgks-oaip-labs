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
    Label4: TLabel;
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
var side1, side2, side3:Real;
begin
     side1:=StrToFloat(Edit1.Text);
     side2:=StrToFloat(Edit2.Text);
     side3:=StrToFloat(Edit3.Text);
     if (side1<=side2+side3) and (side2<=side1+side3) and (side3<=side2+side1) then
        if sqr(side1)<sqr(side2)+sqr(side3) then
             ShowMessage('Это может быть остроугольным треугольником.')
        else ShowMessage('Это может быть треугольником.')
     else ShowMessage('Треугольник не существует.');
end;

end.

