object fFluxo_Caixa: TfFluxo_Caixa
  Left = 219
  Top = 122
  Width = 787
  Height = 596
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 59
    Width = 779
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 69
      Top = 10
      Width = 46
      Height = 16
      Caption = 'Grupo .:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 309
      Top = 10
      Width = 76
      Height = 16
      Caption = 'Periodo de .:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 523
      Top = 10
      Width = 29
      Height = 16
      Caption = 'At'#233' .:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 117
      Top = 9
      Width = 174
      Height = 24
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object JvDatePickerEdit1: TJvDatePickerEdit
      Left = 384
      Top = 8
      Width = 121
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 1
    end
    object JvDatePickerEdit2: TJvDatePickerEdit
      Left = 552
      Top = 8
      Width = 121
      Height = 21
      AllowNoDate = True
      Checked = True
      TabOrder = 2
    end
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 59
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clNavy
    Background.EndColor = 16776176
    Background.FillType = GradUpDown
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 2
      Width = 70
      Height = 56
      Caption = '&Pesquisa'
      Flat = True
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
      Layout = blGlyphTop
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 73
      Top = 2
      Width = 70
      Height = 56
      Caption = '&Limpa Pes.'
      Flat = True
      Glyph.Data = {
        1E070000424D1E070000000000003600000028000000160000001A0000000100
        180000000000E806000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C000000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0
        C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
        7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F7F7F7F7F7F7F7F7F
        7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F000000000000
        7F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F0000000000007F7F
        7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F00007F00007F0000
        7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
        00000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF0000FF00007F00
        007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
        00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C00000FF
        00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
        7F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C00000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
        007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
        7F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00
        007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
        00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
        7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F0000
        7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000FF0000FF00
        007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000007F7F7F
        0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
        7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000007F7F
        7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F00007F00
        00007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F
        0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F0000
        7F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF0000FF0000FF0000
        7F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00
        00FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
        00FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000}
      Layout = blGlyphTop
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 143
      Top = 2
      Width = 70
      Height = 56
      Caption = '&Imprimir'
      Flat = True
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
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DFD8DFEFE7E0DFD8
        DFDFD8DFEFE7E0DFD8DFEFE7E0DFD8DFEFE7E0EFE7E0DFD8DFEFE7E0DFD8DFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFCFCFEFE7E0CFCFCFCFCF
        CFCFCFCFCFCFCFEFE7E0C0C7C0CFCFCFCFCFCFCFCFCFCFCFCFC0C7C0EFE7E0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0EFE7E0FFFFFFFFFFFFFFFF
        FFFFFFFFEFE7E0EFE8EFFFFFFFFFFFFFEFE7E0EFE7E0EFE8EFFFFFFFFFFFFFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFCFCFCFCFCFCFCFCFEFE7E0CFCFCFEFE7
        E0EFE7E0DFD8DFEFE7E0DFD8DFEFE7E0DFD8DFDFD8DFEFE7E0FFFFFFFFFFFFCF
        CFCFCFCFCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFCFCFCFCFCFCFCFCFEFE7E0CFCFCFEFE7
        E0EFE7E0DFD8DFEFE7E0DFD8DFEFE7E0DFD8DFDFD8DFEFE7E0FFFFFFFFFFFFCF
        CFCFCFCFCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C09F989F7F787F8087807F787F7F787FCFCFCFFFFFFFEFE7E0EFE8
        EFEFE8EFFFFFFFFFFFFFEFE7E0FFFFFFFFFFFFFFFFFFEFE8EFFFFFFFEFE8EF80
        87808087807F787F7077707F787FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C06060607F787F606060606060606060CFCFCFFFFFFFDFD8DFFFFF
        FFFFFFFFEFFFFFFFFFFFDFD8DFEFE7E0EFFFFFEFFFFFFFFFFFFFFFFFFFFFFF60
        60606060605050503F383F505050C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C06060606F686F606060606060606060BFB7B0EFE8EFCFCFCFDFD8
        DFDFD8DFCFCFCFDFD8DFCFCFCFDFD8DFEFE7E0EFE7E0CFCFCFEFE7E0DFD8DF7F
        787F7F787F7F787F606060606060C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C06060606F686F606060606060606060BFB7B0EFE8EFCFCFCFDFD8
        DFDFD8DFCFCFCFDFD8DFCFCFCFDFD8DFEFE7E0EFE7E0CFCFCFEFE7E0DFD8DF7F
        787F7F787F7F787F606060606060C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C03F383F5050505050506060606060606060609F989F6060608087
        808087807F787F8087807F787F9F989F7F787F7F787F8087809F989F80878060
        6060606060808780606060606060C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C03030303F383F5050503F383F3F383F00000010171F0000001017
        1F10171F00000010171F00000010171F00000000000010171F10101000000020
        20202020207F787F6060605F585FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C030303060606050505050505050505010171F30303010171F3030
        3030303010171F30303010171F30303010171F10171F30303010171F20202030
        3030303030808780606060606060C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C03030303F383F5050503F383F3F383F5050503F383F5050503F38
        3F3F383F5050503F383F3F383F3F383F5050505050505F585F5050505F585F60
        60606060607F787F6060603F383FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C03030303F383F5050503F383F3F383F5050503F383F5050503F38
        3F3F383F5050503F383F3F383F3F383F5050505050505F585F5050505F585F60
        60606060607F787F6060603F383FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C03030305050503F383F6060606060605050505050505050505050
        5050505050505060606060606060606050505050505060606060606060606060
        60606060605050503F383F606060C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C05050506060607077707F787F7F787F2020203030303030303F38
        3F3F383F3030303F383F3030303F383F3030303030303030303030302F282F60
        60606060609F989F8087807F787FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C09F989FCFCFCFDFD8DFEFE7E0EFE7E05050508087807F787F9F98
        9F9F989F9F989FAFA8AF9F989F9F989F9F989F9F989F9F989F7F787F505050CF
        CFCFCFCFCFFFFFFFDFD8DFBFB7B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C06060605F585F6060607F787F7F787F10101010171F0000001017
        1F10171F2020202F282F2020202F282F2020202020202F282F00000000000060
        60606060607F787F6060605F585FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C06060605F585F6060607F787F7F787F10101010171F0000001017
        1F10171F2020202F282F2020202F282F2020202020202F282F00000000000060
        60606060607F787F6060605F585FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C09F989F6060606060608087808087803F383F8087806060608087
        8080878060606080878060606080878060606060606080878060606060606060
        60606060608087806060609F989FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F989FCFCFCFBFB7B0BFB8
        BFBFB8BFBFB7B0AFA8AFBFB7B0BFB8BFBFB7B0BFB7B0BFB8BFCFCFCFAFA8AFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F989FEFE7E0C0C7C0CFCF
        CFCFCFCFCFCFCFCFCFCFC0C7C0CFCFCFCFCFCFCFCFCFCFCFCFC0C7C0BFB7B0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F989FEFE7E0C0C7C0CFCF
        CFCFCFCFCFCFCFCFCFCFC0C7C0CFCFCFCFCFCFCFCFCFCFCFCFC0C7C0BFB7B0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F989FDFD8DFCFCFCFCFCF
        CFCFCFCFCFCFCFDFD8DFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFAFA8AFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F989FFFFFFFDFD8DFEFE7
        E0EFE7E0DFD8DFEFE7E0DFD8DFEFE7E0DFD8DFDFD8DFEFE7E0DFD8DFCFCFCFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0EFE7E0FFFFFFEFE7E0EFE8
        EFEFE8EFEFE7E0EFE8EFEFE7E0EFE8EFEFE7E0EFE7E0EFE8EFFFFFFFDFD8DFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DFD8DFFFFFFFEFFFFFFFFF
        FFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFE7E0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DFD8DFFFFFFFEFFFFFFFFF
        FFFFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFE7E0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0EFE7E0EFE8EFFFFFFFEFE8
        EFEFE8EFEFE7E0EFE8EFFFFFFFEFE8EFEFE7E0EFE7E0EFE8EFFFFFFFDFD8DFC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      Layout = blGlyphTop
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 213
      Top = 2
      Width = 70
      Height = 56
      Caption = '&Sair'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888887788877
        88877888000887788888888788877888778887780EE088877888888877888778
        887788870EE607888778877888778887788877880EE660778887888778887788
        877888770EE666007788878887788877888778880EE666600077800000000000
        008887780EE666660000888888888888807788870EE666660778888888888888
        800077880EE666660778888888888887800000000EE666660778888888888807
        707777770EE666660778888888888800707777770EE666660778888888888806
        007777770EE666660778888888888806607777770EE60066077888888777770E
        660777770EE07066077888887777770EE66077770EE0F066077888800000000E
        EE6607770EE60066077888066666666EEEE660770EE666660778880EEEEEEEEE
        EEEE66070EE666660778880EEFFFFFFFFFFEE6070EE666660778880EEEEEEEEE
        EFEE60770EE66666077888800000000EFEE607770EE66666077888888888880E
        EE6077770EE66666077888888888880EE60777770EE66666077888888888880E
        607777770EE6666607788888888888060077777770EE66660778888888888800
        80777777770EE6660778888888888888807777777770EE660778888888888888
        8077777777770EE6077888888888888880777777777770EE0788888888888888
        8000000000000000088888888888888888888888888888888888}
      Layout = blGlyphTop
      OnClick = SpeedButton4Click
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 528
    Width = 779
    Height = 41
    Align = alBottom
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clNavy
    Background.EndColor = 16776176
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 329
      Top = 12
      Width = 43
      Height = 13
      Caption = 'D'#233'bito ..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label6: TLabel
      Left = 482
      Top = 12
      Width = 45
      Height = 13
      Caption = 'Cr'#233'dito ..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label7: TLabel
      Left = 632
      Top = 12
      Width = 39
      Height = 13
      Caption = 'Saldo ..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 374
      Top = 8
      Width = 100
      Height = 24
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      DataField = 'total_debito'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 528
      Top = 8
      Width = 100
      Height = 24
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      DataField = 'total_credito'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object Edit1: TEdit
      Left = 672
      Top = 8
      Width = 100
      Height = 24
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 100
    Width = 779
    Height = 428
    Align = alClient
    DataSource = dts
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
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
        FieldName = 'DTAMOV'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 337
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDOINIACUM'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo Inic.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Sa'#237'da'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDOFIMACUM'
        Title.Caption = 'Estoque'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPOSICAO'
        Title.Caption = 'Reposi'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 39
        Visible = True
      end>
  end
  object sds: TSQLDataSet
    CommandText = 
      'select * from SP_FLUXO_CAIXA(:DTA1, :DTA2,:CODGRUPO) '#13#10'order by ' +
      'dtamov'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 256
    Top = 280
    object sdsCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object sdsCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object sdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object sdsSALDOINIACUM: TFloatField
      FieldName = 'SALDOINIACUM'
    end
    object sdsENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object sdsSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object sdsSALDOFIMACUM: TFloatField
      FieldName = 'SALDOFIMACUM'
    end
    object sdsPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object sdsPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object sdsPRECOUNIT: TFloatField
      FieldName = 'PRECOUNIT'
    end
    object sdsPRECOUNITR: TFloatField
      FieldName = 'PRECOUNITR'
    end
    object sdsVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
    end
    object sdsVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
    end
    object sdsVALORESTOQUE: TFloatField
      FieldName = 'VALORESTOQUE'
    end
    object sdsDTAMOV: TDateField
      FieldName = 'DTAMOV'
    end
    object sdsSALDOACUMULADO: TFloatField
      FieldName = 'SALDOACUMULADO'
    end
    object sdsREPOSICAO: TIntegerField
      FieldName = 'REPOSICAO'
    end
    object sdsVALOR_COMPRA: TFloatField
      FieldName = 'VALOR_COMPRA'
    end
    object sdsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object sdsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 296
    Top = 280
  end
  object cds: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODGRUPO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 328
    Top = 280
    object cdsCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object cdsCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object cdsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object cdsSALDOINIACUM: TFloatField
      Alignment = taCenter
      FieldName = 'SALDOINIACUM'
    end
    object cdsENTRADA: TFloatField
      Alignment = taCenter
      FieldName = 'ENTRADA'
    end
    object cdsSAIDA: TFloatField
      Alignment = taCenter
      FieldName = 'SAIDA'
    end
    object cdsSALDOFIMACUM: TFloatField
      Alignment = taCenter
      FieldName = 'SALDOFIMACUM'
    end
    object cdsPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object cdsPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object cdsPRECOUNIT: TFloatField
      FieldName = 'PRECOUNIT'
    end
    object cdsPRECOUNITR: TFloatField
      FieldName = 'PRECOUNITR'
    end
    object cdsVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      DisplayFormat = ',#0.00'
    end
    object cdsVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      DisplayFormat = ',#0.00'
    end
    object cdsVALORESTOQUE: TFloatField
      FieldName = 'VALORESTOQUE'
      DisplayFormat = ',#0.00'
    end
    object cdsDTAMOV: TDateField
      FieldName = 'DTAMOV'
    end
    object cdsSALDOACUMULADO: TFloatField
      FieldName = 'SALDOACUMULADO'
      DisplayFormat = ',#0.00'
    end
    object cdsREPOSICAO: TIntegerField
      FieldName = 'REPOSICAO'
    end
    object cdsVALOR_COMPRA: TFloatField
      FieldName = 'VALOR_COMPRA'
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object cdsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdstotal_debito: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_debito'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'SUM(VALORCOMPRA)'
    end
    object cdstotal_credito: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_credito'
      Active = True
      DisplayFormat = ',#0.00'
      Expression = 'SUM(VALORVENDA)'
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 360
    Top = 280
  end
  object sds_familia: TSQLDataSet
    CommandText = 'select * from FAMILIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 256
    Top = 248
    object sds_familiaID_FAMILIA: TIntegerField
      FieldName = 'ID_FAMILIA'
      Required = True
    end
    object sds_familiaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
  end
  object VCLReport1: TVCLReport
    Filename = 'C:\home\atsscf\relatorios\rel_fluxo.rep'
    AsyncExecution = False
    Title = 'Untitled'
    Left = 296
    Top = 248
  end
end
