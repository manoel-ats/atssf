object fSobre: TfSobre
  Left = 231
  Top = 146
  BorderStyle = bsDialog
  Caption = 'Informa'#231#245'es Gerais'
  ClientHeight = 193
  ClientWidth = 328
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
    Top = 144
    Width = 328
    Height = 49
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 130
      Top = 8
      Width = 75
      Height = 33
      TabOrder = 0
      Kind = bkOK
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 144
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 3
    Top = 4
    Width = 322
    Height = 136
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 2
    object ProgramIcon: TImage
      Left = 2
      Top = 2
      Width = 65
      Height = 57
      Picture.Data = {
        07544269746D617076020000424D760200000000000076000000280000002000
        0000200000000100040000000000000200000000000000000000100000000000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00000000000000000000000000000000000EE8787878EEEEEEE03F30878EEE
        EEE00EE8787878EEEEEEE03F30878EEEEEE00EE8787878EEEEEEE03F30878EEE
        EEE00EE8787878EEEEEEE03F30878EEEEEE00887787877788888803F3088787E
        EEE00788787878878887803F3088887EEEE00788887888878887803F3088887E
        EEE00877888887788888703F308887EEEEE00888777778888888037883088888
        8EE007777777777777703787883087777EE00888888888888803787FF8830888
        888008888888888880378777778830888880077777777788037873F3F3F87808
        88E00888888888803787FFFFFFFF8830EEE00887777778800001111111111100
        EEE00888888888888899B999B99999EEEEE00888888888888899B9B99BB9B9EE
        EEE0088888888888899BB9BB99BB99EEEEE0078888888888899B999B999999EE
        EEE0087788888778899B9B9BB9BB99EEEEE00888778778888E9B9B9BB9999EEE
        EEE0088888788888EE9B99B9BB9BEEEEEEE00EE8888888EEEEE999B9999EEEEE
        EEE00EEEE888EEEEEEEE99BB999EEEEEEEE00EEEEE8EEEEEEEEEE999B9EEEEEE
        EEE00EEEEE8EEEEEEEEEEEE999EEEEEEEEE00EEEEE8EEEEEEEEEEEEE99EEEEEE
        EEE00EEEEE8EEEEEEEEEEEEE9EEEEEEEEEE00EEEEE8EEEEEEEEEEEEEEEEEEEEE
        EEE00EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE00000000000000000000000000000
        0000}
      Stretch = True
      IsControl = True
    end
    object Copyright: TLabel
      Left = 3
      Top = 90
      Width = 104
      Height = 16
      Caption = 'Direitos Autorais :'
      IsControl = True
    end
    object Comments: TLabel
      Left = 113
      Top = 90
      Width = 202
      Height = 16
      Caption = 'ATS - Solu'#231#245'es tecnol'#243'gicas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Label1: TLabel
      Left = 113
      Top = 109
      Width = 117
      Height = 16
      Caption = 'ats@atsti.com.br'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 63
      Top = 109
      Width = 44
      Height = 16
      Caption = 'E-mail :'
      IsControl = True
    end
    object ProductName: TLabel
      Left = 72
      Top = 10
      Width = 72
      Height = 16
      Caption = 'Sys'#211'bitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Label4: TLabel
      Left = 72
      Top = 27
      Width = 182
      Height = 16
      Caption = 'Sistema de Controle de '#211'bitos'
      IsControl = True
    end
    object Label5: TLabel
      Left = 57
      Top = 69
      Width = 208
      Height = 16
      Caption = 'ATS - Solu'#231#245'es Tecnologicas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
    AutoDetect = False
    Active = True
    Left = 24
    Top = 160
  end
end
