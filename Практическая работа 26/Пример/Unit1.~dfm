object MainForm: TMainForm
  Left = 211
  Top = 119
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1091#1083#1100#1090#1080#1084#1077#1076#1080#1072'-'#1087#1088#1086#1080#1075#1088#1099#1074#1072#1090#1077#1083#1100
  ClientHeight = 259
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScreenPanel: TPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 252
    Align = alTop
    TabOrder = 1
    object LifeImage: TImage
      Left = 1
      Top = 1
      Width = 400
      Height = 250
      Align = alClient
    end
  end
  object MPlayer: TMediaPlayer
    Left = 136
    Top = 8
    Width = 85
    Height = 25
    VisibleButtons = [btPlay, btPause, btStop]
    Display = ScreenPanel
    Visible = False
    TabOrder = 0
    OnNotify = MPlayerNotify
  end
  object MediaOpenDlg: TOpenDialog
    Filter = 
      #1042#1089#1077' '#1084#1091#1083#1100#1100#1090#1080#1084#1077#1076#1080#1072' '#1092#1072#1081#1083#1099'|*.wav;*.mid;*.wma;*.mp3;*.avi|'#1047#1074#1091#1082#1086#1074#1086#1081' '#1092#1072 +
      #1081#1083' (*.wav)|*.wav|MIDI '#1092#1072#1081#1083' (*.mid)|*.mid|Windows Media '#1092#1072#1081#1083' (*.w' +
      'ma)|*.wma|MP3 '#1092#1072#1081#1083' (*.mp3)|*.mp3|'#1042#1080#1076#1077#1086' '#1092#1072#1081#1083' (*.avi)|*.avi'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' '#1084#1091#1083#1100#1090#1080#1084#1077#1076#1080#1072
    Left = 8
    Top = 8
  end
  object LifeTimer: TTimer
    Interval = 100
    OnTimer = LifeTimerTimer
    Left = 40
    Top = 8
  end
  object FieldColorDlg: TColorDialog
    Color = clNavy
    Left = 72
    Top = 8
  end
  object CellColorDlg: TColorDialog
    Color = clYellow
    Left = 104
    Top = 8
  end
end
