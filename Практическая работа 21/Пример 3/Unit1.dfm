object Form1: TForm1
  Left = 225
  Top = 190
  Width = 377
  Height = 274
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 320
    Top = 40
    Width = 33
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '2'
  end
  object Label2: TLabel
    Left = 320
    Top = 96
    Width = 33
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '2'
  end
  object TrackBar1: TTrackBar
    Left = 32
    Top = 32
    Width = 281
    Height = 49
    Max = 99
    Min = 2
    PageSize = 7
    Frequency = 7
    Position = 2
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 32
    Top = 88
    Width = 281
    Height = 49
    Max = 99
    Min = 2
    PageSize = 7
    Frequency = 7
    Position = 2
    TabOrder = 1
    OnChange = TrackBar2Change
  end
  object GroupBox1: TGroupBox
    Left = 216
    Top = 160
    Width = 105
    Height = 65
    Caption = #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1080#1077
    TabOrder = 2
    object Label3: TLabel
      Left = 40
      Top = 32
      Width = 33
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
    end
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 176
    Width = 81
    Height = 17
    Caption = #1050#1074#1072#1076#1088#1072#1090
    TabOrder = 3
    OnClick = CheckBox1Click
  end
end
