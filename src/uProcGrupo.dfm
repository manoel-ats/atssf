object fProcGrupo: TfProcGrupo
  Left = 172
  Top = 51
  Width = 809
  Height = 582
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 54
    Align = alTop
    Color = 11189162
    TabOrder = 0
    object Label3: TLabel
      Left = 275
      Top = 7
      Width = 237
      Height = 27
      Caption = 'FILTRO DE PROCURA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 277
      Top = 7
      Width = 237
      Height = 27
      Caption = 'FILTRO DE PROCURA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Panel5: TPanel
      Left = 4
      Top = 5
      Width = 169
      Height = 45
      TabOrder = 0
      object RxLabel3: TRxLabel
        Left = 9
        Top = 3
        Width = 45
        Height = 16
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 63
        Top = 2
        Width = 35
        Height = 16
        Caption = 'Insc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditProc: TEdit
        Left = 12
        Top = -100
        Width = 51
        Height = 21
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 63
        Top = 18
        Width = 57
        Height = 21
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 11
        Top = 18
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 123
        Top = 15
        Width = 34
        Height = 25
        Caption = '...'
        TabOrder = 3
        OnClick = BitBtn2Click
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 55
    Width = 792
    Height = 53
    BevelInner = bvLowered
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 6
      Top = 5
      Width = 56
      Height = 17
      Caption = 'Nome'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 67
      Top = 5
      Width = 93
      Height = 17
      Caption = 'Sobrenome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 314
      Top = 8
      Width = 58
      Height = 14
      Caption = 'Bairro'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 379
      Top = 6
      Width = 69
      Height = 17
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox4Click
    end
    object Panel4: TPanel
      Left = 622
      Top = 3
      Width = 167
      Height = 47
      Color = 11189162
      TabOrder = 4
      Visible = False
      object RadioButton2: TRadioButton
        Left = 8
        Top = 19
        Width = 57
        Height = 17
        Caption = 'S'#243'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = RadioButton2Click
      end
      object RadioButton1: TRadioButton
        Left = 65
        Top = 19
        Width = 98
        Height = 18
        Caption = 'Dependentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton1Click
      end
    end
    object Edit3: TEdit
      Left = 5
      Top = 24
      Width = 308
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 314
      Top = 24
      Width = 304
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 109
    Width = 790
    Height = 386
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Grupo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_INSCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Incr.'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOBRENOME'
        Title.Caption = 'Sobrenome'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_DEP'
        Title.Caption = 'Nome'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Tipo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MUNICIPIO'
        Title.Caption = 'Cidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Cobrador'
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 497
    Width = 793
    Height = 47
    Align = alBottom
    Color = 11189162
    TabOrder = 3
    object dxButton3: TdxButton
      Left = 348
      Top = 6
      Width = 98
      Height = 34
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      Caption = '&Confirma'
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D8050000120B0000120B00000000000000000000FFFFFF8BA473
        6084403364003364003364003364003364003364003364003364003364003364
        00336400336400336400336400336400336400336400608440FFFFFF0000D2D0
        D292BB8533990033990033990033990033990033990033990033990033990033
        9900339900339900339900339900339900339900339900339900336400608440
        00009BCD9C3399003399003399003399003399003399003399003399006DB04F
        6DB04F6DB04F6DB04F5199223399003399003399003399003399003399003399
        0033640000009BCD9C33990033990033990033990033990033990033990085C0
        65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A62933990033990033990033990033
        990033990033640000009BCD9C33990033990033990033990033990033990066
        A83CF1F7E8FFFFFFF3EEF5E2F3D5FCFEF2FFFFFFB4C4A7339900339900339900
        33990033990033990033640000009BCD9C339900339900339900339900339900
        369A02B5D298FFFFFFB4DC8F66A83C48A41B7DBF4EF1F7E8FFFFFF66A83C3399
        0033990033990033990033990033640000009BCD9C3399003399003399003399
        0033990064AA44F3EEF5FFFFFF2B95003399003097043399002B9500FFFFFFC8
        E3B733990033990033990033990033990033640000009BCD9C33990033990033
        9900339900369A026DB04FFFFFFFFFFFFF2F9800309704429F173399002F9800
        FFFFFFC8E3B733990033990033990033990033990033640000009BCD9C339900
        339900339900339900339900339900D1E3C7FFFFFF429F17B4DC8FE2F3D585C0
        65339100FFFFFF9BCD9C33990033990033990033990033990033640000009BCD
        9C33990033990033990033990033990033990033990085C065A0D37EFFFFFFFF
        FFFFFCFEF27DBF4E85C065339900339900339900339900339900339900336400
        00009BCD9C339900339900339900339900339900339900339900339900F2F9F5
        FFFFFFFFFFFFFFFFFFE7F2E93399003399003399003399003399003399003399
        0033640000009BCD9C33990033990033990033990033990033990033990064AA
        44FFFFFFEEEBEFD1E3C7F6F1FAFFFFFF369A0233990033990033990033990033
        990033990033640000009BCD9C33990033990033990033990033990033990033
        9900D1E3C7FFFFFFB5D298339900D1E3C7FFFFFFA3D1A2369A02369A02339900
        33990033990033990033640000009BCD9C339900339900339900339900339900
        339900A2C48CFFFFFFEEEBEF56A629369A026DB04FFEF8FFFFFFFF6DB04F3399
        0033990033990033990033990033640000009BCD9C3399003399003399003399
        0033990064AA44F3EEF5FFFFFF85C065339900339900339900B5D298FFFFFFE3
        E3E133990033990033990033990033990033640000009BCD9C33990033990033
        9900369A02A2C48CFFFFFFFFFFFFFFFFFF309704339900339900339900339900
        FFFFFFFFFFFFFEF8FF6DB04F369A0233990033990033640000009BCD9C339900
        3399003399006DB04FF6F8F9FFFFFFFFFFFFFFFFFF3399003399003399003399
        00339900FFFFFFFFFFFFFFFFFFE1EDDE56A62933990033990033640000009BCD
        9C339900339900369A02B5D298FFFFFFFFFFFFFFFFFFC6D3BB33990033990033
        9900339900339900E3E3E1FFFFFFFFFFFFFCFEF292BB85339900339900336400
        00009BCD9C33990033990033990033990085C06590C68066A83C359D02339900
        3399003399003399003399003399007DBF4E90C6806DB04F369A023399003399
        003364000000BBCCBA3399003399003399003399003399003399003399003399
        0033990033990033990033990033990033990033990033990033990033990033
        99003097046084400000D2D0D2BBCCBA33990033990033990033990033990033
        9900339900339900339900339900339900339900339900339900339900339900
        3399003399009BCD9CBBCCBA0000FFFFFFD2D0D2BBCCBA9BCD9C9BCD9C9BCD9C
        9BCD9C9BCD9C9BCD9C9BCD9C9BCD9C9BCD9C9BCD9C9BCD9C9BCD9C9BCD9C9BCD
        9C9BCD9C9BCD9C9BCD9CC6D3BBFFFFFF0000}
      ModalResult = 1
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 472
      Top = 6
      Width = 98
      Height = 34
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      Caption = 'Cancela'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFBFFFFFDFF
        FBFCFFF7FFFFF8FFFEFEFFFCFFFFF5FFFEFBFFFFFFFFFFFBFEFFFCFBFEFEFDFB
        FBFFFFFBFFFFFAFAFFFFF5FDFFF5FAFFF9FCFCFFFFFAFFFDF9FFFEFFFEFBFEFF
        FDFEFDFEFCFEFCFCFEFDFEFDFCFFFCFEFFF9FEFAFFFFFBFDFFFAF3F0F4D0CEE5
        B3B7D2A5ABC9AAA9BDB9BCC0C7CCC5E6ECEAF5F7FBFFFEFFFEFEFDFDFBF8FFFF
        FEFAFBFEFAFCFBF8FDF8F5FFF8FCFDF9FFFCFEFFF8FFFFFDFFFDFFFFE1E8F7BD
        C3D99497BC6469AE4C55A447519F4E5599656D99656F857D808EB5B1C1E3DBE8
        FFFFFFFFFFFCFFFFFEFBFBFDF8FCFBF9FFF7F1FFF3FEFEFDFFFBFFFFFFFEF1FB
        FCC0D0E9666BC72A2EB5040DAE0E24C4182ACB1322C60819C80213B509149F37
        3C9D4444846B678BBAB3C0F9F1F9FFF7FDFFFDFFFFFDFDFFFEFBF2FFF9FDFCFF
        FFFBFFF6F9FEA9BBE23F5AB41627BC202CE12333F61734F21332ED1935F01931
        FC1832F3172FDB1823B92426A43331916367909DA3ACF3F5EFFFFFFDFDFCFDFC
        FAFDF5FFFFFEFDFFFFFFFFB8BDE8344CB01134D11533F21830F8182CF4102FED
        0E32EB0C30E8102BF31232F01138E81D35EC222CE11115B42837875B6E87A7B9
        ACFFFFFDFFFCFEFAF7FFFFFDFBFCFFFFDEE6FF2F3ED01431E60C30F2162DF617
        27EF1E2DEB2F45DA3D50D44350D6293BE50D2FE10B39ED0230ED1034F41B37EE
        091FAB25358A5B6183DCD4D4FFFEFFFFF7FFFEFFFCEAEFFF7B83E31323E3102C
        FD0B2FF51933D75364DC96A1EAC9D1FFD7DFFFD5DDFFA8B8FC6A7FED1D39E90F
        31F80F30F61030ED1732E31223A6353E86A2A2A5F3F4EEFEFFFFFDFFFFB4BAF5
        353CDA1428FA112BFC0623DC859CF5E0F2FDFFFFFBFFFFFCFFFFFEFAFFFFFFFF
        FFA2ADF32E36EB1423F3182EF71734F40F2AF5172CD323339965717BD4E0D7F7
        FFFEEDEEFF626EE10F2AE61031F4152BD47E86F6FBFFFFF9FCFFFFFDF8FFFCFF
        FFFCFFFBFEFF7F87E52834D2212EEF1E29F4212FF41629EE142EFF1A32F00815
        A0676697B4B5C0FAFFF8D5D5F73243D50A2BEF1233EE2E3FC8CDCFF1FFFEFFFC
        FCFAFFFFF7FFFCFFF9FAFF949AE30F23C51A35F10E2CEF1F33E82E41E82339E6
        0E2FF9152FF41C28CC524F9B9D9EB7F9FEF7AFB5F3162DCB1033F9142DE6505F
        CBE7EDFAFFFFFFFFFFF9FDFFFAF8FFFF8E9CE71F2FC81231F6092BF60B2DE72C
        44CE91A6FF3D55D6092DEC0F2FF71C2EE22726849499B8F5FEF58297F7172FDC
        1931FA1421DA6478D7E7FFFFFCFFFFFBFFFCF9FFFF7187DE0924C60F2EF4122C
        FB1A27EA4146D6EEF8FFF2FCFF7985DE0D2DE40E2DFA1E34EE1A24809097B4F8
        FEF3637DF61B32DF1A2BF61B25E4525EC9EAF5FEFFFEFEF8FAFF939FE41022C3
        1533F0092DF4162BE24B58DBCDD7FEFFFFFFFCFFFF7F8BDE0D2BE2112DFC2031
        EE22277FA2A3C0FDFDFA7B94F51428D42030FE1120E7353CBEE6E2F6FFFDFF9A
        9DE52533C21B2DF0162FF70F2EE93B4CD0C8DAFDF0FFFEFDFFF9F9FFFF7E8EE4
        0B2BE01429FB2A32F2434493BBB5D4FFFDFF9CACF61E34D30E2CF4122FFC000F
        A88798DF8C90EC1D2BCB122EE71936FB1626E53C42D3ECFBFFF9FFFEFFFFFFFF
        FFFDDDE2FF424ECF1030E61B2EF92424DE7576B5E3E1F1FFFEFFCDD9F3253DCA
        0B2CF80B32F9082BD5142FC6222FDE1C2BEE162FFC0D2BDC4A5BDAD7DAFEFAFF
        FEFBFCFCFDF9FEF3FAFE939CF72734E9102EF01D2EEF292BCB9EA4C9F2F9FAFA
        FEFCE6F2FF5C6DE50C28EF0331F00933EE112EED1D2CF71A29FE1124F13853DE
        CBDCFEFFFFFFFFFFFFFFFEFFFFFFFFD4E1F93444D11326F8162FFD1C2BD84C52
        C8D2DEE8F5FFFAF3FEFBFFFFFFB2B2EF292DD81235F30F2FF6172CF7202CFA1B
        2AF5162CDEB8D2F4E1F3FFEFF9FFDBEDF9CDD8EE8A90F10E1EBF1331E40E34F3
        182AEC4353C9B0BEDEFBFFFEFAFFFDF4FFFFFFF9FFF7F2FF7B80E60E24DA132D
        F5132DF5182FF1152EEE041CCF132C9C4554B86066CE4252BC2030B51B27CB15
        30EC1234F70C2FE9293DCC8F9AE3E8F1F8FFFFFFFDFFFBFAFFFAFFF6FFFDFCFF
        E8F4FF3F4EE11126DB1534F30B31E91434F5152CEF1C33D6212ED51C21D61727
        DD1D2EEE2032FB0D2CF30E2EEC0A25CB7C8AE2DBE0FEFFFDFFFFFAFFFFFFFCFF
        FFF6FFFBFEF9FDFDF2FFFFE1F9FD677CDA1C32D71533EE112BF2152CF70F2CF2
        182DF61F2CFA1A2EFA1E2FF61623E8232AEB3A49D3889CE3F6FCFFFEFCFFFFFC
        FFFEFEFFFEF9FAFFFCFAFCFDFBF9FCFBF9FFFFF4FBFCF0F5FFA8AEF14758D51F
        35CA1831DD0E29EC1830EF172DE4142CE1172CD03443CF7D88E7B7C0F6F3F5FF
        FFFDFFFFFEFFF8FEFEF4FEFDFCFBFDFFF9FEF1FFF6FAFEFDFFFCFFFFFAFFFFFA
        FFFFFFFFE3E9FDB3C8F1718CF55A6DFB3851FA4161F86481F98CA4F3BDD2F4F0
        FFFFFCFFFFFFFBFFFFFAFEFEFDFBF3FFFAEAFFF5F8FDFDFFF6FF}
      ModalResult = 2
      TabOrder = 1
    end
    object dxButton1: TdxButton
      Left = 222
      Top = 6
      Width = 98
      Height = 34
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = '&Procura'
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
      TabOrder = 2
    end
  end
  object DtSrc: TDataSource
    DataSet = cds_mensal
    Left = 351
    Top = 312
  end
  object sds_mensal: TSQLDataSet
    CommandText = 
      'select d.*'#13#10'        , p.DESCRICAO'#13#10'        , s.GRUPO'#13#10'        , ' +
      's.N_INSCRICAO '#13#10'        , s.SOBRENOME'#13#10'        , s.TIPO_SOCIO'#13#10' ' +
      '       , b.BAIRRO'#13#10'        , m.MUNICIPIO'#13#10'        , c.NOME '#13#10'   ' +
      '     , s.DIAPARAPGTO  '#13#10'from DEPENDENTE d '#13#10'left outer join PARE' +
      'NTESCO p on p.ID_PAR=d.ID_PAR '#13#10'left outer join SOCIOS s on s.ID' +
      '_SOCIO=d.ID_SOCIO '#13#10'left outer join ENDERECO e on e.ID_SOCIO=s.I' +
      'D_SOCIO '#13#10'left outer join BAIRRO b on b.ID_BAIRRO=e.ID_BAIRRO '#13#10 +
      'left outer join MUNICIPIO m on m.ID_MUNICIPIO=e.ID_MUNICIPIO '#13#10'l' +
      'eft outer join COBRANCA c on c.ID_COB=s.ID_COB '#13#10'where s.STATUS ' +
      '<> '#39#39' '#13#10'and ((e.TIPOEND = 0) or (e.TIPOEND is null))'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 256
    Top = 312
    object sds_mensalID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object sds_mensalID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object sds_mensalNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object sds_mensalFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object sds_mensalCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object sds_mensalDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object sds_mensalDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object sds_mensalID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object sds_mensalCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object sds_mensalDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object sds_mensalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sds_mensalGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object sds_mensalN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object sds_mensalSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object sds_mensalTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
    object sds_mensalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sds_mensalMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 60
    end
    object sds_mensalNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object sds_mensalDIAPARAPGTO: TIntegerField
      FieldName = 'DIAPARAPGTO'
    end
  end
  object dsp_mensal: TDataSetProvider
    DataSet = sds_mensal
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 312
  end
  object cds_mensal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_mensal'
    Left = 320
    Top = 312
    object cds_mensalID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object cds_mensalID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object cds_mensalNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object cds_mensalFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object cds_mensalCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object cds_mensalDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object cds_mensalDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object cds_mensalID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object cds_mensalCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object cds_mensalDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object cds_mensalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cds_mensalGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cds_mensalN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object cds_mensalSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object cds_mensalTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
    object cds_mensalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cds_mensalMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 60
    end
    object cds_mensalNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cds_mensalDIAPARAPGTO: TIntegerField
      FieldName = 'DIAPARAPGTO'
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
    Left = 384
    Top = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 312
  end
end
