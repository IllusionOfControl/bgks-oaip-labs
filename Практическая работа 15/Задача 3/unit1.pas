unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var v1,v2,v3,vr,t1,t2,t3,tr:real;
begin

  v1:=StrToFloat(Edit1.Text);
  v2:=StrToFloat(Edit3.Text);
  v3:=StrToFloat(Edit5.Text);
  t1:=StrToFloat(Edit2.Text);
  t2:=StrToFloat(Edit4.Text);
  t3:=StrToFloat(Edit6.Text);
  vr:=v1+v2+v3;
  tr:=(v1*t1+v2*t2+t3*v3)/(v1+v2+v3);
  Edit7.Text:=FloatToStr(vr);
  Edit8.Text:=FloatToStr(tr);
end;

end.

