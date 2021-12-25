unit UP2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var i: Integer;
begin
  i:=Random(9);
  Button1.Visible := True;
  Button1.Top:=10+50*(i div 3);
  Button1.Left:=10+100*(i mod 3);
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Caption:='Готово';
   Button1.Enabled:=False;
   Timer1.Enabled:=False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Randomize;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  timer1.Interval:=timer1.Interval+100
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  timer1.Interval:=timer1.Interval-100
end;

end.
