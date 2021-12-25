unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
Var
pol: array[1..3] of TPoint; // координаты точек треугольника
Begin
pol[1].x := 10;	pol[1].y := 50;
pol[2].x := 40;	pol[2].y := 10;
pol[3].x := 70;	pol[3].y := 50;
Form1.Canvas.Polygon(pol);
End;


end.
