object Form1: TForm1
  Left = 257
  Top = 125
  Width = 256
  Height = 242
  Caption = #1040#1083#1100#1073#1086#1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -6
    Top = 0
    Width = 231
    Height = 185
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 237
      Height = 181
      Picture.Data = {}
      Stretch = True
      OnClick = Image1Click
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'F:\00)  Documents\'#1054#1040#1080#1055'\'#1057#1082#1086#1088#1086#1093#1086#1076' '#1057' '#1055#1088'21\'#1055#1088#1080#1084#1077#1088' 4\picture.bmp'
    Filter = '(*.bmp)|*.bmp'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = #1042#1099#1073#1086#1088' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
    Left = 32
    Top = 248
  end
end
