unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons;

type
  TControlForm = class(TForm)
    RewSpBtn: TSpeedButton;
    MediaOpenSpBtn: TSpeedButton;
    PlaySpBtn: TSpeedButton;
    StopSpBtn: TSpeedButton;
    PosTimer: TTimer;
    PosTrk: TTrackBar;
    OpenDialog1: TOpenDialog;
    PauseSpBtn: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure PosTimerTimer(Sender: TObject);
    procedure PosTrkChange(Sender: TObject);
    procedure PlaySpBtnClick(Sender: TObject);
    procedure PauseSpBtnClick(Sender: TObject);
    procedure StopSpBtnClick(Sender: TObject);
    procedure MediaOpenSpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ControlForm: TControlForm;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TControlForm.FormCreate(Sender: TObject);

begin
  Top := MainForm.Top + MainForm.Height + 4;
  Left := MainForm.Left;
end;

procedure TControlForm.PosTimerTimer(Sender: TObject);
begin
  PosTrk.Position := MainForm.MPlayer.Position;
end;

procedure TControlForm.PosTrkChange(Sender: TObject);
begin
  if not PosTimer.Enabled then
  MainForm.MPlayer.Position := PosTrk.Position;
end;

procedure TControlForm.PlaySpBtnClick(Sender: TObject);
begin
  MainForm.MPlayer.Play;
  PosTimer.Enabled := true;
end;

procedure TControlForm.PauseSpBtnClick(Sender: TObject);
begin
  MainForm.MPlayer.Pause;
  PosTimer.Enabled := false
end;

procedure TControlForm.StopSpBtnClick(Sender: TObject);
begin
MainForm.MPlayer.Stop;
  PosTimer.Enabled := false
end;

procedure TControlForm.MediaOpenSpBtnClick(Sender: TObject);
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
LifeForm.Visible := LifeImage.Visible;
LifeForm.EditSpBtn.Down := false;
LifeTimer.Enabled := true;
ControlForm.PosTimer.Enabled := true;
    ControlForm.PlaySpBtn.Enabled := true;
    ControlForm.PauseSpBtn.Enabled := true;
    ControlForm.StopSpBtn.Enabled := true;
    ControlForm.Caption := MediaOpenDlg.Filename;
    LifeForm.Visible := LifeImg.Visible;
    LifeForm.EditSpBtn.Down := false;
  end;
end;

end.
