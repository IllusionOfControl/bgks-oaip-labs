unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  f:TextFile;
begin
  AssignFile(f, 'textfile.txt');
  Rewrite(f);

  Writeln(f, Memo1.Lines[0]);
  CloseFile(f);
end;

procedure TForm1.Button2Click(Sender: TObject);
var s:string;
  f:TextFile;
  i, c:integer;
begin
  s:=Memo1.Lines[0];
  for i:= 1 to length(s) do
    if s[i]=' ' then  c:=i;
  s:=Copy(s, c+1, length(s)-c+1);
  c:=0;
  for i:=1 to length(s) do
    if s[i]='k' then inc(c);
  ShowMessage('кол-во k: ' + IntToStr(c));

  AssignFile(f, 'textfile.txt');
  Append(f);

  Writeln(f, 'кол-во k: ' + IntToStr(c));
  CloseFile(f);
end;

end.
