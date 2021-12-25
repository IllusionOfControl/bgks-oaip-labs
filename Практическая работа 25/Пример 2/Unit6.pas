unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  m,r,q,a,b:integer;

implementation
Uses Unit7, Unit1;
{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
Var n,i:integer;
begin
    randomize;
    a:=random(10)-0;
    b:=random(10)-0;
    Form6.Label2.Caption:=IntToStr(a);
    Form6.Label3.Caption:=IntToStr(b);
    Form6.Edit1.Text:='';
    Form6.Label6.Caption:='';

end;

procedure TForm6.Button2Click(Sender: TObject);

begin
    if (a*b=StrToInt(Form6.Edit1.Text)) then
begin
     Form6.Label6.Caption:='Ïğàâèëüíî';
     m:=m+1;
     r:=r+1;
     q:=q+1;
end
 else
   begin
     Form6.Label6.Caption:='Íåïğàâèëüíî';
     r:=r-1;
     q:=q+1;
end;
  Form6.Label2.Caption:='';
  Form6.Label3.Caption:='';

end;

procedure TForm6.Button3Click(Sender: TObject);
var c:real;
begin
    Form7.Label2.Caption:=Form1.Edit1.Text;
    Form7.Label1.Caption:='Âû îòâåòèëè íà '+IntToStr(q)+' âîïğîñîâ, èç íèõ ïğàâèëüíî  '+IntToStr(m);
    Form7.Label4.Caption:='Âàø ğåéòèíã = '+IntToStr(r);
    c:=m/q;
    if c=0
      then Form7.Label3.Caption:='Î÷åíüïëîõî'
      else
        if (c>0)and(c<0.5)
          then Form7.Label3.Caption:='Ïëîõî'
          else
            if c=0.5
              then Form7.Label3.Caption:='Íàäî äîó÷èòü'
              else
                if (c>0.5)and(c<1)
                then Form7.Label3.Caption:='Õîğîøî'
                else
                  if c=1
                  then Form7.Label3.Caption:='Ìîëîäåö!';
    Form7.ShowModal;
end;

end.
