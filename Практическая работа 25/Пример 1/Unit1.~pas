unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
Var
t:longint;	i,n:integer;	step,x,sx,cx: double;
Begin
  t:=gettickcount div 1000;
  while (gettickcount div 1000)<t+5 do
    step:=0.01;		n:=round(90/step)+1;
  With stringgrid1 do
  Begin
    cells[0,0]:='x';		 cells[1,0]:='sin(x)';			 cells[2,0]:='cos(x)';	 cells[3,0]:='tg(x)';
    cells[4,0]:='ctg(x)';		 colwidths[0]:=colwidths[0] div 2;	 rowcount:=n+1;
    For i:=1 to n do
    Begin
      x:=(i-1)*step;			 sx:=sin(x*pi/180);	 		cx:=cos(x*pi/180);
      cells[0,i]:=floattostr(x);	 cells[1,i]:=floattostr(sx);		 cells[2,i]:=floattostr(cx);
      if cx <> 0 then  cells[3,i]:=floattostr(sx/cx)   else   cells[3,i]:= 'не существует';
      if sx<>0 	then   cells[4,i]:=floattostr(cx/sx)     else cells[4,i]:= 'не существует';
    end;
  end;
end ;

end.
