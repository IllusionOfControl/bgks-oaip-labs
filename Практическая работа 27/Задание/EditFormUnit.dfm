object EditForm: TEditForm
  Left = 488
  Top = 213
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 261
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 457
    Height = 209
    Color = clCream
    TabOrder = 0
    object Label1: TLabel
      Left = 216
      Top = 16
      Width = 59
      Height = 16
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 232
      Top = 40
      Width = 26
      Height = 16
      Caption = #1048#1084#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 216
      Top = 64
      Width = 60
      Height = 16
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 224
      Top = 88
      Width = 37
      Height = 16
      Caption = 'e-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 224
      Top = 112
      Width = 39
      Height = 16
      Caption = #1043#1086#1088#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 192
      Top = 136
      Width = 99
      Height = 16
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBImage1: TDBImage
      Left = 16
      Top = 8
      Width = 169
      Height = 185
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 296
      Top = 40
      Width = 121
      Height = 21
      DataField = #1048#1084#1103
      DataSource = DataModule2.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 296
      Top = 64
      Width = 121
      Height = 21
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = DataModule2.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 296
      Top = 88
      Width = 129
      Height = 21
      DataField = 'e-mail'
      DataSource = DataModule2.DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 296
      Top = 136
      Width = 119
      Height = 21
      DataField = #1044#1072#1090#1072
      DataSource = DataModule2.DataSource1
      MaxLength = 8
      TabOrder = 5
    end
    object DBCheckBox1: TDBCheckBox
      Left = 216
      Top = 168
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = #1052#1086#1073#1080#1083#1100#1085#1080#1082
      DataField = #1052#1086#1073#1080#1083#1100#1085#1099#1081
      DataSource = DataModule2.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit1: TDBEdit
      Left = 296
      Top = 16
      Width = 121
      Height = 21
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = DataModule2.DataSource1
      TabOrder = 6
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 296
      Top = 112
      Width = 137
      Height = 21
      DataField = #1043#1086#1088#1086#1076
      DataSource = DataModule2.DataSource1
      KeyField = 'Key1'
      ListField = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
      ListSource = DataModule2.TownSource
      TabOrder = 7
    end
  end
  object Button1: TButton
    Left = 136
    Top = 224
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 224
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
end
