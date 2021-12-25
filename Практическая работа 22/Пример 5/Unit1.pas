unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
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
i,j,n,m: integer;
a:array [0..30,0..30] of integer;
F: TextFile;
name: string;
begin
name:='';
if openDialog1.Execute Then Name:=OpenDialog1.fileNAme;
Assignfile(f,Name);
Reset(f);
If IOResult=0 Then begin
Readln(f,n,m);
for i:=0 to n-1 do
Begin
for j:=0 to m-1 do
readln(f,a[i,j]);
end;
CloseFile(f); end
else
ShowMessage('Нет такого файла');
StringGrid1.RowCount:=n+1;
StringGrid1.ColCount:=m+1;
with StringGrid1 do
begin
i:=0;
for j:=1 to RowCount do
Cells[i,j]:=IntToStr(j);
j:=0;
for i:=1 to ColCount do
Cells[i,j]:=IntTostr(i);
end;
with StringGrid1 do
for i:=1 to n do
for j:=1 to m do
Cells[i,j]:=IntTostr(a[i-1,j-1]);
end;

end.
