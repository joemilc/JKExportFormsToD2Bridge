unit uFormSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFormSimples = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    DSCountry: TDataSource;
    ClientDataSet_Country: TClientDataSet;
    ClientDataSet_CountryAutoCod: TAutoIncField;
    ClientDataSet_CountryCountry: TStringField;
    ClientDataSet_CountryDDI: TStringField;
    ClientDataSet_CountryPopulation: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure PopuleDataSet;
  public
    { Public declarations }
  end;

var
  FormSimples: TFormSimples;

implementation

{$R *.dfm}

{ TFormSimples }

procedure TFormSimples.FormCreate(Sender: TObject);
begin
  if ClientDataSet_Country.Active then
    ClientDataSet_Country.Close;
  ClientDataSet_Country.CreateDataSet;
  PopuleDataSet;
  ClientDataSet_Country.IndexFieldNames := 'Country';
  ClientDataSet_Country.First
end;

procedure TFormSimples.PopuleDataSet;
begin
  ClientDataSet_Country.AppendRecord([1, 'China', '+86', 1444216107]);
  ClientDataSet_Country.AppendRecord([2, 'India', '+91', 1393409038]);
  ClientDataSet_Country.AppendRecord([3, 'United States', '+1', 332915073]);
  ClientDataSet_Country.AppendRecord([4, 'Indonesia', '+62', 276361783]);
  ClientDataSet_Country.AppendRecord([5, 'Pakistan', '+92', 225199937]);
  ClientDataSet_Country.AppendRecord([6, 'Brazil', '+55', 213993437]);
  ClientDataSet_Country.AppendRecord([7, 'Nigeria', '+234', 211400708]);
  ClientDataSet_Country.AppendRecord([8, 'Bangladesh', '+880', 166303498]);
  ClientDataSet_Country.AppendRecord([9, 'Russia', '+7', 145912025]);
  ClientDataSet_Country.AppendRecord([10, 'Mexico', '+52', 130262216]);
  ClientDataSet_Country.AppendRecord([11, 'Japan', '+81', 125943834]);
  ClientDataSet_Country.AppendRecord([12, 'Ethiopia', '+251', 120858976]);
  ClientDataSet_Country.AppendRecord([13, 'Philippines', '+63', 113850055]);
  ClientDataSet_Country.AppendRecord([14, 'Egypt', '+20', 104258327]);
  ClientDataSet_Country.AppendRecord([15, 'Vietnam', '+84', 97429061]);
  ClientDataSet_Country.AppendRecord([16, 'DR Congo', '+243', 90003954]);
  ClientDataSet_Country.AppendRecord([17, 'Turkey', '+90', 84339067]);
  ClientDataSet_Country.AppendRecord([18, 'Iran', '+98', 85004578]);
  ClientDataSet_Country.AppendRecord([19, 'Germany', '+49', 83149300]);
  ClientDataSet_Country.AppendRecord([20, 'Thailand', '+66', 69950807]);
  ClientDataSet_Country.AppendRecord([21, 'United Kingdom', '+44', 67886011]);
  ClientDataSet_Country.AppendRecord([22, 'France', '+33', 65273511]);
  ClientDataSet_Country.AppendRecord([23, 'Italy', '+39', 60244639]);
  ClientDataSet_Country.AppendRecord([24, 'South Africa', '+27', 60041932]);
  ClientDataSet_Country.AppendRecord([25, 'Tanzania', '+255', 59895231]);
  ClientDataSet_Country.AppendRecord([26, 'Myanmar', '+95', 54409800]);
  ClientDataSet_Country.AppendRecord([27, 'Kenya', '+254', 53771296]);
  ClientDataSet_Country.AppendRecord([28, 'South Korea', '+82', 51606633]);
  ClientDataSet_Country.AppendRecord([29, 'Colombia', '+57', 50976248]);
  ClientDataSet_Country.AppendRecord([30, 'Spain', '+34', 46754783]);
end;

end.
