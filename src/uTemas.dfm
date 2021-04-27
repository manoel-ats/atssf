object fTemas: TfTemas
  Left = 354
  Top = 186
  Width = 310
  Height = 189
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 19
    Width = 90
    Height = 13
    Caption = 'Descri'#231#227'o Superior'
  end
  object Label2: TLabel
    Left = 32
    Top = 67
    Width = 83
    Height = 13
    Caption = 'Descri'#231#227'o Inferior'
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 35
    Width = 241
    Height = 21
    DataField = 'TEXTO'
    DataSource = DataSource1
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Walpaper'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 83
    Width = 241
    Height = 21
    DataField = 'TEXTO1'
    DataSource = DataSource1
    TabOrder = 3
  end
  object BitBtn3: TBitBtn
    Left = 208
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Excuir'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object tema: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 160
    object temaTEXTO: TStringField
      FieldName = 'TEXTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object temaIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object temaCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 200
    end
    object temaTEXTO1: TStringField
      FieldName = 'TEXTO1'
      Size = 100
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 128
  end
  object DataSource1: TDataSource
    DataSet = tema
    Left = 192
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from TEMAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 96
    object SQLDataSet1TEXTO: TStringField
      FieldName = 'TEXTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object SQLDataSet1IMAGEM: TBlobField
      FieldName = 'IMAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLDataSet1CAMINHO: TStringField
      FieldName = 'CAMINHO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SQLDataSet1TEXTO1: TStringField
      FieldName = 'TEXTO1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DataSource2: TDataSource
    Left = 112
    Top = 56
  end
  object SaveDialog1: TSaveDialog
    Filter = 'JPEG files|*.JPG'
    Options = [ofPathMustExist]
    Left = 176
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'JPEG files|*.JPG'
    InitialDir = 'C:\Arquivos de programas\meta\SysObitos\Temas'
    Title = 'Open a JPEG file'
    Left = 144
    Top = 56
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    Active = True
    Left = 216
    Top = 56
  end
end
