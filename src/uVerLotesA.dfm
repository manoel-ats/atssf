object fVerLotesA: TfVerLotesA
  Left = 447
  Top = 210
  Width = 370
  Height = 360
  BorderIcons = [biSystemMenu]
  Color = 11189162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 8
    Width = 103
    Height = 13
    Caption = 'LOTES ABERTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 26
    Width = 289
    Height = 139
    Ctl3D = False
    DataSource = dslote
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Title.Caption = 'Grupo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
        Title.Caption = 'Lote'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GEROU'
        Title.Caption = 'Gerou ?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_FALEC'
        Title.Caption = 'N'#176' Falec.'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 255
    Width = 362
    Height = 78
    Align = alBottom
    BevelInner = bvLowered
    Color = 11189162
    TabOrder = 1
    object btnGravar: TdxButton
      Left = 108
      Top = 21
      Width = 77
      Height = 32
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = btnGravarClick
      Caption = 'Gravar'
      Colors.BackgroundFrom = 13029334
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D805000000000000000000000000000000000000FFFFFF8BA473
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
      TabOrder = 2
    end
    object btnIncluir: TdxButton
      Left = 12
      Top = 21
      Width = 85
      Height = 32
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = btnIncluirClick
      Caption = 'Incluir'
      Colors.BackgroundFrom = 13029334
      Glyph.Data = {
        1E060000424D1E06000000000000360000002800000018000000150000000100
        180000000000E8050000CA0E0000C30E00000000000000000000BFBFBFBFBFBF
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
      TabOrder = 0
    end
    object btnSair: TdxButton
      Left = 280
      Top = 21
      Width = 72
      Height = 32
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = btnSairClick
      Caption = 'Sair'
      Colors.BackgroundFrom = 13029334
      Glyph.Data = {
        E60C0000424DE60C0000000000003600000028000000250000001D0000000100
        180000000000B00C000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF9F60606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06060A06060
        6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F60
        60A06060B06060C06060CF6060B060606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F60609F6060AF6F6FC06F6FCF6F6FCF6F6FCF606FCF606FB06060
        6F3030AF60609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060D06F70D06F70D06F
        6FD06F6FD06F6FD06F6FD06F6FB0606F6F3030FFA0A0FFAFAFFFAFB0FFB0B0FF
        BFBFFFC0C0FFC0C0FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060DF7070DF7070D07070D07070D06F70D06F6FD06F6FB06F6F
        6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060DF7070DF7070DF70
        70DF7070DF7070D07070D07070BF6F6F6F30305FB06030CF6030CF6030CF6030
        CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060DF7F7FDF7F7FDF7F7FDF707FDF7070DF7070DF7070BF6F6F
        6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060E07F7FE07F7FE07F
        7FE07F7FDF7F7FDF7F7FDF707FBF6F6F6F30305FB06030CF6030CF6030CF6030
        CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060E08080E07F80E07F7FE07F7FE07F7FE07F7FE07F7FBF7070
        6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060EF8080EF8080E080
        80E08080E0808FEFA0A0E07F7FBF70706F303070BF7030CF6030CF6030CF6030
        CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060EF808FEF8080EF8080EF8080F0BFBFFFFFFFF0B0B0C07070
        6F3030F0DFC0C0F0BF7FDF907FDF9060D08060D08060D080FFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F08F8FEF8F8FEF8F
        8FEF808FF0BFBFFFFFFFF0AFAFC070706F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFE0FFCFE0FFCFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060F08F8FF08F8FF08F8FF08F8FEF8F8FF0A0A0EF808FC07070
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F09090F09090F08F
        90F08F8FF08F8FF08F8FF08F8FC07F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060FF9090FF9090FF9090F09090F09090F08F90F08F8FC07F7F
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF909FFF9090FF90
        90FF9090FF9090FF9090F09090CF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060FF9F9FFF9F9FFF9F9FFF909FFF909FFF9090FF9090CF7F7F
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF9F9FFF9F9FFF9F
        9FFF9F9FFF9F9FFF9F9FFF9F9FCF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF9F6060FF9090FF9F9FFF9F9FFF9F9FFF9F9FFF9F9FFF9F9FCF8080
        6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060C07F7FDF8F
        8FFF9F9FFF9F9FFF9F9FFF9F9FCF80806F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
        FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06F6FC07F7FF09090FF9F9FCF8080
        6F3030A060609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF9F60609F6060AF7070B070706F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060
        6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00}
      TabOrder = 1
    end
    object btnCancelar: TdxButton
      Left = 191
      Top = 21
      Width = 82
      Height = 32
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = btnCancelarClick
      Caption = 'Cancelar'
      Colors.BackgroundFrom = 13029334
      Glyph.Data = {
        D6090000424DD60900000000000036000000280000001D0000001C0000000100
        180000000000A0090000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF7F7F7F7F7F7F0000000000000000000000000000000000007F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F000000
        00000000007F00007F00007F00007F00007F00007F0000000000007F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000007F00007F00007F00007F0000
        7F00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F7F7F7F
        7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF00007F00007F00007F00007F00007F0000FF0000FF0000FF0000FF00
        00FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F7F
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007F00007F00
        00FF00007F00007F0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF
        0000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF00007F0000FF00007F00007F00007FBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000
        7F00007F0000000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBF0000FF0000FF00007F00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007F00007F0000FF00007F00007F00
        00000000007F7F7F7F7F7F7F7F7FBFBFBF00BFBFBFBFBFBFBFBFBF0000FF0000
        7F00007F00007F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF00007F00007F0000FF00007F0000FF00007F00007F0000007F7F7F
        7F7F7F7F7F7FBFBFBF00BFBFBFBFBFBF0000FF00007F00007F00007F7F7F7FBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007F00007F
        0000FF00007F00007FBFBFBF0000FF00007F0000000000007F7F7F7F7F7F7F7F
        7F00BFBFBFBFBFBF0000FF00007F00007F0000007F7F7FBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007F00007F0000FF00007F00007FBFBF
        BFBFBFBF0000FF00007F00007F0000007F7F7F7F7F7F7F7F7F00BFBFBF0000FF
        00007F00007F0000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF00007F00007F0000FF00007F00007FBFBFBFBFBFBFBFBFBFBFBFBF00
        00FF00007F00007F0000007F7F7F7F7F7F00BFBFBF0000FF00007F00007F0000
        007F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007F00007F00
        00FF00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF00007F00007F
        0000007F7F7F7F7F7F00BFBFBF0000FF00007F00007F0000007F7F7F7F7F7FBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF00007F00007F0000FF00007F00007FBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF00007F00007F0000007F7F7F7F7F
        7F00BFBFBF0000FF00007F00007F0000007F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
        BFBFBF00007F00007F0000FF00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF0000FF00007F00007F0000007F7F7F7F7F7F00BFBFBF0000FF
        00007F00007F0000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBF00007F00007F0000
        FF00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        00FF00007F00007F0000007F7F7FBFBFBF00BFBFBF0000FF00007F00007F0000
        007F7F7F7F7F7F7F7F7FBFBFBF00007F00007F0000FF00007F00007FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF00007F00007F
        0000007F7F7FBFBFBF00BFBFBFBFBFBF0000FF00007F00007F0000007F7F7F7F
        7F7F00007F00007F0000FF00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000FF00007F00007F0000007F7F7FBFBFBFBFBF
        BF00BFBFBFBFBFBF0000FF0000FF00007F0000007F7F7F00007F00007F0000FF
        00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF00007F00007F00007F0000007F7F7FBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBF0000FF00007F00007F00007F00007F0000FF00007F00007FBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00007F00007F00
        007F00007F7F7F7FBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBF0000FF0000
        FF00007F00007F0000FF00007F00007F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF7F7F7F00007F00007F0000FF00007F000000BFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00
        007F00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F00007F00007F00007F00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F000000
        0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000007F00007F0000
        7F0000FF00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF00007F00007F00007F0000000000
        0000000000000000000000000000007F00007F00007F0000FF00007FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF0000FF0000FF0000FF00007F00007F00007F00007F00007F00
        007F00007F00007F00007F0000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF0000FF0000FF00007F00007F00007F00007F00007F00007F0000FF
        0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF0000FF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
      TabOrder = 3
    end
  end
  object dslote: TDataSource
    DataSet = cdsL
    Left = 120
    Top = 72
  end
  object cdsL: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'gera'
        ParamType = ptInput
      end>
    ProviderName = 'dspL'
    Left = 160
    Top = 136
    object cdsLID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object cdsLLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cdsLGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsLGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object cdsLN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
    end
  end
  object dspL: TDataSetProvider
    DataSet = sqlL
    Left = 104
    Top = 136
  end
  object sqlL: TSQLDataSet
    CommandText = 'select * from LOTES '#13#10' where GEROU = :gera order by grupo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'gera'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 56
    Top = 136
    object sqlLID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object sqlLLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object sqlLGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object sqlLGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object sqlLN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
    end
  end
  object SQLClientDataSet1: TSQLClientDataSet
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.SQLObitos
    Left = 48
    Top = 200
  end
end
