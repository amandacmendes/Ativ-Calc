unit calcver2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    btnIgual: TButton;
    edtNumeroUm: TEdit;
    edtNumDois: TEdit;
    edtResultado: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RdGrpEquacoes: TRadioGroup;
    procedure btnIgualClick(Sender: TObject);
    procedure edtNumeroUmChange(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RdGrpEquacoesClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  numUm, numDois: double;
  numRes : double;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.RdGrpEquacoesClick(Sender: TObject);
begin

end;

procedure TForm2.RadioButton3Change(Sender: TObject);
begin

end;

procedure TForm2.edtNumeroUmChange(Sender: TObject);
begin

end;

procedure TForm2.btnIgualClick(Sender: TObject);
begin
 numUm := String.ToDouble(edtNumeroUm.Text);
 numDois:= String.ToDouble(edtNumDois.Text);
 numRes := 0;

if RadioButton1.Checked then numRes:= numUm + numDois;
if RadioButton2.Checked then numRes:= numUm - numDois;
if RadioButton3.Checked then numRes:= numUm * numDois;
if RadioButton4.Checked then numRes:= numUm / numDois;

edtResultado.Text:=numRes.ToString;
end;

end.

