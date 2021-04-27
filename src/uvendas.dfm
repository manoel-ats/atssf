inherited fVendas: TfVendas
  Left = 231
  Top = 141
  Width = 692
  Height = 482
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 7
    Top = 108
    Width = 44
    Height = 16
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 131
    Top = 108
    Width = 20
    Height = 16
    Caption = 'UN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 174
    Top = 108
    Width = 29
    Height = 16
    Caption = 'Qtde'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [3]
    Left = 326
    Top = 108
    Width = 31
    Height = 16
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [4]
    Left = 229
    Top = 108
    Width = 32
    Height = 16
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    Top = 412
    Width = 684
    inherited btnGravar: TdxButton [0]
      Left = 256
    end
    inherited btnIncluir: TdxButton [1]
      Left = 128
    end
    inherited btnCancelar: TdxButton [2]
      Left = 380
    end
    inherited btnExcluir: TdxButton [3]
      Left = 380
    end
    inherited btnSair: TdxButton
      Left = 497
    end
  end
  object Panel3: TPanel [6]
    Left = 0
    Top = 0
    Width = 684
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
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Label2: TLabel
      Left = 180
      Top = 6
      Width = 293
      Height = 29
      Caption = #211'bitos - Lan'#231'ar Despesas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 183
      Top = 7
      Width = 293
      Height = 29
      Caption = #211'bitos - Lan'#231'ar Despesas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object DBEdit4: TDBEdit [7]
    Left = 6
    Top = 124
    Width = 83
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ID_PRODUTO'
    DataSource = DtSrc_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnExit = DBEdit4Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [8]
    Left = 131
    Top = 124
    Width = 39
    Height = 24
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    DataField = 'UN'
    DataSource = DtSrc_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [9]
    Left = 174
    Top = 124
    Width = 52
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'QUANTIDADE'
    DataSource = DtSrc_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [10]
    Left = 5
    Top = 148
    Width = 566
    Height = 257
    TabStop = False
    BorderStyle = bsNone
    DataSource = DtSrc_itens
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'C'#243'digo'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Produto'
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Qtde'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Pre'#231'o un.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Total'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 40
        Visible = True
      end>
  end
  object GroupBox5: TGroupBox [11]
    Left = 573
    Top = 106
    Width = 110
    Height = 73
    Caption = 'Total NF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    object DBEdit10: TDBEdit
      Left = 6
      Top = 25
      Width = 98
      Height = 32
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'VALOR_NF'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
    end
  end
  object DBEdit3: TDBEdit [12]
    Left = 325
    Top = 124
    Width = 93
    Height = 24
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    DataField = 'VALTOTAL'
    DataSource = DtSrc_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [13]
    Left = 229
    Top = 124
    Width = 93
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PRECO_REAL'
    DataSource = DtSrc_itens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object GroupBox1: TGroupBox [14]
    Left = 572
    Top = 46
    Width = 110
    Height = 57
    Caption = 'Data Emiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    object DBEdit1: TDBEdit
      Left = 6
      Top = 20
      Width = 98
      Height = 24
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DATAMOVIMENTO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox [15]
    Left = 5
    Top = 46
    Width = 564
    Height = 57
    Caption = 'Falecido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    object DBEdit2: TDBEdit
      Left = 14
      Top = 21
      Width = 539
      Height = 24
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FALECIDO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
  object btnNovo: TBitBtn [16]
    Left = 421
    Top = 112
    Width = 76
    Height = 36
    Caption = 'Novo'
    PopupMenu = PopupMenu1
    TabOrder = 8
    OnClick = btnNovoClick
    Glyph.Data = {
      1E060000424D1E06000000000000360000002800000018000000150000000100
      180000000000E8050000120B0000120B00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302F60302F7F7F
      7FCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF9790
      FF979000FFFF60302F60302FCF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F60302FFF
      9790FFC8CFFFC8CFFFC8CF00FFFFFFC8CF60302FCF6760CF6760CF67607F7F7F
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F6030
      2FFF9790FFC8CF00FFFFCFFFFFFFC8CFFFC8CFCFFFFFFFC8CFCF676060302FCF
      6760CF6760CF67607F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      7F7F7FCF6760FFC8CF00FFFFFFC8CFFFC8CF7F7F7F7F7F7FCFFFFFFFC8CFCFFF
      FFFFC8CF60302FFF0000CF6760CF6760CF67607F7F7F7F7F7FBFBFBFBFBFBFBF
      BFBFBFBFBF7F7F7FFF9790FFC8CF00FFFFCFFFFF7F7F7F7F7F7FFFC8CF00FFFF
      FFC8CF00FFFFFFC8CFCFFFFFCF67600000FFFF0000FF00007F7F7F7F7F7F7F7F
      7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF00FFFFFFC8CFFFC8CF7F7F7FFFC8CFCF
      FFFFFFC8CF7F7F7F7F7F7FCFFFFFCFFFFFFFC8CFCFFFFF60302F0000FFFF0000
      CF67607F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFF
      FFFFFFFF00FFFF7F7F7F7F7F7FCFFFFFCFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCF
      6760FF97900000FFFF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFFFC8CFFFFFFFFFFFFF1F201F7F7F7FCFFFFFCFFFFF7F7F7F7F7F7FCFFF
      FFFFC8CFCFFFFFFFC8CF60302FFFC8CF0000FFFF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8CFCF6760CF67601F201F7F7F7F7F7F7F
      CFFFFFCFFFFFFFC8CFCFFFFFFFC8CFCFFFFFCF6760CFFFFFFF97900000FFFF00
      00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8CFFF9790CF
      67601F201F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFC8CFFFFFFF60302F
      CFFFFFFF97900000FFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FFC8
      CFFFC8CFFF9790FF9790CF67601F201F7F7F7FCFFFFFFFFFFFCFFFFFFFFFFFCF
      FFFFFFC8CFCF6760FFFFFFFFFFFFFF00000000FFCF6760BFBFBFBFBFBFBFBFBF
      CF6760FFC8CFFFC8CFFFC8CFFF9790FF9790FF9790CF67601F201F7F7F7FFFFF
      FFFFFFFFFFFFFFFFC8CFCFFFFFFFC8CFFFFFFFFFFFFFFFFFFFCF6760CF6760BF
      BFBFBFBFBFCF6760FFC8CFFFFFFFFFC8CFFFC8CFFF9790CF6760CF6760CF6760
      CF67601F201F7F7F7FFFFFFF3F3700CFFFFFCF6760FFFFFF0000FF0000FF0000
      FFCF6760BFBFBFBFBFBFBFBFBF60302F60302F60302FFFC8CFFFC8CFFF9790CF
      67601F201F1F201F1F201F1F201F1F201FFFFFFFFFFFFFFFC8CFFFFFFFFFFFFF
      FFFFFFFFC8CFCF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFC8
      CFFFC8CFFF9790CF67601F201F60302F60302F60302F60302FFFC8CFFFC8CFFF
      FFFFFF0000FF0000CF6760BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      FF9790FFC8CFFFC8CFFFFFFFFF9790CF67601F201F60302F0000FF0000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFCF6760FFFFFFFFFFFFFFC8CFFF9790CF67601F201F60302F
      BFBFBFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760FF9790FF9790FF9790FF9790CF
      67601F201F60302FBFBFBFBFBFBFFF0000FF0000BFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCF6760CF6760CF67
      60CF6760CF67601F201F60302F7F7F7FFFC8CFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF}
  end
  object BitBtn8: TBitBtn [17]
    Left = 496
    Top = 112
    Width = 76
    Height = 36
    Caption = 'Excuir'
    PopupMenu = PopupMenu1
    TabOrder = 9
    OnClick = BitBtn8Click
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
      DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
      FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
      5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
      DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
      FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
      5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
      DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
      FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
      5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
      9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
      8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
      1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
      0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
      6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
      0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
      0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
      6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
      0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
      00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
      6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
      0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
      000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
      8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
      1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
      920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
      FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
      5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
      9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
      3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00073307070707
      0707070707070707070707070707070707070707070707333333333333070707
      0707070707070707070707070707070707070707070733333307073333330707
      0707070707070707070707070707070707070707073333330707070733333307
      ECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF333333EF0707070707333333
      EBE5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5333333E5EF0707070707073333
      33E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3333333E3E5EF0707070707070733
      3333151515151515151515151515151515333333FFFFE5EF0707070707070707
      33333333FFFFFFFFFFFFFFFFFFFFFFFF333333FFFFFFE5EF0707070707070707
      EC33333333FFFFFFFFFFFFFFFFFFFF333333FFFFFFFFE5EF0707070707070707
      ECFF153333331515151515151515333333151515FFFFE5EF0707070707070707
      ECFFFFFF333333FFFFFFFFFFFF333333FFFFFFFFFFFFE5EF0707070707070707
      ECFFFFFFFF333333FFFFFFFF333333FFFFFFFFFFFFFFE5EF0707070707070707
      ECFFFFFFFFFF333333FFFF333333FFFFFFFFFFFFFFFFE5EF0707070707070707
      ECFF151515151533333333333315151515151515FFFFE5EF0707070707070707
      ECFFFFFFFFFFFFFF33333333FFFFFFFFFFFFFFFFFFFFE5EF0707070707070707
      ECFFFFFFFFFFFF3333333333FFFFFFFFFFFFFFFFFFFFE5EF0707070707070707
      ECFFFFFFFFFF333333FF333333FFFFFFFFFFFFFFFFFFE5EF0707070707070707
      ECFF151515333333151515333333151515151515FFFFE5EF0707070707070707
      ECFFFFFF333333FFFFFFFFFF333333FFFFFFFFFFFFFFE5EF0707070707070707
      ECFFFF333333FFFFFFFFFFFFFF333333FFFFFFFFFFFFE5EF0707070707070707
      ECFF333333FFFFFFFFFFFFFFFFFF333333FFFFFFFFFFE5EF0707070707070707
      EC33333315151515151515151515153315331515FFFFE5EF0707070707070707
      333333FFFFFFFFFFFFFFFFFFFFFFFFFF33333333E9E9ECEF0707070707070733
      3333FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EF333333F2F2F20707070707073333
      33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E9FF333333EF070707070707333333
      ECFF1515151515151515151515151515F6E9E3E5333333070707070733333307
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E9E5E9EF3333330707073333330707
      ECFFF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6E9E9EF070733333307333333070707
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EF07070707333333073307070707
      ECEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB0707070707073333070707070707
      0707070707070707070707070707070707070707070707070707070707070707
      0707070707070707070707070707070707070707070707070707}
  end
  object BitBtn1: TBitBtn [18]
    Left = 91
    Top = 112
    Width = 37
    Height = 36
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000C0C0C08D958B
      828478909488C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07892A3576A77
      979EA19699978B958FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05595D66C9BD1
      5162839396A48C92918B928BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06BAFFC84C0FF
      6E97CE4E6A8D94A4B18890908F9493C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A9D2FF7EB4F0
      6CBAFF4B93D340618896A2B4868D9095958FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      6DC0FE66BDFF6197CE405F8690A0B18E9392959283C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      9CCDED7FC4F570BAFA5D9AD844628B8C98AA919B95727B677175628585777A74
      6D827D7A737877737B7A727A79777A71817D64897E5E927D61937C62917B628D
      7862927E65927D629A8266927D5D91835F888062807D6FA8A8A2C0C0C0C0C0C0
      C0C0C0C0C0C07DC2FB73B5F66F97D24E658B8C9DA05B6656434532767162847B
      71716B664D4F4F4C54545A626157584E574F325A472162451E67492063482362
      4823624B255D441C6A4D216046185F491F554625524E3C97958DC0C0C0C0C0C0
      C0C0C0C0C0C06A8DAF8FBBF083B4FA7299D063768381847B877F788F857B9895
      8697978B959294ABABB18F92967877738B7C6C887052866A3B826630826A3484
      6F3B7F6D387E6A33866E34876F3B81694595836C2D23198A8582C0C0C0C0C0C0
      C0C0C0C0C0C08993A4A7BDE182AAE595BDEE8995A19A948D9E8D84D9CBBFE2E0
      CEFAFDEEF8F3F4F7F3F9E7EBECDFDDDCA0948A937E69E6CFA9FFFFDCFFFFD4FF
      FFD3FFFFD9FFFFD5FFFFD8FFFFD8FFFADFF2E2D2463B338B8580C0C0C0C0C0C0
      C0C0C0C0C0C0918E90E8E6F2CEE1FCC8DAF1ACAAAAA39484EBD4BEFEECD5FDFA
      E5FFFFF4FBF8F3FFFEFDF4FBF4F8FDF4F1EDE8B3AAA1857A6CCFC3B1FAF3E0F6
      F0DDF6F5E0E9E8D3F2F1DCF2EEDBFFFFF5E5DFD4433D32928C81C0C0C0C0C0C0
      C0C0C0C0C0C0AD9D91FFF0E9F2F5FDF8FCFFA69689CCB399FCE1BFF7E3C0F3ED
      D0FAFBE7FAFBF1DADED9DEE2DCEEF2ECE4E5E1FEFBF7A09B9A7772718B888481
      827E808780828984FAFFFCFBFFFCF8F8F2E1DED6443C35887F76C0C0C0C0C0C0
      C0C0C0C0C0C0B79E84FFECD7FEF9FAE2DEDDDFC5A7FFE9BDFFEFC2FFE9BCFFFB
      D3FFFFE1FBFFF5EFF6F3F6F7FBFCFBFFFFFFFCF4F1ECE1DCDD716C6EBCBCBCF8
      FDFCF7FFFEF1FCFAEEF8F8F5FBFAFFFFFBE2DED945373B918188C0C0C0C0C0C0
      C0C0C0C0C0C0BB997BFFF2D6FFFDF7BFB5AEFEE0C3F2CBA4DABA91CEB589FFF3
      C3FFFFDFF5FAEBF5FDFDC4C7CFC6C9CEC2C2BCFAF7F2FEF9FB86808B6C6A7E00
      0015000016000010F3FDFFF2FAFAF5F9F3DEDED83F383D8E828EC0C0C0C0C0C0
      C0C0C0C0C0C0C9A58DFFE8CFF3DDD2DAC8C1D2B7A9E6C5B5DDBCA9EDD1B3FFF7
      C1FFFFD8F6F6EACAD0D5C5D4D7C2D0CEC2CAC0FEFCF4FEF7FCA49AB16A629712
      0E4F0D0F50202556E5EDFFF3FCFFF9FFF9DEE6DC363A3B7B7F84C0C0C0C0C0C0
      C0C0C0C0C0C0BD9882FFEED7F4D7CED2BFB8FFFAF2D4BEB2F4D2C5DFC1A6FFF4
      BCFEF9C2FFFFEEF8F9EFC9D8CAE4F7E4D1DAC0FFFFECFDF5F5B0A7C26E67A434
      3181E4E6FF060C4FEEF6FFF5FEFFF6FFF5D3DACD363A35878A88C0C0C0C0C0C0
      C0C0C0C0C0C0BF9D86FFE8D2FDE0DCD3C2BFFFFCEAEAE0C8E0C1AAE0C09DFFEC
      B5FFF7BCFFF4C4FFFFDCFFFFDAD7E3B3D8E3ABEDF2C5FFFEF39F99AC7678A832
      387B293282081258E7F1FFF1FBFFF6FFF2E1E2CE433A2D99887FC0C0C0C0C0C0
      C0C0C0C0C0C0BE9B87FFF7E5FFECEBCABCBDF1F4E4FEFEE6F1DAC4FFE4C7F3DC
      AFFEECB7FFFBC6FFEEBBFFF8C3F5F4BCF9FFBDF5F9C5E5E1CF837E87C7C9E7E7
      EDFFE3ECFFE6EFFFEBF5FFF0FAFFFAFFF2DFDDC54B3A259C836FC0C0C0C0C0C0
      C0C0C0C0C0C0C39A8BFFF1E2FFF5F1E6DCDCB1B8B1D7DDD2F1E3DDF6E0D4F8E4
      CBF5E2C1F6DFBFE8D0ACE6CCA4E3CFA0F4EFB8F7F5C5D0C9B59A939087828B7E
      7E907C7C9A6F7390EFF5FFEFF5FAFCFFF6E7E6CC412F10AC926EC0C0C0C0C0C0
      C0C0C0C0C0C0C19B89FFE5D6FFF8F5FEFCFF99A2ABE5ECF5FFFAFCFFFEFAFFF8
      EAE6D8C1F6E7C6F5E1B8FFE6BDFFE4B8FFF3C8EBE2C0918D7BC7C1BAFFFBF7FF
      FEFCFFF8FCFFF9FFFAFCFFF5FCFFF9FDF1E8E3CA463310AB926AC0C0C0C0C0C0
      C0C0C0C0C0C0BA9B84FFF0D8FFFCFDEEF5FFD9E2FF747C9A9DA3A8C7C8BFFFF9
      F0FFFFEDE7EAB2EFEDA7DFCC8FF4D8A9B49C80B2A597AFB0AEF8F6F5FFFBF424
      01002200001F0903EEF1F5F6FFFFFFFFF3EEE2CA49371A9D8868C0C0C0C0C0C0
      C0C0C0C0C0C0BD9E85FFF4DAFCFDFBE3F0FF0D15510B1454808AB2949BAEEBEE
      F2FCFEEBEEF7C5EAEFAAEFE79ACDBF7D90805BCBC4B5EDF8F6FFFEFF33080547
      08004E1000370B00FFFFFEECF4F3FFFCEFEADDC746381C9D8F72C0C0C0C0C0C0
      C0C0C0C0C0C0C89E87FFECD6FDFBF3EBF7FFDBE2FF2A2E9EC1CAFF0C1965818D
      A589938DA2A69AB4B88EB0B95ED3DE787A823CFDFFDFF0FFF7FAF4F9FFECFBA7
      444EFFA79F4D0500FFF4F3FDFFFFFFFAF1EAE0CE3B351892906EC0C0C0C0C0C0
      C0C0C0C0C0C0CE9D83FFEFD4FFFDEFF8F8FFEDE5FF3C328F342D8E141159F4F3
      FFFFFCF7FFFAF6FFFFE58385337D8423777933FFFFD9FAFFECFFFEFBFFEDF7A7
      474DA9483A5C0E00FFF8F3FFF7F2FFFAEBECDEC8403B228B8A6EC0C0C0C0C0C0
      C0C0C0C0C0C0D2A07CFFF0CDFFFDE9FFF8F1FFE6EAFFE3EFFFE2F3FFE3EFFFE9
      E0FFECD9FFECD9FFF0D2FFF7C5FFFAC4FFF4CEFFEED2FFEDD6FFEEDAFFEBD9FF
      E8D2FFEECEFFEFD1FFF5E2FFFAE5FFFFE4FFE2C3564635968E81C0C0C0C0C0C0
      C0C0C0C0C0C0C38B5AE7A46BD39870D6A17CDB9F75DB9F75DB9D77DB9D77E09F
      73E29F72E29E73DE9F73D5A172D39F70D99E71DE9E75DFA178DBA177D19970C8
      9166C38857E7A777CB825CCB865FD8A071AC845A4B331D948277C0C0C0C0C0C0
      C0C0C0C0C0C0A468229D4E00873A008C3E008E3C008E3C008E3C008E3D00903F
      00913F00933B00913B008A3F008740008C4200914200923E00913A0091360093
      3801973D009D42009C42028C390094531695632E5B3816B69A82C0C0C0C0C0C0
      C0C0C0C0C0C0AE772EB46B0FCB7F2DCC7E31CE7C2ECE7D2CCC7E2BCA8028C883
      22C88322CA7F29C87E2CC7812DC88227CD851FD08420CF7C27CF782ED97C3DE3
      8647EE9249CF792DFFAE63D38B43C88D48B88A54664623F9E0C6C0C0C0C0C0C0
      C0C0C0C0C0C0C6A167BC8940C18B4CAE773AB27D3AB27E37B48034B18230A886
      2DA1862FA18433A28334AA8436AD7F31B57E2DBA8132B67F3CB57C3EB77A3ABA
      7D3BB47934B9833CB0853CA781399C7939AE9361E0CFB5C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 520
    Top = 8
    inherited Procurar1: TMenuItem
      OnClick = BitBtn2Click
    end
    object IncluirItem1: TMenuItem
      Caption = 'Incluir Iten'
      ShortCut = 45
      OnClick = btnNovoClick
    end
    object ExcluirIten1: TMenuItem
      Caption = 'Excluir Iten'
      ShortCut = 46
      OnClick = btnSalvaClick
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_mov_OB
    Left = 139
    Top = 245
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
    Left = 552
    Top = 8
  end
  object proc_produto: TSQLClientDataSet
    CommandText = 
      'select ID_PRODUTO'#13#10'        , DESCRICAO'#13#10'        , UN'#13#10'        , ' +
      'V_VENDA '#13#10'        , VC_REAL '#13#10'from PRODUTOS'#13#10'where DESCRICAO Lik' +
      'e :pnome'
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
    Left = 450
    Top = 227
    object proc_produtoID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object proc_produtoDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object proc_produtoUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 3
    end
    object proc_produtoV_VENDA: TFloatField
      FieldName = 'V_VENDA'
    end
    object proc_produtoVC_REAL: TFloatField
      FieldName = 'VC_REAL'
    end
  end
  object proc_prod: TSQLClientDataSet
    CommandText = 
      'select ID_PRODUTO'#13#10'        , DESCRICAO'#13#10'        , UN'#13#10'        , ' +
      'V_VENDA'#13#10'from PRODUTOS'#13#10'where ID_PRODUTO = :pid'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 482
    Top = 227
    object proc_prodID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object proc_prodDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object proc_prodUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 3
    end
    object proc_prodV_VENDA: TFloatField
      FieldName = 'V_VENDA'
    end
  end
  object DtSrc_itens: TDataSource
    DataSet = DM.cds_itens
    OnStateChange = DtSrc_itensStateChange
    Left = 144
    Top = 295
  end
  object sds_lote1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 296
    Top = 303
  end
  object cds_venda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_venda'
    Left = 136
    Top = 359
    object cds_vendaID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_vendaID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
    object cds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaOUTRAS_RECE: TFloatField
      FieldName = 'OUTRAS_RECE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_vendaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_vendaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsp_venda: TDataSetProvider
    DataSet = sds_venda
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 359
  end
  object sds_venda: TSQLDataSet
    CommandText = 
      'select v.* '#13#10'         , func.NOME '#13#10'from VENDA v '#13#10'left outer jo' +
      'in FUNCIONARIOS func  '#13#10'on func.COD_FUNCIONARIO = v.CODVENDEDOR'#13 +
      #10'where ID_MOVIMENTO = :pid '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 72
    Top = 359
    object sds_vendaID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_vendaID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_vendaNUMEROBORDERO: TIntegerField
      FieldName = 'NUMEROBORDERO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaBANCO: TSmallintField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaDATASISTEMA: TDateField
      FieldName = 'DATASISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_vendaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaCAIXA: TSmallintField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaMULTA_JUROS: TFloatField
      FieldName = 'MULTA_JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaAPAGAR: TFloatField
      FieldName = 'APAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_vendaSTATUS1: TStringField
      FieldName = 'STATUS1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_vendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaOUTRAS_RECE: TFloatField
      FieldName = 'OUTRAS_RECE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sds_vendaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_vendaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object proc_mov: TSQLClientDataSet
    CommandText = 
      'select '#13#10'    m.id_movimento,'#13#10'    m.datamovimento,'#13#10'    m.valor_' +
      'nf'#13#10'from movimento m'#13#10'   inner join venda v on (m.id_movimento =' +
      ' v.id_movimento)'#13#10'   where v.id_cliente = 0'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.SQLObitos
    Left = 600
    Top = 280
    object proc_movID_MOVIMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_MOVIMENTO'
      Required = True
    end
    object proc_movDATAMOVIMENTO: TDateField
      DisplayLabel = 'Data Compra'
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object proc_movVALOR_NF: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_NF'
    end
    object proc_movNOME_FERNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME_FERNECEDOR'
      Size = 60
    end
  end
  object cdsP: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    ProviderName = 'dspP'
    Left = 480
    Top = 296
    object cdsPID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsPESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
    end
  end
  object dspP: TDataSetProvider
    DataSet = sqlP
    Left = 424
    Top = 296
  end
  object sqlP: TSQLDataSet
    CommandText = 
      'select ID_PRODUTO , ESTOQUE from PRODUTOS'#13#10'where ID_PRODUTO  = :' +
      'pID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pID'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 376
    Top = 296
    object sqlPID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object sqlPESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
    end
  end
end
