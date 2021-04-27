inherited fMedico: TfMedico
  Left = 191
  Top = 111
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 24
    Height = 13
    Caption = 'CRM'
  end
  object Label2: TLabel [1]
    Left = 91
    Top = 64
    Width = 81
    Height = 13
    Caption = 'Nome do M'#233'dico'
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 0
    Width = 614
    Height = 41
    Align = alTop
    Color = 11189162
    TabOrder = 1
    object Label14: TLabel
      Left = 205
      Top = 6
      Width = 203
      Height = 27
      Caption = 'Cadastro de Medicos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 207
      Top = 6
      Width = 203
      Height = 27
      Caption = 'Cadastro de Medicos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 80
    Width = 78
    Height = 21
    DataField = 'CRM'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [5]
    Left = 88
    Top = 80
    Width = 513
    Height = 21
    DataField = 'NOME_MEDICO'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [6]
    Left = 8
    Top = 104
    Width = 593
    Height = 257
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
        FieldName = 'CRM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_MEDICO'
        Title.Caption = 'Nome do M'#233'dico'
        Width = 500
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [7]
    Left = 195
    Top = 363
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 5
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 576
    Top = 8
  end
  inherited DtSrc: TDataSource
    DataSet = cds_medico
    Left = 537
    Top = 9
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Arial'
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
    AutoDetect = True
    Active = True
    Left = 72
    Top = 8
  end
  object sds_medico: TSQLDataSet
    SQLConnection = DM.SQLObitos
    CommandText = 'select * from MEDICO'
    Params = <>
    Left = 440
    Top = 8
    object sds_medicoID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
      Required = True
    end
    object sds_medicoNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      Size = 100
    end
    object sds_medicoCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
  end
  object dsp_medico: TDataSetProvider
    DataSet = sds_medico
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 472
    Top = 8
  end
  object cds_medico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_medico'
    Left = 504
    Top = 8
    object cds_medicoID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object cds_medicoNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      Size = 100
    end
    object cds_medicoCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
  end
end
