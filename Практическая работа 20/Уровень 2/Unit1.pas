unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
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
var a,i:integer;
    b:string;
begin
  Memo2.Clear;
  b:=Edit1.Text;
  for i:=0 to Memo1.Lines.Count do
      if pos(b, Memo1.Lines[i])<>0 then Memo2.Lines.Add(Memo1.Lines[i]);
end;

end.
