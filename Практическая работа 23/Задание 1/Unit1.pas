unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
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
var
    a,b,c:integer;
    btSlctd,btClose,btClear:integer;
begin
  a:=strtoint(edit1.text);
  b:=strtoint(edit2.text);
  c:=a+b;
  Edit3.Text:=IntToStr(c);
  btSlctd:=MessageDlg('Оценить результат?', mtInformation, [mbYes,mbNo],0);
  // dialog
  if btSlctd=mrYes
    then
        if c>0 then ShowMessage('Сумма больше 0')
            else If c<0 then ShowMessage('Сумма меньше 0')
                        else ShowMessage('Сумма равна 0')
    else btClose:=MessageDlg('Закончить работу?', mtWarning, [mbYes,mbNo],0);
  if btClose=mrYes then close
  else btClear:=MessageDlg('Очистить форму?', mtInformation, [mbYes,mbNo],0);
  // clear
  if btClear=mrYes then
  begin
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
  end;

end;

end.
