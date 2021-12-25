unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
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
var x,y:real;
begin
  Edit2.Text:='';
  try
    try
      x:=StrToFloat(Edit1.Text);
      y:=(1+sqrt(x))/x;
      Edit2.Text:=FloatToStr(y);
    except
      on EZeroDivide do ShowMessage('Деление на 0, введите новое значение х');
      on EMathError do ShowMessage('Программа работает не верно');
    end;
  finally
    label4.Caption:='Учимся обрабатывать исключительные ситуации';
  end;
end;

end.
