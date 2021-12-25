unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    MPlayer: TMediaPlayer;
    MediaOpenDlg: TOpenDialog;
    ScreenPanel: TPanel;
    LifeTimer: TTimer;
    LifeImage: TImage;
    FieldColorDlg: TColorDialog;
    CellColorDlg: TColorDialog;
//    procedure MediaOpenBtnClick(Sender: TObject);
    procedure LifeTimerTimer(Sender: TObject);
 //   procedure SetColorBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MPlayerNotify(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
XSize = 40;
YSize = 25;
type
  TLifeCells = array [0 .. XSize - 1, 0 .. YSize - 1] of boolean;
var
  MainForm: TMainForm;
  A:TLifeCells;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure RandomCells;
var
i, j: integer;
begin
  for i := 0 to XSize - 1 do
for j := 0 to YSize - 1 do
A[i, j] := random < 0.5;
end;

function NumOfCells(x, y: integer): integer;
var
i, j, xx, yy: integer;
begin
  Result := 0;
  for i := -1 to 1 do
  for j := -1 to 1 do
  begin
    xx := x + i; yy := y + j;
    if xx = -1 then xx := XSize - 1;
    if yy = -1 then yy := YSize - 1;
    if xx = XSize then xx := 0;
    if yy = YSize then yy := 0;
    if A[xx, yy] then inc(Result);
  end;
  if A[x, y] then dec(Result);
end;

procedure DrawCells;
var
i, j: integer;
begin
  with MainForm.LifeImage.Canvas do
  begin
   Brush.Color := MainForm.FieldColorDlg.Color;
    Pen.Color := Brush.Color;
    Rectangle(0, 0, XSize * 10, YSize * 10);
    Brush.Color := MainForm.CellColorDlg.Color;
    for i := 0 to XSize - 1 do
    for j := 0 to YSize - 1 do
    if A[i, j] then Rectangle(i * 10, j * 10, i * 10 + 10, j * 10 + 10);
  end;
end;

{procedure TMainForm.MediaOpenBtnClick(Sender: TObject);
begin
  if MediaOpenDlg.Execute then
  begin
    MPlayer.FileName := MediaOpenDlg.FileName;
    MPlayer.Open;
    MPlayer.DisplayRect := Rect(0, 0, ScreenPanel.Width, ScreenPanel.Height);
    MPlayer.Play;
    if ExtractFileExt(MPlayer.FileName) = '.avi' then LifeImage.Visible := false
    else begin
    LifeImage.Visible := true;
    RandomCells;
    LifeTimer.Enabled := true;
    end;
  end;
end; }

procedure TMainForm.LifeTimerTimer(Sender: TObject);
var
i, j: integer;
B: TLifeCells;
begin
  for i := 0 to XSize - 1 do
  for j := 0 to YSIze - 1 do
  case NumOfCells(i, j) of
  2: B[i, j] := A[i, j];
  3: B[i, j] := true;
  else B[i, j] := false;
  end;
  A := B;
  DrawCells;
end;


{procedure TMainForm.SetColorBtnClick(Sender: TObject);
begin
if MessageDlg('Изменить цвета?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
  then
    exit;
 if MainForm.FieldColorDlg.Execute
 then ScreenPanel.Color := MainForm.FieldColorDlg.Color;
 MessageDlg('Теперь измените цвет клеток', mtInformation, [mbOk], 0);
 CellColorDlg.Execute;
 DrawCells;

end;  }

procedure TMainForm.FormCreate(Sender: TObject);
begin
Randomize;
RandomCells;
end;

procedure TMainForm.MPlayerNotify(Sender: TObject);
begin
if ControlForm.RewSpBtn.Down then
  with MPlayer do
  if NotifyValue = nvSuccessful then
  begin
    Notify := true;
    Play;
  end;
end;



end.
