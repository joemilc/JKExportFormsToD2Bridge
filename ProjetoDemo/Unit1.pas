unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uFormComplexo,
  uFormMedio,
  uFormSimples;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FormSimples := TFormSimples.Create(Self);
  FormSimples.ShowModal;
  FreeAndNil(FormSimples);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FormMedio := TFormMedio.Create(Self);
  FormMedio.ShowModal;
  FreeAndNil(FormMedio);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FormComplexo := TFormComplexo.Create(Self);
  FormComplexo.ShowModal;
  FreeAndNil(FormComplexo);
end;

end.
