unit Unit2297;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.IOUtils, Generics.Collections
  ;

type
  TForm2297 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    FStList: TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

  TMyObj2297 = class(TObject)
    strict private
      FInt: integer;
      FReal: real;
      FTest: string;
    public
      constructor Create;
      property Test: string read FTest write FTest;
  end;

  TMyObj2297_List0 = TObjectList<TMyObj2297>;

  TMyObj2297_1 = class(TObject)
     strict private
        FInt: integer;
        FTest: string;
     public
        constructor Create;
        property Test: string read FTest write FTest;
     end;

  TMyObj2297_List1 = TObjectList<TMyObj2297_1>;

  RInum2297 = record
      i, j : real;
  end;

var
  Form2297: TForm2297;

implementation

{$R *.dfm}

uses
  Unit1168
  ;

{ TMyObj2297 }

constructor TMyObj2297.Create;
begin
  inherited;
  FInt := 2297 * 2;
  FReal := 1.25 / 0.2297;
  FTest := Random(1000).ToString;
end;

{ TMyObj2297_1 }

constructor TMyObj2297_1.Create;
begin
  inherited;
  FInt := 2297 * 3;
  FTest := 'Value: ' + Random(222972).ToString + Random(229700).ToString;
end;

procedure TForm2297.Button1Click(Sender: TObject);

  procedure CalculateProc2;
  var
    mas : array[1..1000] of RInum2297;
    n, k, position : integer;
    temp : RInum2297;
    min : real;
  begin
    for n := 1 to 1000 do
    begin
        mas[n].i := -10.5 + (10.5 + 30.75) * random;
        mas[n].j := -10.5 + (10.5 + 30.75) * random;
    end;
    Memo1.Lines.Add('Unsorted array:');
    for n := 1 to 1000 do
      begin
        var ti := FloatToStr(mas[n].i);
        var tj := FloatToStr(mas[n].j);
        Memo1.Lines.Add(ti + 'i' + tj + 'j');
      end;
    for n := 1 to 1000 do
    begin
      min := sqrt(sqr(mas[n].i) + sqr(mas[n].j));
      position := n;
      for k := n + 1 to 1000 do
        if sqrt(sqr(mas[k].i) + sqr(mas[k].j)) < min
        then
          begin
            min := sqrt(sqr(mas[k].i) + sqr(mas[k].j));
            position := k;
          end;
      temp := mas[n];
      mas[n] := mas[position];
      mas[position] := temp;
    end;
    Memo1.Lines.Add('Sorted array:');
    for n := 1 to 1000 do
      begin
        var ti := FloatToStr(mas[n].i);
        var tj := FloatToStr(mas[n].j);
        Memo1.Lines.Add(ti + 'i' + tj + 'j');
      end;
  end;

  procedure CalculateProc1;
    Var
    Xn, Xk, dx, y, x : real;
    f, f1, i : boolean;
  begin
    Xn := 100.4;
    Xk := 101 + 10 * Random(100);
    dx := 0.25;
    x := Xn;
    y := x * x - sin(x) - 0.25;
    i := False;
    if y < 0
        then f := True
        else f := False;
    f1 := f;
    x := Xn + dx;
    while x < Xk do
    begin
        y := x * x - sin(x) - 0.25;
        if y < 0
            then f1 := True
            else f1 := False;
        if f <> f1
            then
            begin
                ShowMessage('X = ' + (x - dx / 2).ToString);
                F := F1;
                i := True;
            end;
        x := x + dx;
    end;
    if not i and f1
        then ShowMessage('No X' + f1.ToString(true));
    Memo1.Lines.Add(f1.ToString(true));
  end;
begin
  Memo1.Lines.Add('Line #: ' + Random(1000).ToString + Random(100).ToString);
  Edit1.Text := Random(1000).ToString;
  if CheckBox1.Checked then Edit1.Text := Edit1.Text + Random(1000).ToString;
  for var k := 2297 to 2297 * 2 do
  begin
    if CheckBox1.Checked
      then Memo1.Lines.Add('Line #: ' + Random(500).ToString + ' ' + Random(100).ToString);
    if Random(100) > 50 then CheckBox1.Checked := not CheckBox1.Checked;
  end;
  CalculateProc1;
  FStList := TStringList.Create;
  try
    FStList .Add('Line #: ' + Random(22970).ToString + ' ' + Random(500).ToString);
    FStList .Add('Line #: ' + Random(22975).ToString + ' ' + Random(600).ToString);
    FStList .Add('Line #: ' + Random(22977).ToString + ' ' + Random(1000).ToString);
    FStList .Sort;
  finally
    FreeAndNil(FStList);
  end;
  CalculateProc2;
end;

initialization

  var o0: TMyObj2297_List0 := TMyObj2297_List0.Create;
  try
    o0.Sort;
  finally
    o0.Free;
  end;

  var o1: TMyObj2297_List1 := TMyObj2297_List1.Create;
  try
    o1.Sort;
  finally
    o1.Free;
  end;

end.

