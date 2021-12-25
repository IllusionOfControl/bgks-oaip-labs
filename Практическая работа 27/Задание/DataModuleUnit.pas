unit DataModuleUnit;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    BookTable: TADOTable;
    DataSource1: TDataSource;
    BookTableDSDesigner: TWideStringField;
    BookTableDSDesigner2: TWideStringField;
    BookTableDSDesigner3: TWideStringField;
    BookTableemail: TWideStringField;
    BookTableDSDesigner5: TDateTimeField;
    BookTableDSDesigner6: TBooleanField;
    TownSource: TDataSource;
    TownTable: TADOTable;
    TownTableDSDesigner: TWideStringField;
    TownTableKey1: TAutoIncField;
    BookTableKey1: TAutoIncField;
    BookTableTown: TStringField;
    BookTableDSDesigner4: TIntegerField;
    procedure BookTableFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}



procedure TDataModule2.BookTableFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept:=false;
if copy(BookTableDSDesigner.AsString,1,Length(Form1.FindEdit.Text))=Form1.Findedit.Text then
  Accept:=true;    {строка соответствует фильтру, ее можно отображать}
end;
end;

end.
