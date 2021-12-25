unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f: TextFile;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var m:array[0..100] of string;
i, j, n: integer;
s: string;
begin
j:=0;
with Memo1 do
begin
for n:=0 to lines.Count-1 do
begin
s:= lines[n]+'';
for i:=1 to length (s) do
begin
m[j]:=m[j]+copy(s,i,1);
if (copy(s,i,1)=' ') then j:=j+1;
end;
end;
end;
AssignFile(f,'text.txt');
Rewrite(f);
for i:=0 to j do
Writeln(f,m[i]);
closefile(f);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
s: string;
begin
  Reset(f);
  Readln(f,s);
  Memo2.Lines[0]:=s;
  while not eof(f) do
  begin
    Readln(f,s);
    Memo2.Lines.Add(s);
  end;
  closefile(f);
end;

end.
