inherited fGrupo: TfGrupo
  Left = 242
  Top = 125
  Width = 462
  Height = 266
  Caption = 'Cadastro de Grupos'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 15
    Top = 29
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label2: TLabel [1]
    Left = 1
    Top = 76
    Width = 43
    Height = 13
    Caption = 'Inscri'#231#227'o'
  end
  object Label3: TLabel [2]
    Left = 22
    Top = 53
    Width = 22
    Height = 13
    Caption = 'Cota'
  end
  inherited Panel1: TPanel
    Top = 171
    Width = 449
    inherited btnCancelar: TdxButton
      Left = 185
    end
    inherited btnExcluir: TdxButton
      Left = 185
    end
    inherited btnGravar: TdxButton
      Left = 85
    end
    inherited btnIncluir: TdxButton
      Left = 85
    end
    inherited btnSair: TdxButton
      Left = 286
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 46
    Top = 27
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    DataField = 'GRUPO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [5]
    Left = 46
    Top = 51
    Width = 73
    Height = 21
    DataField = 'INSCRICAO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [6]
    Left = 121
    Top = 26
    Width = 328
    Height = 145
    TabStop = False
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Title.Caption = 'Grupo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCRICAO'
        Title.Caption = 'Qtde Maxima'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde Atual'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_FAL'
        Title.Caption = 'Total Falecimentos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
        Title.Caption = 'Lote'
        Width = 50
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit [7]
    Left = 46
    Top = 75
    Width = 73
    Height = 21
    DataField = 'QTDE'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 240
    Top = 64
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_grupo
    Left = 209
    Top = 65
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
    AutoDetect = True
    Active = True
    Left = 176
    Top = 64
  end
  object cdsCount: TSQLDataSet
    CommandText = 
      'select  COUNT(NOME_SOCIO) from SOCIOS  '#13#10'where GRUPO = :gp '#13#10'and' +
      ' SITUACAO = '#39'Ativo'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'gp'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 200
    Top = 112
    object cdsCountCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
  object sdsAtualizaGrupo: TSQLDataSet
    CommandText = 'select * from GRUPO '#13#10'where GRUPO = :grp'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'grp'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 240
    Top = 112
    object sdsAtualizaGrupoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAtualizaGrupoINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsAtualizaGrupoQTDE: TIntegerField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsAtualizaGrupoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsAtualizaGrupoN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsAtualizaGrupoTOT_FAL: TIntegerField
      FieldName = 'TOT_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsAtualizaGrupoLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsAtualizaGrupoGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspAtualizaGrupo: TDataSetProvider
    DataSet = sdsAtualizaGrupo
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 112
  end
  object cdsAtualizaGrupo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'grp'
        ParamType = ptInput
      end>
    ProviderName = 'dspAtualizaGrupo'
    Left = 304
    Top = 112
    object cdsAtualizaGrupoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsAtualizaGrupoINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAtualizaGrupoQTDE: TIntegerField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAtualizaGrupoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsAtualizaGrupoN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAtualizaGrupoTOT_FAL: TIntegerField
      FieldName = 'TOT_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAtualizaGrupoLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAtualizaGrupoGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
end
