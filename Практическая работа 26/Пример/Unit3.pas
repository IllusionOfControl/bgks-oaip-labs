unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;
type
  TLifeForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    EditSpBtn: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    SpeedTrkBar: TTrackBar;
    LifeOpenDlg: TOpenDialog;
    LifeSaveDlg: TSaveDialog;
//    procedure MediaOpenSpBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedTrkBarChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LifeForm: TLifeForm;

implementation

uses Unit1, Unit2;

{$R *.dfm}
{procedure TControlForm.MediaOpenSpBtnClick(Sender: TObject);
begin
  with MainForm do
  if MediaOpenDlg.Execute then
  begin
    MPlayer.FileName := MediaOpenDlg.FileName;
    MPlayer.Open;
    MPlayer.Display := ScreenPanel;
    MPlayer.DisplayRect := Rect(0, 0, ScreenPanel.Width, ScreenPanel.Height);
    MPlayer.Play;
    LifeImage.Visible := not (ExtractFileExt(MPlayer.FileName) = '.avi');
LifeForm.Visible := LifeImg.Visible;
    LifeForm.EditSpBtn.Down := false;    
LifeTimer.Enabled := true;
   ControlForm.PosTimer.Enabled := true;
    ControlForm.PosTrkBar.Max := MPlayer.Length;
    ControlForm.PosTrkBar.Enabled := true;
    ControlForm.PlaySpBtn.Enabled := true;
    ControlForm.PauseSpBtn.Enabled := true;
    ControlForm.StopSpBtn.Enabled := true;
    ControlForm.Caption := MediaOpenDlg.Filename;
  end;
end;    }

procedure TLifeForm.FormCreate(Sender: TObject);
begin
Top := ControlForm.Top + ControlForm.Height + 4;
  Left := ControlForm.Left;
end;

procedure TLifeForm.Button4Click(Sender: TObject);
var
  i, j: integer;
begin
  for i := 0 to XSize - 1 do
  for j := 0 to YSize - 1 do
  A[i, j] := false;
  Drawcells;
end;


procedure TLifeForm.Button3Click(Sender: TObject);
begin
  RandomCells;
  DrawCells;
end;


procedure TLifeForm.SpeedTrkBarChange(Sender: TObject);
begin
MainForm.LifeTimer.Interval := SpeedTrkBar.Position;
end;

procedure TLifeForm.Button1Click(Sender: TObject);
begin
MainForm.LifeTimer.Enabled := not EditSpBtn.Down;
end;

end.
