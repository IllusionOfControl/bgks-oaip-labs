unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
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
var a: string;
    i,k:integer;
begin
  a:=Edit1.Text;
  k:=0;
  for i:=1 to length(a) do
    if a[i]=':'then
    begin
      a[i]:=';';
      k:=k+1;
    end;
    Edit1.Text:=a;
    Showmessage('Количество замен: '+IntToStr(k));
end;

end.
