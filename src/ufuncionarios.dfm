inherited fFuncionarios: TfFuncionarios
  Left = 203
  Top = 140
  Width = 613
  Height = 478
  Caption = 'Cadastro de Funcion'#225'rios'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 48
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 88
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel [2]
    Left = 504
    Top = 48
    Width = 56
    Height = 13
    Caption = 'Nascimento'
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label5: TLabel [4]
    Left = 408
    Top = 96
    Width = 12
    Height = 13
    Caption = 'N'#186
  end
  object Label6: TLabel [5]
    Left = 16
    Top = 144
    Width = 64
    Height = 13
    Caption = 'Complemento'
  end
  object Label7: TLabel [6]
    Left = 208
    Top = 144
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label8: TLabel [7]
    Left = 16
    Top = 192
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label9: TLabel [8]
    Left = 448
    Top = 192
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label10: TLabel [9]
    Left = 498
    Top = 192
    Width = 19
    Height = 13
    Caption = 'Cep'
  end
  object Label13: TLabel [10]
    Left = 16
    Top = 237
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label14: TLabel [11]
    Left = 232
    Top = 237
    Width = 16
    Height = 13
    Caption = 'RG'
  end
  object Label15: TLabel [12]
    Left = 16
    Top = 320
    Width = 15
    Height = 13
    Caption = 'Pai'
  end
  object Label17: TLabel [13]
    Left = 16
    Top = 361
    Width = 21
    Height = 13
    Caption = 'M'#227'e'
  end
  object DBTextDestaque1: TDBText [14]
    Left = 2
    Top = 5
    Width = 603
    Height = 28
    DataField = 'NOME'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBTextDestaque: TDBText [15]
    Left = 2
    Top = 4
    Width = 603
    Height = 28
    DataField = 'NOME'
    DataSource = DtSrc
    Font.Charset = ANSI_CHARSET
    Font.Color = 8344832
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel [16]
    Left = 16
    Top = 279
    Width = 28
    Height = 13
    Caption = 'Cargo'
  end
  object Panel4: TPanel [17]
    Left = 461
    Top = 91
    Width = 125
    Height = 99
    Color = clAqua
    TabOrder = 6
    object Panel3: TPanel
      Left = 4
      Top = 4
      Width = 117
      Height = 91
      BevelOuter = bvLowered
      TabOrder = 0
      object Label16: TLabel
        Left = 7
        Top = 47
        Width = 32
        Height = 13
        Caption = 'Celular'
      end
      object Label11: TLabel
        Left = 6
        Top = 5
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object FacDBEdit6: TFacDBEdit
        Left = 6
        Top = 21
        Width = 99
        Height = 21
        AutoSelect = False
        DataField = 'TELEFONE'
        DataSource = DtSrc
        TabOrder = 0
        CaseMode = cmNormal
        ColorOnFocus = clYellow
        EnterLikeTab = True
      end
      object FacDBEdit7: TFacDBEdit
        Left = 6
        Top = 61
        Width = 99
        Height = 21
        AutoSelect = False
        DataField = 'CELULAR'
        DataSource = DtSrc
        TabOrder = 1
        CaseMode = cmNormal
        ColorOnFocus = clYellow
        EnterLikeTab = True
      end
    end
  end
  inherited Panel1: TPanel
    Top = 408
    Width = 605
    inherited btnCancelar: TdxButton
      Left = 309
    end
    inherited btnGravar: TdxButton
      Left = 207
    end
    inherited btnSair: TdxButton
      Left = 411
    end
    inherited btnExcluir: TdxButton
      Left = 309
    end
    inherited btnIncluir: TdxButton
      Left = 207
    end
    object dxButton2: TdxButton
      Left = 105
      Top = 7
      Width = 82
      Height = 28
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      PopupMenu = PopupMenu1
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'Procura'
      Colors.BackgroundFrom = 13029334
      Glyph.Data = {
        C2070000424DC20700000000000036000000280000001E000000150000000100
        1800000000008C070000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
        A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
        108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
        CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
        2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
        FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
        30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
        EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
        3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
        BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
        E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
        AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
        A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
        FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
        20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
        FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
        CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
        4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
        FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
        C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
        CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000}
      TabOrder = 5
    end
  end
  object FacDBEdit1: TFacDBEdit [19]
    Left = 16
    Top = 65
    Width = 65
    Height = 21
    TabStop = False
    AutoSelect = False
    Color = clSilver
    DataField = 'COD_FUNCIONARIO'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 1
    CaseMode = cmNormal
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit2: TFacDBEdit [20]
    Left = 88
    Top = 65
    Width = 411
    Height = 21
    AutoSelect = False
    DataField = 'NOME'
    DataSource = DtSrc
    TabOrder = 2
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit3: TFacDBEdit [21]
    Left = 504
    Top = 65
    Width = 81
    Height = 21
    AutoSelect = False
    DataField = 'DATANASC'
    DataSource = DtSrc
    MaxLength = 8
    TabOrder = 3
    CaseMode = cmNormal
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit5: TFacDBEdit [22]
    Left = 408
    Top = 113
    Width = 49
    Height = 21
    AutoSelect = False
    DataField = 'NR'
    DataSource = DtSrc
    TabOrder = 5
    CaseMode = cmNormal
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit8: TFacDBEdit [23]
    Left = 16
    Top = 161
    Width = 186
    Height = 21
    AutoSelect = False
    DataField = 'COMPL'
    DataSource = DtSrc
    TabOrder = 7
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit9: TFacDBEdit [24]
    Left = 208
    Top = 161
    Width = 249
    Height = 21
    AutoSelect = False
    DataField = 'BAIRRO'
    DataSource = DtSrc
    TabOrder = 8
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit10: TFacDBEdit [25]
    Left = 16
    Top = 209
    Width = 425
    Height = 21
    AutoSelect = False
    DataField = 'CIDADE'
    DataSource = DtSrc
    TabOrder = 9
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit11: TFacDBEdit [26]
    Left = 448
    Top = 209
    Width = 43
    Height = 21
    AutoSelect = False
    DataField = 'UF'
    DataSource = DtSrc
    TabOrder = 10
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit12: TFacDBEdit [27]
    Left = 498
    Top = 209
    Width = 89
    Height = 21
    AutoSelect = False
    DataField = 'CEP'
    DataSource = DtSrc
    TabOrder = 11
    CaseMode = cmNormal
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit13: TFacDBEdit [28]
    Left = 16
    Top = 254
    Width = 201
    Height = 21
    AutoSelect = False
    DataField = 'CPF'
    DataSource = DtSrc
    TabOrder = 12
    CaseMode = cmNormal
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit14: TFacDBEdit [29]
    Left = 232
    Top = 254
    Width = 199
    Height = 21
    AutoSelect = False
    DataField = 'RG'
    DataSource = DtSrc
    TabOrder = 13
    CaseMode = cmNormal
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit15: TFacDBEdit [30]
    Left = 16
    Top = 335
    Width = 415
    Height = 21
    AutoSelect = False
    DataField = 'PAI'
    DataSource = DtSrc
    TabOrder = 15
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object FacDBEdit16: TFacDBEdit [31]
    Left = 16
    Top = 376
    Width = 415
    Height = 21
    AutoSelect = False
    DataField = 'MAE'
    DataSource = DtSrc
    TabOrder = 16
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object GroupBox1: TGroupBox [32]
    Left = 441
    Top = 248
    Width = 145
    Height = 148
    Caption = 'Obs'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 17
    object Panel5: TPanel
      Left = 6
      Top = 13
      Width = 133
      Height = 130
      BevelOuter = bvNone
      Color = clAqua
      TabOrder = 0
      object DBMemo2: TDBMemo
        Left = 3
        Top = 4
        Width = 127
        Height = 123
        DataField = 'OBS'
        DataSource = DtSrc
        TabOrder = 0
      end
    end
  end
  object FacDBEdit4: TFacDBEdit [33]
    Left = 16
    Top = 113
    Width = 390
    Height = 21
    AutoSelect = False
    DataField = 'ENDERECO'
    DataSource = DtSrc
    TabOrder = 4
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  object Panel2: TPanel [34]
    Left = 0
    Top = 0
    Width = 605
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = 11189162
    TabOrder = 18
    object DBText1: TDBText
      Left = 18
      Top = 6
      Width = 558
      Height = 28
      DataField = 'NOME'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 17
      Top = 5
      Width = 559
      Height = 28
      DataField = 'NOME'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = 8344832
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object FacDBEdit17: TFacDBEdit [35]
    Left = 16
    Top = 294
    Width = 377
    Height = 21
    AutoSelect = False
    DataField = 'CARGO'
    DataSource = DtSrc
    TabOrder = 14
    CaseMode = cmUpperCase
    ColorOnFocus = clYellow
    EnterLikeTab = True
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_funcionario
    Top = 41
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
    Left = 464
    Top = 8
  end
end
