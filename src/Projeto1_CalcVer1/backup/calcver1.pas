unit CalcVer1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnNum7: TButton;
    btnResultado: TButton;
    btnNum0: TButton;
    btnClear: TButton;
    btnMultiplica: TButton;
    btnSubtrai: TButton;
    btnSoma: TButton;
    btnDivide: TButton;
    btnPonto: TButton;
    btnNum8: TButton;
    btnNum9: TButton;
    btnNum5: TButton;
    btnNum4: TButton;
    btnNum6: TButton;
    btnNum2: TButton;
    btnNum1: TButton;
    btnNum3: TButton;
    edtRes: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MnItemCalcVer2: TMenuItem;
    procedure btnClearClick(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
    procedure btnOperadorClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);
    procedure edtResChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnItemCalcVer2Click(Sender: TObject);
  private
    num1, num2, numRes: double;
    operador: String;
  public

  end;

var
  Form1: TForm1;

implementation
uses calcver2;

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  btnClearClick(Sender);
end;

procedure TForm1.btnClick(Sender: TObject);
begin
  if not numRes.IsNan then btnClearClick(Sender);
  edtRes.Text := edtRes.Text + TButton(Sender).Caption;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtRes.Text := '';
  num1 := 0;
  num2 := 0;
  numRes:= numRes.NaN;
  operador := '';
end;

procedure TForm1.btnPontoClick(Sender: TObject);
begin
  if edtRes.Text = '' then
  begin
    edtRes.Text := '0' + TButton(Sender).Caption;
  end else
  begin
    btnClick(Sender);
  end;
end;

procedure TForm1.btnOperadorClick(Sender: TObject);
begin
  if not (edtRes.Text = '') then
  begin
  operador := Tbutton(Sender).Caption;
  num1 := String.ToDouble(edtRes.Text);

  edtRes.Text := '';
  numRes := numRes.nan;
  end;
end;

procedure TForm1.btnResultadoClick(Sender: TObject);
begin

  if operador.IsEmpty then ShowMessage('Insira valores') else
  begin

  if not numRes.IsNan then num1 := numRes else num2 := String.ToDouble(edtRes.Text);

  if num1.IsNan or num2.IsNan then btnClearClick(Sender) else
     begin
       case operador of
       '+': numRes:= num1 + num2;
       '-': numRes:= num1 - num2;
       'x': numRes:= num1 * num2;
       '/': numRes:= num1 / num2;
       end;
       edtRes.Text := Double.ToString(numRes);
     end;

    label1.Caption:=Double.ToString(num1);
    label2.Caption:=Double.ToString(num2);
    label3.Caption:=Double.ToString(numRes);

    end;
end;


procedure TForm1.edtResChange(Sender: TObject);
begin

end;

procedure TForm1.MnItemCalcVer2Click(Sender: TObject);
begin
    Form2.Show;
end;

end.

