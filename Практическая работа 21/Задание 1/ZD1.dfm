object Form1: TForm1
  Left = 192
  Top = 117
  Width = 359
  Height = 273
  Caption = #1047#1072#1076#1072#1085#1080#1077'1'
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
    Left = 288
    Top = 8
    Width = 25
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '2'
  end
  object Label2: TLabel
    Left = 280
    Top = 72
    Width = 25
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '2'
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 0
    Width = 257
    Height = 45
    Max = 199
    Min = 2
    PageSize = 7
    Frequency = 7
    Position = 2
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 8
    Top = 56
    Width = 257
    Height = 45
    Max = 199
    Min = 2
    PageSize = 7
    Frequency = 7
    Position = 2
    TabOrder = 1
    OnChange = TrackBar2Change
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 112
    Width = 73
    Height = 17
    Alignment = taLeftJustify
    Caption = #1050#1074#1072#1076#1088#1072#1090
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object GroupBox2: TGroupBox
    Left = 232
    Top = 152
    Width = 105
    Height = 73
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    TabOrder = 3
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 33
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '4'
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 144
    Width = 129
    Height = 81
    Caption = #1054#1087#1077#1088#1072#1094#1080#1103
    ItemIndex = 0
    Items.Strings = (
      #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1080#1077
      #1057#1083#1086#1078#1077#1085#1080#1077)
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
end
