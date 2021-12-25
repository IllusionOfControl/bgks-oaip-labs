unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure Create(Sender: TObject);
    procedure Down(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    Procedure krug(x,y,r:integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  k,gd,gm,mx,my:integer;
  ch 	:char;
  
implementation

{$R *.dfm}

procedure TForm1.Create(Sender: TObject);
begin
k:=15;//минимальный размер окружности
end;

procedure TForm1.Down(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      krug(X , Y , Y div 4)
end;

procedure tform1.krug(x,y,r:integer);
begin
   if r>k then
  begin
  form1.Canvas.Pen.Color :=RGB(Random(255),Random(255),Random(255));
            krug(x+r+(r div 2),y,r div 2);
            krug(x,y+r+(r div 2),r div 2);
            krug(x-r-(r div 2),y,r div 2);
            krug(x,y-r-(r div 2),r div 2);
      end;
   form1.Canvas.Ellipse (x-r,y-r,x+r,y+r);
end;



end.
 