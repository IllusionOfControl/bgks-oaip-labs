unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
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
var n,k:integer;
begin
  n:=StrToInt(Edit1.Text);
  k := 0; 
  repeat
    k := k * 10 + (N mod 10); 
    N := N div 10; 
  until n = 0;
  Edit1.Text:=inttostr(k);
end;

end.
