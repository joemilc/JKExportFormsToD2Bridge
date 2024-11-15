object FormSimples: TFormSimples
  Left = 0
  Top = 0
  Caption = 'FormSimples'
  ClientHeight = 316
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 135
    Top = 16
    Width = 34
    Height = 15
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 34
    Height = 15
    Caption = 'Label3'
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 135
    Top = 32
    Width = 250
    Height = 23
    TabOrder = 1
    Text = 'Edit2'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 85
    Width = 145
    Height = 23
    TabOrder = 2
    Text = 'ComboBox1'
    Items.Strings = (
      'Combobox Item 1'
      'Combobox Item 2'
      'Combobox Item 3'
      'Combobox Item 4')
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 120
    Width = 521
    Height = 185
    DataSource = DSCountry
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AutoCod'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Country'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDI'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Population'
        Width = 105
        Visible = True
      end>
  end
  object DSCountry: TDataSource
    DataSet = ClientDataSet_Country
    Left = 200
    Top = 64
  end
  object ClientDataSet_Country: TClientDataSet
    PersistDataPacket.Data = {
      9C0000009619E0BD0100000018000000040000000000030000009C0007417574
      6F436F64040001000200010007535542545950450200490008004175746F696E
      630007436F756E74727901004900000001000557494454480200020064000344
      444901004900000001000557494454480200020014000A506F70756C6174696F
      6E040001000000000001000C4155544F494E4356414C55450400010001000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 299
    Top = 64
    object ClientDataSet_CountryAutoCod: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AutoCod'
    end
    object ClientDataSet_CountryCountry: TStringField
      DisplayWidth = 41
      FieldName = 'Country'
      Size = 100
    end
    object ClientDataSet_CountryDDI: TStringField
      DisplayWidth = 8
      FieldName = 'DDI'
    end
    object ClientDataSet_CountryPopulation: TIntegerField
      DisplayWidth = 17
      FieldName = 'Population'
    end
  end
end
