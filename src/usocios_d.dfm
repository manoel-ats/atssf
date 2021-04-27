object fSocios_D: TfSocios_D
  Left = 102
  Top = 58
  Width = 633
  Height = 480
  Caption = 'SOCIOS DESLIGADOS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 625
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
    TabOrder = 0
    object DBText1: TDBText
      Left = 7
      Top = 8
      Width = 80
      Height = 24
      AutoSize = True
      DataField = 'NOME_SOCIO'
      Transparent = True
    end
    object DBText2: TDBText
      Left = 9
      Top = 8
      Width = 80
      Height = 24
      AutoSize = True
      DataField = 'NOME_SOCIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 410
    Width = 625
    Height = 43
    Align = alBottom
    BevelInner = bvLowered
    Color = 11189162
    TabOrder = 1
    object btnSair: TdxButton
      Left = 372
      Top = 7
      Width = 82
      Height = 28
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = btnSairClick
      Caption = 'Sair (F9)'
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
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 272
      Top = 7
      Width = 82
      Height = 28
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
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
      TabOrder = 1
    end
    object dxButton1: TdxButton
      Left = 172
      Top = 7
      Width = 82
      Height = 28
      Cursor = crHandPoint
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Enabled = False
      Version = '1.0.2e'
      Caption = 'Ativar'
      Colors.BackgroundFrom = 13029334
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
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 40
    Width = 625
    Height = 370
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'DADOS SOCIO   '
      object Label2: TLabel
        Left = 100
        Top = 7
        Width = 37
        Height = 16
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 486
        Top = 7
        Width = 71
        Height = 16
        Caption = 'Sobrenome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 9
        Top = 59
        Width = 78
        Height = 16
        Caption = 'Naturalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 277
        Top = 59
        Width = 71
        Height = 16
        Caption = 'Estado Civil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 477
        Top = 57
        Width = 104
        Height = 16
        Caption = 'Data Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 134
        Top = 173
        Width = 57
        Height = 16
        Caption = 'Profiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 9
        Top = 8
        Width = 37
        Height = 16
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 50
        Top = 7
        Width = 27
        Height = 16
        Caption = 'Insc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 9
        Top = 173
        Width = 106
        Height = 16
        Caption = 'Data do Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 9
        Top = 225
        Width = 28
        Height = 16
        Caption = 'Obs.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 200
        Top = 244
        Width = 60
        Height = 16
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 201
        Top = 295
        Width = 57
        Height = 16
        Caption = 'Cobrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 98
        Top = 23
        Width = 385
        Height = 24
        CharCase = ecUpperCase
        DataField = 'NOME_SOCIO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 485
        Top = 23
        Width = 124
        Height = 24
        CharCase = ecUpperCase
        DataField = 'SOBRENOME'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 9
        Top = 75
        Width = 265
        Height = 24
        CharCase = ecUpperCase
        DataField = 'NAT'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 477
        Top = 74
        Width = 132
        Height = 24
        CharCase = ecUpperCase
        DataField = 'DTNASC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 134
        Top = 189
        Width = 333
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PROFISSAO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 9
        Top = 110
        Width = 153
        Height = 47
        Caption = 'Tipo'
        Columns = 2
        DataField = 'TIPO_DOC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Fisico'
          'Jur'#237'dico')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          'F'
          'J')
      end
      object GroupBox11: TGroupBox
        Left = 164
        Top = 110
        Width = 209
        Height = 47
        Caption = 'CPF / CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        object DBEdit46: TDBEdit
          Left = 5
          Top = 17
          Width = 197
          Height = 24
          DataField = 'CPF_CGC'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 376
        Top = 110
        Width = 234
        Height = 47
        Caption = 'RG / I.E.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object DBEdit7: TDBEdit
          Left = 7
          Top = 17
          Width = 220
          Height = 24
          DataField = 'RG_IE'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBEdit9: TDBEdit
        Left = 9
        Top = 189
        Width = 121
        Height = 24
        DataField = 'DTACADASTRO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 472
        Top = 175
        Width = 139
        Height = 40
        Caption = 'Situa'#231#227'o'
        Columns = 2
        DataField = 'STATUS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Ativo'
          'Inativo')
        ParentFont = False
        TabOrder = 10
        Values.Strings = (
          'A'
          'I')
      end
      object DBMemo1: TDBMemo
        Left = 9
        Top = 246
        Width = 185
        Height = 89
        DataField = 'OBS'
        DataSource = DtSrc
        TabOrder = 11
      end
      object Edit1: TEdit
        Left = 201
        Top = 260
        Width = 408
        Height = 24
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object Edit2: TEdit
        Left = 201
        Top = 311
        Width = 408
        Height = 24
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 277
        Top = 75
        Width = 199
        Height = 24
        DataField = 'ESTCIV'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_ESTCIVIL'
        ListField = 'DESCRICAO'
        ListSource = DataSource1
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 9
        Top = 23
        Width = 40
        Height = 23
        TabStop = False
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'GRUPO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit21: TDBEdit
        Left = 49
        Top = 23
        Width = 48
        Height = 23
        TabStop = False
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'N_INSCRICAO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
    end
    object TabSheet2: TTabSheet
      Caption = '   ENDERE'#199'O   '
      ImageIndex = 1
      object Label14: TLabel
        Left = 12
        Top = 23
        Width = 59
        Height = 16
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 12
        Top = 79
        Width = 84
        Height = 16
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 212
        Top = 79
        Width = 36
        Height = 16
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 12
        Top = 135
        Width = 44
        Height = 16
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 268
        Top = 135
        Width = 43
        Height = 16
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 391
        Top = 134
        Width = 27
        Height = 16
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 12
        Top = 190
        Width = 26
        Height = 16
        Caption = 'CXP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 148
        Top = 190
        Width = 30
        Height = 16
        Caption = 'DDD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 202
        Top = 190
        Width = 54
        Height = 16
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 338
        Top = 190
        Width = 22
        Height = 16
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 475
        Top = 190
        Width = 42
        Height = 16
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit10: TDBEdit
        Left = 12
        Top = 39
        Width = 594
        Height = 24
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 12
        Top = 95
        Width = 197
        Height = 24
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 501
        Top = 89
        Width = 105
        Height = 86
        Caption = 'Tipo Endere'#231'o'
        DataField = 'TIPOEND'
        DataSource = DtSrc_end
        Items.Strings = (
          'Principal'
          'Cobran'#231'a')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 12
        Top = 151
        Width = 253
        Height = 24
        DataField = 'ID_MUNICIPIO'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_MUNICIPIO'
        ListField = 'MUNICIPIO'
        ListSource = DtSrc_munic
        ParentFont = False
        TabOrder = 3
      end
      object DBComboBox3: TDBComboBox
        Left = 267
        Top = 150
        Width = 124
        Height = 24
        CharCase = ecUpperCase
        DataField = 'ESTADO'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'AC - ACRE'
          'AL - ALAGOAS'
          'AM- AMAZONAS'
          'AP - AMAPA'
          'BA - BAHIA'
          'CE - CEARA'
          'DF - DISTRITO FEDERAL'
          'ES - ESPIRITO SANTO'
          'EX - EXTERIOR'
          'FN - FERNANDO DE NORONHA'
          'GO - GOIAS'
          'MA - MARANH'#195'O'
          'MG - MINAS GERAIS'
          'MS - MATO GROSSO DO SUL'
          'MT - MATO GROSSO'
          'PA - PARA'
          'PB - PARAIBA'
          'PE - PERNANBUCO'
          'PI - PIAUI'
          'PR - PARANA'
          'RJ - RIO DE JANEIRO'
          'RN - RIO GRANDE DO NORTE'
          'RO - RORAIMA'
          'RS - RIO GRANDE DO SUL'
          'SC - SANTA CATARINA'
          'SE - SERGIPE'
          'SP - SAO PAULO'
          'TO - TOCANTINS')
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 392
        Top = 150
        Width = 105
        Height = 24
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 12
        Top = 206
        Width = 130
        Height = 24
        DataField = 'CXP'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit14: TDBEdit
        Left = 148
        Top = 206
        Width = 48
        Height = 24
        DataField = 'DDD'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit15: TDBEdit
        Left = 202
        Top = 206
        Width = 130
        Height = 24
        DataField = 'FONE'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit16: TDBEdit
        Left = 338
        Top = 206
        Width = 130
        Height = 24
        DataField = 'FAX'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit17: TDBEdit
        Left = 475
        Top = 206
        Width = 130
        Height = 24
        DataField = 'FONE1'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object EvDBNavigator1: TEvDBNavigator
        Left = 81
        Top = 256
        Width = 448
        Height = 48
        Cursor = crHandPoint
        DataSource = DtSrc_end
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 11
        BtnWidth = 112
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 211
        Top = 95
        Width = 286
        Height = 24
        DataField = 'ID_BAIRRO'
        DataSource = DtSrc_end
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_BAIRRO'
        ListField = 'BAIRRO'
        ListSource = DtSrc_bairro
        ParentFont = False
        TabOrder = 12
      end
    end
    object TabSheet3: TTabSheet
      Caption = '   DEPENDENTES   '
      ImageIndex = 2
      object Label25: TLabel
        Left = 0
        Top = 23
        Width = 134
        Height = 16
        Caption = 'Nome do Dependente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 512
        Top = 23
        Width = 67
        Height = 16
        Caption = 'Data Nasc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 368
        Top = 66
        Width = 106
        Height = 16
        Caption = 'Data Falecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 1
        Top = 67
        Width = 120
        Height = 16
        Caption = 'Grau de Parentesco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit18: TDBEdit
        Left = 0
        Top = 39
        Width = 505
        Height = 24
        CharCase = ecUpperCase
        DataField = 'NOME_DEP'
        DataSource = DtSrc_dep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 228
        Top = 70
        Width = 125
        Height = 41
        Caption = 'Falecido'
        Columns = 2
        DataField = 'FALECIDO'
        DataSource = DtSrc_dep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DBEdit19: TDBEdit
        Left = 512
        Top = 39
        Width = 83
        Height = 24
        DataField = 'DTNASC'
        DataSource = DtSrc_dep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit20: TDBEdit
        Left = 368
        Top = 82
        Width = 111
        Height = 24
        DataField = 'DTFALEC'
        DataSource = DtSrc_dep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 117
        Width = 613
        Height = 163
        DataSource = DtSrc_dep
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_DEP'
            Title.Caption = 'Dependente'
            Width = 320
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Parentesco'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FALECIDO'
            Title.Caption = 'Falecido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTNASC'
            Title.Caption = 'Data Nasc.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTFALEC'
            Title.Caption = 'Data Falec.'
            Visible = True
          end>
      end
      object EvDBNavigator2: TEvDBNavigator
        Left = 81
        Top = 286
        Width = 436
        Height = 47
        Cursor = crHandPoint
        DataSource = DtSrc_dep
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 5
        BtnHeight = 47
        BtnWidth = 109
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 1
        Top = 83
        Width = 199
        Height = 24
        DataField = 'ID_PAR'
        DataSource = DtSrc_dep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_PAR'
        ListField = 'DESCRICAO'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  object DtSrc_dep: TDataSource
    DataSet = DM.cds_dep_D
    Left = 384
  end
  object cds_est_civil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 488
    object cds_est_civilID_ESTCIVIL: TIntegerField
      FieldName = 'ID_ESTCIVIL'
      Required = True
    end
    object cds_est_civilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_est_civil
    Left = 520
  end
  object cds_parentesco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 560
    object cds_parentescoID_PAR: TIntegerField
      FieldName = 'ID_PAR'
      Required = True
    end
    object cds_parentescoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = cds_parentesco
    Left = 592
  end
  object DtSrc_end: TDataSource
    DataSet = DM.cds_end_D
    Left = 448
  end
  object DtSrc: TDataSource
    DataSet = DM.cds_socio_desl
    Left = 417
    Top = 1
  end
  object sds_munic: TSQLDataSet
    CommandText = 'select * from MUNICIPIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 48
    Top = 368
    object sds_municID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_municMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_munic: TDataSetProvider
    DataSet = sds_munic
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 368
  end
  object sds_bairro: TSQLDataSet
    CommandText = 'select * from BAIRRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 16
    Top = 368
    object sds_bairroID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_bairroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsp_bairro: TDataSetProvider
    DataSet = sds_bairro
    UpdateMode = upWhereKeyOnly
    Left = 16
    Top = 368
  end
  object cds_bairro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_bairro'
    Left = 16
    Top = 368
    object cds_bairroID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_bairroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object cds_munic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_munic'
    Left = 48
    Top = 368
    object cds_municID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_municMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object DtSrc_munic: TDataSource
    DataSet = cds_munic
    Left = 48
    Top = 397
  end
  object DtSrc_bairro: TDataSource
    DataSet = cds_bairro
    Left = 16
    Top = 396
  end
end
