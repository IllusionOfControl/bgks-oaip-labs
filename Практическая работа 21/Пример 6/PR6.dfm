object Form1: TForm1
  Left = 192
  Top = 117
  BorderStyle = bsSingle
  Caption = #1055#1088#1099#1075#1072#1102#1097#1072#1103' '#1082#1085#1086#1087#1082#1072
  ClientHeight = 200
  ClientWidth = 300
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
    Left = 24
    Top = 32
    Width = 89
    Height = 30
    Caption = #1053#1072#1078#1084#1080' '#1085#1072' '#1084#1077#1085#1103
    TabOrder = 0
    TabStop = False
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 110
    Top = 160
    Width = 80
    Height = 30
    Caption = #1042#1099#1093#1086#1076
    Default = True
    TabOrder = 1
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 160
  end
end
