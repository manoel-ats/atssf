object fMov: TfMov
  Left = 341
  Top = 187
  Width = 513
  Height = 391
  BorderIcons = [biSystemMenu]
  Caption = 'Movimenta'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 141
    Top = 73
    Width = 15
    Height = 13
    Caption = 'DE'
  end
  object Label2: TLabel
    Left = 301
    Top = 73
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label3: TLabel
    Left = 141
    Top = 137
    Width = 15
    Height = 13
    Caption = 'DE'
    Visible = False
  end
  object Label4: TLabel
    Left = 303
    Top = 137
    Width = 7
    Height = 13
    Caption = 'A'
    Visible = False
  end
  object Label5: TLabel
    Left = 208
    Top = 56
    Width = 47
    Height = 13
    Caption = 'Mes Atual'
    Visible = False
  end
  object Label6: TLabel
    Left = 208
    Top = 104
    Width = 59
    Height = 13
    Caption = 'Mes Anterior'
    Visible = False
  end
  object Label7: TLabel
    Left = 216
    Top = 280
    Width = 144
    Height = 13
    Caption = 'Preecher somente o mes Atual'
    Visible = False
  end
  object Label8: TLabel
    Left = 144
    Top = 296
    Width = 262
    Height = 13
    Caption = 'Ira Exibir  Emitidos no perriodo e Vencimento no periodo'
    Visible = False
  end
  object Label9: TLabel
    Left = 192
    Top = 32
    Width = 76
    Height = 13
    Caption = 'Mes a Consultar'
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 176
    Width = 105
    Height = 41
    Caption = 'Consultar'
    TabOrder = 0
    Visible = False
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 18
    Top = 70
    Width = 101
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'M'#234's'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object ComboBox2: TComboBox
    Left = 18
    Top = 134
    Width = 99
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'M'#234's'
    Visible = False
    OnChange = ComboBox2Change
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object dataini: TDateEdit
    Left = 183
    Top = 73
    Width = 111
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object dataini1: TDateEdit
    Left = 183
    Top = 132
    Width = 111
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object datafin: TDateEdit
    Left = 327
    Top = 73
    Width = 111
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
  end
  object datafin2: TDateEdit
    Left = 328
    Top = 130
    Width = 111
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 240
    Width = 129
    Height = 41
    Caption = 'Consultar'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 224
    Width = 489
    Height = 9
    TabOrder = 8
  end
  object btnMensal: TBitBtn
    Left = 53
    Top = 236
    Width = 160
    Height = 47
    Caption = 'Plano Mensal'
    TabOrder = 9
    OnClick = btnMensalClick
  end
  object btnEcon: TBitBtn
    Left = 54
    Top = 286
    Width = 161
    Height = 46
    Caption = 'Plano Economico'
    TabOrder = 10
    OnClick = btnEconClick
  end
  object btnTri: TBitBtn
    Left = 240
    Top = 287
    Width = 160
    Height = 45
    Caption = 'Plano Trimestral'
    TabOrder = 11
    OnClick = btnTriClick
  end
  object btnSete: TBitBtn
    Left = 239
    Top = 235
    Width = 161
    Height = 49
    Caption = 'Plano 7 Falecimentos'
    TabOrder = 12
    OnClick = btnSeteClick
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 80
    Top = 8
  end
end
