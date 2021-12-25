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
    procedure PoleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PoleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  maincolor: TColor;
  x, y: Integer;

implementation

{$R *.dfm}

procedure TForm1.PoleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  If Button = mbLeft Then  // если нажата левая кнопка 
  maincolor:=clred		 //переменной присвоить красный цвет
  Else 				//иначе зеленый
  maincolor:=clGreen;
end;

procedure TForm1.PoleMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  maincolor:=form1.Color ;
end;

procedure TForm1.PoleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pole.Canvas.Pixels[x,y]:=MainColor;
end;

end.
