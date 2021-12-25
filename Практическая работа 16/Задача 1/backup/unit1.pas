unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
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
var a,b:real;
begin
     a:=STRtoFloat(Edit1.text);
     b:=STRtoFloat(Edit2.text);
     case RadioGroup1.ItemIndex of
     0: If CheckBox1.Checked
           then Edit3.Text:=FloatToSTRF(a+b,ffFixed,10,4)
           else Edit3.Text:=FloatToSTR(a+b);
     1: If CheckBox1.Checked
           then Edit3.Text:=FloatToSTRF(a-b,ffFixed,10,4)
           else Edit3.Text:=FloatToSTR(a-b);
     2: If CheckBox1.Checked
           then Edit3.Text:=FloatToSTRF(a*b,ffFixed,10,4)
           else Edit3.Text:=FloatToSTR(a*b);
     3: if b<>0
           then if CheckBox1.Checked
                 then Edit3.Text:=FloatToSTRF(a/b,ffFixed,10,4)
                 else Edit3.Text:=FloatToSTR(a/b)
           else Edit3.Text:='ERROR'
     end;
          ShowMessage(IntToStr(RadioGroup1.ItemIndex))
end;

end.

