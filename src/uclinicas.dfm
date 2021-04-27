inherited fClinicas: TfClinicas
  Left = 165
  Top = 64
  Width = 552
  Height = 453
  Caption = 'Cadastro de Clinicas'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 23
    Top = 42
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel [1]
    Left = 23
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel [2]
    Left = 487
    Top = 85
    Width = 12
    Height = 13
    Caption = 'N'#176
  end
  object Label4: TLabel [3]
    Left = 23
    Top = 130
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label5: TLabel [4]
    Left = 278
    Top = 130
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label6: TLabel [5]
    Left = 487
    Top = 130
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object Label7: TLabel [6]
    Left = 23
    Top = 172
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label8: TLabel [7]
    Left = 206
    Top = 172
    Width = 24
    Height = 13
    Caption = 'Fone'
  end
  object Label9: TLabel [8]
    Left = 400
    Top = 172
    Width = 17
    Height = 13
    Caption = 'Fax'
  end
  object Label10: TLabel [9]
    Left = 23
    Top = 213
    Width = 37
    Height = 13
    Caption = 'Contato'
  end
  inherited Panel1: TPanel
    Top = 383
    Width = 544
    inherited btnCancelar: TdxButton
      Left = 202
    end
    inherited btnGravar: TdxButton
      Left = 102
    end
    inherited btnSair: TdxButton
      Left = 303
    end
    inherited btnExcluir: TdxButton
      Left = 202
    end
    inherited btnIncluir: TdxButton
      Left = 102
    end
  end
  object DBEdit1: TDBEdit [11]
    Left = 23
    Top = 58
    Width = 497
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [12]
    Left = 23
    Top = 101
    Width = 465
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [13]
    Left = 487
    Top = 101
    Width = 33
    Height = 21
    DataField = 'NUMERO'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [14]
    Left = 23
    Top = 146
    Width = 254
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [15]
    Left = 278
    Top = 146
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [16]
    Left = 487
    Top = 146
    Width = 33
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [17]
    Left = 23
    Top = 188
    Width = 121
    Height = 21
    DataField = 'CEP'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [18]
    Left = 206
    Top = 188
    Width = 121
    Height = 21
    DataField = 'FONE'
    DataSource = DtSrc
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [19]
    Left = 399
    Top = 188
    Width = 121
    Height = 21
    DataField = 'FAX'
    DataSource = DtSrc
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit [20]
    Left = 23
    Top = 229
    Width = 497
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTATO'
    DataSource = DtSrc
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [21]
    Left = 23
    Top = 252
    Width = 498
    Height = 128
    TabStop = False
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome da clinica'
        Width = 470
        Visible = True
      end>
  end
  object Panel3: TPanel [22]
    Left = 0
    Top = 0
    Width = 544
    Height = 36
    Align = alTop
    BevelInner = bvRaised
    Color = 11189162
    TabOrder = 12
    object Label16: TLabel
      Left = 177
      Top = 9
      Width = 192
      Height = 24
      Caption = 'Cadastro de Cl'#237'nicas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 175
      Top = 7
      Width = 192
      Height = 24
      Caption = 'Cadastro de Cl'#237'nicas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Top = 34
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_clinica
    Top = 35
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
    Left = 408
    Top = 34
  end
end
