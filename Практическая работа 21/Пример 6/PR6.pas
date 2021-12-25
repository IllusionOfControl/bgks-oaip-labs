unit PR6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
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
  Button1.Top := 10 + 50 * ( i div 3);
  Button1.Left := 10 + 100 * ( i mod 3);
end;

 procedure TForm1.Button1Click(Sender: TObject);
begin
Button1.Caption := 'Готово';
   Button1.Enabled := False;
   Timer1.Enabled := False;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Randomize;
end;

end.
