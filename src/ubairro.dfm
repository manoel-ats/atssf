inherited fBairro: TfBairro
  Left = 190
  Top = 158
  Width = 464
  Height = 380
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 47
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  inherited Panel1: TPanel
    Top = 304
    Width = 456
    inherited btnCancelar: TdxButton
      Left = 186
    end
    inherited btnGravar: TdxButton
      Left = 86
    end
    inherited btnSair: TdxButton
      Left = 287
    end
    inherited btnExcluir: TdxButton
      Left = 186
    end
    inherited btnIncluir: TdxButton
      Left = 86
    end
  end
  object DBEdit1: TDBEdit [2]
    Left = 47
    Top = 64
    Width = 361
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DtSrc
    TabOrder = 1
  end
  object DBGrid1: TDBGrid [3]
    Left = 47
    Top = 90
    Width = 361
    Height = 200
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
        FieldName = 'BAIRRO'
        Width = 340
        Visible = True
      end>
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 0
    Width = 456
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
      Left = 135
      Top = 8
      Width = 184
      Height = 24
      Caption = 'Cadastro de Bairros'
    end
    object Label11: TLabel
      Left = 137
      Top = 8
      Width = 184
      Height = 24
      Caption = 'Cadastro de Bairros'
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
    Left = 152
    Top = 153
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_bairro
    Left = 121
    Top = 153
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
    Left = 192
    Top = 128
  end
end
