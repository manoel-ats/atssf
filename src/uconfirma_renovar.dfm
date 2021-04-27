object fConfirma_renovar: TfConfirma_renovar
  Left = 414
  Top = 233
  Width = 280
  Height = 168
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 36
    Top = 16
    Width = 197
    Height = 52
    Caption = ' Contrato vencido'#13#10' deseja Renov'#225'-lo ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 39
    Top = 17
    Width = 197
    Height = 52
    Caption = ' Contrato vencido'#13#10' deseja Renov'#225'-lo ?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxButton1: TdxButton
    Left = 52
    Top = 96
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Sim'
    TabOrder = 0
  end
  object dxButton2: TdxButton
    Left = 148
    Top = 96
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton2Click
    Caption = 'N'#227'o'
    TabOrder = 1
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
    Left = 24
    Top = 16
  end
end
