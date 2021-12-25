object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 560
  Top = 248
  Height = 225
  Width = 374
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=DB_Telephon.mdb;Pe' +
      'rsist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 120
    Top = 104
  end
  object BookTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = BookTableFilterRecord
    TableName = #1058#1072#1073#1083#1080#1094#1072'1'
    Left = 208
    Top = 88
    object BookTableDSDesigner: TWideStringField
      DisplayWidth = 15
      FieldName = #1060#1072#1084#1080#1083#1080#1103
      Size = 255
    end
    object BookTableDSDesigner2: TWideStringField
      DisplayWidth = 15
      FieldName = #1048#1084#1103
      Size = 255
    end
    object BookTableDSDesigner3: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Size = 255
    end
    object BookTableemail: TWideStringField
      FieldName = 'e-mail'
      Size = 255
    end
    object BookTableDSDesigner4: TIntegerField
      FieldName = #1043#1086#1088#1086#1076
    end
    object BookTableTown: TStringField
      FieldKind = fkLookup
      FieldName = 'Town'
      LookupDataSet = TownTable
      LookupKeyFields = 'Key1'
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
      KeyFields = #1043#1086#1088#1086#1076
      Lookup = True
    end
    object BookTableDSDesigner5: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = #1044#1072#1090#1072
      DisplayFormat = 'dddddd'
      EditMask = '99/99/99;1;_'
    end
    object BookTableDSDesigner6: TBooleanField
      FieldName = #1052#1086#1073#1080#1083#1100#1085#1099#1081
      DisplayValues = #1044#1072':'#1053#1077#1090
    end
    object BookTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = BookTable
    Left = 208
    Top = 8
  end
  object TownSource: TDataSource
    DataSet = TownTable
    Left = 32
    Top = 32
  end
  object TownTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1058#1072#1073#1083#1080#1094#1072'2'
    Left = 104
    Top = 32
    object TownTableDSDesigner: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
      Size = 30
    end
    object TownTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
    end
  end
end
