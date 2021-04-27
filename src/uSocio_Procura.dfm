object fSocio_Procura: TfSocio_Procura
  Left = 255
  Top = 34
  Width = 782
  Height = 551
  BorderIcons = [biSystemMenu]
  Caption = 'Filtro de Procura de S'#243'cios e Dependentes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 47
    Width = 766
    Height = 47
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 349
      Height = 16
      Caption = 'Digite o nome do S'#243'cio ou parte dele para efetuar a Busca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CheckBox3: TCheckBox
      Left = 444
      Top = 4
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
      PopupMenu = PopupMenu1
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox3Click
    end
    object Edit3: TEdit
      Left = 4
      Top = 19
      Width = 437
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object Edit4: TEdit
      Left = 442
      Top = 19
      Width = 329
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object CheckBox4: TCheckBox
      Left = 509
      Top = 2
      Width = 69
      Height = 17
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 3
      OnClick = CheckBox4Click
    end
    object RadioButton3: TRadioButton
      Left = 624
      Top = 0
      Width = 97
      Height = 17
      Caption = 'Tipo Cobran'#231'a'
      TabOrder = 4
    end
    object Button1: TButton
      Left = 719
      Top = 3
      Width = 25
      Height = 15
      Caption = 'X'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 472
    Width = 766
    Height = 41
    Align = alBottom
    Color = 11189162
    PopupMenu = PopupMenu1
    TabOrder = 2
    object Label2: TLabel
      Left = 104
      Top = 8
      Width = 25
      Height = 24
      Caption = '....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 53
      Top = 12
      Width = 38
      Height = 21
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = 'Total :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object dxButton3: TdxButton
      Left = 331
      Top = 6
      Width = 113
      Height = 32
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Version = '1.0.2e'
      OnClick = dxButton3Click
      Caption = 'F4-&Confirma'
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
    object dxButton4: TdxButton
      Left = 210
      Top = 6
      Width = 113
      Height = 32
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Version = '1.0.2e'
      OnClick = dxButton4Click
      Caption = 'F8-&Procura'
      Glyph.Data = {
        B6040000424DB604000000000000B60000002800000020000000200000000100
        08000000000000040000120B0000120B00002000000020000000FFFFFF00CCCC
        CC00BBBBBB00AAAAAA00CC999900888888007777770099666600666666005555
        5500444444006633330033333300222222001111110000000000C0C0C0000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000101010101010
        1010101010101010101010101010101010101010101010101010101010101010
        10100F0F0F0F0F0F0F0F0F060606101010101010101010101010101010101010
        0F0F0101010100040004040F0F0F060606101010101010101010101010100F0F
        01010101010100040004040404040F0F060610101010101010101010100F0404
        010101010101000400040404040404040F06061010101010101010100F040404
        01010101010100040004040404040404040C0606101010101010100F04040404
        01010F0F0F0F0F0F0F0F0F0404040404040906060610101010100F0404040404
        0F0F0000000000000000000F0F0F040404040F060610101010100F04040B0F05
        00020F060606060606060500000006050B040F060606101010100F040F000000
        0F0A0404040404040404040F0F0F0000000B0F060606061010100F0F0000000F
        04040404040404040404040404040F0000050F060606061010100F0000000F07
        0404040404040404000000040404040F00000F060606061010100F00000F0404
        070404040404040404040400040407040F000F060606101010100F00000F0404
        040701040404040404040400070704040F000F060606101010100F00000F0404
        040400010707070707070707040404040F000F060610101010100F0000000F04
        0404010404040404040404040403040F00000F06101010101010100F0000000F
        04040404040404040404040404040F00000F101010101010101010100F000000
        0F0F040404040404040404040F0F0000000F10101010101010101010100F0000
        00000F0F0F0F0F0F0F0F0F0F000000000F061010101010101010101010100F0F
        00000000000000000000000000000F0F050C0610101010101010101010101010
        0F0F000000000000000000000F0F0202020F0F06101010101010101010101010
        10100F0F0F0F0F0F0F0F0F0F0200000202080F0F061010101010101010101010
        1010101010101010101010100F020000020F0F0F0F0610101010101010101010
        10101010101010101010101010050F0E0C0E0F0F0F0F06021010101010101010
        1010101010101010101010101010100F0D0A0F0F0F0F0F061010101010101010
        101010101010101010101010101010100F090D0F0F0F0F0F1010101010101010
        10101010101010101010101010101010100F060D0F0F0F0F1010101010101010
        1010101010101010101010101010101010050D060D0F0F0F1010101010101010
        1010101010101010101010101010101010100F0D060D0F0F1010101010101010
        101010101010101010101010101010101010100F0F0F0F101010101010101010
        1010101010101010101010101010101010101010101010101010101010101010
        1010101010101010101010101010101010101010101010101010}
      TabOrder = 1
    end
    object dxButton1: TdxButton
      Left = 453
      Top = 6
      Width = 113
      Height = 32
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'F9-&Sair'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C08AB4CE005696005D9F005F99005C94005B93005A90005A91005A9000
        598E195B811F5D8230627C4D6D7E5C7582C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B4CDDE186A9D146B9F176FA2176F
        A21970A30C679A02639C1B76C91976C61674C11575BE1272BA106FB60B6BAE0B
        6AAE0364A90064A500619E005A9F005C9C20597BDDD7D4C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C072A5C7004A8206437007406D0640
        6D073F6D014D800766A5217FD22083D22487D32183D22183D22183D22081D01F
        7ECF1D7DCC1B78C91A78C71871C00668AD125A85D6D0CBC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0EEE7EF5F9BBD00508513375F14355D1436
        5F14325A044F660866AC268AD7288CD5278ED6278DD6268DD6268BD5268AD426
        8AD42286D22287D32387D3207FD01072BC125985D3CDC7C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0D4D5D4408440629ABE005288123964133561112A
        5F013E220D785A0B65B7288ED92D93D9268BD5298FD72B91D82B91D8258CD626
        8CD5268DD6268CD5268BD52188D41475C6125886C9C3BEC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0A8B7A71E8F2305880A4A84B60044800B2E4C06393C0465
        1550BC533C95A10762B02F93DC2D94D9278CD52B92D92D94DA2D94DA258DD627
        8DD62A91D8288ED7268DD5288ED7187EC6115883C0BCB8C0C0C0C0C0C0C0C0C0
        C0C0C064956303940E27C23A32C0442EB63C35B84251C55E69D27A76D88D85DF
        9D79DA8C0062641371BB3396DF349ADD238BD33198DC3298DC3399DD298FD72B
        91D82F96DA2C93D9288FD72C92D91F82C900588DB0AFAEC0C0C0C0C0C0EAEFE9
        35863700A1061EBB2F25BB362FBC403AC54E58CC6C60D07664D07975D68C7BDC
        90177F180044611579C93599DF399EDF268DD9389EE2359CDF379DDF2B90D82B
        91D83198DC3096DB2990D72F94DB2587D500588EA8A8A7C0C0C0C0C0C0C7DCC6
        0085010EB72016B92826BB3730BC4039C34C4EC96260CF7570D78579DE8E24A2
        1E063934034F8B1A7BBF389FE53CA4E51F78B02C83B7369BDC3DA5E82D93DA2D
        94D9379ADD3299DD2A91D83397DD278BD4005B91A0A3A2C0C0C0C0C0C0C0C0C0
        DAE8D92B9A2F12AD2128BF3A2FBC403BC54E51CD6357CD6541B34A0B6E1A072F
        481334620153861B80CA3996D21B5E9A0A4D920D4883164C6E3594D12E97DE2F
        95DB389FE1349BDE2A91D7399EE02A8DD9005C93979C9EC0C0C0C0C0C0C0C0C0
        C0C0C0EAECE94D9F4E04A31134C5472BB137188D2516633B09483C0B37501435
        6413385F005288278BCE1A6FB6105EAA1A7DCB1472C30A417D2D72932F97DE31
        98DC3BA1E3389EE12A91D8389EE22E93DA02619D8A9399C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C071B57315A0211B911C096095083D731332601337621337
        5F13375F02578F288CD20F5EA81879C82086D31D81D00F5EAC175E8E3196D934
        9ADE3EA4E53BA1E22991D83BA2E33398E10665A4869093C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0AFD1AE1B931A06639F0C406B13365E1338601337
        5F12385F005D942C91D7145EA657A3D860ACDF5DAADC155FA72172A0359ADE34
        9BDE40A6E53EA4E42991D83FA5E5369CE40666A5768992C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E1F5DC005B9210386013375F1338601337
        5F12375E005D943199DB2175B19CB0D3EEF5FDC2D2E7195D9E3C9DD3339BE037
        9DE041A7E541A7E72990D840A6E53A9FE50668A671858CC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000578F11386013375F1338601337
        5E0D3D670360963297D93FA8E92A84BD559ACA2F85BF41A2DD4CB4F1359CDE38
        A0E245ABEA48AEEA2A90D743A9E73EA6E80F72B4607F8DC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000568E13355E1338611338601336
        5E0E3C6604639E3399DA4DB1F03FA9E92994DC4DB5F24CB3F04CB2EE359CE038
        9FE148AEEA49AEEB2B91D946AAEA3FA7E71374B7597A8BC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004F861233520F2E501338601336
        5D0B426C0565A13B9FE14DB3EF3EA6E739A1E44DB7F248B0EF4AB3F1319BE034
        9FE445AFEF46B1F0258FD93DA8EA47AFEE1375B748718BC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004984025A16003B170D254B1436
        5C0B426E0A6BA93EA2E54AB5F438A1E43AA4E853B5EE4EB4EE53B6EF419EDD53
        A8DD60B7E863B9E84B9CD462B4E64AAEEF1478BE466F87C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00035740E771623A3260033180A18
        3A09406B0B6EABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF127DC63A6B86C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08BA08D0062072E9B3280E39940B2480042
        0D0A32530B74BA0000FF0000FF0000FFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1A81CB306380C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0819E802B862C219E2C4AC55A62CD736ED4847DDB9356C6
        5C0868470B6DBBFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1981CB2C6382C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C057965705A4122CC03E44C85856CB6B60D0766CD18076D68C90E8
        9F3793930B6CB50000FF0000FF0000FFFFFFFF0000FF0000FF0000FF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1B87D2245F81C0C0C0C0C0C0C0C0C0
        C0C0C000920321BD322ABF3C31C3443DC54F54CD6565D2786BD28083DE9B77DC
        7E127572147BC60000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FF0000FF0000FF2694DC1B587CC0C0C0C0C0C0C0C0C0
        4FA0520BB51D1EBE3012AD2118992144A84F095B3024912D79DD9056BF620B66
        10004D6D1C83CB0000FF0000FF0000FFFFFFFFFFFFFF0000FF0000FFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF2C98DE195B7EC0C0C0C0C0C0C0C0C0
        0B90100CB61D00900678A178C2D4BEC0C0C008367019842B4BC34D0157110F2C
        53024F851B87CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF349BE015597FC0C0C0C0C0C0C3DEC3
        0190062A8F2DD2D1CFC0C0C0C0C0C0C0C0C00F39660464180149201330651532
        5B025182228BCF5EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55E
        B9F55EB9F55EB9F55EB9F55EB9F55EB9F5339BE00C547EC0C0C0C0C0C0C3E1C3
        007000B4BBB5C0C0C0C0C0C0C0C0C0C0C0C000487C00467400437900477A0045
        76005588268CCE49B5FB5EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55E
        B9F53EAAF033A1E92C9AE23093D42B8FCF0F76BD105780C0C0C0C0C0C0C5E2C5
        4F9250C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04389B2488BB6478CB5478CB54F91
        B80461962485C644AAEE3BA8EF39A2E92E9BE02892D9238ACF1780C90A74BE04
        6CAD005C96005991005A97025893096195186B9D75A0B8C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C02E77A600589500609E00548F00518800548B0F6192256C972C78A13F7DA14B
        89AA7AA6C3A5C6DABDCAD2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      ModalResult = 2
      TabOrder = 2
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 47
    Align = alTop
    Color = 11189162
    PopupMenu = PopupMenu1
    TabOrder = 1
    object RxLabel3: TRxLabel
      Left = 5
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
      Left = 60
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
    object RxLabel1: TRxLabel
      Left = 128
      Top = 2
      Width = 148
      Height = 16
      Caption = 'Plano de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 128
      Top = 18
      Width = 237
      Height = 24
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnKeyPress = FormKeyPress
      Items.Strings = (
        '7 FALECIMENTO'
        'MENSAL'
        'TRIMESTRAL')
    end
    object RadioGroup1: TRadioGroup
      Left = 601
      Top = 3
      Width = 169
      Height = 39
      Caption = 'Situa'#231#227'o'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Outros')
      ParentFont = False
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 60
      Top = 18
      Width = 66
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object Edit2: TEdit
      Left = 6
      Top = 18
      Width = 51
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 368
      Top = 3
      Width = 233
      Height = 39
      Caption = 'Filtrar p'#244'r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 3
      object RadioButton2: TRadioButton
        Left = 8
        Top = 16
        Width = 57
        Height = 18
        Caption = 'S'#243'cio'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton2Click
      end
      object RadioButton1: TRadioButton
        Left = 69
        Top = 16
        Width = 98
        Height = 18
        Caption = 'Dependentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnClick = RadioButton1Click
      end
      object rbtodos: TRadioButton
        Left = 172
        Top = 16
        Width = 60
        Height = 18
        Caption = 'Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        OnClick = rbtodosClick
      end
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 94
    Width = 766
    Height = 378
    Align = alClient
    DataSource = DtSrc
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = JvDBGrid1DrawColumnCell
    OnTitleClick = JvDBGrid1TitleClick
    AlternateRowColor = 16773087
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Title.Caption = 'Grupo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_INSCRICAO'
        Title.Caption = 'Insc.'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_DEP'
        Title.Caption = 'Nome Socio / Dependente'
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLANO'
        Title.Caption = 'Plano'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Tipo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MUNICIPIO'
        Title.Caption = 'Cidade'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Cobrador'
        Width = 133
        Visible = True
      end>
  end
  object DtSrc: TDataSource
    DataSet = cds_proc
    Left = 352
    Top = 312
  end
  object cds_proc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_proc'
    Left = 320
    Top = 312
    object cds_procNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object cds_procDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cds_procNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object cds_procPLANO: TStringField
      FieldName = 'PLANO'
    end
    object cds_procGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cds_procN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object cds_procENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cds_procBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cds_procMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 60
    end
    object cds_procNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cds_procID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object cds_procSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object cds_procNAT: TStringField
      FieldName = 'NAT'
      Size = 40
    end
    object cds_procDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object cds_procPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object cds_procCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      Size = 18
    end
    object cds_procRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object cds_procID_VEN: TIntegerField
      FieldName = 'ID_VEN'
    end
    object cds_procID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cds_procDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object cds_procDTASISTEMA: TDateField
      FieldName = 'DTASISTEMA'
    end
    object cds_procSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cds_procOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
    object cds_procTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      FixedChar = True
      Size = 1
    end
    object cds_procESTCIV: TIntegerField
      FieldName = 'ESTCIV'
    end
    object cds_procPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
    end
    object cds_procVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cds_procVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
    end
    object cds_procPARCELA: TFloatField
      FieldName = 'PARCELA'
    end
    object cds_procENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object cds_procCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object cds_procCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cds_procTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
    object cds_procDIAPGTO: TIntegerField
      FieldName = 'DIAPGTO'
    end
    object cds_procMESES: TIntegerField
      FieldName = 'MESES'
    end
    object cds_procDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object cds_procDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object cds_procPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object cds_procPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
    end
    object cds_procPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
    end
    object cds_procVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
    end
    object cds_procDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object cds_procINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object cds_procINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object cds_procINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object cds_procINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object cds_procTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object cds_procACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object cds_procESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object cds_procSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cds_procGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object cds_procCODIGO_T: TIntegerField
      FieldName = 'CODIGO_T'
    end
    object cds_procCODIGO_C: TIntegerField
      FieldName = 'CODIGO_C'
    end
    object cds_procHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
    end
    object cds_procPLANO_ANT: TStringField
      FieldName = 'PLANO_ANT'
    end
    object cds_procDTA_CONTRATO: TDateField
      FieldName = 'DTA_CONTRATO'
    end
    object cds_procDTA_CONTRATO_ANT: TDateField
      FieldName = 'DTA_CONTRATO_ANT'
    end
    object cds_procID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object cds_procFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object cds_procCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object cds_procDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object cds_procID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object cds_procID_SOCIO_1: TIntegerField
      FieldName = 'ID_SOCIO_1'
    end
    object cds_procDTNASC_1: TDateField
      FieldName = 'DTNASC_1'
    end
    object cds_procDTACADASTRO_1: TDateField
      FieldName = 'DTACADASTRO_1'
    end
    object cds_procCARENCIA_1: TIntegerField
      FieldName = 'CARENCIA_1'
    end
    object cds_procSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object cds_procRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object cds_procCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object cds_procSEGSOCIO: TStringField
      FieldName = 'SEGSOCIO'
      FixedChar = True
      Size = 1
    end
    object cds_procTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object cds_procDATAEXCLUSAO: TDateField
      FieldName = 'DATAEXCLUSAO'
    end
    object cds_procEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object cds_procDTA_ULTIMA_PARCELA: TDateField
      FieldName = 'DTA_ULTIMA_PARCELA'
    end
    object cds_procFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object cds_procDIAPARAPGTO: TIntegerField
      FieldName = 'DIAPARAPGTO'
    end
    object cds_procQUTDE: TIntegerField
      FieldName = 'QUTDE'
    end
  end
  object dsp_proc: TDataSetProvider
    DataSet = sds_proc
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 312
  end
  object sds_proc: TSQLDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.*'#13#10'      ' +
      '     , e.ENDERECO'#13#10'           , b.BAIRRO'#13#10'           , m.MUNICIP' +
      'IO'#13#10'           , c.NOME       '#13#10'from DEPENDENTE d '#13#10'left outer j' +
      'oin PARENTESCO p on p.ID_PAR=d.ID_PAR '#13#10'left outer join SOCIOS s' +
      ' on s.ID_SOCIO=d.ID_SOCIO '#13#10'left outer join ENDERECO e on e.ID_S' +
      'OCIO=s.ID_SOCIO '#13#10'left outer join BAIRRO b on b.ID_BAIRRO=e.ID_B' +
      'AIRRO '#13#10'left outer join MUNICIPIO m on m.ID_MUNICIPIO=e.ID_MUNIC' +
      'IPIO '#13#10'left outer join COBRANCA c on c.ID_COB=s.ID_COB '#13#10'where (' +
      '(e.TIPOEND = 0) or (e.TIPOEND is null)) '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 256
    Top = 312
    object sds_procNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object sds_procDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sds_procNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object sds_procPLANO: TStringField
      FieldName = 'PLANO'
    end
    object sds_procGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object sds_procN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object sds_procENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sds_procBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sds_procMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 60
    end
    object sds_procNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object sds_procID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object sds_procSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object sds_procNAT: TStringField
      FieldName = 'NAT'
      Size = 40
    end
    object sds_procDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object sds_procPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object sds_procCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      Size = 18
    end
    object sds_procRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object sds_procID_VEN: TIntegerField
      FieldName = 'ID_VEN'
    end
    object sds_procID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sds_procDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object sds_procDTASISTEMA: TDateField
      FieldName = 'DTASISTEMA'
    end
    object sds_procSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sds_procOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
    object sds_procTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      FixedChar = True
      Size = 1
    end
    object sds_procESTCIV: TIntegerField
      FieldName = 'ESTCIV'
    end
    object sds_procPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
    end
    object sds_procVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object sds_procVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
    end
    object sds_procPARCELA: TFloatField
      FieldName = 'PARCELA'
    end
    object sds_procENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object sds_procCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object sds_procCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sds_procTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
    object sds_procDIAPGTO: TIntegerField
      FieldName = 'DIAPGTO'
    end
    object sds_procMESES: TIntegerField
      FieldName = 'MESES'
    end
    object sds_procDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object sds_procDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object sds_procPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object sds_procPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
    end
    object sds_procPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
    end
    object sds_procVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
    end
    object sds_procDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object sds_procINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object sds_procINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object sds_procINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object sds_procINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object sds_procTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object sds_procACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object sds_procESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object sds_procSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object sds_procGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object sds_procCODIGO_T: TIntegerField
      FieldName = 'CODIGO_T'
    end
    object sds_procCODIGO_C: TIntegerField
      FieldName = 'CODIGO_C'
    end
    object sds_procHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
    end
    object sds_procPLANO_ANT: TStringField
      FieldName = 'PLANO_ANT'
    end
    object sds_procDTA_CONTRATO: TDateField
      FieldName = 'DTA_CONTRATO'
    end
    object sds_procDTA_CONTRATO_ANT: TDateField
      FieldName = 'DTA_CONTRATO_ANT'
    end
    object sds_procID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object sds_procFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object sds_procCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object sds_procDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object sds_procID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object sds_procID_SOCIO_1: TIntegerField
      FieldName = 'ID_SOCIO_1'
    end
    object sds_procDTNASC_1: TDateField
      FieldName = 'DTNASC_1'
    end
    object sds_procDTACADASTRO_1: TDateField
      FieldName = 'DTACADASTRO_1'
    end
    object sds_procCARENCIA_1: TIntegerField
      FieldName = 'CARENCIA_1'
    end
    object sds_procSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object sds_procRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object sds_procCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object sds_procSEGSOCIO: TStringField
      FieldName = 'SEGSOCIO'
      FixedChar = True
      Size = 1
    end
    object sds_procTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object sds_procDATAEXCLUSAO: TDateField
      FieldName = 'DATAEXCLUSAO'
    end
    object sds_procEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object sds_procDTA_ULTIMA_PARCELA: TDateField
      FieldName = 'DTA_ULTIMA_PARCELA'
    end
    object sds_procFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object sds_procDIAPARAPGTO: TIntegerField
      FieldName = 'DIAPARAPGTO'
    end
    object sds_procQUTDE: TIntegerField
      FieldName = 'QUTDE'
    end
  end
  object sds_est_civil: TSQLDataSet
    CommandText = 'select * from EST_CIVIL '#13#10'where ID_ESTCIVIL = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 256
    Top = 344
    object sds_est_civilID_ESTCIVIL: TIntegerField
      FieldName = 'ID_ESTCIVIL'
      Required = True
    end
    object sds_est_civilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 160
    object Procura1: TMenuItem
      Caption = 'Procura'
      ShortCut = 119
      OnClick = dxButton4Click
    end
    object Confirma1: TMenuItem
      Caption = 'Confirma'
      ShortCut = 115
      OnClick = dxButton3Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 120
      OnClick = dxButton1Click
    end
  end
end
