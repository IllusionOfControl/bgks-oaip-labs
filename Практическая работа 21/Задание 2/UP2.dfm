object Form1: TForm1
  Left = 492
  Top = 274
  Width = 315
  Height = 233
  Caption = #1047#1072#1076#1072#1085#1080#1077' 2'
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
  object Button1: TButton
    Left = 0
    Top = 8
    Width = 89
    Height = 30
    Caption = #1053#1072#1078#1084#1080' '#1085#1072' '#1084#1077#1085#1103
    TabOrder = 0
    TabStop = False
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 118
    Top = 168
    Width = 80
    Height = 30
    Caption = #1042#1099#1093#1086#1076
    Default = True
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 168
    Width = 80
    Height = 30
    Caption = #1052#1077#1076#1083#1077#1085#1077#1077
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 216
    Top = 168
    Width = 80
    Height = 30
    Caption = #1041#1099#1089#1090#1088#1077#1077
    TabOrder = 3
    OnClick = Button4Click
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 96
    Top = 8
  end
end
