unit EditFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TEditForm = class(TForm)
    Panel1: TPanel;
    DBImage1: TDBImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditForm: TEditForm;

implementation

uses DataModuleUnit;

{$R *.dfm}

procedure TEditForm.Button1Click(Sender: TObject);
begin
If DataModule2.BookTable.Modified Then
DataModule2.BookTable.Post;

end;

procedure TEditForm.Button2Click(Sender: TObject);
begin
DataModule2.BookTable.Cancel
end;

end.
