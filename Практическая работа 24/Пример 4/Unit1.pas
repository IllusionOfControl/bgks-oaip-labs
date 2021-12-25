unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Pole: TPaintBox;
    procedure PoleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.PoleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pole.Canvas.Pen.Width :=5; //толщина рисования
  pole.Color :=clBlack; //цвет заливки
  pole.Canvas.Pen.Color :=clred; // цвет линии
  pole.Canvas.Ellipse(x,y,x+100,y+200); // эллипс
  //pole.Canvas.Arc(x,y,x+50,y+10,x-10,y-10,x+20,y+20);
  pole.Canvas.LineTo(x,y)  ;
  pole.Canvas.Chord(x,y,x+50,y+10,x-10,y-10,x+20,y+20); //замкнута и залита цветом
  pole.Canvas.Pie(x,y,x+50,y+10,x-10,y-10,x+20,y+20);
  pole.Canvas.Rectangle(x,y,x+30,y+40);
  pole.Canvas.RoundRect(x,y,x+30,y+50,x+70,y+200);

end;

end.
