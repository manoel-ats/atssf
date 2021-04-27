inherited fCCusto: TfCCusto
  Left = 221
  Top = 138
  Width = 630
  Height = 474
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 48
    Width = 62
    Height = 16
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
  end
  object Label3: TLabel [1]
    Left = 464
    Top = 48
    Width = 28
    Height = 16
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
  end
  inherited Panel1: TPanel
    Top = 397
    Width = 622
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 0
    Width = 622
    Height = 43
    Align = alTop
    BevelInner = bvLowered
    Color = 11189162
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Label1: TLabel
      Left = 263
      Top = 8
      Width = 83
      Height = 27
      Caption = 'Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object Label4: TLabel
      Left = 267
      Top = 9
      Width = 83
      Height = 27
      Caption = 'Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  object DBEdit2: TDBEdit [4]
    Left = 8
    Top = 64
    Width = 454
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBComboBox1: TDBComboBox [5]
    Left = 464
    Top = 64
    Width = 145
    Height = 24
    BevelKind = bkFlat
    CharCase = ecUpperCase
    DataField = 'TIPO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'RECEITA'
      'DESPESA')
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [6]
    Left = 8
    Top = 90
    Width = 600
    Height = 273
    BorderStyle = bsNone
    DataSource = DtSrc
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231'ao'
        Width = 445
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [7]
    Left = 67
    Top = 367
    Width = 480
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    PopupMenu = PopupMenu1
    TabOrder = 5
  end
  inherited PopupMenu1: TPopupMenu
    Left = 584
    Top = 0
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    Left = 561
    Top = 1
  end
  object sds: TSQLDataSet
    CommandText = 
      'select ID_PRODUTO'#13#10'         ,DESCRICAO'#13#10'        , TIPO '#13#10'from PR' +
      'ODUTOS '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 464
    object sdsID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 496
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 528
    object cdsID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from CCUSTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 456
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'ID_CCUSTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object StringField2: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 488
    Top = 88
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 520
    Top = 88
    object IntegerField2: TIntegerField
      FieldName = 'ID_CCUSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object StringField4: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
  end
end
