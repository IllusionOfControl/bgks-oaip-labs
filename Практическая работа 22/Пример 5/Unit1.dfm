object Form1: TForm1
  Left = 624
  Top = 245
  Width = 385
  Height = 235
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
  object Button1: TButton
    Left = 16
    Top = 152
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 320
    Height = 120
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    FileName = 
      'C:\Users\Optimist\Desktop\'#1050#1086#1074#1095' '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1055#1088'22\'#1055#1088#1080#1084#1077#1088' 5\primer.tx' +
      't'
    Filter = 'Primer|*.txt'
    FilterIndex = 0
    Left = 104
    Top = 152
  end
end
