unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Titanik(x,y: integer; color: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
 x,y:integer;
implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
x:=0; y:=100;// базовая точка
Form1.Color:=clNavy;
Timer1.Interval := 50;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Titanik(x,y,form1.color); // стереть рисунок 
if x < Form1.ClientWidth then 
x := x+5 else begin // новый рейс
x := 0; y := Random(50) + 100;
end;
Titanik(x,y,clWhite); // нарисовать в новой точке
end;

 procedure TForm1.Titanik(x,y: integer; color: TColor);
// x,y координаты базовой точки, color цвет корабля
const dx = 5; dy = 5;//масштаб кораблика
Var		buf: TColor;
Begin
With Form1.Canvas Do Begin
buf:=pen.Color; // сохраним текущий цвет 
pen.Color:=color; // установим нужный цвет 
// рисуем корпус
MoveTo(x,y);	
LineTo(x,y-2*dy) ; 			LineTo (x+10*dx, y-2*dy) ; 
LineTo (x+11*dx, y-3*dy) ;	LineTo (x+17*dx,y-3*dy) ;
LineTo (x+14*dx, y) ; 		LineTo (x,y) ;
// надстройка 
MoveTo(x+3*dx,y-2*dy) ;
LineTo (x+4*dx, y-3*dy) ;	LineTo (x+4*dx, y-4*dy) ;
LineTo (x+13*dx,y-4*dy) ;	LineTo (x+13*dx, y-3*dy) ;
MoveTo(x+5*dx,y-3*dy) ; 		LineTo (x+9*dx, y-3*dy) ;
Rectangle (x+8*dx, y-4*dy, x+11*dx, y-5*dy)  ; // мостик
Rectangle (x+7*dx, y-4*dy, x+8*dx, y-7*dy) ; // труба
// иллюминаторы
Ellipse (x+11*dx,y-2*dy,x+12*dx,y-1*dy) ;
Ellipse (x+13*dx, y-2*dy, x+14*dx, y-1*dy) ;
MoveTo(x+10*dx,y-5*dy) ; 	LineTo(x+10*dx,y-10*dy); // мачта
MoveTo(x+17*dx,y-3*dy); 		// оснастка
LineTo(x+10*dx,y-10*dy);		LineTo(x,y-2*dy);
pen.Color:=buf; // восстановим старый цвет карандаша
End;   End;

end.
