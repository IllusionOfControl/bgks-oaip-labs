unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormPaint(Sender: TObject);
begin
  form1.Canvas.Font.Size:=20;
  form1.Canvas.Font.Style :=form1.Font.Style +[fsbold];
  form1.Canvas.Font.Color :=clBlue;
  //form1.Canvas.Font.Height :=100;
  form1.Canvas.Font.Name :='Arial';
  form1.Canvas.TextOut(10,20,'Мой графический редактор');
end;

end.
