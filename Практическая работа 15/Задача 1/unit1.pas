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
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
var a1, a2, a3, c, m, t, b: Real;
begin
     c:=StrToFloat(Edit2.Text);
     m:=StrToFloat(Edit1.Text);
     t:=StrToFloat(Edit3.Text);
     b:=StrToFloat(Edit4.Text);

     a1:=abs(c*sin(b));
     a2:=m*t*c*b+a1;
     a3:=exp(1/3*ln(abs(a2)));
     Edit5.Text:=FloatToStr(a3);

     a1:=m*cos(b*t*sin(t)+c);
     Edit6.Text:=FloatToStr(a1);
end;

end.

