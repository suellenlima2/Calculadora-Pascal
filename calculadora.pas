unit calculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnAdd: TButton;
    BtnDiv: TButton;
    BtnMul: TButton;
    BtnResult: TButton;
    Btn00: TButton;
    Btn09: TButton;
    BtnClear: TButton;
    Btn01: TButton;
    Btn02: TButton;
    Btn03: TButton;
    Btn04: TButton;
    Btn05: TButton;
    Btn06: TButton;
    Btn07: TButton;
    Btn08: TButton;
    BtnSub: TButton;
    Input: TEdit;
    procedure Btn00Click(Sender: TObject);
    procedure Btn01Click(Sender: TObject);
    procedure Btn02Click(Sender: TObject);
    procedure Btn03Click(Sender: TObject);
    procedure Btn04Click(Sender: TObject);
    procedure Btn05Click(Sender: TObject);
    procedure Btn06Click(Sender: TObject);
    procedure Btn07Click(Sender: TObject);
    procedure Btn08Click(Sender: TObject);
    procedure Btn09Click(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnDivClick(Sender: TObject);
    procedure BtnMulClick(Sender: TObject);
    procedure BtnResultClick(Sender: TObject);
    procedure BtnSubClick(Sender: TObject);
    procedure InputChange(Sender: TObject);
  private
    Operand1, Operand2: Double;
    Operation: Char;

  public
     procedure AddToDisplay(Value: String);
     procedure PerformOperation;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.inputChange(Sender: TObject);
begin

end;

procedure TForm1.AddToDisplay(Value: String);
begin
  Input.Text := Input.Text + Value;
end;

procedure TForm1.PerformOperation;
begin
  Operand2 := StrToFloat(Input.Text);
  case Operation of
    '+': Input.Text := FloatToStr(Operand1 + Operand2);
    '-': Input.Text := FloatToStr(Operand1 - Operand2);
    'x': Input.Text := FloatToStr(Operand1 * Operand2);
    '/': if Operand2 <> 0 then
            Input.Text := FloatToStr(Operand1 / Operand2)
         else
            ShowMessage('Erro: Divisão por zero.');
  end;
end;

procedure TForm1.Btn01Click(Sender: TObject);
begin
   AddToDisplay('1');
end;

procedure TForm1.Btn00Click(Sender: TObject);
begin
  AddToDisplay('0');
end;

procedure TForm1.Btn02Click(Sender: TObject);
begin
   AddToDisplay('2');
end;

procedure TForm1.Btn03Click(Sender: TObject);
begin
  AddToDisplay('3');
end;

procedure TForm1.Btn04Click(Sender: TObject);
begin
  AddToDisplay('4');
end;

procedure TForm1.Btn05Click(Sender: TObject);
begin
  AddToDisplay('5');
end;

procedure TForm1.Btn06Click(Sender: TObject);
begin
  AddToDisplay('6');
end;

procedure TForm1.Btn07Click(Sender: TObject);
begin
  AddToDisplay('7');
end;

procedure TForm1.Btn08Click(Sender: TObject);
begin
  AddToDisplay('8');
end;

procedure TForm1.Btn09Click(Sender: TObject);
begin
  AddToDisplay('9');
end;

procedure TForm1.BtnAddClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Input.Text);
  Input.Clear;
  Operation := '+';
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  Input.text := ' ';
  Input.SetFocus;
end;

procedure TForm1.BtnDivClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Input.Text);
  Input.Clear;
  Operation := '/';
end;

procedure TForm1.BtnMulClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Input.Text);
  Input.Clear;
  Operation := 'x';
end;

procedure TForm1.BtnResultClick(Sender: TObject);
begin
   PerformOperation;
end;

procedure TForm1.BtnSubClick(Sender: TObject);
begin
  Operand1 := StrToFloat(Input.Text);
  Input.Clear;
  Operation := '-';
end;


end.

