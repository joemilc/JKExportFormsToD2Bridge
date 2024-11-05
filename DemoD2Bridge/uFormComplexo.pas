unit uFormComplexo;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  frxClass, frxExportBaseDialog, frxExportPDF;

type
  TfFormComplexo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblTitulo: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    PageControl1: TPageControl;
    TabEndereco: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox2: TComboBox;
    CheckBox4: TCheckBox;
    Edit6: TEdit;
    CheckBox5: TCheckBox;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Edit10: TEdit;
    CheckBox12: TCheckBox;
    CheckBox11: TCheckBox;
    Edit12: TEdit;
    CheckBox10: TCheckBox;
    ComboBox4: TComboBox;
    Edit11: TEdit;
    TabOutrasInformacoes: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox3: TComboBox;
    CheckBox7: TCheckBox;
    Edit9: TEdit;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    TabOutrosDados: TTabSheet;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit13: TEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit14: TEdit;
    CheckBox6: TCheckBox;
    CheckBox13: TCheckBox;
    Edit15: TEdit;
    CheckBox14: TCheckBox;
    ComboBox5: TComboBox;
    Edit16: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var fFormComplexo: TfFormComplexo;

implementation

{$R *.dfm}

{ TfSampleForm2 }
procedure TfFormComplexo.Button4Click(Sender: TObject);
begin
  frxReport1.Clear;
  frxReport1.LoadFromFile('reports\Relatorio.fr3');
  //frxreport1.Variables['nome_variavel'] := QuotedStr('teste');
  frxReport1.PrepareReport;
  frxPDFExport1.FileName := 'pdf\Relatorio.pdf';
  frxReport1.Export(frxPDFExport1);
end;

end.
