inherited fBanco: TfBanco
  Left = 326
  Top = 138
  Width = 629
  Height = 516
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label16: TLabel [0]
    Left = 3
    Top = 44
    Width = 65
    Height = 13
    Caption = 'LOCALIZAR :'
  end
  inherited Panel1: TPanel
    Top = 435
    Width = 613
    TabOrder = 3
  end
  object GroupBox1: TGroupBox [2]
    Left = 6
    Top = 66
    Width = 603
    Height = 133
    Caption = 'Dados da Ag'#234'ncia'
    TabOrder = 1
    object Label1: TLabel
      Left = 152
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
    end
    object Label2: TLabel
      Left = 170
      Top = 16
      Width = 77
      Height = 13
      Caption = 'Nome do Banco'
    end
    object Label4: TLabel
      Left = 371
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label5: TLabel
      Left = 369
      Top = 58
      Width = 65
      Height = 13
      Caption = 'Cod. Cedente'
    end
    object Label6: TLabel
      Left = 11
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Conta'
    end
    object Label7: TLabel
      Left = 225
      Top = 56
      Width = 14
      Height = 13
      Caption = 'Dg'
    end
    object Label8: TLabel
      Left = 273
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Saldo'
    end
    object Label17: TLabel
      Left = 469
      Top = 16
      Width = 82
      Height = 13
      Caption = 'Descri'#231#227'o Banco'
      Visible = False
    end
    object Label18: TLabel
      Left = 8
      Top = 56
      Width = 71
      Height = 13
      Caption = 'Conta Corrente'
      FocusControl = DBEdit18
    end
    object Label19: TLabel
      Left = 120
      Top = 56
      Width = 14
      Height = 13
      Caption = 'Dg'
      FocusControl = DBEdit19
    end
    object Label25: TLabel
      Left = 120
      Top = 16
      Width = 46
      Height = 13
      Caption = 'N'#186' Banco'
      FocusControl = DBEdit25
    end
    object Label26: TLabel
      Left = 10
      Top = 96
      Width = 198
      Height = 13
      Caption = 'Caminho para Salvar o Arquivo Remesssa'
      FocusControl = DBEdit18
    end
    object DBEdit1: TDBEdit
      Left = 152
      Top = 72
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'AGENCIA'
      DataSource = DtSrc
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 170
      Top = 32
      Width = 191
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'BANCO'
      DataSource = DtSrc
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 370
      Top = 32
      Width = 223
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CIDADE'
      DataSource = DtSrc
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 369
      Top = 72
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'COD_CED'
      DataSource = DtSrc
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 222
      Top = 72
      Width = 23
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DIGAGEN'
      DataSource = DtSrc
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 265
      Top = 72
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SALDO'
      DataSource = DtSrc
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit18: TDBEdit
      Left = 8
      Top = 72
      Width = 105
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CONTACORRRENTE'
      DataSource = DtSrc
      TabOrder = 6
    end
    object DBEdit19: TDBEdit
      Left = 120
      Top = 72
      Width = 27
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DIGITOCONTACORRENTE'
      DataSource = DtSrc
      TabOrder = 7
    end
    object DBEdit25: TDBEdit
      Left = 120
      Top = 32
      Width = 43
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CADBANCO'
      DataSource = DtSrc
      TabOrder = 8
    end
    object dbedtBANCO: TDBEdit
      Left = 472
      Top = 32
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'BANCO'
      DataSource = DtSrc
      TabOrder = 9
      Visible = False
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 32
      Width = 107
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CONTA'
      DataSource = DtSrc
      TabOrder = 10
    end
    object DBEdit17: TDBEdit
      Left = 9
      Top = 109
      Width = 481
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DESCBANCO'
      DataSource = DtSrc
      TabOrder = 11
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 5
    Top = 201
    Width = 604
    Height = 202
    Caption = 'Dados para Gera'#231#227'o de Boleto'
    TabOrder = 2
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 13
      Caption = 'n'#186' T'#237'tulo'
    end
    object Label10: TLabel
      Left = 95
      Top = 16
      Width = 68
      Height = 13
      Caption = 'n'#186' Documento'
    end
    object Label11: TLabel
      Left = 186
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Carteira'
    end
    object Label3: TLabel
      Left = 280
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Juros'
    end
    object Label12: TLabel
      Left = 331
      Top = 16
      Width = 106
      Height = 13
      Caption = 'Local para pagamento'
    end
    object Label13: TLabel
      Left = 8
      Top = 97
      Width = 150
      Height = 13
      Caption = 'Dados referente ao Vencimento'
    end
    object Label20: TLabel
      Left = 236
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Varia'#231#227'o'
      FocusControl = DBEdit20
    end
    object Label21: TLabel
      Left = 8
      Top = 56
      Width = 71
      Height = 13
      Caption = 'Inicio Nosso n'#186
      FocusControl = DBEdit21
    end
    object Label22: TLabel
      Left = 104
      Top = 56
      Width = 64
      Height = 13
      Caption = 'Fim Nosso N'#186
      FocusControl = DBEdit22
    end
    object Label23: TLabel
      Left = 205
      Top = 56
      Width = 50
      Height = 13
      Caption = 'Proximo n'#186
      FocusControl = DBEdit23
    end
    object Label24: TLabel
      Left = 352
      Top = 56
      Width = 60
      Height = 13
      Caption = 'N'#186' Convenio'
      FocusControl = DBEdit24
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 32
      Width = 85
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ID_TITULO'
      DataSource = DtSrc
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 95
      Top = 32
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'N_DOC'
      DataSource = DtSrc
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 280
      Top = 32
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'JUROS'
      DataSource = DtSrc
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 331
      Top = 32
      Width = 266
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'LOCAL_PGTO'
      DataSource = DtSrc
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 8
      Top = 110
      Width = 585
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VENCIMENTO'
      DataSource = DtSrc
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 8
      Top = 132
      Width = 585
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VENCIMENTO1'
      DataSource = DtSrc
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit15: TDBEdit
      Left = 7
      Top = 155
      Width = 585
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VENCIMENTO2'
      DataSource = DtSrc
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 7
      Top = 177
      Width = 585
      Height = 20
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VENCIMENTO3'
      DataSource = DtSrc
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 235
      Top = 32
      Width = 43
      Height = 21
      DataField = 'VARIACAO'
      DataSource = DtSrc
      TabOrder = 8
    end
    object DBEdit21: TDBEdit
      Left = 8
      Top = 72
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'INICIONOSSONUMERO'
      DataSource = DtSrc
      TabOrder = 9
    end
    object DBEdit22: TDBEdit
      Left = 104
      Top = 72
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FIMNOSSONUMERO'
      DataSource = DtSrc
      TabOrder = 10
    end
    object DBEdit23: TDBEdit
      Left = 205
      Top = 72
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PROXIMONOSSONUMERO'
      DataSource = DtSrc
      TabOrder = 11
    end
    object DBEdit24: TDBEdit
      Left = 352
      Top = 72
      Width = 120
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'NUMEROCONVENIO'
      DataSource = DtSrc
      TabOrder = 12
    end
    object DBEdit11: TDBEdit
      Left = 187
      Top = 32
      Width = 43
      Height = 21
      DataField = 'CARTEIRA'
      DataSource = DtSrc
      TabOrder = 13
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 0
    Width = 613
    Height = 41
    Align = alTop
    Color = 11189162
    TabOrder = 4
    object Label14: TLabel
      Left = 210
      Top = 6
      Width = 192
      Height = 27
      Caption = 'Cadastro de Bancos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 212
      Top = 6
      Width = 192
      Height = 27
      Caption = 'Cadastro de Bancos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object EvDBFind1: TEvDBFind [5]
    Left = 67
    Top = 44
    Width = 518
    Height = 24
    DataField = 'BANCO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator [6]
    Left = 195
    Top = 402
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 5
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 480
    Top = 406
  end
  inherited DtSrc: TDataSource
    DataSet = cds_banco
    Left = 577
    Top = 407
  end
  object sds_banco: TSQLDataSet
    CommandText = 'select * from BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 520
    Top = 406
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
    object sds_bancoVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_bancoCADBANCO: TStringField
      FieldName = 'CADBANCO'
      FixedChar = True
      Size = 3
    end
    object sds_bancoDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      Size = 45
    end
    object sds_bancoCONTACORRRENTE: TStringField
      FieldName = 'CONTACORRRENTE'
      Size = 15
    end
    object sds_bancoDIGITOCONTACORRENTE: TStringField
      FieldName = 'DIGITOCONTACORRENTE'
      FixedChar = True
      Size = 1
    end
    object sds_bancoINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
    end
    object sds_bancoFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
    end
    object sds_bancoPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
    end
    object sds_bancoVARIACAO: TStringField
      FieldName = 'VARIACAO'
      FixedChar = True
      Size = 3
    end
    object sds_bancoNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
    end
    object sds_bancoTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object sds_bancoTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      FixedChar = True
      Size = 2
    end
    object sds_bancoDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object sds_bancoINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object sds_bancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object sds_bancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object sds_bancoACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object sds_bancoESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object sds_bancoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object sds_bancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
  end
  object dsp_banco: TDataSetProvider
    DataSet = sds_banco
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 406
  end
  object cds_banco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_banco'
    Left = 552
    Top = 406
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
    object cds_bancoVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_bancoCADBANCO: TStringField
      FieldName = 'CADBANCO'
      FixedChar = True
      Size = 3
    end
    object cds_bancoDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      Size = 45
    end
    object cds_bancoCONTACORRRENTE: TStringField
      FieldName = 'CONTACORRRENTE'
      Size = 15
    end
    object cds_bancoDIGITOCONTACORRENTE: TStringField
      FieldName = 'DIGITOCONTACORRENTE'
      FixedChar = True
      Size = 1
    end
    object cds_bancoINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
    end
    object cds_bancoFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
    end
    object cds_bancoPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
    end
    object cds_bancoVARIACAO: TStringField
      FieldName = 'VARIACAO'
      FixedChar = True
      Size = 3
    end
    object cds_bancoNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
    end
    object cds_bancoTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object cds_bancoTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      FixedChar = True
      Size = 2
    end
    object cds_bancoDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object cds_bancoINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object cds_bancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object cds_bancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object cds_bancoACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object cds_bancoESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object cds_bancoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object cds_bancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
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
end
