unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit6;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
     Form3.ShowModal;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
     Form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
     Form6.Edit1.Text:='';
     Form6.ShowModal;
end;

end.
