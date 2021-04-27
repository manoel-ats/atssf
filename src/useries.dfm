inherited fSeries: TfSeries
  Left = 256
  Top = 161
  Width = 321
  Height = 264
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 26
    Top = 21
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label2: TLabel [1]
    Left = 13
    Top = 45
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label3: TLabel [2]
    Left = 28
    Top = 68
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label4: TLabel [3]
    Left = 32
    Top = 96
    Width = 84
    Height = 13
    Caption = 'OB = S'#233'rie '#211'bitos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 32
    Top = 112
    Width = 90
    Height = 13
    Caption = 'VD = S'#233'rie Vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    Top = 194
    Width = 313
    inherited btnCancelar: TdxButton
      Left = 119
    end
    inherited btnExcluir: TdxButton
      Left = 119
    end
    inherited btnGravar: TdxButton
      Left = 22
    end
    inherited btnIncluir: TdxButton
      Left = 22
    end
    inherited btnSair: TdxButton
      Left = 215
    end
  end
  object DBEdit1: TDBEdit [6]
    Left = 53
    Top = 19
    Width = 73
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'SERIE'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [7]
    Left = 53
    Top = 43
    Width = 73
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'ULTIMO_NUMERO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [8]
    Left = 128
    Top = 19
    Width = 169
    Height = 150
    TabStop = False
    DataSource = DtSrc
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
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ULTIMO_NUMERO'
        Title.Caption = 'Ultimo numero'
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox [9]
    Left = 53
    Top = 67
    Width = 73
    Height = 21
    BevelKind = bkFlat
    DataField = 'NOTAFISCAL'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'OB'
      'VD'
      '')
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 240
    Top = 64
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_serie
    Left = 209
    Top = 65
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
    Left = 176
    Top = 64
  end
  object sdsSerie: TSQLDataSet
    CommandText = 'select MAX(CODIGO) from OBITOS '#13#10' where serie = :ps'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ps'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 168
    Top = 123
    object sdsSerieMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
