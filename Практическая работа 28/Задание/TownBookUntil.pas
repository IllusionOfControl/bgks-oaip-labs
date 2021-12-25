unit TownBookUntil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids;

type
  TTownBookForm = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TownBookForm: TTownBookForm;

implementation

uses DataModuleUnit, Unit1, EditFormUnit;

{$R *.dfm}

procedure TTownBookForm.N4Click(Sender: TObject);
begin
DataModule2.TownTable.Insert;
dbGrid1.SetFocus;

end;

procedure TTownBookForm.N3Click(Sender: TObject);
begin
 If DataModule2.TownTable.Modified Then
DataModule2.TownTable.Post;

end;

procedure TTownBookForm.N5Click(Sender: TObject);
begin
DataModule2.TownTable.Delete
end;

procedure TTownBookForm.N2Click(Sender: TObject);
begin
TownBookForm.Close;
form1.show
end;

end.
