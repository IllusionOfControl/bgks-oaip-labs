unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, Menus;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DataModuleUnit, TownBookUntil, EditFormUnit;

{$R *.dfm}



procedure TForm1.N4Click(Sender: TObject);
begin
TownBookForm.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
DataModule2.BookTable.Insert;
EditForm.ShowModal;

end;

procedure TForm1.N7Click(Sender: TObject);
begin
EditForm.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
If Application.MessageBox(PChar('�� ������������� ������ ������� '+DataModule2.BookTableDSDesigner.AsString), '��������!!!', MB_OkCancel)=id_Ok then DataModule2.BookTable.Delete;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
form1.close
end;

end.
