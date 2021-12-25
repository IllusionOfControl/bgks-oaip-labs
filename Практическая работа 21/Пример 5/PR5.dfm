object Form1: TForm1
  Left = 192
  Top = 117
  Width = 462
  Height = 429
  Caption = #1060#1086#1090#1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 369
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 449
      Height = 369
      Stretch = True
    end
  end
  object OpenDialog1: TOpenDialog
    Top = 176
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 176
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N3: TMenuItem
        Caption = #1056#1080#1089#1091#1085#1082#1080
        object N5: TMenuItem
          Caption = #1048#1075#1088#1072' 1'
          OnClick = N5Click
        end
        object N6: TMenuItem
          Caption = #1048#1075#1088#1072' 2'
          OnClick = N6Click
        end
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 64
    Top = 176
    object N7: TMenuItem
      Caption = #1054#1073#1083#1072#1082#1072
      OnClick = N5Click
    end
    object N8: TMenuItem
      Caption = #1051#1077#1089
      OnClick = N6Click
    end
  end
end
