inherited fMarcas: TfMarcas
  Left = 213
  Top = 149
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 74
    Top = 49
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel [1]
    Left = 24
    Top = 49
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object DBEdit2: TDBEdit [3]
    Left = 74
    Top = 65
    Width = 511
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [4]
    Left = 24
    Top = 65
    Width = 49
    Height = 21
    TabStop = False
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clInfoBk
    DataField = 'ID_MARCA'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 2
  end
  object Panel3: TPanel [5]
    Left = 0
    Top = 0
    Width = 614
    Height = 40
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 11189162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 154
      Top = 8
      Width = 305
      Height = 24
      Caption = 'Cadastro de Marcas de Produtos'
    end
    object Label1: TLabel
      Left = 156
      Top = 8
      Width = 305
      Height = 24
      Caption = 'Cadastro de Marcas de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object DBGrid1: TDBGrid [6]
    Left = 24
    Top = 95
    Width = 561
    Height = 282
    DataSource = DtSrc
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Caption = 'Estoque'
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cds_marca
    Left = 121
    Top = 9
  end
  object sds_marca: TSQLDataSet
    SQLConnection = DM.SQLObitos
    CommandText = 'select * from MARCA'
    Params = <>
    Left = 24
    Top = 8
    object sds_marcaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_marcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dsp_marca: TDataSetProvider
    DataSet = sds_marca
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 8
  end
  object cds_marca: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_marca'
    Left = 88
    Top = 8
    object cds_marcaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_marcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
end
