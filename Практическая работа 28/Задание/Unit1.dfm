object Form1: TForm1
  Left = 551
  Top = 237
  Width = 378
  Height = 288
  Caption = #1043#1083#1072#1074#1085#1072#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 321
    Height = 177
    DataSource = DataModule2.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 8
    Top = 184
    Width = 209
    Height = 41
    Color = clSkyBlue
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 55
      Height = 24
      Caption = #1053#1072#1081#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FindEdit: TEdit
      Left = 72
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = FindEditChange
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      object N6: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = N8Click
      end
    end
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N4: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1075#1086#1088#1086#1076#1086#1074
        OnClick = N4Click
      end
    end
    object N9: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object N10: TMenuItem
        Caption = #1055#1086' '#1090#1077#1083#1077#1092#1086#1085#1091
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1055#1086' '#1060#1072#1084#1080#1083#1080#1080
        OnClick = N11Click
      end
    end
    object N5: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N5Click
    end
  end
end
