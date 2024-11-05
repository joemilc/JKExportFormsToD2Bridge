unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Menus, uFormComplexo, uFormSimples, uFormMedio;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Module11: TMenuItem;
    AppModule21: TMenuItem;
    Modules1: TMenuItem;
    Module12: TMenuItem;
    Module21: TMenuItem;
    SubModules1: TMenuItem;
    SubModule11: TMenuItem;
    SubModule21: TMenuItem;
    SubModule31: TMenuItem;
    CoreModules1: TMenuItem;
    CoreModule11: TMenuItem;
    CoreModule21: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  protected
  end;

var Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  fFormSimples := TfFormSimples.Create(Self);
  fFormSimples.ShowModal;
  FreeAndNil(fFormSimples);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  fFormMedio := TfFormMedio.Create(Self);
  fFormMedio.ShowModal;
  FreeAndNil(fFormMedio);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  fFormComplexo := TfFormComplexo.Create(Self);
  fFormComplexo .ShowModal;
  FreeAndNil(fFormComplexo);
end;

end.
