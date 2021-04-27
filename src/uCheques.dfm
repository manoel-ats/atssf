inherited fCheques: TfCheques
  Left = 213
  Top = 151
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 7
    Top = 38
    Width = 39
    Height = 13
    Caption = 'Ag'#234'ncia'
  end
  object Label2: TLabel [1]
    Left = 89
    Top = 38
    Width = 31
    Height = 13
    Caption = 'Banco'
  end
  object Label3: TLabel [2]
    Left = 296
    Top = 38
    Width = 70
    Height = 13
    Caption = 'N'#186' Documento'
  end
  object Label4: TLabel [3]
    Left = 419
    Top = 38
    Width = 41
    Height = 13
    Caption = 'Valor R$'
  end
  object Label5: TLabel [4]
    Left = 512
    Top = 38
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label6: TLabel [5]
    Left = 7
    Top = 78
    Width = 41
    Height = 13
    Caption = 'Hist'#243'rico'
  end
  inherited Panel1: TPanel
    TabOrder = 5
  end
  object Panel3: TPanel [7]
    Left = 0
    Top = 0
    Width = 614
    Height = 36
    Align = alTop
    BevelInner = bvRaised
    Color = 11189162
    TabOrder = 6
    object Label16: TLabel
      Left = 201
      Top = 6
      Width = 203
      Height = 24
      Caption = 'Cadastro de Cheques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 204
      Top = 7
      Width = 203
      Height = 24
      Caption = 'Cadastro de Cheques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 7
    Top = 54
    Width = 78
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'AGENCIA'
    DataSource = DtSrc
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBCbx: TDBComboBox [9]
    Left = 87
    Top = 54
    Width = 208
    Height = 21
    BevelKind = bkFlat
    DataField = 'BANCO'
    DataSource = DtSrc
    ItemHeight = 13
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [10]
    Left = 296
    Top = 54
    Width = 121
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NUMERO_DOC'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [11]
    Left = 419
    Top = 54
    Width = 92
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VALORCHEQUE'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [12]
    Left = 512
    Top = 54
    Width = 96
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DATALANCAMENTO'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [13]
    Left = 7
    Top = 119
    Width = 601
    Height = 269
    DataSource = DtSrc
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AGENCIA'
        Title.Caption = 'Ag'#234'ncia'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCO'
        Title.Caption = 'Banco'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Title.Caption = 'n'#186' Documento'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCHEQUE'
        Title.Caption = 'Valor R$'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATALANCAMENTO'
        Title.Caption = 'Data'
        Width = 90
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo [14]
    Left = 86
    Top = 78
    Width = 521
    Height = 38
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 8
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 576
    Top = 8
  end
  inherited DtSrc: TDataSource
    DataSet = cds_cheq
    Left = 513
    Top = 9
  end
  object sds_cheq: TSQLDataSet
    CommandText = 
      'select * from CHEQ_BOLETOS_DUPL '#13#10'where COD_ORIGEM = :pID '#13#10'and ' +
      'TIPO_ORIGEM = :porigem'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'porigem'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 416
    Top = 8
    object sds_cheqID_CHEQ: TIntegerField
      FieldName = 'ID_CHEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_cheqCOD_ORIGEM: TIntegerField
      FieldName = 'COD_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqTIPO_ORIGEM: TStringField
      FieldName = 'TIPO_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cheqNUMERO_DOC: TIntegerField
      FieldName = 'NUMERO_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqCODCLI_FORN: TIntegerField
      FieldName = 'CODCLI_FORN'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqCLI_OU_FORN: TStringField
      FieldName = 'CLI_OU_FORN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cheqCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cheqDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqDATADEPOSITO: TDateField
      FieldName = 'DATADEPOSITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqVALORCHEQUE: TFloatField
      FieldName = 'VALORCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cheqAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cheqTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cheqBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_cheq: TDataSetProvider
    DataSet = sds_cheq
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 8
  end
  object cds_cheq: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'porigem'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cheq'
    Left = 480
    Top = 8
    object cds_cheqID_CHEQ: TIntegerField
      FieldName = 'ID_CHEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_cheqCOD_ORIGEM: TIntegerField
      FieldName = 'COD_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqTIPO_ORIGEM: TStringField
      FieldName = 'TIPO_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cheqNUMERO_DOC: TIntegerField
      FieldName = 'NUMERO_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqCODCLI_FORN: TIntegerField
      FieldName = 'CODCLI_FORN'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqCLI_OU_FORN: TStringField
      FieldName = 'CLI_OU_FORN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cheqCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_cheqDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqDATADEPOSITO: TDateField
      FieldName = 'DATADEPOSITO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqVALORCHEQUE: TFloatField
      FieldName = 'VALORCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cheqAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_cheqTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cheqBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
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
    Left = 544
    Top = 8
  end
  object sds_banco: TSQLDataSet
    CommandText = 'select * from BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 520
    Top = 400
    object sds_bancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_bancoCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_bancoBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object sds_bancoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_bancoSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_bancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_bancoDIGAGEN: TStringField
      FieldName = 'DIGAGEN'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sds_bancoCOD_CED: TStringField
      FieldName = 'COD_CED'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_bancoID_TITULO: TIntegerField
      FieldName = 'ID_TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_bancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_bancoN_DOC: TIntegerField
      FieldName = 'N_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_bancoJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_bancoVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object sds_bancoVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_bancoVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      ProviderFlags = [pfInUpdate]
      Size = 58
    end
    object sds_bancoLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
  end
  object dsp_banco: TDataSetProvider
    DataSet = sds_banco
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 400
  end
  object cds_banco: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_banco'
    Left = 552
    Top = 400
    object cds_bancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_bancoCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_bancoBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object cds_bancoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_bancoSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_bancoDIGAGEN: TStringField
      FieldName = 'DIGAGEN'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_bancoCOD_CED: TStringField
      FieldName = 'COD_CED'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_bancoID_TITULO: TIntegerField
      FieldName = 'ID_TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_bancoN_DOC: TIntegerField
      FieldName = 'N_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_bancoVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object cds_bancoVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_bancoVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      ProviderFlags = [pfInUpdate]
      Size = 58
    end
    object cds_bancoLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
  end
end
