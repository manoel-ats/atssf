inherited Cad_Obitos: TCad_Obitos
  Left = 334
  Top = 113
  Width = 760
  Height = 580
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'Cadastro de '#211'bitos'
  OldCreateOrder = True
  Position = poDesigned
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 512
    Width = 752
    Height = 41
    inherited btnCancelar: TdxButton
      Left = 206
      Top = 5
      Width = 94
      Height = 32
    end
    inherited btnExcluir: TdxButton
      Left = 206
      Top = 5
      Width = 94
      Height = 32
    end
    inherited btnGravar: TdxButton
      Left = 108
      Top = 5
      Width = 94
      Height = 32
    end
    inherited btnIncluir: TdxButton
      Left = 108
      Top = 5
      Width = 94
      Height = 32
    end
    object dxButton2: TdxButton [4]
      Left = 305
      Top = 5
      Width = 94
      Height = 32
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      PopupMenu = PopupMenu1
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'Procura(F8)'
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
    inherited btnSair: TdxButton
      Left = 501
      Top = 5
      Width = 94
      Height = 32
    end
    object dxButton10: TdxButton
      Left = 403
      Top = 5
      Width = 94
      Height = 32
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Enabled = False
      PopupMenu = PopupMenu1
      Version = '1.0.2e'
      OnClick = dxButton10Click
      Caption = '&Relat'#243'rios'
      Colors.BackgroundFrom = 13029334
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00200
        01010304010206C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0040000060102C1BE
        C079787A7E8081020405040404C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0050505000001C4C1C3C0BDBFC2BF
        C1817E808484847B7B7B7E7E7E010101050505C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0000100000100B6BABBBEC0C1C3C4C8BBBABE8481
        8304020203010082807F8181817F7F7F7A7A7A020202020202C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000200000200C1C8C5BCC3C0C4C9CAB6BBBC75787C85868ABAB9
        BB838181827F7B0603000301008585858484847A7A7A7B7B7B050505000000C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        000001000000C0C5C3BBC2BDB9C0BDB3B9B8777D7C7E8384BBBEC27F8182C1C1
        C182807F878480827F7B817F7E0000000000008888888383837D7D7D89898900
        0000030303C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0020001
        C7C6C8BCBBBDC0C2C2BBC0BF7A7F7E868B8AB9BEBDC1C3C3BEC0C07C7C7CC8C6
        C5817F7E7E7C7B8684837F7F7F7D7D7D8484840000000000007E7E7E7F7F7F81
        8181797979080808030303C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07D7E7C
        C0BFC1C3C2C47D7C807E7D81C2C1C5BEBDBFC5C6C4BDBEBAC0C1BD858480BBB9
        B88583828180827D7C7E8282827F7F7F8080808484847C7C7C0303030202027E
        7E7E868686797979818181000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0838480
        7C7C7C807F83C3BFC5C5BDC7C2BBC2C6BFC2C6C1C0C1BEB9C7C5BD7F7F79C5C4
        C08181817E7F837D7E827F7E808787877A7A7A8585858080807D7D7D81818100
        00000000008585857E7E7E000000C0C0C0C0C0C0C0C0C0C0C0C081867D797D77
        C9C9C9828185C2BDC6C1B9C3C0B8BFC8C1C4CBC3C3C4C0BBC2C0B8818279BBBC
        B88486867D80857B7E837C7E7F7B7B7B8383837979798585857E7E7E8282827F
        7F7F838383000000070707010101C0C0C0C0C0C0C0C0C0C0C0C080857CF5F9F3
        C0C1BF7B7A7CBDB9BFC8C1C8CAC3CAC0BBBDC2BDBCC7C4BFC0C0BA858781FFFF
        FE7C7E7F75787D7F82877C7E7F8F8F8F7979798181817D7D7D7D7D7D7C7C7C86
        86867B7B7B7F7F7F7D7D7D040404000000C0C0C0C0C0C0C0C0C07E7F7BFFFFFC
        C0C1BF848484C9C9C9B6B8B9BAB9BBC3C5C5C5C5C5B9BCBAFDFFFE7E80807C7E
        7EB9BDBEC4C7CB7C7F837F81827575758383838383838181818686868282827B
        7B7B8686867C7C7C838383818181000000000000C0C0C0C0C0C0817E80FDFBFB
        BDBEBA7C807ABAC2BBBFCAC2B7C3BDB3C1BDF4FEFEF3FCFFBAC3C7B8BEC3BCBF
        C4808387767878BEC0C0BEBEBE8181818181817F7F7F7D7D7D7C7C7C80808080
        80807E7E7E8585857777777F7F7F0A0A0A7C7C7C040404C0C0C08C838DFEF8FD
        C8C9C5747C71B7C7B6B1C4B3EFFFF8EDFFFCAFC3C4B2C4CBB4C0CCB5BDCABABC
        C6BABBBFC3C4C080807A838482C0C0C0C0C0C07F7F7F8484847D7D7D8989897D
        7D7D7D7D7D7F7F7F858585808080000000C1C1C1838383000000887889FFFBFF
        BCBBB7859080F2FFEFEDFFF0A4C5B0AACCC1A8C6C7263E4A3B4A5DADB6CABFC2
        D0818286807E76C5C4BABEBDB97C7C7C838383C3C3C3BFBFBF7C7C7C8484847E
        7E7E818181808080818181848484000000C6C6C68181817E7E7E847787FFFBFF
        FEFFFD778174768974B0CAB2AFCDBA7C9A8F7B9798B1C5D0AEBACC757C8D7D7D
        89BDBABCCBC5BEC8C3BAC4C4BEBFC2C00002007C7F7D848281C8C3C4BBB9B984
        84847B807F7C81807C7E7E797B7B070707777979C0C0C0C0C0C0828185818082
        F9FBFBBEC2BDBEC5BE767E77818B85B3BEBBB7C1C17B8285797D82BFBFC5C2BC
        C1C9C1C2C8BCBCC7BEBA020300000600F2FFF7C0C8C10700008D81818B8384BE
        C0C0B7C3C3788685757D7D7C8081000001C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        8A8C8C7D7F7FFCFCFCBDBDBDBDBFBF8183837D7F7F7F8181818181C4BFC0C2BA
        BBCEC3C50D0001160201FFFDF9FFFBF3FFFFF8FFFFF90C0000D0C3C1C1B9BA7E
        7E7E707C7CB4C1C3B8BCBD848385090406C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0828282818181FFFFFFBEBEBEBDBFBF8587877C7C7C7C7A7A0D07
        08090000FFFCFEFFF6F8FFF3F96F1115531717FFF8F5D2BFBC0900008F898AC1
        C1C1C2C6C77D7F80878083C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C08080807F7F7FFAFCFCBDBFBFC2C2C2838181837D
        7EFFFEFFFFFDFF421518750810FFEEF7FFF0F5FFF7F7FFFCFB0A03007C7A797B
        7D7D7D7C7EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08284847D7F7FFCFEFEC1C1C1C7C2
        C3837D7EFFFAFCFFFAFCFFF3F8FFF0F5811A1F601114FFF2F2C9C0BD000100C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07B7D7D7C7E7EFFFF
        FF7F7A7BFFFEFFFFF6F76716197D1215FFEAF1FFF2F8FFF9F9FFFDFABEC2BD00
        0200C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0817F
        7F837E7F8E8889FFF7F7FFF5F6FFF0F2FFEFF7810C15621519FFFAFBFFFAF7BB
        C4C1070707C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0807B7CFFFDFCFFFBF85F15157C1016FFECF5FFEFF6FFF6FBFFF7F7FF
        FFFCC2C0BF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0868180FFFFF9FFFDF8FFF7F8FFF2F9FFF0F96A0A1458181EFF
        F9FBFFFDFDC4C5C3020000020000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C07B7F79FFFFF9FFFCF950191C631018FFF3FBFFF6FCFF
        FAFCFFFEFEFBF9F88A8485888081C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C07F817BFFFFFBFFFDFAFFFCFCFFFBFCFFF9FBFF
        FEFE8381807E7C7BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0717F79EEFCF6FDFFFEFEFAF9817F7E7F
        807EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08287857F8181808080C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 70
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      PopupMenu = PopupMenu1
      TabOrder = 7
      OnClick = btnGravarClick
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 752
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = 11189162
    PopupMenu = PopupMenu1
    TabOrder = 1
    object Label24: TLabel
      Left = 7
      Top = 11
      Width = 29
      Height = 13
      Caption = 'Grupo'
    end
    object Label25: TLabel
      Left = 90
      Top = 11
      Width = 23
      Height = 13
      Caption = 'Insc.'
    end
    object Label48: TLabel
      Left = 175
      Top = 11
      Width = 40
      Height = 13
      Caption = 'Falecido'
    end
    object DBEdit62: TDBEdit
      Left = 43
      Top = 10
      Width = 39
      Height = 22
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'GRUPO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit63: TDBEdit
      Left = 117
      Top = 10
      Width = 47
      Height = 22
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'INSCRICAO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 220
      Top = 9
      Width = 482
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FALECIDO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnExit = DBEdit2Exit
      OnKeyPress = FormKeyPress
    end
    object SpeedButton5: TBitBtn
      Left = 704
      Top = 2
      Width = 44
      Height = 37
      TabOrder = 3
      OnClick = SpeedButton5Click
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
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 41
    Width = 752
    Height = 471
    ActivePage = TabSheet4
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '   DADOS FALECIDO   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      object GroupBox2: TGroupBox
        Left = 4
        Top = -1
        Width = 737
        Height = 378
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 40
          Width = 30
          Height = 13
          Caption = 'Sexo :'
        end
        object Label8: TLabel
          Left = 114
          Top = 40
          Width = 22
          Height = 13
          Caption = 'Cor :'
        end
        object Label9: TLabel
          Left = 226
          Top = 40
          Width = 60
          Height = 13
          Caption = 'Data Nasc. :'
        end
        object Label6: TLabel
          Left = 340
          Top = 40
          Width = 46
          Height = 13
          Caption = 'Est. Civil :'
        end
        object Label10: TLabel
          Left = 481
          Top = 40
          Width = 49
          Height = 13
          Caption = 'Profiss'#227'o :'
        end
        object Label11: TLabel
          Left = 7
          Top = 81
          Width = 52
          Height = 13
          Caption = 'Natural de:'
        end
        object Label12: TLabel
          Left = 7
          Top = 200
          Width = 52
          Height = 13
          Caption = 'Endere'#231'o :'
        end
        object Label13: TLabel
          Left = 7
          Top = 241
          Width = 33
          Height = 13
          Caption = 'Bairro :'
        end
        object Label14: TLabel
          Left = 311
          Top = 241
          Width = 39
          Height = 13
          Caption = 'Cidade :'
        end
        object Label15: TLabel
          Left = 688
          Top = 241
          Width = 20
          Height = 13
          Caption = 'UF :'
        end
        object Label3: TLabel
          Left = 675
          Top = 200
          Width = 20
          Height = 16
          Caption = 'N'#176' :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 236
          Top = 81
          Width = 29
          Height = 13
          Caption = 'CPF  :'
        end
        object Label64: TLabel
          Left = 393
          Top = 81
          Width = 22
          Height = 13
          Caption = 'RG :'
        end
        object Label65: TLabel
          Left = 541
          Top = 81
          Width = 23
          Height = 13
          Caption = 'Org.:'
        end
        object Label66: TLabel
          Left = 622
          Top = 81
          Width = 50
          Height = 13
          Caption = 'Data Exp.:'
        end
        object Label73: TLabel
          Left = 488
          Top = 328
          Width = 29
          Height = 13
          Caption = 'CSM :'
        end
        object Label75: TLabel
          Left = 613
          Top = 328
          Width = 23
          Height = 13
          Caption = 'RM :'
        end
        object Label76: TLabel
          Left = 164
          Top = 155
          Width = 78
          Height = 13
          Caption = 'Cidade eleitoral :'
        end
        object Label70: TLabel
          Left = 327
          Top = 285
          Width = 56
          Height = 13
          Caption = 'Reservista :'
        end
        object Label71: TLabel
          Left = 551
          Top = 285
          Width = 25
          Height = 13
          Caption = 'Cat. :'
        end
        object Label72: TLabel
          Left = 608
          Top = 285
          Width = 18
          Height = 13
          Caption = 'N'#186' :'
        end
        object Label74: TLabel
          Left = 668
          Top = 285
          Width = 30
          Height = 13
          Caption = 'S'#233'rie :'
        end
        object Label78: TLabel
          Left = 165
          Top = 328
          Width = 65
          Height = 13
          Caption = 'N'#186' Beneficio :'
        end
        object Label67: TLabel
          Left = 484
          Top = 157
          Width = 31
          Height = 13
          Caption = 'Zona :'
        end
        object Label68: TLabel
          Left = 542
          Top = 157
          Width = 37
          Height = 13
          Caption = 'Se'#231#227'o :'
        end
        object Label69: TLabel
          Left = 602
          Top = 157
          Width = 18
          Height = 13
          Caption = 'N'#186' :'
        end
        object Label5: TLabel
          Left = 288
          Top = 11
          Width = 70
          Height = 13
          Caption = 'Tipo do '#211'bito :'
        end
        object Label1: TLabel
          Left = 116
          Top = 11
          Width = 35
          Height = 13
          Caption = 'N'#186' ID..:'
        end
        object Label2: TLabel
          Left = 10
          Top = 11
          Width = 39
          Height = 13
          Caption = 'S'#233'rie....:'
        end
        object Label77: TLabel
          Left = 553
          Top = 11
          Width = 59
          Height = 13
          Caption = 'Data Lan'#231'..:'
        end
        object Label84: TLabel
          Left = 7
          Top = 131
          Width = 78
          Height = 13
          Caption = 'Local do Nasc..:'
        end
        object DBComboBox2: TDBComboBox
          Left = 8
          Top = 56
          Width = 105
          Height = 24
          BevelKind = bkFlat
          CharCase = ecUpperCase
          DataField = 'SEXO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            'MASCULINO'
            'FEMININO')
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit4: TDBEdit
          Left = 114
          Top = 56
          Width = 111
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'COR'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 226
          Top = 56
          Width = 87
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_NASC'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit6: TDBEdit
          Left = 480
          Top = 56
          Width = 252
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PROFISSAO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 6
          OnKeyPress = FormKeyPress
        end
        object DBEdit7: TDBEdit
          Left = 7
          Top = 97
          Width = 227
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NATURALIDADE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 7
          OnKeyPress = FormKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 7
          Top = 216
          Width = 626
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO_FAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 18
          OnKeyPress = FormKeyPress
        end
        object DBEdit9: TDBEdit
          Left = 7
          Top = 257
          Width = 302
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 20
          OnKeyPress = FormKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 311
          Top = 257
          Width = 374
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 21
          OnKeyPress = FormKeyPress
        end
        object DBEdit11: TDBEdit
          Left = 687
          Top = 257
          Width = 45
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 22
          OnKeyPress = FormKeyPress
        end
        object DBEdit21: TDBEdit
          Left = 675
          Top = 216
          Width = 57
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NUMERO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 19
          OnKeyPress = FormKeyPress
        end
        object DBEdit87: TDBEdit
          Left = 236
          Top = 97
          Width = 154
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CPF_FALECIDO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 8
          OnKeyPress = FormKeyPress
        end
        object DBEdit88: TDBEdit
          Left = 393
          Top = 97
          Width = 146
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RG_FALECIDO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 9
          OnKeyPress = FormKeyPress
        end
        object DBEdit89: TDBEdit
          Left = 541
          Top = 97
          Width = 80
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'SSP_FALECIDO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 10
          OnKeyPress = FormKeyPress
        end
        object DBEdit90: TDBEdit
          Left = 622
          Top = 97
          Width = 83
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DTA_EXPDICAO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 11
          OnKeyPress = FormKeyPress
        end
        object DBEdit93: TDBEdit
          Left = 488
          Top = 343
          Width = 124
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CSM'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 31
          OnKeyPress = FormKeyPress
        end
        object DBEdit95: TDBEdit
          Left = 614
          Top = 343
          Width = 118
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RM'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 32
          OnKeyPress = FormKeyPress
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 7
          Top = 282
          Width = 153
          Height = 42
          Caption = 'Deixa Bens'
          Columns = 3
          DataField = 'DEIXA_BENS'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Ign.')
          PopupMenu = PopupMenu1
          TabOrder = 23
          TabStop = True
          Values.Strings = (
            'S'
            'N'
            'I')
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 162
          Top = 282
          Width = 160
          Height = 42
          Caption = 'Deixa Testamento'
          Columns = 3
          DataField = 'DEIXA_TESTAMENTO'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Ign.')
          PopupMenu = PopupMenu1
          TabOrder = 24
          TabStop = True
          Values.Strings = (
            'S'
            'N'
            'I')
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 8
          Top = 154
          Width = 153
          Height = 44
          Caption = 'Eleitor'
          Columns = 3
          DataField = 'ELEITOR'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Ign.')
          PopupMenu = PopupMenu1
          TabOrder = 13
          TabStop = True
          Values.Strings = (
            'S'
            'N'
            'I')
        end
        object DBEdit20: TDBEdit
          Left = 163
          Top = 172
          Width = 319
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CIDADE_ELEITORAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 14
          OnKeyPress = FormKeyPress
        end
        object DBComboBox5: TDBComboBox
          Left = 338
          Top = 56
          Width = 143
          Height = 24
          BevelKind = bkFlat
          DataField = 'ESTADO_CIVIL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object DBEdit85: TDBEdit
          Left = 327
          Top = 300
          Width = 221
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RESERVISTA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 25
          OnKeyPress = FormKeyPress
        end
        object DBEdit68: TDBEdit
          Left = 551
          Top = 300
          Width = 54
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CATEGORIA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 26
          OnKeyPress = FormKeyPress
        end
        object DBEdit69: TDBEdit
          Left = 607
          Top = 300
          Width = 59
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CATEGORIA_NUM'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 27
          OnKeyPress = FormKeyPress
        end
        object DBEdit94: TDBEdit
          Left = 668
          Top = 300
          Width = 64
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'SERIE_RESERV'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 28
          OnKeyPress = FormKeyPress
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 7
          Top = 326
          Width = 152
          Height = 42
          Caption = 'INSS'
          Columns = 3
          DataField = 'IMSS'
          DataSource = DtSrc
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Ign.')
          PopupMenu = PopupMenu1
          TabOrder = 29
          TabStop = True
          Values.Strings = (
            'S'
            'N'
            'I')
        end
        object DBEdit41: TDBEdit
          Left = 166
          Top = 343
          Width = 320
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'N_BENEFICIO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 30
          OnKeyPress = FormKeyPress
        end
        object DBEdit91: TDBEdit
          Left = 484
          Top = 172
          Width = 56
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ZONA_ELEITORAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 15
          OnKeyPress = FormKeyPress
        end
        object DBEdit92: TDBEdit
          Left = 542
          Top = 172
          Width = 56
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'SECAO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 16
          OnKeyPress = FormKeyPress
        end
        object DBEdit67: TDBEdit
          Left = 601
          Top = 172
          Width = 131
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ZONA_NUMERO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 17
          OnKeyPress = FormKeyPress
        end
        object DBEdit1: TDBEdit
          Left = 157
          Top = 11
          Width = 41
          Height = 21
          TabStop = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          DataField = 'CODIGO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 33
        end
        object DBEdit61: TDBEdit
          Left = 201
          Top = 11
          Width = 64
          Height = 21
          TabStop = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          DataField = 'TIPO_DOC'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 34
        end
        object DBComboBox1: TDBComboBox
          Left = 377
          Top = 9
          Width = 162
          Height = 24
          BevelKind = bkFlat
          CharCase = ecUpperCase
          DataField = 'TIPO_OBITO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 16
          Items.Strings = (
            'SOCIO'
            'REEMBOLSO'
            'PARTICULAR'
            'OUTROS'
            '')
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnExit = DBComboBox1Exit
          OnKeyPress = FormKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 616
          Top = 9
          Width = 85
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_SISTEMA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object Panel5: TPanel
          Left = 3
          Top = 35
          Width = 730
          Height = 5
          TabOrder = 35
        end
        object DBEdit101: TDBEdit
          Left = 104
          Top = 129
          Width = 628
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'LOCAL_NASCCTO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 12
          OnKeyPress = FormKeyPress
        end
        object ComboBox1: TComboBox
          Left = 60
          Top = 9
          Width = 52
          Height = 24
          BevelKind = bkFlat
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 36
          OnExit = ComboBox1Exit
          OnKeyPress = FormKeyPress
        end
        object SpeedButton16: TBitBtn
          Left = 704
          Top = 6
          Width = 29
          Height = 28
          TabOrder = 37
          OnClick = SpeedButton16Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
        object SpeedButton17: TBitBtn
          Left = 705
          Top = 94
          Width = 29
          Height = 28
          TabOrder = 38
          OnClick = SpeedButton17Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
        object SpeedButton9: TBitBtn
          Left = 633
          Top = 204
          Width = 41
          Height = 36
          TabOrder = 39
          OnClick = SpeedButton9Click
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0000029000019C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00725
            A20032B18BD3FF000025C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C015279C0026
            C96BB6FF1C65DE094089000015C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00023A1002BC75CB5
            FF105FFF0625C2171C8F00001DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C020328F002CBB6ABBFF0C61
            FF0029C10A149D000043C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C00B0A00020D000410000C0F000F0B00000016293A8B78BEFF1668FD0022
            C400119500003300001000000800000300030100010006040406010307010605
            000107000002020000040100010100060D000004020607000100C0C0C0C0C0C0
            76704D9B985B9DA35280892F64671179783C534B4400001D417AC5003399061E
            9A000045B0C8DABAD4C4C1CECCC8CDCECED0CACDD0C7CACCC6C9CDC8CCD0CBC9
            CBC5CCD0C5CAD3C6C3D0C8B9CCC9B3D0D4B5CFD5BFC8CC010206C0C0C0667555
            CAC96EE3DC5DDFD950B3B0297172008485235858127A7E5A0002010000180000
            26CFE8FFCCFCFECDFBEFE5FCF7EEF9F1F2F7E8F9FDEAF8FFF2EDFDEBE9F9E7E6
            F9E4EAFFE6E5FBE2E7FAE9D8F7EEC2FBF8C3F8FBBCCED5000007566966C4D2B0
            FFFFA8FFFF81FFFF7FE9E053B1AD1F9798136B6F005359025D5E2C040600EEFA
            FEE4FFFFD2FFFFCFFFF7E9FFFA5F695C65645069684E565D425763475F6E4F59
            68485569465669485E6B534F6E5FAEF7EDB6FAF9BAD0D601000A6E6568D9D3C8
            FFFFDDFFFFC8FFFFB8FFFF98E9DD49BDB91A8C940B878F2480823C090A00F6FF
            FCE7FAFFE0FFFFDBFCF5EBFFF2C4C9B4DDD2B7E8D9B9E0D7B6E0DAB7D9D0AEDC
            D4AFD9D7AFDCD9B3D9D0B5BBCBB9B9FFF6B3FEF6B5C8CB040004726466D5CAC6
            FFFFF7FFFFEDFFFCD6FFFFBCFFFF84DDDF46B1BD295E68005E5D0C110E00FFFF
            F8F0FBFFEBFFFFEFFFFEEFFEF0696B57746348725A3C7F6B4C71603F7C67477D
            66467967427867467A664D576150BBFFF4B3FFF4BDCFCE090003696D62CBCDC1
            FFFFF6FFFFF5FFFFECFFFFD6FFFFBEF6FF99C6D648AFB9318F8831170D00FFFF
            F4F9FDFEF2FEFFF3FFFFEFFAF0D1D3C0DFCCB7ECD2BAE9D2BCE1CAB4E7CCB7EB
            CEB9E9D0B6E5CFB6DECAB9CCD6C9B2F8EBBAFFF7BECECD090000606A5DD4DACF
            FFFDF8FFFEFBFFFFF9FFFFF0F3FFDCF9FFC3FFFF94D2D960A49A54150900FFFF
            F4FAFFFDF3FBFBF3FEFCF6FFFC595F546E64536C5E4C685F516862556C625867
            5E516A6251686452606256446158B5FFF6B3FEF6B8CDCB04000057615BCBD0CE
            FFFDFFFFFBFFFFFEFFFFFFFBFAFFF5ECFBCFEDFBA3CCD17C9B8D70150701FCFF
            F8F8FFF9F9FFFAF9FFFDF1FFFFEDFCF8FBFFFBF1FAF0E6FCF7E5FFFFD6F4F5E1
            FFFFD9FAF3DAFFF7D2FEF7BDFBF5A7FFFEACFEF9AFCECD000304C0C0C0646667
            CBC9CFFFFCFFFFFEFFFCFEFEFAFFFEFDFFF1D4DBA8A5A575110400FFFBFFF7FF
            F8F8FFF8FCFFF6FDFFFCF4FFFFE7F7F6F2FFFCEFFFFCE3FFFFD3FBFAD3FEFFD1
            FEFFD3FEFFCCFCFEC6FFFFB6FFFF9FFCFBACFAF9B2D1D0000100C0C0C0C0C0C0
            5D6162C8D0D0CBD3D3BFC7C6C9CECDCCCDC9D0CFC1090600FFFCFBFFFEFFFDFF
            FCFFFFFBFFFFF9FFFEF9FBFFFFF8FFFFF2F8F7F8FFFEF1FFFFE9FFFCE5FFFFE0
            FDFFE1F7FFE0FBFFCFFAFFBDF9FFBCFFFFB7F7F8B9CFCD000200C0C0C0C0C0C0
            C0C0C0626867515958676D6C636468636369696A74F2F6FFF0FCFFE6F5FEF1FF
            FFF6FFFFFCFBFDFFFEFFFAFAFAFDFFFFFAFCFDFDFFFFF2F9F6F6FFFEEFFFFFE8
            FAFBEDF9FFECF9FFD5EDFFCFF6FFB5F0FFC3F7FFB8CBCE010303C0C0C0C0C0C0
            C0C0C0706E6EFFFEFFFFFCFEFFFCFF626574E7F5FF5A728E466B87436B874A6E
            86506B7FEAF9FFF8FCFFFFFDFFFFFEFFFFFDFFFBFAFCFFFFFEF7FCFAF1FDF7F3
            FFFEF4FFFFE7EEFF24259500067F001150C5F2FFC1D1E1000007C0C0C0C0C0C0
            C0C0C0625D5CFFFFFCFFFEFFFEF9FF595D6FE8F9FFADCCEDA4D0F59FCFF3A4D0
            EFB3D4EEE7F9FFF3FBFFF9F6FFFFFDFFFBFAFEFFFEFFFFFFFFFFFFFEFBFFFCF8
            FFFBF3FFF8EFF3FF2C1EA61B17AC001C67CDF3FFB6C4D7020311C0C0C0C0C0C0
            C0C0C06A6762FFFFF8FFFFFBFFFEFF646873EDFAFF5368874563864E71934A69
            884B647EECFAFFF4FBFFFDFCFFF6F4FAFAFEFFF8FDFFF9F8FAFFFFFEFFFFFBFB
            FFF9FAFFFBF1F3FF31229B332BAE1F3577D5F0FFBDC6D4000007C0C0C0C0C0C0
            C0C0C06F7067FFFFF6FBFDF7FDFFFF5C5F64F4F9FFF1FAFFEAF8FFE7F7FFE8F9
            FFEDFBFFF1FAFFF4F8FFF3F6FEF8FEFFF3FFFFF3FFFFFDFFFFFFFEFDFFFDF9FF
            FFFBF8FFF8F6F8FFECE0FFE9E1FFDCEAFFE1F2FFC9CCD4020000C0C0C0C0C0C0
            C0C0C05F645BFBFFFBFAFFFCF9FEFC6666666A6769645E637069706A666B6662
            676463676867696266675F69695466674B67684D65655E66666A686869646367
            625F686A6A5C5E695C5B7D5B5A8159607462686F676662080300C0C0C0C0C0C0
            C0C0C0666A65F9FFFDF7FDFCF9FBFBFFFFFEFFFFFEFFFDFAFFFFFBFFFEFAFFFF
            FBFFFFFBFFFDFAFDFFFEEFFDFBE3FEFBD7F9F8DFFEFDBDC9C9000000C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0656468FDFBFFFFFDFFFAF9FDFFFEFFFFFFFEFFFFFCFFFFFBFFFFF9FFFF
            F9FFFFFBFFFFFCFBFFFCF1FFFEE1FCF8D9FFFEDAFAF9BAC8C7060606C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C06B656AFFFBFFFFF8FFFFFDFFFDFEFFFBFFFFFAFFFEFBFFFEFBFFFCFDFF
            FCFFFFFCFFFFFCFBFFFCF1FFFBECFFFFD7FAF6DEFDFCCAD4D4020000C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C06E696AFFFEFFFFFEFFFFFEFFF3F7F8F8FFFFF6FFFFF8FEFFFAFFFFFBFE
            FFFDFFFFFDFFFEFDFFFEF8FFFAEEFDF9E9FFFFECFFFFC7CACE040001C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0686463FFFFFCFEFBF7FBFCFAFBFFFFF7FEFFF7FDFFFAFCFFFCFBFFFEFC
            FFFEFDFFFEFEFEFCFFFDFDFFFCFAFFFEE8F8F7F3FFFFCBCACE090003C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0696963FEFFF6FEFFF8FBFFFBF5FAF8FDFFFFFFFEFFFFFCFFFFFCFFFFFC
            FFFFFDFFFFFFFFFFFFFEFFFEFAF7F8F6F8FFFFF5F9FED1CAD1090005C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C06766626B6A66666A65636A676269666467656A66657164667264667264
            666D65666666666466666E6C6B68666661646862616A655C66070004C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
        object BitBtn2: TBitBtn
          Left = 313
          Top = 55
          Width = 25
          Height = 25
          TabOrder = 40
          OnClick = BitBtn2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 379
        Width = 737
        Height = 48
        Caption = 'Documentos Apresentados'
        PopupMenu = PopupMenu1
        TabOrder = 1
        object DBEdit70: TDBEdit
          Left = 7
          Top = 17
          Width = 721
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DOC_APRESENTADO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object BitBtn3: TBitBtn
        Left = 368
        Top = 429
        Width = 81
        Height = 25
        Caption = '<= Anterior'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 272
        Top = 429
        Width = 81
        Height = 25
        Caption = 'Proximo = >'
        TabOrder = 3
        OnClick = BitBtn4Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = '   DADOS FALECIMENTO   '
      ImageIndex = 1
      PopupMenu = PopupMenu1
      object GroupBox4: TGroupBox
        Left = 5
        Top = 4
        Width = 733
        Height = 154
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        object Label26: TLabel
          Left = 7
          Top = 8
          Width = 43
          Height = 13
          Caption = 'Cemit'#233'rio'
        end
        object Label27: TLabel
          Left = 560
          Top = 8
          Width = 48
          Height = 13
          Caption = 'Data Sep.'
        end
        object Label28: TLabel
          Left = 637
          Top = 8
          Width = 48
          Height = 13
          Caption = 'Hora Sep.'
        end
        object Label29: TLabel
          Left = 7
          Top = 48
          Width = 46
          Height = 13
          Caption = 'Local Fal.'
        end
        object Label30: TLabel
          Left = 560
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Data Fal.'
        end
        object Label31: TLabel
          Left = 637
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Hora Fal.'
        end
        object Label32: TLabel
          Left = 169
          Top = 93
          Width = 35
          Height = 13
          Caption = 'M'#233'dico'
        end
        object Label33: TLabel
          Left = 9
          Top = 93
          Width = 24
          Height = 13
          Caption = 'CRM'
        end
        object Label34: TLabel
          Left = 168
          Top = 122
          Width = 35
          Height = 13
          Caption = 'M'#233'dico'
        end
        object Label35: TLabel
          Left = 9
          Top = 122
          Width = 24
          Height = 13
          Caption = 'CRM'
        end
        object DBEdit23: TDBEdit
          Left = 7
          Top = 23
          Width = 551
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CEMITERIO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit24: TDBEdit
          Left = 560
          Top = 23
          Width = 74
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'DATA_SEP'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit25: TDBEdit
          Left = 637
          Top = 22
          Width = 64
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'HORA_SEP'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit26: TDBEdit
          Left = 7
          Top = 63
          Width = 551
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'LOCAL_FAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit27: TDBEdit
          Left = 560
          Top = 63
          Width = 74
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'DATA_FAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit28: TDBEdit
          Left = 637
          Top = 63
          Width = 64
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'HORA_FAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object DBEdit29: TDBEdit
          Left = 213
          Top = 93
          Width = 514
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'MEDICO_1'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 6
          OnKeyPress = FormKeyPress
        end
        object DBEdit30: TDBEdit
          Left = 43
          Top = 93
          Width = 74
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'CRM_1'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 7
          OnKeyPress = FormKeyPress
        end
        object DBEdit31: TDBEdit
          Left = 213
          Top = 122
          Width = 514
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'MEDICO_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 8
          OnKeyPress = FormKeyPress
        end
        object DBEdit32: TDBEdit
          Left = 43
          Top = 122
          Width = 74
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'CRM_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 9
          OnKeyPress = FormKeyPress
        end
        object SpeedButton10: TBitBtn
          Left = 118
          Top = 91
          Width = 46
          Height = 27
          Caption = '1'#186
          TabOrder = 10
          OnClick = SpeedButton10Click
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFEBEBEBE0E0E0E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E5E5E500
            0000FFFFFFFFFFFFFFFFFFFFFFFFBDBBBDABA9ABADABADADADADADABADADADAD
            ADACADADADADADADADADACADADACADAAAAAAADACADADACADADABADADABADADAC
            ADA8A8A87B7B7B000000FFFFFFFFFFFFF5F5F5000000070F0711151111161111
            0F11111711111011111411110C11110B11111411060D06181A18070C07111311
            1115111119110610065E5C5E949494000000FFFFFFFFFFFFFFFFFFD7D0D70A48
            0A009500009500000E0000AB00001E00008000000E00002D00005A003C753CFF
            FFFF2E5B2E006200009500007000004200766E76B5B5B5000000FFFFFFFFFFFF
            FFFFFFFFFFFF342634003000009E00000400001900000000007700000300001B
            00005800280828FFFEFF1E021E006600007200000000908690A3A3A3E2E2E200
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000EA003200007400007900009400
            008C00002A00005400009300008F00005F00005F000061002511258381839D9D
            9DC5C5C5FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000CB00
            0088000D50004100002F00000000000000004100003200000000766A76675C67
            A6A6A6ADADADFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0000FF0000FF0000FF0000FF00004C000000000000000000000000746C74AC
            ABAC9191918A8A8AF5F5F5FCFCFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            D2D2D2CDCDCDE7E7C80000FF0000FF0000FF0000FF0000F00000000031000028
            00281828CCC8CC919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFE6BABA9CB8B89ACDCD900000FF0000FF0000FF0000CA003F00
            006800009200008F000055000E320EB1ADAFA5A59E9A9A98FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000C9C9FF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF0C0B8F30251D006100006500006200004F001A1219A2A1A59E9ECEB8B8BE
            999997FFFFFFFFFFFFFFFFFFFFFFFF000000CDCDFF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF616135FFFFFF958995332733605360C1B9C1FFFFFF00
            00150000FF9898CE9F9F97FFFFFFFFFFFFFFFFFFFFFFFF000000CDCDFF0000FF
            0000FF0000FF0000FF0000FF0000FF00002D5D5D52FFFFFF5858587C7C7CD1D1
            D15D5D5DFFFFFF00000000008D9C9CD9A0A098FFFFFFFFFFFFFFFFFFFFFFFF00
            0000CDCDFF0000FF0000FF0000FF0000FF0000FF0000FF0000582F2F21515151
            525252424242F9F9F9FFFFFFE6E6E40000000000A99C9CD7A0A098FFFFFFFFFF
            FFFFFFFFFFFFFF000000CDCDFF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF000000332F336B6A6B6B656B5C505C5F525F110B0B0000040000FF9C9CCC
            A0A098FFFFFFFFFFFFFFFFFFFFFFFF000000C9C9FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF002E000025002D2E2D002E0000650000760000260000
            00FF0000FF9999CDA0A098FFFFFFFFFFFFFFFFFFFFFFFF000000E4E4FF6969FF
            7575FF7575FF8484FF0000FF0000FF0000FF0000AA8884740C0C0C4E434E0027
            00000000335124625EEE5454ECB1B1CC959591FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF00009A171700
            98988D020000000800221D22CDCACD9595858D8D7C7D7D79F6F6F6FFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF00
            00FF0000FF0000840000230000B5B6B3EED1D1CA9C9C9CACACACFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFA1A1C79B9B94F6F6F6FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FFA3A3
            CCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FFF6B6BFF6B6BFF6B6BFF6B6BFF
            6B6BFF5D5DFFEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          Layout = blGlyphRight
        end
        object SpeedButton11: TBitBtn
          Left = 118
          Top = 120
          Width = 46
          Height = 27
          Caption = '2'#186
          TabOrder = 11
          OnClick = SpeedButton11Click
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFEBEBEBE0E0E0E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
            E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E5E5E500
            0000FFFFFFFFFFFFFFFFFFFFFFFFBDBBBDABA9ABADABADADADADADABADADADAD
            ADACADADADADADADADADACADADACADAAAAAAADACADADACADADABADADABADADAC
            ADA8A8A87B7B7B000000FFFFFFFFFFFFF5F5F5000000070F0711151111161111
            0F11111711111011111411110C11110B11111411060D06181A18070C07111311
            1115111119110610065E5C5E949494000000FFFFFFFFFFFFFFFFFFD7D0D70A48
            0A009500009500000E0000AB00001E00008000000E00002D00005A003C753CFF
            FFFF2E5B2E006200009500007000004200766E76B5B5B5000000FFFFFFFFFFFF
            FFFFFFFFFFFF342634003000009E00000400001900000000007700000300001B
            00005800280828FFFEFF1E021E006600007200000000908690A3A3A3E2E2E200
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000EA003200007400007900009400
            008C00002A00005400009300008F00005F00005F000061002511258381839D9D
            9DC5C5C5FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000CB00
            0088000D50004100002F00000000000000004100003200000000766A76675C67
            A6A6A6ADADADFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0000FF0000FF0000FF0000FF00004C000000000000000000000000746C74AC
            ABAC9191918A8A8AF5F5F5FCFCFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            D2D2D2CDCDCDE7E7C80000FF0000FF0000FF0000FF0000F00000000031000028
            00281828CCC8CC919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFE6BABA9CB8B89ACDCD900000FF0000FF0000FF0000CA003F00
            006800009200008F000055000E320EB1ADAFA5A59E9A9A98FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000C9C9FF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF0C0B8F30251D006100006500006200004F001A1219A2A1A59E9ECEB8B8BE
            999997FFFFFFFFFFFFFFFFFFFFFFFF000000CDCDFF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF616135FFFFFF958995332733605360C1B9C1FFFFFF00
            00150000FF9898CE9F9F97FFFFFFFFFFFFFFFFFFFFFFFF000000CDCDFF0000FF
            0000FF0000FF0000FF0000FF0000FF00002D5D5D52FFFFFF5858587C7C7CD1D1
            D15D5D5DFFFFFF00000000008D9C9CD9A0A098FFFFFFFFFFFFFFFFFFFFFFFF00
            0000CDCDFF0000FF0000FF0000FF0000FF0000FF0000FF0000582F2F21515151
            525252424242F9F9F9FFFFFFE6E6E40000000000A99C9CD7A0A098FFFFFFFFFF
            FFFFFFFFFFFFFF000000CDCDFF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF000000332F336B6A6B6B656B5C505C5F525F110B0B0000040000FF9C9CCC
            A0A098FFFFFFFFFFFFFFFFFFFFFFFF000000C9C9FF0000FF0000FF0000FF0000
            FF0000FF0000FF0000FF002E000025002D2E2D002E0000650000760000260000
            00FF0000FF9999CDA0A098FFFFFFFFFFFFFFFFFFFFFFFF000000E4E4FF6969FF
            7575FF7575FF8484FF0000FF0000FF0000FF0000AA8884740C0C0C4E434E0027
            00000000335124625EEE5454ECB1B1CC959591FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF00009A171700
            98988D020000000800221D22CDCACD9595858D8D7C7D7D79F6F6F6FFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF00
            00FF0000FF0000840000230000B5B6B3EED1D1CA9C9C9CACACACFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFA1A1C79B9B94F6F6F6FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FFA3A3
            CCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FFF6B6BFF6B6BFF6B6BFF6B6BFF
            6B6BFF5D5DFFEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          Layout = blGlyphRight
        end
        object SpeedButton15: TBitBtn
          Left = 701
          Top = 19
          Width = 29
          Height = 28
          TabOrder = 12
          OnClick = SpeedButton15Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
        object SpeedButton14: TBitBtn
          Left = 702
          Top = 60
          Width = 29
          Height = 28
          TabOrder = 13
          OnClick = SpeedButton14Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
      end
      object GroupBox5: TGroupBox
        Left = 4
        Top = 163
        Width = 733
        Height = 50
        Caption = 'Causa da Morte'
        PopupMenu = PopupMenu1
        TabOrder = 1
        object DBEdit33: TDBEdit
          Left = 7
          Top = 19
          Width = 718
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CAUSA_MORTE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox6: TGroupBox
        Left = 4
        Top = 217
        Width = 733
        Height = 48
        Caption = 'Observa'#231#245'es'
        PopupMenu = PopupMenu1
        TabOrder = 2
        object DBEdit34: TDBEdit
          Left = 7
          Top = 18
          Width = 696
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'OBS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox7: TGroupBox
        Left = 4
        Top = 272
        Width = 733
        Height = 79
        Caption = '1'#170' N'#250'picias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 3
        object Label36: TLabel
          Left = 7
          Top = 52
          Width = 50
          Height = 16
          Caption = 'N'#250'pcias'
        end
        object Label37: TLabel
          Left = 565
          Top = 20
          Width = 59
          Height = 16
          Caption = 'Data Cas.'
        end
        object Label38: TLabel
          Left = 7
          Top = 20
          Width = 50
          Height = 16
          Caption = 'Conjuge'
        end
        object Label39: TLabel
          Left = 589
          Top = 48
          Width = 22
          Height = 16
          Caption = 'Fol.'
        end
        object Label40: TLabel
          Left = 516
          Top = 48
          Width = 20
          Height = 16
          Caption = 'Liv.'
        end
        object Label41: TLabel
          Left = 663
          Top = 48
          Width = 14
          Height = 16
          Caption = 'N'#176
        end
        object DBEdit35: TDBEdit
          Left = 60
          Top = 48
          Width = 452
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NUPCIAS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit36: TDBEdit
          Left = 626
          Top = 20
          Width = 74
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'DATA_CASAMENTO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit37: TDBEdit
          Left = 60
          Top = 20
          Width = 501
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CONJUGE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit38: TDBEdit
          Left = 612
          Top = 48
          Width = 48
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FOLHAS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit39: TDBEdit
          Left = 539
          Top = 48
          Width = 47
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'LIVRO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit40: TDBEdit
          Left = 679
          Top = 48
          Width = 47
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NUM'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object SpeedButton18: TBitBtn
          Left = 701
          Top = 17
          Width = 29
          Height = 28
          TabOrder = 6
          OnClick = SpeedButton18Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
      end
      object GroupBox36: TGroupBox
        Left = 4
        Top = 358
        Width = 733
        Height = 76
        Caption = '2'#170' N'#250'picias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 4
        object Label54: TLabel
          Left = 7
          Top = 47
          Width = 50
          Height = 16
          Caption = 'N'#250'pcias'
        end
        object Label55: TLabel
          Left = 566
          Top = 19
          Width = 59
          Height = 16
          Caption = 'Data Cas.'
        end
        object Label56: TLabel
          Left = 7
          Top = 19
          Width = 50
          Height = 16
          Caption = 'Conjuge'
        end
        object Label57: TLabel
          Left = 592
          Top = 47
          Width = 22
          Height = 16
          Caption = 'Fol.'
        end
        object Label58: TLabel
          Left = 521
          Top = 47
          Width = 20
          Height = 16
          Caption = 'Liv.'
        end
        object Label59: TLabel
          Left = 665
          Top = 47
          Width = 14
          Height = 16
          Caption = 'N'#176
        end
        object DBEdit75: TDBEdit
          Left = 60
          Top = 47
          Width = 455
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NUPCIAS_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit76: TDBEdit
          Left = 627
          Top = 19
          Width = 74
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'DATA_CASAMENTO_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit77: TDBEdit
          Left = 60
          Top = 19
          Width = 501
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CONJUGE_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit78: TDBEdit
          Left = 614
          Top = 47
          Width = 48
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FOLHAS_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit79: TDBEdit
          Left = 542
          Top = 47
          Width = 47
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'LIVRO_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit80: TDBEdit
          Left = 680
          Top = 47
          Width = 47
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NUM_2'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object SpeedButton19: TBitBtn
          Left = 701
          Top = 16
          Width = 29
          Height = 28
          TabOrder = 6
          OnClick = SpeedButton19Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'DADOS DOS PAIS'
      ImageIndex = 5
      PopupMenu = PopupMenu1
      object GroupBox1: TGroupBox
        Left = 27
        Top = 10
        Width = 690
        Height = 416
        PopupMenu = PopupMenu1
        TabOrder = 0
        object Label16: TLabel
          Left = 14
          Top = 10
          Width = 15
          Height = 13
          Caption = 'Pai'
        end
        object Label17: TLabel
          Left = 438
          Top = 10
          Width = 40
          Height = 13
          Caption = 'Est. Civil'
        end
        object Label18: TLabel
          Left = 14
          Top = 90
          Width = 21
          Height = 13
          Caption = 'M'#227'e'
        end
        object Label19: TLabel
          Left = 439
          Top = 91
          Width = 40
          Height = 13
          Caption = 'Est. Civil'
        end
        object Label20: TLabel
          Left = 14
          Top = 172
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label21: TLabel
          Left = 14
          Top = 212
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label22: TLabel
          Left = 318
          Top = 212
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label23: TLabel
          Left = 620
          Top = 212
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label4: TLabel
          Left = 620
          Top = 171
          Width = 12
          Height = 13
          Caption = 'N'#176
        end
        object Label50: TLabel
          Left = 14
          Top = 50
          Width = 49
          Height = 13
          Caption = 'Natural de'
        end
        object Label51: TLabel
          Left = 377
          Top = 50
          Width = 43
          Height = 13
          Caption = 'Profiss'#227'o'
        end
        object Label52: TLabel
          Left = 14
          Top = 130
          Width = 49
          Height = 13
          Caption = 'Natural de'
        end
        object Label53: TLabel
          Left = 377
          Top = 130
          Width = 43
          Height = 13
          Caption = 'Profiss'#227'o'
        end
        object Label44: TLabel
          Left = 14
          Top = 252
          Width = 41
          Height = 13
          Caption = 'Nupicias'
        end
        object Label45: TLabel
          Left = 455
          Top = 252
          Width = 47
          Height = 13
          Caption = 'Data Cas.'
        end
        object Label46: TLabel
          Left = 531
          Top = 252
          Width = 17
          Height = 13
          Caption = 'Liv.'
        end
        object Label47: TLabel
          Left = 579
          Top = 252
          Width = 17
          Height = 13
          Caption = 'Fol.'
        end
        object Label81: TLabel
          Left = 627
          Top = 252
          Width = 12
          Height = 13
          Caption = 'N'#176
        end
        object Label85: TLabel
          Left = 565
          Top = 9
          Width = 60
          Height = 13
          Caption = 'Data Nasc. :'
        end
        object Label86: TLabel
          Left = 566
          Top = 90
          Width = 60
          Height = 13
          Caption = 'Data Nasc. :'
        end
        object Panel4: TPanel
          Left = 15
          Top = 353
          Width = 657
          Height = 57
          TabOrder = 25
          object Label83: TLabel
            Left = 8
            Top = 8
            Width = 66
            Height = 13
            Caption = 'Av'#243's Materno'
          end
        end
        object Panel3: TPanel
          Left = 15
          Top = 294
          Width = 657
          Height = 57
          TabOrder = 24
          object Label82: TLabel
            Left = 8
            Top = 8
            Width = 64
            Height = 13
            Caption = 'Av'#243's Paterno'
          end
        end
        object DBEdit12: TDBEdit
          Left = 14
          Top = 23
          Width = 425
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit13: TDBEdit
          Left = 439
          Top = 104
          Width = 128
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ESTCIVIL_MAE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 6
          OnKeyPress = FormKeyPress
        end
        object DBEdit14: TDBEdit
          Left = 14
          Top = 104
          Width = 426
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_MAE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object DBEdit15: TDBEdit
          Left = 438
          Top = 23
          Width = 128
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ESTCIVIL_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit16: TDBEdit
          Left = 14
          Top = 186
          Width = 606
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO_PAIS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 10
          OnKeyPress = FormKeyPress
        end
        object DBEdit17: TDBEdit
          Left = 14
          Top = 227
          Width = 302
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'BAIRRO_PAIS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 12
          OnKeyPress = FormKeyPress
        end
        object DBEdit18: TDBEdit
          Left = 318
          Top = 227
          Width = 302
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CIDADE_PAIS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 13
          OnKeyPress = FormKeyPress
        end
        object DBEdit19: TDBEdit
          Left = 621
          Top = 227
          Width = 52
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'UF_PAIS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 14
          OnKeyPress = FormKeyPress
        end
        object DBEdit22: TDBEdit
          Left = 621
          Top = 186
          Width = 52
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NUMERO_PAIS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 11
          OnKeyPress = FormKeyPress
        end
        object DBEdit60: TDBEdit
          Left = 14
          Top = 63
          Width = 361
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NATURAL_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit64: TDBEdit
          Left = 378
          Top = 63
          Width = 295
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PROFISSAO_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit65: TDBEdit
          Left = 14
          Top = 144
          Width = 361
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NATURAL_MAE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 8
          OnKeyPress = FormKeyPress
        end
        object DBEdit66: TDBEdit
          Left = 378
          Top = 144
          Width = 295
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PROFISSAO_MAE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 9
          OnKeyPress = FormKeyPress
        end
        object DBEdit71: TDBEdit
          Left = 14
          Top = 267
          Width = 438
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NUPCIAS_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 15
          OnKeyPress = FormKeyPress
        end
        object DBEdit72: TDBEdit
          Left = 454
          Top = 267
          Width = 74
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'DATA_CASAMENTO_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 16
          OnKeyPress = FormKeyPress
        end
        object DBEdit73: TDBEdit
          Left = 530
          Top = 267
          Width = 47
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'LIVRO_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 17
          OnKeyPress = FormKeyPress
        end
        object DBEdit74: TDBEdit
          Left = 578
          Top = 267
          Width = 48
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FOLHAS_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 18
          OnKeyPress = FormKeyPress
        end
        object DBEdit96: TDBEdit
          Left = 626
          Top = 267
          Width = 47
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NUM_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 19
          OnKeyPress = FormKeyPress
        end
        object DBEdit97: TDBEdit
          Left = 131
          Top = 298
          Width = 537
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'AVO_PATERNO_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 20
          OnKeyPress = FormKeyPress
        end
        object DBEdit98: TDBEdit
          Left = 131
          Top = 324
          Width = 537
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'AVO_PATERNO_PAI1'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 21
          OnKeyPress = FormKeyPress
        end
        object DBEdit99: TDBEdit
          Left = 131
          Top = 383
          Width = 537
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'AVO_MATERNO_PAI1'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 23
          OnKeyPress = FormKeyPress
        end
        object DBEdit100: TDBEdit
          Left = 131
          Top = 357
          Width = 537
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'AVO_MATERNO_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 22
          OnKeyPress = FormKeyPress
        end
        object DBEdit103: TDBEdit
          Left = 565
          Top = 23
          Width = 87
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'D_NASC_PAI'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit104: TDBEdit
          Left = 566
          Top = 104
          Width = 87
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'D_NASC_MAE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 7
          OnKeyPress = FormKeyPress
        end
        object SpeedButton21: TBitBtn
          Left = 654
          Top = 20
          Width = 29
          Height = 28
          TabOrder = 26
          OnClick = SpeedButton21Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
        object SpeedButton22: TBitBtn
          Left = 655
          Top = 101
          Width = 29
          Height = 28
          TabOrder = 27
          OnClick = SpeedButton22Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '   FILHOS   '
      ImageIndex = 2
      PopupMenu = PopupMenu1
      object Label42: TLabel
        Left = 35
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Label43: TLabel
        Left = 542
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Idade'
      end
      object DBEdit42: TDBEdit
        Left = 35
        Top = 32
        Width = 505
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DBEdit43: TDBEdit
        Left = 542
        Top = 32
        Width = 87
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DATA_NASC'
        DataSource = DataSource1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnExit = DBEdit43Exit
        OnKeyPress = FormKeyPress
      end
      object DBGrid1: TDBGrid
        Left = 35
        Top = 57
        Width = 593
        Height = 322
        TabStop = False
        BorderStyle = bsNone
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome dos Filhos'
            Width = 490
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASC'
            Title.Caption = 'Idade'
            Width = 80
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 107
        Top = 382
        Width = 480
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        PopupMenu = PopupMenu1
        TabOrder = 3
      end
      object SpeedButton1: TBitBtn
        Left = 630
        Top = 31
        Width = 30
        Height = 30
        TabOrder = 4
        OnClick = SpeedButton1Click
        Glyph.Data = {
          56080000424D560800000000000036000000280000001A0000001A0000000100
          18000000000020080000C40E0000C40E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0AFC8B3AE
          CDB7AACABCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0567B58003A000048000041089BC2A7C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0476C510044020C670A0D
          72060A6808024A089ABDA5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C000390505680A017503007600006E00046207004304A6C4AFC0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0126418017603007A0000
          710000780402710609670B003700A0C1A2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0217E210D870C017A01007702037E0D0070000070010A6D080042
          00A3C6A7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C01276130C8B0B05860301
          7800017C04048308007700007500056D040B4C13C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C01678130B8D090A91020E90050E8C130B8212006F000075000273
          020D60130D4E14A2C8A6C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0267E12068C0301970002
          910900570D1A63331E69270B68060673000271000A6D080040009AC2A1C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C01C6C0C148F140494070E9612004A0BC0C0C0B5D6B8659A5F1B69
          0F0872020370000A6C0A003F00A0C5A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C08BBB88005400087F0910
          830D003700C0C0C0C0C0C0C0C0C0B2CEAC0050000B70050770050B6F0F004905
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0B3DEBC6CAA6A055000B6D2B4C0C0C0C0C0C0C0C0C0C0C0
          C0A0CA9C004D00096F0605730904670B0C5113A2C5ABC0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A1C79F004E0000640305750E
          006104003A00A1C3ACC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C09DBBA70B530F016A0700730D01660C002700C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A1C2A9004600
          056D0A06670E003000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0003D0000440073A07BC0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
      end
      object SpeedButton2: TBitBtn
        Left = 630
        Top = 61
        Width = 30
        Height = 30
        TabOrder = 5
        OnClick = SpeedButton2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object SpeedButton3: TBitBtn
        Left = 630
        Top = 91
        Width = 30
        Height = 30
        TabOrder = 6
        OnClick = SpeedButton3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
          3333333337FFF7F3333333333000003333333333377777333333}
        NumGlyphs = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = '   DECLARANTE   '
      ImageIndex = 3
      PopupMenu = PopupMenu1
      object GroupBox9: TGroupBox
        Left = 4
        Top = 234
        Width = 685
        Height = 77
        Caption = 'Cart'#243'rio de Registro'
        PopupMenu = PopupMenu1
        TabOrder = 11
        object Label60: TLabel
          Left = 25
          Top = 19
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label61: TLabel
          Left = 8
          Top = 46
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label62: TLabel
          Left = 420
          Top = 46
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object DBEdit44: TDBEdit
          Left = 56
          Top = 19
          Width = 580
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'REGISTRO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit81: TDBEdit
          Left = 56
          Top = 46
          Width = 361
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'ENDERECO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit82: TDBEdit
          Left = 456
          Top = 46
          Width = 217
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'CIDADE_1'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object SpeedButton8: TBitBtn
          Left = 638
          Top = 15
          Width = 35
          Height = 30
          TabOrder = 3
          OnClick = SpeedButton8Click
          Glyph.Data = {
            C2070000424DC20700000000000036000000280000001E000000150000000100
            1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
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
        end
      end
      object GroupBox10: TGroupBox
        Left = 4
        Top = 3
        Width = 492
        Height = 47
        Caption = 'Declarante'
        PopupMenu = PopupMenu1
        TabOrder = 0
        object DBEdit45: TDBEdit
          Left = 4
          Top = 16
          Width = 482
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DECLARANTE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox11: TGroupBox
        Left = 154
        Top = 52
        Width = 153
        Height = 43
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 3
        object DBEdit46: TDBEdit
          Left = 5
          Top = 13
          Width = 141
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'RG_CPF'
          DataSource = DtSrc
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox12: TGroupBox
        Left = 426
        Top = 52
        Width = 158
        Height = 43
        Caption = 'Grau de Parentesco'
        PopupMenu = PopupMenu1
        TabOrder = 5
        object DBEdit47: TDBEdit
          Left = 5
          Top = 15
          Width = 147
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'GRAU_PARENTESCO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox13: TGroupBox
        Left = 587
        Top = 52
        Width = 99
        Height = 43
        Caption = 'Telefone'
        PopupMenu = PopupMenu1
        TabOrder = 6
        object DBEdit48: TDBEdit
          Left = 6
          Top = 15
          Width = 88
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'FONE_DECL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox14: TGroupBox
        Left = 4
        Top = 96
        Width = 469
        Height = 45
        Caption = 'Profiss'#227'o'
        PopupMenu = PopupMenu1
        TabOrder = 7
        object DBEdit49: TDBEdit
          Left = 5
          Top = 15
          Width = 460
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PROFISSAO_DECL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox15: TGroupBox
        Left = 4
        Top = 141
        Width = 685
        Height = 46
        Caption = 'Endere'#231'o'
        PopupMenu = PopupMenu1
        TabOrder = 9
        object DBEdit50: TDBEdit
          Left = 5
          Top = 15
          Width = 670
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO_DECL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox16: TGroupBox
        Left = 4
        Top = 313
        Width = 685
        Height = 48
        Caption = 'Funcion'#225'rio que prestou o servi'#231'o'
        PopupMenu = PopupMenu1
        TabOrder = 12
        object Edit1: TEdit
          Left = 8
          Top = 17
          Width = 635
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
        end
        object SpeedButton4: TBitBtn
          Left = 644
          Top = 9
          Width = 37
          Height = 36
          TabOrder = 1
          OnClick = SpeedButton4Click
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            0800000000000004000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00090909001212
            12001F1F1F002C2C2C003939390045454500525252005F5F5F006C6C6C007878
            780085858500929292009F9F9F00ABABAB00B8B8B800C5C5C500D2D2D200DEDE
            DE00EBEBEB00F8F8F800F0FBFF00A4A0A000C0DCC000F0CAA60000003E000000
            5D0000007C0000009B000000BA000000D9000000F0002424FF004848FF006C6C
            FF009090FF00B4B4FF0000143E00001E5D0000287C0000329B00003CBA000046
            D9000055F000246DFF004885FF006C9DFF0090B5FF00B4CDFF00002A3E00003F
            5D0000547C0000699B00007EBA000093D90000AAF00024B6FF0048C2FF006CCE
            FF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B9B0000BABA0000D9
            D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FFFF00003E2A00005D
            3F00007C5400009B690000BA7E0000D9930000F0AA0024FFB60048FFC2006CFF
            CE0090FFDA00B4FFE600003E1400005D1E00007C2800009B320000BA3C0000D9
            460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FFCD00003E0000005D
            0000007C0000009B000000BA000000D9000000F0000024FF240048FF48006CFF
            6C0090FF9000B4FFB400143E00001E5D0000287C0000329B00003CBA000046D9
            000055F000006DFF240085FF48009DFF6C00B5FF9000CDFFB4002A3E00003F5D
            0000547C0000699B00007EBA000093D90000AAF00000B6FF2400C2FF4800CEFF
            6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B0000BABA0000D9D9
            0000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFFB4003E2A00005D3F
            00007C5400009B690000BA7E0000D9930000F0AA0000FFB62400FFC24800FFCE
            6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B320000BA3C0000D946
            0000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCDB4003E0000005D00
            00007C0000009B000000BA000000D9000000F0000000FF242400FF484800FF6C
            6C00FF909000FFB4B4003E0014005D001E007C0028009B003200BA003C00D900
            4600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4CD003E002A005D00
            3F007C0054009B006900BA007E00D9009300F000AA00FF24B600FF48C200FF6C
            CE00FF90DA00FFB4E6003E003E005D005D007C007C009B009B00BA00BA00D900
            D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4FF002A003E003F00
            5D0054007C0069009B007E00BA009300D900AA00F000B624FF00C248FF00CE6C
            FF00DA90FF00E6B4FF0014003E001E005D0028007C0032009B003C00BA004600
            D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF00222222222222
            2222222222222222222222222222222222222222222222222222222222222222
            222222222222222222222222222222222222222222222222222222220E0E0E0E
            0E0E0E000000060E0E0E0000030D0D0000000D0D00000D0D00000E060E0E0E0E
            0E06000E0E000E060E000E000B0500030300050D0D0005050000060E060E0E0E
            06000E0E0E00060E000E0E00000B030B030808000500000022220E060E060E06
            000E0E0E0E000000000E0E00000B0B03030808000000222222220000060E0600
            060E0E0E0048484800000E0007030B03070F0800222222222222222200000006
            0E0E0E004848484848000008030B03070F0F080022222222222222222222000E
            060E004848484848480000070B03070F0F070800222222222222222222220006
            00004848484848480000000703034B0808000000000000222222222222220000
            00484848480000000000000008034B4B4B4B4B4B4B4B08002222222222222200
            0048484848484848484848480008074B4B4B4B4B4B4B4B002222222222000000
            0000004848484848484848484800074B4B4B4B4B4B4B07002222222222000000
            0000004848484848484848484800074B4B4B4B4B080000002222222200000000
            0000004848484848484848000008074B4B4B4B4B4B4B07002222222200000000
            0000004848484848484848484800074B4B4B4B4B4B0000000022220000000000
            000048484848484848484848480007074B4B4B4B4B4B4B4B0022000000000000
            004848484848484848484848000000074B4B4B4B4B4B4B002222000000000000
            0048484848484848484848484848004B4B4B0C0C4B4B00222222000000000000
            0000004848484848480048484800084B4B4B0800000800222222000000000000
            0000004848484848000048480008074B4B4B4B07070700222222000000000000
            000000000048484848000000080B03074B4B4B4B4B4B08002222000000000000
            00000000004848484848000008070300074B004B004B03080022000000000000
            000000000048484848484800080B000B03030B030B03070B0022220000000000
            00000000004848484848000008070B070B0B0B0B030B0B0B0022220000000000
            000000000000000000000000080B070B0B0B0B0B0B0B0B002222222200000000
            00000000000000000000000008070B070B0B0B0B0B0B00222222222200000000
            000000000000000000000000000B070B0B0B0B0B000022222222222222000000
            0000000000000000000000000000000000000000222222222222222222220000
            0000000000000000000000222222222222222222222222222222222222222222
            0000000000000000000022222222222222222222222222222222222222222222
            2222222222222222222222222222222222222222222222222222}
        end
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 5
        Top = 52
        Width = 145
        Height = 43
        Caption = 'Documento'
        Columns = 3
        DataField = 'TIPO'
        DataSource = DtSrc
        Items.Strings = (
          'CIC'
          'RG'
          'RNE')
        PopupMenu = PopupMenu1
        TabOrder = 2
        Values.Strings = (
          'C'
          'R'
          'E')
        OnClick = DBRadioGroup5Click
      end
      object GroupBox24: TGroupBox
        Left = 4
        Top = 363
        Width = 685
        Height = 47
        Caption = 'Tipo Urna'
        PopupMenu = PopupMenu1
        TabOrder = 13
        object DBEdit59: TDBEdit
          Left = 8
          Top = 15
          Width = 635
          Height = 24
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'TIPO_URNA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object SpeedButton7: TBitBtn
          Left = 645
          Top = 11
          Width = 35
          Height = 30
          TabOrder = 1
          OnClick = SpeedButton6Click
          Glyph.Data = {
            C2070000424DC20700000000000036000000280000001E000000150000000100
            1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
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
        end
      end
      object GroupBox41: TGroupBox
        Left = 4
        Top = 187
        Width = 685
        Height = 45
        Caption = 'Local onde o Corpo ser'#225' Velado'
        PopupMenu = PopupMenu1
        TabOrder = 10
        object DBEdit86: TDBEdit
          Left = 5
          Top = 15
          Width = 670
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'VELORIO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox8: TGroupBox
        Left = 475
        Top = 96
        Width = 213
        Height = 45
        Caption = 'Estado Civil'
        PopupMenu = PopupMenu1
        TabOrder = 8
        object DBComboBox6: TDBComboBox
          Left = 4
          Top = 15
          Width = 203
          Height = 24
          BevelKind = bkFlat
          DataField = 'DECLA_ESTCIVIL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox28: TGroupBox
        Left = 496
        Top = 3
        Width = 191
        Height = 47
        Caption = 'Nacionalidade'
        PopupMenu = PopupMenu1
        TabOrder = 1
        object DBEdit106: TDBEdit
          Left = 5
          Top = 15
          Width = 180
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DECLA_NACIONALIDADE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox29: TGroupBox
        Left = 309
        Top = 52
        Width = 116
        Height = 43
        Caption = 'Org'#227'o Expeditor'
        PopupMenu = PopupMenu1
        TabOrder = 4
        object DBEdit107: TDBEdit
          Left = 5
          Top = 15
          Width = 106
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'SSP_DECLARANTE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = '   ADMINISTRATIVO   '
      ImageIndex = 4
      PopupMenu = PopupMenu1
      object GroupBox18: TGroupBox
        Left = 364
        Top = 2
        Width = 348
        Height = 116
        Caption = 'Observa'#231#245'es Gerais'
        PopupMenu = PopupMenu1
        TabOrder = 11
        object DBMemo1: TDBMemo
          Left = 5
          Top = 14
          Width = 338
          Height = 97
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'OBS_GERAIS'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
        end
      end
      object GroupBox37: TGroupBox
        Left = 32
        Top = 239
        Width = 230
        Height = 48
        Caption = 'Forma de Pgto'
        PopupMenu = PopupMenu1
        TabOrder = 8
        object DBComboBox3: TDBComboBox
          Left = 8
          Top = 17
          Width = 216
          Height = 24
          CharCase = ecUpperCase
          DataField = 'FORMA_PGTO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            'DINHEIRO'
            'CART'#195'O'
            'BOLETO'
            'CHEQUE'
            'OUTROS')
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
        end
      end
      object GroupBox17: TGroupBox
        Left = 32
        Top = 3
        Width = 326
        Height = 55
        Caption = 'Situa'#231#227'o'
        PopupMenu = PopupMenu1
        TabOrder = 0
        object DBEdit51: TDBEdit
          Left = 9
          Top = 21
          Width = 306
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'SITUACAO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox22: TGroupBox
        Left = 32
        Top = 287
        Width = 680
        Height = 145
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 10
        object DBGrid2: TDBGrid
          Left = 103
          Top = 9
          Width = 569
          Height = 128
          Ctl3D = False
          DataSource = dtsrc_CR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clTeal
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'TITULO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Titulo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENCIMENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Data Venc.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_NF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Titulo R$'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_RECEBER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Receber R$'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Pago R$ '
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Parc.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_PAG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Data Pagto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Status'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 130
              Visible = True
            end>
        end
        object dxButton1: TdxButton
          Left = 4
          Top = 10
          Width = 97
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          PopupMenu = PopupMenu1
          Version = '1.0.2e'
          OnClick = dxButton1Click
          Caption = 'Confima  '
          Colors.BackgroundTo = 13029334
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            08000000000000040000000000000000000000010000000000001C3404002434
            1C00242424001C3C0400243C0C00244404002C5C04003C5C240044543C005C5C
            54005C5C5C00646464006C6C6C0054743C007474740044840400747C74007C7C
            7C0084848400449404006C8C540054AC0400000000008C8C8C008C948C009494
            94009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC040074F404007CFC
            040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC240094EC3C0094FC
            2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC5400ACFC6400B4FC
            6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCCAC00BCC4B400BCCC
            B400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0C000002A3E00003F
            5D0000547C0000699B00007EBA000093D90000AAF00024B6FF0048C2FF006CCE
            FF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B9B0000BABA0000D9
            D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FFFF00003E2A00005D
            3F00007C5400009B690000BA7E0000D9930000F0AA0024FFB60048FFC2006CFF
            CE0090FFDA00B4FFE600003E1400005D1E00007C2800009B320000BA3C0000D9
            460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FFCD00003E0000005D
            0000007C0000009B000000BA000000D9000000F0000024FF240048FF48006CFF
            6C0090FF9000B4FFB400143E00001E5D0000287C0000329B00003CBA000046D9
            000055F000006DFF240085FF48009DFF6C00B5FF9000CDFFB4002A3E00003F5D
            0000547C0000699B00007EBA000093D90000AAF00000B6FF2400C2FF4800CEFF
            6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B0000BABA0000D9D9
            0000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFFB4003E2A00005D3F
            00007C5400009B690000BA7E0000D9930000F0AA0000FFB62400FFC24800FFCE
            6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B320000BA3C0000D946
            0000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCDB4003E0000005D00
            00007C0000009B000000BA000000D9000000F0000000FF242400FF484800FF6C
            6C00FF909000FFB4B4003E0014005D001E007C0028009B003200BA003C00D900
            4600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4CD003E002A005D00
            3F007C0054009B006900BA007E00D9009300F000AA00FF24B600FF48C200FF6C
            CE00FF90DA00FFB4E6003E003E005D005D007C007C009B009B00BA00BA00D900
            D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4FF002A003E003F00
            5D0054007C0069009B007E00BA009300D900AA00F000B624FF00C248FF00CE6C
            FF00DA90FF00E6B4FF0014003E001E005D0028007C0032009B003C00BA004600
            D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF003F3F3F3F3F3F
            3F3F3F3F191917171719193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
            3F3F17171212111111121219193F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
            3F1912120E0E0C0C0C0E0E12123F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
            3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F
            3F120E0E0C0C0B0B0B0C0C1111173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F17
            17110C0C0B0B0A0A0A0B0B0E0E123F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F12
            12140707020201010B0B0B0C0C1117173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F18
            181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F3F3F3F3F3F3F3F18
            181E1E1E0F0F0303100C0C0C0C0E121219193F3F3F3F3F3F3F3F3F3F3F3F3F24
            242223231F1F0606080C0C0C0C0C111117173F3F3F3F3F3F3F3F3F3F3F2B2B21
            21222323222213130517170C0C0C0E0E1111173F3F3F3F3F3F3F3F3F3F2B2B21
            21222323222213130517170C0C0C0E0E1111173F3F3F3F3F3F3F3F3F35212122
            2223232323231E1E0609090E0E0C0C0C0E0E1219193F3F3F3F3F3F3F2B222223
            232727272626222213040418180E0C0C0C0C0E12123F3F3F3F3F3F3F29262625
            252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F3F3F3F3F29262625
            252A2F2F2F2F26261F06060808110E0E0C0C0E111117173F3F3F3838302D2D23
            232C393933332E2E23151503031111110E0E0C0E0E1111173F3F3F3F392E2E28
            28383F3F373731312A22220F0F01171711110E0E0E0E0E1219193F3F3F37373F
            3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E1117173F3F3F37373F
            3F3F3F3F3F3F3A3A3026261E1E0609091717110E0E0E0E1117173F3F3F3F3F3F
            3F3F3F3F3F3F3F3F322E2E23231503030C0C17121211111217173F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3734342D2D231313000018191917171719193F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3734342D2D231313000018191917171719193F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3B3B34342E232313130019193F3F3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3C3C33303023230F01011D1D3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F393E3E3131250F0F0D0D3F3F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F38383D3D3123232020353F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A2323363F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C2A2A2323363F3F3F3F3F3F3F3F
            3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37373F3F3F}
          TabOrder = 0
        end
        object dxButton5: TdxButton
          Left = 4
          Top = 42
          Width = 97
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = PopupMenu1
          Version = '1.0.2e'
          OnClick = dxButton5Click
          Caption = 'Excluir   '
          Colors.BackgroundTo = 13029334
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          TabOrder = 1
        end
        object dxButton4: TdxButton
          Left = 4
          Top = 74
          Width = 97
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = PopupMenu1
          Version = '1.0.2e'
          OnClick = dxButton4Click
          Caption = 'Salvar    '
          Colors.BackgroundTo = 13029334
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
          TabOrder = 3
        end
        object dxButton6: TdxButton
          Left = 4
          Top = 106
          Width = 97
          Height = 30
          About = 'Design eXperience. '#169' 2002 M. Hoffmann'
          PopupMenu = PopupMenu1
          Version = '1.0.2e'
          OnClick = dxButton6Click
          Caption = 'Despesas'
          Colors.BackgroundTo = 13029334
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00200
            01010304010206C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0040000060102C1BE
            C079787A7E8081020405040404C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0050505000001C4C1C3C0BDBFC2BF
            C1817E808484847B7B7B7E7E7E010101050505C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0000100000100B6BABBBEC0C1C3C4C8BBBABE8481
            8304020203010082807F8181817F7F7F7A7A7A020202020202C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000200000200C1C8C5BCC3C0C4C9CAB6BBBC75787C85868ABAB9
            BB838181827F7B0603000301008585858484847A7A7A7B7B7B050505000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            000001000000C0C5C3BBC2BDB9C0BDB3B9B8777D7C7E8384BBBEC27F8182C1C1
            C182807F878480827F7B817F7E0000000000008888888383837D7D7D89898900
            0000030303C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0020001
            C7C6C8BCBBBDC0C2C2BBC0BF7A7F7E868B8AB9BEBDC1C3C3BEC0C07C7C7CC8C6
            C5817F7E7E7C7B8684837F7F7F7D7D7D8484840000000000007E7E7E7F7F7F81
            8181797979080808030303C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07D7E7C
            C0BFC1C3C2C47D7C807E7D81C2C1C5BEBDBFC5C6C4BDBEBAC0C1BD858480BBB9
            B88583828180827D7C7E8282827F7F7F8080808484847C7C7C0303030202027E
            7E7E868686797979818181000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0838480
            7C7C7C807F83C3BFC5C5BDC7C2BBC2C6BFC2C6C1C0C1BEB9C7C5BD7F7F79C5C4
            C08181817E7F837D7E827F7E808787877A7A7A8585858080807D7D7D81818100
            00000000008585857E7E7E000000C0C0C0C0C0C0C0C0C0C0C0C081867D797D77
            C9C9C9828185C2BDC6C1B9C3C0B8BFC8C1C4CBC3C3C4C0BBC2C0B8818279BBBC
            B88486867D80857B7E837C7E7F7B7B7B8383837979798585857E7E7E8282827F
            7F7F838383000000070707010101C0C0C0C0C0C0C0C0C0C0C0C080857CF5F9F3
            C0C1BF7B7A7CBDB9BFC8C1C8CAC3CAC0BBBDC2BDBCC7C4BFC0C0BA858781FFFF
            FE7C7E7F75787D7F82877C7E7F8F8F8F7979798181817D7D7D7D7D7D7C7C7C86
            86867B7B7B7F7F7F7D7D7D040404000000C0C0C0C0C0C0C0C0C07E7F7BFFFFFC
            C0C1BF848484C9C9C9B6B8B9BAB9BBC3C5C5C5C5C5B9BCBAFDFFFE7E80807C7E
            7EB9BDBEC4C7CB7C7F837F81827575758383838383838181818686868282827B
            7B7B8686867C7C7C838383818181000000000000C0C0C0C0C0C0817E80FDFBFB
            BDBEBA7C807ABAC2BBBFCAC2B7C3BDB3C1BDF4FEFEF3FCFFBAC3C7B8BEC3BCBF
            C4808387767878BEC0C0BEBEBE8181818181817F7F7F7D7D7D7C7C7C80808080
            80807E7E7E8585857777777F7F7F0A0A0A7C7C7C040404C0C0C08C838DFEF8FD
            C8C9C5747C71B7C7B6B1C4B3EFFFF8EDFFFCAFC3C4B2C4CBB4C0CCB5BDCABABC
            C6BABBBFC3C4C080807A838482C0C0C0C0C0C07F7F7F8484847D7D7D8989897D
            7D7D7D7D7D7F7F7F858585808080000000C1C1C1838383000000887889FFFBFF
            BCBBB7859080F2FFEFEDFFF0A4C5B0AACCC1A8C6C7263E4A3B4A5DADB6CABFC2
            D0818286807E76C5C4BABEBDB97C7C7C838383C3C3C3BFBFBF7C7C7C8484847E
            7E7E818181808080818181848484000000C6C6C68181817E7E7E847787FFFBFF
            FEFFFD778174768974B0CAB2AFCDBA7C9A8F7B9798B1C5D0AEBACC757C8D7D7D
            89BDBABCCBC5BEC8C3BAC4C4BEBFC2C00002007C7F7D848281C8C3C4BBB9B984
            84847B807F7C81807C7E7E797B7B070707777979C0C0C0C0C0C0828185818082
            F9FBFBBEC2BDBEC5BE767E77818B85B3BEBBB7C1C17B8285797D82BFBFC5C2BC
            C1C9C1C2C8BCBCC7BEBA020300000600F2FFF7C0C8C10700008D81818B8384BE
            C0C0B7C3C3788685757D7D7C8081000001C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            8A8C8C7D7F7FFCFCFCBDBDBDBDBFBF8183837D7F7F7F8181818181C4BFC0C2BA
            BBCEC3C50D0001160201FFFDF9FFFBF3FFFFF8FFFFF90C0000D0C3C1C1B9BA7E
            7E7E707C7CB4C1C3B8BCBD848385090406C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0828282818181FFFFFFBEBEBEBDBFBF8587877C7C7C7C7A7A0D07
            08090000FFFCFEFFF6F8FFF3F96F1115531717FFF8F5D2BFBC0900008F898AC1
            C1C1C2C6C77D7F80878083C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C08080807F7F7FFAFCFCBDBFBFC2C2C2838181837D
            7EFFFEFFFFFDFF421518750810FFEEF7FFF0F5FFF7F7FFFCFB0A03007C7A797B
            7D7D7D7C7EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08284847D7F7FFCFEFEC1C1C1C7C2
            C3837D7EFFFAFCFFFAFCFFF3F8FFF0F5811A1F601114FFF2F2C9C0BD000100C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07B7D7D7C7E7EFFFF
            FF7F7A7BFFFEFFFFF6F76716197D1215FFEAF1FFF2F8FFF9F9FFFDFABEC2BD00
            0200C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0817F
            7F837E7F8E8889FFF7F7FFF5F6FFF0F2FFEFF7810C15621519FFFAFBFFFAF7BB
            C4C1070707C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0807B7CFFFDFCFFFBF85F15157C1016FFECF5FFEFF6FFF6FBFFF7F7FF
            FFFCC2C0BF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0868180FFFFF9FFFDF8FFF7F8FFF2F9FFF0F96A0A1458181EFF
            F9FBFFFDFDC4C5C3020000020000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C07B7F79FFFFF9FFFCF950191C631018FFF3FBFFF6FCFF
            FAFCFFFEFEFBF9F88A8485888081C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C07F817BFFFFFBFFFDFAFFFCFCFFFBFCFFF9FBFF
            FEFE8381807E7C7BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0717F79EEFCF6FDFFFEFEFAF9817F7E7F
            807EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08287857F8181808080C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          TabOrder = 4
        end
      end
      object GroupBox23: TGroupBox
        Left = 268
        Top = 185
        Width = 123
        Height = 46
        Caption = 'Emiss'#227'o'
        PopupMenu = PopupMenu1
        TabOrder = 4
        object DBEdit55: TDBEdit
          Left = 8
          Top = 15
          Width = 83
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'VENCIMENTO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object SpeedButton20: TBitBtn
          Left = 91
          Top = 11
          Width = 29
          Height = 28
          TabOrder = 1
          OnClick = SpeedButton20Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01800
            922C07AD342176C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C2C2EC5B47B0210486C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C02908B22F00D43212A55A4E8EC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0B5ADE93D27A1260D93503AACC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C06952CF2400C33204C8321F8D787B8FC0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A296E03A1FA01E00A57560D4C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07565CB2400BE30
            0ABF2712869499A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08168DB2400A52A08AD
            A39ADEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C04D34C32802B4300EB93D3674ADAEBDC0C0C0C0C0C0C0C0C09987DC25
            01A53214AC9585E1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04F34C62600B73821994B4577BDC3C4C0C0
            C09B86DF370CAF2A06AD9687E4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06349C72500B2
            30169D3C33877257D62700A23107AEB1A4E2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0664CCD2C11AC260DB22604B7341BA69487DCC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04B30D52200DB2901D433259699A2B2C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E66DF2201B52902D32C00
            DF2F11AE352E74909597C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09889E02300A8
            2F12A67D6ED7967EEC3314AB3A1AA3463880807C9EC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C093
            86DD2D0CAA2D04B17664C8C0C0C0C0C0C0C1ADFA3710AD310F9E423187616284
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C07C67DF2000AC2603B57566C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C052
            34B82E08B22F14A1464A79C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C09483E02400AF2507B05240BEC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C08169DB2A0DA235209841397FC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C07D6DC82C0AAF2D04BF432EB3C4C1F3C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B19CF71B00974E389EC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0846BE32300BA2D00D13D24AABC
            B3EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01B00A32E03
            CB2000ADA69BE3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C03D21B91F029E917FDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        end
      end
      object GroupBox25: TGroupBox
        Left = 32
        Top = 71
        Width = 112
        Height = 47
        Caption = 'NF'
        PopupMenu = PopupMenu1
        TabOrder = 1
        object DBEdit56: TDBEdit
          Left = 56
          Top = 16
          Width = 48
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOTAFISCAL'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBComboBox4: TDBComboBox
          Left = 7
          Top = 16
          Width = 47
          Height = 24
          BevelKind = bkFlat
          CharCase = ecUpperCase
          DataField = 'SERIE_NF'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnExit = DBComboBox4Exit
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox19: TGroupBox
        Left = 397
        Top = 184
        Width = 112
        Height = 46
        Caption = 'Val. Servi'#231'o'
        PopupMenu = PopupMenu1
        TabOrder = 5
        object DBEdit52: TDBEdit
          Left = 7
          Top = 15
          Width = 97
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'VALOR_SERVICO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = DBEdit52KeyPress
        end
      end
      object GroupBox21: TGroupBox
        Left = 613
        Top = 183
        Width = 99
        Height = 46
        Caption = 'Val. Entrada'
        PopupMenu = PopupMenu1
        TabOrder = 7
        object DBEdit54: TDBEdit
          Left = 6
          Top = 15
          Width = 86
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'ENTRADA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = DBEdit52KeyPress
        end
      end
      object GroupBox20: TGroupBox
        Left = 515
        Top = 184
        Width = 93
        Height = 46
        Caption = 'N'#176' Parcelas'
        PopupMenu = PopupMenu1
        TabOrder = 6
        object DBEdit53: TDBEdit
          Left = 14
          Top = 15
          Width = 65
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'PARCELA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox26: TGroupBox
        Left = 144
        Top = 71
        Width = 99
        Height = 47
        Caption = 'Ficha N'#176
        PopupMenu = PopupMenu1
        TabOrder = 2
        object DBEdit57: TDBEdit
          Left = 5
          Top = 16
          Width = 86
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'N_FICHA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox27: TGroupBox
        Left = 32
        Top = 129
        Width = 680
        Height = 46
        Caption = 'Tipo Urna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 3
        object DBEdit58: TDBEdit
          Left = 8
          Top = 15
          Width = 629
          Height = 24
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'TIPO_URNA'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object SpeedButton6: TBitBtn
          Left = 639
          Top = 10
          Width = 35
          Height = 30
          TabOrder = 1
          OnClick = SpeedButton6Click
          Glyph.Data = {
            C2070000424DC20700000000000036000000280000001E000000150000000100
            1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
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
        end
      end
      object dxButton7: TdxButton
        Left = 32
        Top = 197
        Width = 217
        Height = 28
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        Version = '1.0.2e'
        OnClick = dxButton7Click
        Caption = 'LAN'#199'AR DESPESAS DO FUNERAL'
        TabOrder = 12
      end
      object GroupBox38: TGroupBox
        Left = 398
        Top = 239
        Width = 314
        Height = 48
        Caption = 'Hist'#243'rico'
        PopupMenu = PopupMenu1
        TabOrder = 9
        object DBEdit83: TDBEdit
          Left = 8
          Top = 16
          Width = 300
          Height = 24
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'HISTORICO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
      end
      object GroupBox39: TGroupBox
        Left = 244
        Top = 71
        Width = 113
        Height = 47
        Caption = 'Lote'
        PopupMenu = PopupMenu1
        TabOrder = 13
        object DBEdit84: TDBEdit
          Left = 43
          Top = 16
          Width = 34
          Height = 24
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'LOTE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
        end
        object DBEdit102: TDBEdit
          Left = 9
          Top = 16
          Width = 34
          Height = 24
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'GRUPO_LOTE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
        end
        object SpeedButton13: TBitBtn
          Left = 78
          Top = 11
          Width = 30
          Height = 30
          TabOrder = 2
          OnClick = SpeedButton13Click
          Glyph.Data = {
            56080000424D560800000000000036000000280000001A0000001A0000000100
            18000000000020080000C40E0000C40E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0AFC8B3AE
            CDB7AACABCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0567B58003A000048000041089BC2A7C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0476C510044020C670A0D
            72060A6808024A089ABDA5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C000390505680A017503007600006E00046207004304A6C4AFC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0126418017603007A0000
            710000780402710609670B003700A0C1A2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0217E210D870C017A01007702037E0D0070000070010A6D080042
            00A3C6A7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C01276130C8B0B05860301
            7800017C04048308007700007500056D040B4C13C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C01678130B8D090A91020E90050E8C130B8212006F000075000273
            020D60130D4E14A2C8A6C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0267E12068C0301970002
            910900570D1A63331E69270B68060673000271000A6D080040009AC2A1C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C01C6C0C148F140494070E9612004A0BC0C0C0B5D6B8659A5F1B69
            0F0872020370000A6C0A003F00A0C5A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C08BBB88005400087F0910
            830D003700C0C0C0C0C0C0C0C0C0B2CEAC0050000B70050770050B6F0F004905
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0B3DEBC6CAA6A055000B6D2B4C0C0C0C0C0C0C0C0C0C0C0
            C0A0CA9C004D00096F0605730904670B0C5113A2C5ABC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A1C79F004E0000640305750E
            006104003A00A1C3ACC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C09DBBA70B530F016A0700730D01660C002700C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A1C2A9004600
            056D0A06670E003000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0003D0000440073A07BC0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
        end
      end
      object SpeedButton12: TdxButton
        Left = 267
        Top = 244
        Width = 124
        Height = 43
        About = 'Design eXperience. '#169' 2002 M. Hoffmann'
        PopupMenu = PopupMenu1
        Version = '1.0.2e'
        OnClick = SpeedButton12Click
        Caption = 'CHEQUES'
        Colors.BackgroundTo = 13029334
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00090909001212
          12001F1F1F002C2C2C003939390045454500525252005F5F5F006C6C6C007878
          780085858500929292009F9F9F00ABABAB00B8B8B800C5C5C500D2D2D200DEDE
          DE00EBEBEB00F8F8F800F0FBFF00A4A0A000C0DCC000F0CAA60000003E000000
          5D0000007C0000009B000000BA000000D9000000F0002424FF004848FF006C6C
          FF009090FF00B4B4FF0000143E00001E5D0000287C0000329B00003CBA000046
          D9000055F000246DFF004885FF006C9DFF0090B5FF00B4CDFF00002A3E00003F
          5D0000547C0000699B00007EBA000093D90000AAF00024B6FF0048C2FF006CCE
          FF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B9B0000BABA0000D9
          D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FFFF00003E2A00005D
          3F00007C5400009B690000BA7E0000D9930000F0AA0024FFB60048FFC2006CFF
          CE0090FFDA00B4FFE600003E1400005D1E00007C2800009B320000BA3C0000D9
          460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FFCD00003E0000005D
          0000007C0000009B000000BA000000D9000000F0000024FF240048FF48006CFF
          6C0090FF9000B4FFB400143E00001E5D0000287C0000329B00003CBA000046D9
          000055F000006DFF240085FF48009DFF6C00B5FF9000CDFFB4002A3E00003F5D
          0000547C0000699B00007EBA000093D90000AAF00000B6FF2400C2FF4800CEFF
          6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B0000BABA0000D9D9
          0000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFFB4003E2A00005D3F
          00007C5400009B690000BA7E0000D9930000F0AA0000FFB62400FFC24800FFCE
          6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B320000BA3C0000D946
          0000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCDB4003E0000005D00
          00007C0000009B000000BA000000D9000000F0000000FF242400FF484800FF6C
          6C00FF909000FFB4B4003E0014005D001E007C0028009B003200BA003C00D900
          4600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4CD003E002A005D00
          3F007C0054009B006900BA007E00D9009300F000AA00FF24B600FF48C200FF6C
          CE00FF90DA00FFB4E6003E003E005D005D007C007C009B009B00BA00BA00D900
          D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4FF002A003E003F00
          5D0054007C0069009B007E00BA009300D900AA00F000B624FF00C248FF00CE6C
          FF00DA90FF00E6B4FF0014003E001E005D0028007C0032009B003C00BA004600
          D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF00070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070700000707070707070707070707070707070707070707070707070707
          0707070025190007070707070707070707070707070707070707070707070707
          07070021B7251900070707070707070707070707070707070707070707070707
          07000F2421B72519000707070707070707070707070707070707070707070707
          000F0F0F2421B725190007070707070707070707070707070707070707070700
          0F0F240F0F2421B725190007070707070707070707000000000707070707000F
          0F240F240F0F2421B72519000707070707070707070000000007070707000F0F
          21B7240F240F0F2421B7251900070707070700000000000000070707000F0F21
          B721B7240F000F0F2421B7252100000000003D3D3D000000000707000F0F21B7
          21B721B7240000000F24210000003D3D3D3D4A4A3D000000000707000F21B721
          B721B721B724003D0000003D3D3D4A4A4A4A4A4A3D0000000007070700B721B7
          21B721B721B7000B00574A4A4A4A4A4A4A4A4A4A3D000000000707070700B721
          2421B721B721B7000B0000000000574A4A4A4A4A3D00000000070707070700B7
          212421B721B7003D000B3D00000F003B4A4A4A4A000000000007070707070700
          B7242421B721004A3D000B3D0000003D4A4A4A00070000000007070707070707
          00B7242421B721004A3D000B3D00003D3D4A0021000707070707070707070707
          0700B7242421B721004A3D000B3D00003D0021B7210007070707070707071207
          070700B7242421B725004A3D00533D0000212121B72100070707070707126612
          07070700B7242421B721004A3D00533D00002121210007070707070712666666
          1207070700B7242421B707000000000B3D000021000707070707071266071207
          661207070700B7212407B721072107000B3D0000070707070707070712071207
          66120707070700B7072407B721072107000B0000000707070707070707126666
          1207070707070700B7072407B721072107000B00F10007070707070712666612
          070707070707070700B7072107B72107000700F1F10007070707071266071207
          12070707070707070700B7072107070007070700000007070707071266071207
          6612070707070707070700B70707000707070707070707070707070712666666
          1207070707070707070707000700070707070707070707070707070707126612
          0707070707070707070707070007070707070707070707070707070707071207
          0707070707070707070707070707070707070707070707070707}
        TabOrder = 14
      end
    end
  end
  object DBEdit105: TDBEdit [3]
    Left = 704
    Top = 40
    Width = 36
    Height = 21
    DataField = 'ID'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 3
  end
  inherited PopupMenu1: TPopupMenu
    Left = 3
    Top = 512
    inherited Procurar1: TMenuItem
      OnClick = dxButton2Click
    end
    object ProcScio1: TMenuItem
      Caption = 'Proc. S'#243'cio'
      ShortCut = 121
      OnClick = SpeedButton5Click
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_Obitos
    Left = 637
    Top = 46
  end
  object DataSource1: TDataSource
    DataSet = DM.cds_filhos
    OnStateChange = DataSource1StateChange
    Left = 693
    Top = 46
  end
  object dtsrc_CR: TDataSource
    DataSet = cds_CR
    OnStateChange = dtsrc_CRStateChange
    Left = 581
    Top = 450
  end
  object DataSource2: TDataSource
    DataSet = DM.cds_serie
    OnStateChange = DataSource1StateChange
    Left = 665
    Top = 46
  end
  object proc_dep: TSQLClientDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.GRUPO'#13#10'  ' +
      '         , s.N_INSCRICAO '#13#10'           , s.SOBRENOME     '#13#10'from D' +
      'EPENDENTE d '#13#10'left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
      #13#10'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO '#13#10'where d.NO' +
      'ME_DEP like :pnome and d.FALECIDO<>'#39'S'#39' '
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
    Left = 596
    Top = 513
    object proc_depID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object proc_depID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object proc_depNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object proc_depFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object proc_depCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object proc_depDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object proc_depDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object proc_depID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object proc_depDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object proc_depGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object proc_depN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object proc_depSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object proc_depCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      Visible = False
    end
    object proc_depDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      Visible = False
    end
  end
  object sds_dep: TSQLDataSet
    CommandText = 
      'select * from DEPENDENTE '#13#10'where NOME_DEP = :pnome '#13#10'or ID_DEP =' +
      ' :piddep'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'piddep'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 408
    Top = 450
    object sds_depID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_depID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_depNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_depFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_depCODPAR: TFloatField
      FieldName = 'CODPAR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depDTNASC: TDateField
      FieldName = 'DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depDTFALEC: TDateField
      FieldName = 'DTFALEC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_depID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_dep: TDataSetProvider
    DataSet = sds_dep
    UpdateMode = upWhereKeyOnly
    Left = 436
    Top = 450
  end
  object cds_dep: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'piddep'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_dep'
    Left = 464
    Top = 450
    object cds_depID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object cds_depID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object cds_depNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object cds_depFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object cds_depCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object cds_depDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object cds_depDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object cds_depID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
  end
  object sds_Obitos: TSQLDataSet
    CommandText = 
      'select * from OBITOS '#13#10'where GRUPO = :pgrupo '#13#10'and  LOTE = :plot' +
      'e'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'pgrupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'plote'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 210
    Top = 450
    object sds_ObitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_ObitosDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sds_ObitosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosIDADE: TStringField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_ObitosESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosENDERECO_FAL: TStringField
      FieldName = 'ENDERECO_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_ObitosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE_3: TStringField
      FieldName = 'FONE_3'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosESTCIVIL_PAI: TStringField
      FieldName = 'ESTCIVIL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosESTCIVIL_MAE: TStringField
      FieldName = 'ESTCIVIL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosENDERECO_PAIS: TStringField
      FieldName = 'ENDERECO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosNUMERO_PAIS: TStringField
      FieldName = 'NUMERO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosBAIRRO_PAIS: TStringField
      FieldName = 'BAIRRO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCIDADE_PAIS: TStringField
      FieldName = 'CIDADE_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosUF_PAIS: TStringField
      FieldName = 'UF_PAIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_ObitosCEP_PAIS: TStringField
      FieldName = 'CEP_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosFONE1_PAIS: TStringField
      FieldName = 'FONE1_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE2_PAIS: TStringField
      FieldName = 'FONE2_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosDEIXA_BENS: TStringField
      FieldName = 'DEIXA_BENS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosDEIXA_TESTAMENTO: TStringField
      FieldName = 'DEIXA_TESTAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosELEITOR: TStringField
      FieldName = 'ELEITOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosCIDADE_ELEITORAL: TStringField
      FieldName = 'CIDADE_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCEMITERIO: TStringField
      FieldName = 'CEMITERIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosDATA_SEP: TDateField
      FieldName = 'DATA_SEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosHORA_SEP: TTimeField
      FieldName = 'HORA_SEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosLOCAL_FAL: TStringField
      FieldName = 'LOCAL_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosDATA_FAL: TDateField
      FieldName = 'DATA_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosHORA_FAL: TTimeField
      FieldName = 'HORA_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosMEDICO_1: TStringField
      FieldName = 'MEDICO_1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosMEDICO_2: TStringField
      FieldName = 'MEDICO_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosCRM_1: TStringField
      FieldName = 'CRM_1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosCRM_2: TStringField
      FieldName = 'CRM_2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosCAUSA_MORTE: TStringField
      FieldName = 'CAUSA_MORTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_ObitosNUPCIAS: TStringField
      FieldName = 'NUPCIAS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosDATA_CASAMENTO: TDateField
      FieldName = 'DATA_CASAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCONJUGE: TStringField
      FieldName = 'CONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosLIVRO: TStringField
      FieldName = 'LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosFOLHAS: TStringField
      FieldName = 'FOLHAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosNUM: TStringField
      FieldName = 'NUM'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosDOC_APRESENTADO: TStringField
      FieldName = 'DOC_APRESENTADO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_ObitosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosDECLARANTE: TStringField
      FieldName = 'DECLARANTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosRG_CPF: TStringField
      FieldName = 'RG_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPROFISSAO_DECL: TStringField
      FieldName = 'PROFISSAO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosFONE_DECL: TStringField
      FieldName = 'FONE_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosENDERECO_DECL: TStringField
      FieldName = 'ENDERECO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosOBS_GERAIS: TBlobField
      FieldName = 'OBS_GERAIS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosTIPO_OBITO: TStringField
      FieldName = 'TIPO_OBITO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosTIPO_URNA: TStringField
      FieldName = 'TIPO_URNA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosN_FICHA: TStringField
      FieldName = 'N_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosGRUPO_LOTE: TStringField
      FieldName = 'GRUPO_LOTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dsp_Obitos: TDataSetProvider
    DataSet = sds_Obitos
    UpdateMode = upWhereKeyOnly
    Left = 238
    Top = 450
  end
  object cds_Obitos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'pgrupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'plote'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Obitos'
    Left = 267
    Top = 450
    object cds_ObitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ObitosDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cds_ObitosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosIDADE: TStringField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_ObitosESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosENDERECO_FAL: TStringField
      FieldName = 'ENDERECO_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_ObitosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE_3: TStringField
      FieldName = 'FONE_3'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosESTCIVIL_PAI: TStringField
      FieldName = 'ESTCIVIL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosESTCIVIL_MAE: TStringField
      FieldName = 'ESTCIVIL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosENDERECO_PAIS: TStringField
      FieldName = 'ENDERECO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosNUMERO_PAIS: TStringField
      FieldName = 'NUMERO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosBAIRRO_PAIS: TStringField
      FieldName = 'BAIRRO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCIDADE_PAIS: TStringField
      FieldName = 'CIDADE_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosUF_PAIS: TStringField
      FieldName = 'UF_PAIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_ObitosCEP_PAIS: TStringField
      FieldName = 'CEP_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosFONE1_PAIS: TStringField
      FieldName = 'FONE1_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE2_PAIS: TStringField
      FieldName = 'FONE2_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosDEIXA_BENS: TStringField
      FieldName = 'DEIXA_BENS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosDEIXA_TESTAMENTO: TStringField
      FieldName = 'DEIXA_TESTAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosELEITOR: TStringField
      FieldName = 'ELEITOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosCIDADE_ELEITORAL: TStringField
      FieldName = 'CIDADE_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCEMITERIO: TStringField
      FieldName = 'CEMITERIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosDATA_SEP: TDateField
      FieldName = 'DATA_SEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosHORA_SEP: TTimeField
      FieldName = 'HORA_SEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cds_ObitosLOCAL_FAL: TStringField
      FieldName = 'LOCAL_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosDATA_FAL: TDateField
      FieldName = 'DATA_FAL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosHORA_FAL: TTimeField
      FieldName = 'HORA_FAL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cds_ObitosMEDICO_1: TStringField
      FieldName = 'MEDICO_1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosMEDICO_2: TStringField
      FieldName = 'MEDICO_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosCRM_1: TStringField
      FieldName = 'CRM_1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosCRM_2: TStringField
      FieldName = 'CRM_2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosCAUSA_MORTE: TStringField
      FieldName = 'CAUSA_MORTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_ObitosNUPCIAS: TStringField
      FieldName = 'NUPCIAS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosDATA_CASAMENTO: TDateField
      FieldName = 'DATA_CASAMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosCONJUGE: TStringField
      FieldName = 'CONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosLIVRO: TStringField
      FieldName = 'LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosFOLHAS: TStringField
      FieldName = 'FOLHAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosNUM: TStringField
      FieldName = 'NUM'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosDOC_APRESENTADO: TStringField
      FieldName = 'DOC_APRESENTADO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_ObitosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosDECLARANTE: TStringField
      FieldName = 'DECLARANTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosRG_CPF: TStringField
      FieldName = 'RG_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosPROFISSAO_DECL: TStringField
      FieldName = 'PROFISSAO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosFONE_DECL: TStringField
      FieldName = 'FONE_DECL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!\(00\)0000-0000;1;_'
      Size = 13
    end
    object cds_ObitosENDERECO_DECL: TStringField
      FieldName = 'ENDERECO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosOBS_GERAIS: TBlobField
      FieldName = 'OBS_GERAIS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_ObitosPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosTIPO_OBITO: TStringField
      FieldName = 'TIPO_OBITO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosTIPO_URNA: TStringField
      FieldName = 'TIPO_URNA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosN_FICHA: TStringField
      FieldName = 'N_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosGRUPO: TStringField
      Alignment = taCenter
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object cds_ObitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object cds_ObitosID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosGRUPO_LOTE: TStringField
      FieldName = 'GRUPO_LOTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object proc_urna: TSQLClientDataSet
    CommandText = 'select  DESCRICAO '#13#10'from PRODUTOS '#13#10'where DESCRICAO like :pnome'
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
    Left = 680
    Top = 513
    object proc_urnaDESCRICAO: TStringField
      DisplayLabel = 'Urnas'
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object sds_urna: TSQLDataSet
    CommandText = 'select * from PRODUTOS  '#13#10'where DESCRICAO = :pid'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 113
    Top = 450
    object sds_urnaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_urnaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_urnaID_FAMILIA: TIntegerField
      FieldName = 'ID_FAMILIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaD_COMPRA: TDateField
      FieldName = 'D_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaV_COMPRA: TFloatField
      FieldName = 'V_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaV_VENDA: TFloatField
      FieldName = 'V_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaVC_REAL: TFloatField
      FieldName = 'VC_REAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaM_LUCRO: TFloatField
      FieldName = 'M_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaREPOSICAO: TIntegerField
      FieldName = 'REPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_urnaUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object dsp_urna: TDataSetProvider
    DataSet = sds_urna
    UpdateMode = upWhereKeyOnly
    Left = 141
    Top = 450
  end
  object cds_urna: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_urna'
    Left = 169
    Top = 450
    object cds_urnaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cds_urnaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cds_urnaID_FAMILIA: TIntegerField
      FieldName = 'ID_FAMILIA'
    end
    object cds_urnaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cds_urnaD_COMPRA: TDateField
      FieldName = 'D_COMPRA'
    end
    object cds_urnaV_COMPRA: TFloatField
      FieldName = 'V_COMPRA'
    end
    object cds_urnaV_VENDA: TFloatField
      FieldName = 'V_VENDA'
    end
    object cds_urnaVC_REAL: TFloatField
      FieldName = 'VC_REAL'
    end
    object cds_urnaM_LUCRO: TFloatField
      FieldName = 'M_LUCRO'
    end
    object cds_urnaESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
    end
    object cds_urnaREPOSICAO: TIntegerField
      FieldName = 'REPOSICAO'
    end
    object cds_urnaUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 3
    end
  end
  object proc_cartorio: TSQLClientDataSet
    CommandText = 
      'select  NOME, ENDERECO, CIDADE, ID_CARTORIO'#13#10'from CARTORIO '#13#10'whe' +
      're NOME like :pnome'
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
    Left = 652
    Top = 513
    object proc_cartorioNOME: TStringField
      DisplayLabel = 'Cart'#243'rio'
      FieldName = 'NOME'
      Size = 80
    end
    object proc_cartorioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object proc_cartorioCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 60
    end
    object proc_cartorioID_CARTORIO: TIntegerField
      FieldName = 'ID_CARTORIO'
      Required = True
      Visible = False
    end
  end
  object proc_end: TSQLClientDataSet
    CommandText = 
      'select e.ENDERECO,'#13#10'           e.ESTADO,'#13#10'           e.CEP,'#13#10'   ' +
      '        b.BAIRRO,'#13#10'           m.MUNICIPIO '#13#10'from ENDERECO e '#13#10'le' +
      'ft outer join BAIRRO b on b.ID_BAIRRO = e.ID_BAIRRO '#13#10'left outer' +
      ' join MUNICIPIO m on m.ID_MUNICIPIO = e.ID_MUNICIPIO '#13#10'where ((e' +
      '.ID_SOCIO = :pid) or (:pid = 9999999))'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 708
    Top = 513
    object proc_endENDERECO: TStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 80
    end
    object proc_endESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object proc_endCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object proc_endBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object proc_endMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 60
    end
  end
  object cds_par: TSQLClientDataSet
    CommandText = 'select * from PARAMETROS '#13#10'where PARAMETRO = :ppar'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'ppar'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 624
    Top = 513
    object cds_parPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 60
    end
    object cds_parDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cds_parCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object cds_parPARAMETRO1: TStringField
      FieldName = 'PARAMETRO1'
      Size = 40
    end
    object cds_parPARAMETRO2: TStringField
      FieldName = 'PARAMETRO2'
      Size = 40
    end
    object cds_parPARAMETRO3: TStringField
      FieldName = 'PARAMETRO3'
      Size = 40
    end
    object cds_parPARAMETRO4: TStringField
      FieldName = 'PARAMETRO4'
      Size = 40
    end
    object cds_parPARAMETRO5: TStringField
      FieldName = 'PARAMETRO5'
      Size = 40
    end
    object cds_parPARAMETRO6: TStringField
      FieldName = 'PARAMETRO6'
      Size = 40
    end
    object cds_parPARAMETRO7: TStringField
      FieldName = 'PARAMETRO7'
      Size = 40
    end
    object cds_parPARAMETRO8: TStringField
      FieldName = 'PARAMETRO8'
      Size = 40
    end
    object cds_parPARAMETRO9: TStringField
      FieldName = 'PARAMETRO9'
      Size = 40
    end
  end
  object proc_medico: TSQLClientDataSet
    CommandText = 'select CRM, NOME_MEDICO from MEDICO '#13#10'Where CRM like :pcrm'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pcrm'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 680
    Top = 485
    object proc_medicoCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
    object proc_medicoNOME_MEDICO: TStringField
      FieldName = 'NOME_MEDICO'
      Size = 100
    end
  end
  object VCLReport7: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 31
    Top = 512
  end
  object sds_CR: TSQLDataSet
    CommandText = 
      'select * from RECEBIMENTOS '#13#10'where ID = :pcod '#13#10'and TIPO_DOC = :' +
      'pob   '#13#10'order by  VENCIMENTO, LOTE, TITULO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
        Value = '49'
      end
      item
        DataType = ftString
        Name = 'pob'
        ParamType = ptInput
        Value = 'OB'
      end>
    SQLConnection = DM.SQLObitos
    Left = 497
    Top = 450
    object sds_CRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_CRID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_CRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/00;1;_'
    end
    object sds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_CRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_CRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsp_CR: TDataSetProvider
    DataSet = sds_CR
    UpdateMode = upWhereKeyOnly
    Left = 525
    Top = 450
  end
  object cds_CR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pob'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CR'
    Left = 553
    Top = 450
    object cds_CRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CRID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_CRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_CRPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object cds_CRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_CRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_CRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object proc_mens: TSQLClientDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.GRUPO'#13#10'  ' +
      '         , s.N_INSCRICAO '#13#10'           , s.SOBRENOME '#13#10'          ' +
      ' , s.TIPO_SOCIO     '#13#10'from DEPENDENTE d '#13#10'left outer join PARENT' +
      'ESCO p on p.ID_PAR=d.ID_PAR '#13#10'left outer join SOCIOS s on s.ID_S' +
      'OCIO=d.ID_SOCIO '#13#10'where d.NOME_DEP like :pnome '#13#10'and s.TIPO_SOCI' +
      'O <> '#39'G'#39
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
    Left = 708
    Top = 485
    object proc_mensID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object proc_mensID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object proc_mensNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object proc_mensFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object proc_mensCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object proc_mensDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object proc_mensDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object proc_mensID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object proc_mensCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object proc_mensDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object proc_mensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object proc_mensGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object proc_mensN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object proc_mensSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object proc_mensTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsLote: TSQLDataSet
    CommandText = 
      'select  COUNT(LOTE) '#13#10'from OBITOS where GRUPO = :pgrupo '#13#10'and LO' +
      'TE = :plote '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'pgrupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'plote'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 338
    Top = 450
    object sdsLoteCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
  object sdsSerie: TSQLDataSet
    CommandText = 'select MAX(CODIGO) from OBITOS '#13#10' where serie = :ps'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ps'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 310
    Top = 450
    object sdsSerieMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object sdsProcLote: TSQLDataSet
    CommandText = 'select  MAX(LOTE) '#13#10'from LOTES where GRUPO = :pgrupo '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'pgrupo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 366
    Top = 450
    object sdsProcLoteMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object serieNFProc: TSQLDataSet
    CommandText = 'select MAX(NOTAFISCAL) from OBITOS '#13#10' where SERIE_NF = :ps'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'ps'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 652
    Top = 485
    object serieNFProcMAX: TSmallintField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 168
    Top = 56
    object ClientDataSet1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 56
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select o.id  from OBITOS o  order by  o.id desc'#13#10'  '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 32
    Top = 56
    object IntegerField10: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
