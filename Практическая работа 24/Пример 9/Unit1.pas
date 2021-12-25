unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    PROCEDURE TRI(x1,y1,x2,y2,x3,y3, N: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

PROCEDURE tform1.TRI(x1,y1,x2,y2,x3,y3, N: integer);
Var x12,y12,x23,y23,x31,y31: integer;
Begin If N<>0 then
      begin
       x12:=(x1+x2) div 2;    y12:=(y1+y2) div 2;
       x23:=(x2+x3) div 2;    y23:=(y2+y3) div 2;
       x31:=(x3+x1) div 2;    y31:=(y3+y1) div 2;
form1.Canvas.MoveTo(x31,y31);
form1.Canvas.LineTo(x12,y12);
form1.Canvas.LineTo(x23,y23);
form1.Canvas.LineTo(x31,y31);
   TRI(x1,y1,x12,y12,x31,y31, N-1);
   TRI(x2,y2,x12,y12,x23,y23, N-1);
   TRI(x3,y3,x31,y31,x23,y23, N-1)
end;
  end;


procedure TForm1.Button1Click(Sender: TObject);
begin
tri(150,150,225,0,300,150,5);
end;

end.
