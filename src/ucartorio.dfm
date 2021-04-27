inherited fCartorio: TfCartorio
  Left = 237
  Top = 157
  Width = 470
  Height = 322
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 43
    Width = 36
    Height = 13
    Caption = 'Cart'#243'rio'
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 83
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 123
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label4: TLabel [3]
    Left = 208
    Top = 123
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 163
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label6: TLabel [5]
    Left = 81
    Top = 163
    Width = 19
    Height = 13
    Caption = 'Cep'
  end
  object Label8: TLabel [6]
    Left = 192
    Top = 163
    Width = 24
    Height = 13
    Caption = 'Fone'
  end
  object Label9: TLabel [7]
    Left = 320
    Top = 163
    Width = 17
    Height = 13
    Caption = 'Fax'
  end
  object Label7: TLabel [8]
    Left = 16
    Top = 203
    Width = 37
    Height = 13
    Caption = 'Contato'
  end
  inherited Panel1: TPanel
    Top = 246
    Width = 462
    inherited btnCancelar: TdxButton
      Left = 240
    end
    inherited btnGravar: TdxButton
      Left = 140
    end
    inherited btnSair: TdxButton
      Left = 341
    end
    inherited btnExcluir: TdxButton
      Left = 240
    end
    inherited btnIncluir: TdxButton
      Left = 140
    end
    object dxButton2: TdxButton
      Left = 39
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
  object DBEdit1: TDBEdit [10]
    Left = 16
    Top = 59
    Width = 425
    Height = 21
    DataField = 'NOME'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [11]
    Left = 16
    Top = 99
    Width = 425
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [12]
    Left = 16
    Top = 139
    Width = 185
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [13]
    Left = 208
    Top = 139
    Width = 233
    Height = 21
    DataField = 'CIDADE'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [14]
    Left = 16
    Top = 179
    Width = 57
    Height = 21
    DataField = 'ESTADO'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [15]
    Left = 81
    Top = 179
    Width = 105
    Height = 21
    DataField = 'CEP'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [16]
    Left = 192
    Top = 179
    Width = 121
    Height = 21
    DataField = 'FONE'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [17]
    Left = 320
    Top = 179
    Width = 121
    Height = 21
    DataField = 'FAX'
    DataSource = DtSrc
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [18]
    Left = 16
    Top = 219
    Width = 425
    Height = 21
    DataField = 'NOME'
    DataSource = DtSrc
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object Panel3: TPanel [19]
    Left = 0
    Top = 0
    Width = 462
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
    TabOrder = 10
    object Label10: TLabel
      Left = 129
      Top = 8
      Width = 202
      Height = 24
      Caption = 'Cadastro de Cart'#243'rios'
    end
    object Label11: TLabel
      Left = 131
      Top = 8
      Width = 202
      Height = 24
      Caption = 'Cadastro de Cart'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 336
    Top = 99
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_cartorio
    Left = 305
    Top = 100
  end
  object proc_cartorio: TSQLClientDataSet
    CommandText = 
      'select  ID_CARTORIO'#13#10'         , NOME '#13#10'from CARTORIO '#13#10'where NOM' +
      'E like :pnome'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 272
    Top = 99
    object proc_cartorioID_CARTORIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CARTORIO'
      Required = True
    end
    object proc_cartorioNOME: TStringField
      DisplayLabel = 'Cart'#243'rio'
      FieldName = 'NOME'
      Size = 80
    end
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -13
    Font.Name = 'Calibri'
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
    Left = 240
    Top = 99
  end
end
