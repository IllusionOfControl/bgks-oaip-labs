unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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
var
F: TextFile;
Ch: char;
begin
AssignFile(F,'primer1.txt');
Reset(F);
if IOResult = 0 then
begin
while not Eof(f) do
begin
Read(F,ch);
Memo1.Text:=memo1.Text+Ch;
end;
CloseFile(F);
end
else ShowMessage('��� ������ �����');
end;

end.
