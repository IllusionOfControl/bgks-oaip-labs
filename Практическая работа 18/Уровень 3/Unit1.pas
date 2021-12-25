unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ArrayView: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    arrayLenInput: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    ex1a: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ex1res: TEdit;
    CheckBox2: TCheckBox;
    Label8: TLabel;
    ex2k: TEdit;
    Label9: TLabel;
    ex2res: TEdit;
    Label10: TLabel;
    CheckBox3: TCheckBox;
    ex3res: TEdit;
    Label12: TLabel;
    ex3k1: TEdit;
    ex3k2: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Button1: TButton;
    ex1b: TEdit;
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
var arrayLength,i, seek, a, b, array1Length, array2Length, k0, k1, k2: integer;
    arrInt, arrInt1, arrInt2, arrInt3:array of integer;
begin
  ArrayView.Text:='';
  Randomize;
  arrayLength:=StrToInt(arrayLenInput.Text);
  SetLength(arrInt, arrayLength);
  SetLength(arrInt1, arrayLength);
  SetLength(arrInt2, arrayLength*2);
  SetLength(arrInt3, arrayLength);
  seek:=0;

  // Generate Array
  for i:=0 to arrayLength-1 do
    begin
      arrInt[i]:=random(95+95+1)-95;
      ArrayView.Text:=ArrayView.Text + ' ' + IntToStr(arrInt[i]);
    end;

  // Copy array
  for i:=0 to arrayLength-1 do
    begin
      arrInt3[i]:=arrInt[i];
    end;

  // Exercise 1
  ex1res.Text:='';
  if CheckBox1.Checked then
    begin
  a:=StrToInt(ex1a.Text);
  b:=StrToInt(ex1b.Text);
  for i:=0 to arrayLength-1 do
  begin
      if ((arrint[i]<0) and
         (arrint[i] mod 5 = 0)) or
         ((arrint[i]>a) and
         (arrint[i]<b)) then
          continue;
      arrInt1[seek]:=arrInt[i];
      inc(seek);
  end;
      for i:=0 to seek-1 do
      begin
       ex1res.Text:=ex1res.Text + ' ' + IntToStr(arrInt1[i]);
      end;
   end;

   // Exercise 2
   seek:=0;
   ex2res.Text:='';
   if CheckBox2.Checked then
   begin
    k0:=StrToInt(ex2k.Text);
    for i:=0 to arrayLength-1 do
    begin
      if (arrInt[i]*arrint[i+1]<0) and not (i=arrayLength-1) then
      begin
        arrInt2[seek]:=arrint[i];
        arrInt2[seek+1]:=k0;
        inc(seek,2);
      end else begin
        arrInt2[seek]:=arrint[i];
        inc(seek);
      end;
  end;
      for i:=0 to seek-1 do
      begin
       ex2res.Text:=ex2res.Text + ' ' + IntToStr(arrInt2[i]);
      end;
   end;

   // Exercise 3
   ex3res.Text:='';
   if CheckBox3.Checked then
   begin
    k1:=StrToInt(ex3k1.Text);
    k2:=StrToInt(ex3k2.Text);
    for i:=k1 to k1+(k2-k1) div 2 do
    begin
      seek:=arrInt3[i];
      arrInt3[i]:=arrInt3[k2-i+1];
      arrInt3[k2-i+1]:=seek;
    end;
    for i:=0 to arrayLength-1 do
    begin
      ex3res.Text:=ex3res.Text + ' ' + IntToStr(arrInt3[i]);
    end;
   end;
end;

end.
