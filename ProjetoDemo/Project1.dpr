program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uFormComplexo in 'uFormComplexo.pas' {FormComplexo},
  uFormMedio in 'uFormMedio.pas' {FormMedio},
  uFormSimples in 'uFormSimples.pas' {FormSimples},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
