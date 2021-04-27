object FormDlgNovoUsuario: TFormDlgNovoUsuario
  Left = 239
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Novo Usu'#225'rio'
  ClientHeight = 130
  ClientWidth = 347
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 130
    Align = alClient
    BevelOuter = bvLowered
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 7
      Width = 33
      Height = 13
      Caption = 'LOGIN'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 6
      Top = 47
      Width = 37
      Height = 13
      Caption = 'SENHA'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 6
      Top = 87
      Width = 77
      Height = 13
      Caption = 'Perfil do Usu'#225'rio'
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 23
      Width = 250
      Height = 21
      DataField = 'LOGIN'
      DataSource = DM.dsSenha
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 6
      Top = 63
      Width = 250
      Height = 21
      DataField = 'SENHA'
      DataSource = DM.dsSenha
      PasswordChar = '*'
      TabOrder = 1
    end
    object DBComboBox1: TDBComboBox
      Left = 8
      Top = 104
      Width = 249
      Height = 21
      DataField = 'PERFIL'
      DataSource = DM.dsSenha
      ItemHeight = 13
      Items.Strings = (
        'administrador'
        'visitante')
      TabOrder = 2
    end
    object bbtnCancelar: TBitBtn
      Left = 265
      Top = 61
      Width = 75
      Height = 25
      TabOrder = 4
      OnClick = bbtnCancelarClick
      Kind = bkCancel
    end
    object bbtnOk: TBitBtn
      Left = 265
      Top = 21
      Width = 75
      Height = 25
      TabOrder = 3
      OnClick = bbtnOkClick
      Kind = bkOK
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
    Left = 280
    Top = 96
  end
end
