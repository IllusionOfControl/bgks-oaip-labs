unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
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
var s, k:string;
    i, c:integer;

begin
  s:=Edit1.Text;
  k:=Edit2.Text;
  c:=0;
  if ((s[1]=k)) then c:=c+1;
  for i:=0 to length(s) do begin
    if ((s[i]=' ') and (s[i+1]=k)) then c:=c+1;
  end;
  ShowMessage('���������� ����: ' + inttostr(c));
end;

end.
