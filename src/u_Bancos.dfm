inherited f_Bancos: Tf_Bancos
  Left = 445
  Top = 148
  Width = 679
  Height = 570
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl30: TLabel [0]
    Left = 21
    Top = 294
    Width = 49
    Height = 13
    Caption = 'Instru'#231#245'es'
  end
  object lbl24: TLabel [1]
    Left = 22
    Top = 258
    Width = 83
    Height = 13
    Caption = 'Local Pagamento'
  end
  object lbl26: TLabel [2]
    Left = 22
    Top = 218
    Width = 165
    Height = 13
    Caption = 'Pasta destino do Arquivo Retorno :'
    Transparent = True
  end
  object lbl25: TLabel [3]
    Left = 222
    Top = 218
    Width = 171
    Height = 13
    Caption = 'Pasta destino do Arquivo Remessa :'
    Transparent = True
  end
  object lbl29: TLabel [4]
    Left = 430
    Top = 218
    Width = 120
    Height = 13
    Caption = 'Nome Arquivo Remessa :'
    Transparent = True
  end
  object lbl28: TLabel [5]
    Left = 361
    Top = 174
    Width = 48
    Height = 13
    Caption = 'Protesta ?'
    Transparent = True
  end
  object lbl27: TLabel [6]
    Left = 104
    Top = 168
    Width = 71
    Height = 13
    Caption = '% Mora / Juros'
    Transparent = True
  end
  object lbl19: TLabel [7]
    Left = 21
    Top = 131
    Width = 38
    Height = 13
    Caption = 'Especie'
    FocusControl = dbedtCODIGO_CEDENTE
  end
  object lbl20: TLabel [8]
    Left = 65
    Top = 131
    Width = 30
    Height = 13
    Caption = 'Aceite'
    FocusControl = dbedtCODIGO_CEDENTE1
  end
  object lbl21: TLabel [9]
    Left = 103
    Top = 129
    Width = 45
    Height = 13
    Caption = 'Conv'#234'nio'
    FocusControl = dbedtCODIGO_AGENCIA
  end
  object lbl8: TLabel [10]
    Left = 165
    Top = 131
    Width = 68
    Height = 13
    Caption = 'Layout Boleto:'
    Transparent = True
  end
  object lbl14: TLabel [11]
    Left = 261
    Top = 131
    Width = 82
    Height = 13
    Caption = 'Layout Remessa:'
    Transparent = True
  end
  object lbl9: TLabel [12]
    Left = 357
    Top = 131
    Width = 70
    Height = 13
    Caption = 'Resp. Emiss'#227'o'
    Transparent = True
  end
  object lbl12: TLabel [13]
    Left = 453
    Top = 131
    Width = 63
    Height = 13
    Caption = 'Comprovante'
    Transparent = True
  end
  object lbl13: TLabel [14]
    Left = 21
    Top = 171
    Width = 60
    Height = 13
    Caption = 'Mora / Juros'
    Transparent = True
  end
  object lbl22: TLabel [15]
    Left = 527
    Top = 90
    Width = 53
    Height = 13
    Caption = 'Sequencial'
    FocusControl = dbedtCODIGOBOLETO
  end
  object lbl11: TLabel [16]
    Left = 421
    Top = 90
    Width = 96
    Height = 13
    Caption = 'CODIGO CEDENTE'
    FocusControl = dbedtCODIGO_CEDENTE2
  end
  object lbl18: TLabel [17]
    Left = 391
    Top = 88
    Width = 19
    Height = 13
    Caption = 'DIG'
    FocusControl = dbedtDIGITO_CONTA
  end
  object lbl17: TLabel [18]
    Left = 279
    Top = 88
    Width = 88
    Height = 13
    Caption = 'NUMERO CONTA'
    FocusControl = dbedtNUMERO_CONTA
  end
  object lbl16: TLabel [19]
    Left = 250
    Top = 88
    Width = 19
    Height = 13
    Caption = 'DIG'
    FocusControl = dbedtDIGITO_AGENCIA
  end
  object lbl15: TLabel [20]
    Left = 142
    Top = 88
    Width = 92
    Height = 13
    Caption = 'CODIGO AGENCIA'
    FocusControl = dbedtCODIGO_AGENCIA1
  end
  object lbl23: TLabel [21]
    Left = 79
    Top = 88
    Width = 54
    Height = 13
    Caption = 'VARIA'#199#195'O'
    FocusControl = dbedtCARTEIRA
  end
  object lbl10: TLabel [22]
    Left = 19
    Top = 88
    Width = 54
    Height = 13
    Caption = 'CARTEIRA'
    FocusControl = dbedtCARTEIRA1
  end
  object lbl5: TLabel [23]
    Left = 19
    Top = 45
    Width = 45
    Height = 13
    Caption = 'CODIGO '
    FocusControl = dbedtCODBANCO
  end
  object lbl6: TLabel [24]
    Left = 76
    Top = 45
    Width = 52
    Height = 13
    Caption = 'N'#186' BANCO'
    FocusControl = dbedtN_BANCO
  end
  object lbl7: TLabel [25]
    Left = 149
    Top = 45
    Width = 16
    Height = 13
    Caption = 'DG'
    FocusControl = dbedtDIGITOBANCO
  end
  object lbl3: TLabel [26]
    Left = 200
    Top = 43
    Width = 45
    Height = 16
    Caption = 'Banco :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    Top = 489
    Width = 663
    inherited btnCancelar: TdxButton
      Left = 330
    end
    inherited btnExcluir: TdxButton
      Left = 330
    end
    inherited btnGravar: TdxButton
      Left = 247
    end
    inherited btnIncluir: TdxButton
      Left = 247
    end
    inherited btnSair: TdxButton
      Left = 413
    end
    object dbnvgr1: TDBNavigator
      Left = 129
      Top = 6
      Width = 116
      Height = 30
      DataSource = DtSrc
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
  end
  object pnl1: TPanel [28]
    Left = 0
    Top = 0
    Width = 663
    Height = 41
    Align = alTop
    Color = 11189162
    TabOrder = 1
    object lbl1: TLabel
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
    object lbl2: TLabel
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
  object dbedtINSTRUCAO4: TDBEdit [29]
    Left = 21
    Top = 354
    Width = 614
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSTRUCAO3'
    DataSource = DtSrc
    TabOrder = 2
  end
  object dbedtINSTRUCAO3: TDBEdit [30]
    Left = 21
    Top = 332
    Width = 614
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSTRUCAO2'
    DataSource = DtSrc
    TabOrder = 3
  end
  object dbedtINSTRUCAO2: TDBEdit [31]
    Left = 21
    Top = 310
    Width = 614
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'INSTRUCAO1'
    DataSource = DtSrc
    TabOrder = 4
  end
  object dbedtINSTRUCAO1: TDBEdit [32]
    Left = 21
    Top = 273
    Width = 612
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'LOCALPGTO'
    DataSource = DtSrc
    TabOrder = 5
  end
  object dbedtPASTA_RETORNO: TDBEdit [33]
    Left = 21
    Top = 234
    Width = 197
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PASTA_RETORNO'
    DataSource = DtSrc
    TabOrder = 6
  end
  object dbedtPASTA_RETORNO1: TDBEdit [34]
    Left = 223
    Top = 234
    Width = 203
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PASTA_REMESSA'
    DataSource = DtSrc
    TabOrder = 7
  end
  object dbedtPASTA_REMESSA: TDBEdit [35]
    Left = 431
    Top = 234
    Width = 203
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'NOME_ARQUIVO'
    DataSource = DtSrc
    TabOrder = 8
  end
  object dbcbbPROTESTO: TDBComboBox [36]
    Left = 360
    Top = 191
    Width = 272
    Height = 21
    BevelKind = bkFlat
    DataField = 'PROTESTO'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      '00 - Sem de instru'#231#245'es'
      
        '01 - Cobrar juros (Dispens'#225'vel se informado o valor a ser cobrad' +
        'o por dia de atraso).'
      '03 - Protestar no 3'#186' dia '#250'til ap'#243's vencido'
      '04 - Protestar no 4'#186' dia '#250'til ap'#243's vencido'
      '05 - Protestar no 5'#186' dia '#250'til ap'#243's vencido'
      
        '06 - Indica Protesto em dias corridos, com prazo de 6 a 29, 35 o' +
        'u 40 dias Corridos.'
      '07 - N'#227'o protestar'
      '10 - Protestar no 10'#186' dia corrido ap'#243's vencido'
      '15 - Protestar no 15'#186' dia corrido ap'#243's vencido'
      '20 - Protestar no 20'#186' dia corrido ap'#243's vencido'
      '22 - Conceder desconto s'#243' at'#233' a data estipulada'
      '25 - Protestar no 25'#186' dia corrido ap'#243's vencido'
      '30 - Protestar no 30'#186' dia corrido ap'#243's vencido'
      '45 - Protestar no 45'#186' dia corrido ap'#243's vencido')
    TabOrder = 9
  end
  object JvDBSpinEdit1: TJvDBSpinEdit [37]
    Left = 103
    Top = 185
    Width = 76
    Height = 21
    BorderStyle = bsNone
    TabOrder = 10
    BevelKind = bkFlat
    DataField = 'PERCMULTA'
    DataSource = DtSrc
  end
  object dbedtCODIGO_CEDENTE: TDBEdit [38]
    Left = 21
    Top = 146
    Width = 42
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ESPECIEDOC'
    DataSource = DtSrc
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object dbedtCODIGO_CEDENTE1: TDBEdit [39]
    Left = 65
    Top = 146
    Width = 33
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ACEITE'
    DataSource = DtSrc
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object dbedtCODIGO_AGENCIA: TDBEdit [40]
    Left = 102
    Top = 145
    Width = 60
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CONVENIO'
    DataSource = DtSrc
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object dbcbbLAYOUT_BL: TDBComboBox [41]
    Left = 164
    Top = 145
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'LAYOUT_BL'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'Boleto'
      'Carn'#234
      'Fatura')
    TabOrder = 14
  end
  object dbcbbLAYOUT_RM: TDBComboBox [42]
    Left = 260
    Top = 145
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'LAYOUT_RM'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'c400'
      'c240')
    TabOrder = 15
  end
  object dbcbbRESP_EMISSAO: TDBComboBox [43]
    Left = 356
    Top = 145
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'RESP_EMISSAO'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'Banco Emite'
      'Cliente Emite')
    TabOrder = 16
  end
  object dbcbbIMP_COMPROVANTE: TDBComboBox [44]
    Left = 452
    Top = 145
    Width = 95
    Height = 21
    BevelKind = bkFlat
    DataField = 'IMP_COMPROVANTE'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'SIM'
      'N'#195'O')
    TabOrder = 17
  end
  object dbcbbRESP_EMISSAO2: TDBComboBox [45]
    Left = 20
    Top = 185
    Width = 80
    Height = 21
    BevelKind = bkFlat
    DataField = 'MORAJUROS'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      '1-Diario'
      '2-Mensal'
      '3-Isento')
    TabOrder = 18
  end
  object dbedtCODIGOBOLETO: TDBEdit [46]
    Left = 527
    Top = 105
    Width = 107
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODIGOBOLETO'
    DataSource = DtSrc
    TabOrder = 19
    OnKeyPress = FormKeyPress
  end
  object dbedtCODIGO_CEDENTE2: TDBEdit [47]
    Left = 421
    Top = 105
    Width = 103
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'COD_CED'
    DataSource = DtSrc
    TabOrder = 20
    OnKeyPress = FormKeyPress
  end
  object dbedtDIGITO_CONTA: TDBEdit [48]
    Left = 391
    Top = 104
    Width = 26
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DIGITOCONTACORRENTE'
    DataSource = DtSrc
    TabOrder = 21
    OnKeyPress = FormKeyPress
  end
  object dbedtNUMERO_CONTA: TDBEdit [49]
    Left = 279
    Top = 104
    Width = 106
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CONTACORRRENTE'
    DataSource = DtSrc
    TabOrder = 22
    OnKeyPress = FormKeyPress
  end
  object dbedtDIGITO_AGENCIA: TDBEdit [50]
    Left = 250
    Top = 104
    Width = 23
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DIGAGEN'
    DataSource = DtSrc
    TabOrder = 23
    OnKeyPress = FormKeyPress
  end
  object dbedtCODIGO_AGENCIA1: TDBEdit [51]
    Left = 140
    Top = 104
    Width = 106
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'AGENCIA'
    DataSource = DtSrc
    TabOrder = 24
    OnKeyPress = FormKeyPress
  end
  object dbedtCARTEIRA: TDBEdit [52]
    Left = 79
    Top = 104
    Width = 58
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VARIACAO'
    DataSource = DtSrc
    TabOrder = 25
    OnKeyPress = FormKeyPress
  end
  object dbedtCARTEIRA1: TDBEdit [53]
    Left = 19
    Top = 104
    Width = 57
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CARTEIRA'
    DataSource = DtSrc
    TabOrder = 26
    OnKeyPress = FormKeyPress
  end
  object dbedtCODBANCO: TDBEdit [54]
    Left = 19
    Top = 61
    Width = 56
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ID_BANCO'
    DataSource = DtSrc
    Enabled = False
    ReadOnly = True
    TabOrder = 27
    OnKeyPress = FormKeyPress
  end
  object dbedtN_BANCO: TDBEdit [55]
    Left = 76
    Top = 61
    Width = 72
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'N_BANCO'
    DataSource = DtSrc
    TabOrder = 28
    OnKeyPress = FormKeyPress
  end
  object dbedtDIGITOBANCO: TDBEdit [56]
    Left = 149
    Top = 61
    Width = 46
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'DIGITOBANCO'
    DataSource = DtSrc
    TabOrder = 29
    OnKeyPress = FormKeyPress
  end
  object dbedtBANCO: TDBEdit [57]
    Left = 198
    Top = 58
    Width = 435
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'BANCO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 30
    OnKeyPress = FormKeyPress
  end
  object dbgrd1: TDBGrid [58]
    Left = 22
    Top = 377
    Width = 611
    Height = 104
    TabStop = False
    BorderStyle = bsNone
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 31
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEBANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARTEIRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_CEDENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_EMPRESA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIGITO_AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CONTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIGITO_CONTA'
        Visible = True
      end>
  end
  inherited PopupMenu1: TPopupMenu
    Left = 496
    Top = 457
  end
  inherited DtSrc: TDataSource
    DataSet = dsBanco
    Left = 465
    Top = 457
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 368
    Top = 456
    object SQLDataSet1ID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDataSet1CONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1BANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SQLDataSet1CIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1SALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1AGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SQLDataSet1DIGAGEN: TStringField
      FieldName = 'DIGAGEN'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLDataSet1COD_CED: TStringField
      FieldName = 'COD_CED'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1ID_TITULO: TIntegerField
      FieldName = 'ID_TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1N_DOC: TIntegerField
      FieldName = 'N_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1JUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object SQLDataSet1VENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLDataSet1VENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      ProviderFlags = [pfInUpdate]
      Size = 58
    end
    object SQLDataSet1LOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object SQLDataSet1VENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLDataSet1CARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object SQLDataSet1CADBANCO: TStringField
      FieldName = 'CADBANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object SQLDataSet1DESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SQLDataSet1CONTACORRRENTE: TStringField
      FieldName = 'CONTACORRRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDataSet1DIGITOCONTACORRENTE: TStringField
      FieldName = 'DIGITOCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1INICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1FIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1PROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1VARIACAO: TStringField
      FieldName = 'VARIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object SQLDataSet1NUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1TIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1TIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1DEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object SQLDataSet1INSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object SQLDataSet1INSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SQLDataSet1INSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SQLDataSet1ACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1ESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1INSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SQLDataSet1ESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SQLDataSet1ACEITE: TStringField
      FieldName = 'ACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SQLDataSet1CONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet1LOCALPGTO: TStringField
      FieldName = 'LOCALPGTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SQLDataSet1N_BANCO: TStringField
      FieldName = 'N_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet1DIGITOBANCO: TIntegerField
      FieldName = 'DIGITOBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1LAYOUT_BL: TStringField
      FieldName = 'LAYOUT_BL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet1LAYOUT_RM: TStringField
      FieldName = 'LAYOUT_RM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet1RESP_EMISSAO: TStringField
      FieldName = 'RESP_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1IMP_COMPROVANTE: TStringField
      FieldName = 'IMP_COMPROVANTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object SQLDataSet1PASTA_REMESSA: TStringField
      FieldName = 'PASTA_REMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SQLDataSet1PASTA_RETORNO: TStringField
      FieldName = 'PASTA_RETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SQLDataSet1NOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQLDataSet1C_BANCO: TIntegerField
      FieldName = 'C_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1MORAJUROS: TStringField
      FieldName = 'MORAJUROS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSet1PERCMULTA: TFloatField
      FieldName = 'PERCMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1CODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSet1PROTESTO: TStringField
      FieldName = 'PROTESTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 456
  end
  object dsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 432
    Top = 456
    object dsBancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsBancoCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dsBancoBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object dsBancoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dsBancoSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dsBancoDIGAGEN: TStringField
      FieldName = 'DIGAGEN'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dsBancoCOD_CED: TStringField
      FieldName = 'COD_CED'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dsBancoID_TITULO: TIntegerField
      FieldName = 'ID_TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoN_DOC: TIntegerField
      FieldName = 'N_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object dsBancoVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dsBancoVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      ProviderFlags = [pfInUpdate]
      Size = 58
    end
    object dsBancoLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      ProviderFlags = [pfInUpdate]
      Size = 61
    end
    object dsBancoVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dsBancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dsBancoCADBANCO: TStringField
      FieldName = 'CADBANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dsBancoDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object dsBancoCONTACORRRENTE: TStringField
      FieldName = 'CONTACORRRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dsBancoDIGITOCONTACORRENTE: TStringField
      FieldName = 'DIGITOCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dsBancoINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoVARIACAO: TStringField
      FieldName = 'VARIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dsBancoNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dsBancoDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object dsBancoINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object dsBancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object dsBancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object dsBancoACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dsBancoESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dsBancoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object dsBancoESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dsBancoACEITE: TStringField
      FieldName = 'ACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dsBancoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dsBancoLOCALPGTO: TStringField
      FieldName = 'LOCALPGTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object dsBancoN_BANCO: TStringField
      FieldName = 'N_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dsBancoDIGITOBANCO: TIntegerField
      FieldName = 'DIGITOBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoLAYOUT_BL: TStringField
      FieldName = 'LAYOUT_BL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dsBancoLAYOUT_RM: TStringField
      FieldName = 'LAYOUT_RM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dsBancoRESP_EMISSAO: TStringField
      FieldName = 'RESP_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoIMP_COMPROVANTE: TStringField
      FieldName = 'IMP_COMPROVANTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dsBancoPASTA_REMESSA: TStringField
      FieldName = 'PASTA_REMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object dsBancoPASTA_RETORNO: TStringField
      FieldName = 'PASTA_RETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object dsBancoNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dsBancoC_BANCO: TIntegerField
      FieldName = 'C_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoMORAJUROS: TStringField
      FieldName = 'MORAJUROS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dsBancoPERCMULTA: TFloatField
      FieldName = 'PERCMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object dsBancoPROTESTO: TStringField
      FieldName = 'PROTESTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
end
