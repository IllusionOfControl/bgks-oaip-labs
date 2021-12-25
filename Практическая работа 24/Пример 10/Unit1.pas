unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure Active(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Close(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Back, bitmap, Buf : TBitMap; // ���, ��������, ����� 

  // ������� ����, ������� ������ ���� ������������� �� ������ 
  BackRet : TRect;  //������� ������, ������� ������������ ��� �������������� ����
  BufRet: Trect;
  x,y: Integer;     // ������� ��������� ��������
  W,H: Integer;     // ������� ��������


implementation

{$R *.dfm}

procedure TForm1.Active(Sender: TObject);
begin
// ������� ��� ������� � ������� ������ 
Back := TBitmap.Create; // ��� 
bitmap := TBitmap.Create; // �������� 
Buf := TBitmap.Create; // �����
// ��������� � ������� ��� 
Back.LoadFromFile('factory.bmp');
Form1.Image1.Canvas.Draw(0,0,Back);
// ��������� ��������, ������� ����� ���������
bitmap.LoadFromFile('aplane.bmp');
bitmap.Transparent := True; // ��������� "����������" ����
bitmap.TransParentColor := bitmap.canvas.pixels[1,1];
// ������� ����� ��� ���������� ����� ������� ����,
// �� ������� ������������� ��������
W:= bitmap.Width;		H:= bitmap.Height;
Buf.Width:= W;		Buf.Height:=H;
Buf.Palette:=Back.Palette; 
// ����� ���������� ������������ ������ 
Buf.Canvas.CopyMode:=cmSrcCopy;
// ��������� ������� ������, ������� ����� ��������������
// ��� �������������� ���� 
BufRet:=Bounds(0,0,W,H);
// ��������� ��������� ��������
x := -W; y := 20;
// ��������� ����������� ������� ���� // � �������� ��
BackRet:=Bounds(x,y,W,H); 
Buf.Canvas.CopyRect(BufRet,Back.Canvas,BackRet);

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
// ��������������� ���� (�� ������) ������ �������
Form1.image1.canvas.Draw(x,y,Buf);
x:=x+2;
if x>Form1.Image1.Width then x:=-W;
// ��������� ����������� ������� ����
BackRet:=Bounds(x,y,W,H);
// �������� �� �����
Buf.Canvas.CopyRect(BufRet,Back.Canvas,BackRet);
// ������� �������
Form1.image1.canvas.Draw(x,y,bitmap);

end;

procedure TForm1.Close(Sender: TObject; var Action: TCloseAction);
begin
// ��������� ������, ����������  ��� �������� ������� �������
Back.Free;
bitmap.Free;
Buf.Free;

end;

end.
 