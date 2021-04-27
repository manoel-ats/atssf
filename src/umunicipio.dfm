inherited fMunicipio: TfMunicipio
  Left = 461
  Top = 174
  Width = 457
  Height = 380
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 47
    Top = 45
    Width = 47
    Height = 13
    Caption = 'Munic'#237'pio'
  end
  inherited Panel1: TPanel
    Top = 304
    Width = 449
    inherited btnCancelar: TdxButton
      Left = 194
    end
    inherited btnGravar: TdxButton
      Left = 94
    end
    inherited btnSair: TdxButton
      Left = 295
    end
    inherited btnExcluir: TdxButton
      Left = 194
    end
    inherited btnIncluir: TdxButton
      Left = 94
    end
  end
  object DBEdit1: TDBEdit [2]
    Left = 47
    Top = 61
    Width = 361
    Height = 21
    DataField = 'MUNICIPIO'
    DataSource = DtSrc
    TabOrder = 1
  end
  object DBGrid1: TDBGrid [3]
    Left = 47
    Top = 85
    Width = 361
    Height = 209
    TabStop = False
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'MUNICIPIO'
        Width = 340
        Visible = True
      end>
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 0
    Width = 449
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
    TabOrder = 3
    object Label10: TLabel
      Left = 114
      Top = 8
      Width = 220
      Height = 24
      Caption = 'Cadastro de Munic'#237'pios'
    end
    object Label11: TLabel
      Left = 116
      Top = 8
      Width = 220
      Height = 24
      Caption = 'Cadastro de Munic'#237'pios'
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
    Left = 168
    Top = 136
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_munic
    Left = 137
    Top = 137
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
    Left = 240
    Top = 152
  end
end
