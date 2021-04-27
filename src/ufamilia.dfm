inherited fFamilia: TfFamilia
  Left = 225
  Top = 130
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 24
    Top = 49
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label4: TLabel [1]
    Left = 74
    Top = 49
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object DBEdit1: TDBEdit [3]
    Left = 24
    Top = 65
    Width = 49
    Height = 21
    TabStop = False
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clInfoBk
    DataField = 'ID_FAMILIA'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 74
    Top = 65
    Width = 511
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
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
      Left = 153
      Top = 8
      Width = 306
      Height = 24
      Caption = 'Cadastro de Grupos de Produtos'
    end
    object Label1: TLabel
      Left = 155
      Top = 8
      Width = 306
      Height = 24
      Caption = 'Cadastro de Grupos de Produtos'
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
    Top = 87
    Width = 561
    Height = 290
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
  inherited PopupMenu1: TPopupMenu
    Left = 576
    Top = 0
  end
  inherited DtSrc: TDataSource
    DataSet = cds_grupo
    Left = 545
    Top = 1
  end
  object cds_grupo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_grupo'
    Left = 512
    object cds_grupoID_FAMILIA: TIntegerField
      FieldName = 'ID_FAMILIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_grupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dsp_grupo: TDataSetProvider
    DataSet = sds_grupo
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 480
  end
  object sds_grupo: TSQLDataSet
    SQLConnection = DM.SQLObitos
    CommandText = 'select * from  FAMILIA'
    Params = <>
    Left = 448
    object sds_grupoID_FAMILIA: TIntegerField
      FieldName = 'ID_FAMILIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_grupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
end
