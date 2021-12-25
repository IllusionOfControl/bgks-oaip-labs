unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    matrixEditH: TEdit;
    Label2: TLabel;
    matrixEditW: TEdit;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MatrixView: TStringGrid;
    Button1: TButton;
    Label3: TLabel;
    numFromEdit: TEdit;
    numToEdit: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    MatrixView2: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  matrixH, matrixW, numFrom, numTo: integer;
  arr: array of integer;       //to do

implementation

uses Math;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,j,c, temp:integer;
    mnogArr: array [0..30,0..30] of integer;
    odinArr: array [0..900] of integer;
    isSymetric: Boolean;
    s:string;
begin
  matrixH:=StrToInt(matrixEditH.Text)+1;
  matrixW:=StrToInt(matrixEditW.Text)+1;
  numTo:=StrtoInt(numToEdit.Text);
  numFrom:=StrtoInt(numFromEdit.Text);

  MatrixView.RowCount:=matrixH;
  MatrixView.ColCount:=matrixW;
  Randomize;
  for i:=0 to matrixH-1 do
    for j:=0 to matrixW-1 do
      mnogArr[i, j]:=Random(abs(numFrom)+abs(numTo)+1)-numFrom;

  for i:=0 to matrixH do
    for j:=0 to matrixW do
      MatrixView.Cells[i+1,j+1]:=IntToStr(mnogArr[i,j]);

  j:=0;
  for i:=1 to matrixH do
    MatrixView.Cells[i,j]:=IntToStr(i);
  i:=0;
  for j:=1 to matrixW do
    MatrixView.Cells[i,j]:=IntToStr(j);

  if CheckBox1.Checked then
    begin
      isSymetric:=true;
      if matrixH<>matrixW then
        ShowMessage('Матрица не квадратная')
      else
      begin
        for i:=0 to matrixH-1 do
          for j:=0 to matrixW-1 do
            if not (mnogArr[i,j]=mnogArr[j,i]) then
              begin
                MatrixView.Cells[i+1,j+1]:=MatrixView.Cells[i+1,j+1]+'$';
                isSymetric:=false;
              end;
        if isSymetric=true then
          ShowMessage('Матрица симметрична')
        else
          ShowMessage('Матрица НЕ симметрична');
      end
  end;

  if CheckBox2.Checked then
    begin
      MatrixView2.RowCount:=matrixH;
      MatrixView2.ColCount:=matrixW;

      j:=0;
      for i:=1 to matrixH do
        MatrixView2.Cells[i,j]:=IntToStr(i);
      i:=0;
      for j:=1 to matrixW do
        MatrixView2.Cells[i,j]:=IntToStr(j);

      c:=0;
      for i:=0 to matrixH-2 do
        for j:=0 to matrixW-2 do
        begin
          odinarr[c]:=mnogArr[i, j];
          inc(c);
        end;

      //Sort
        for I := 0 to c - 1 do
          for j := 0 to c - 1 do
            if odinArr[j] < odinArr[j+1] then
            begin
              temp := odinArr[j+1];
              odinArr[j+1] := odinArr[j];
              odinArr[j] := temp;
        end;
        for i:=0 to matrixH-2 do
          for j:=0 to matrixW-2 do
              begin
                MatrixView2.Cells[j+1,i+1]:=inttostr(odinarr[c]);
                inc(c);
              end;
      end;
end;

end.
