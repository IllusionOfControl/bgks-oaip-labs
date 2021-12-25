unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Label5: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function fact(n: integer): integer;
begin
if n > 1 then fact := n * fact(n-1)
else fact:= 1;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a, b, x, step, r1, r2, i2, e: real;
    i1:integer;
begin
  // clearing memo
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  a:=strtofloat(Edit1.Text);
  b:=strtofloat(Edit2.Text);
  step:=strtofloat(Edit3.Text);
  e:=strtofloat(Edit4.Text);
  x:=a;

  while x<=b do
  begin
    Memo1.Lines.Add(FloatToStr(x));
    // calculating function
    r1:=exp(2*x);
    Memo2.Lines.Add(FloatToStr(r1));
    i1:=1;
    i2:=0;
    r2:=1;
    repeat
      begin
      //Memo2.Lines.Add('==='+inttostr(i1));   //DELETING THIS
      //Memo2.Lines.Add('f'+inttostr(fact(i1)));   //DELETING THIS
        i2:=exp(i1*ln(2*x))/fact(i1);
      //Memo2.Lines.Add('i'+floattostr(i2));       //DELETING THIS
        r2:=r2+i2;
        inc(i1);
      end;
    until abs(i2) < e;
    Memo3.Lines.Add(FloatToStr(r2));
    x:=x+step;
  end;
end;

end.
