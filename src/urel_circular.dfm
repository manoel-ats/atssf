object fRel_Circular: TfRel_Circular
  Left = 477
  Top = 217
  Width = 312
  Height = 430
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 154
    Top = 110
    Width = 36
    Height = 20
    Caption = 'Lote '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 18
    Top = 108
    Width = 45
    Height = 20
    Caption = 'Grupo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 192
    Width = 114
    Height = 13
    Caption = 'Ultimos Lotes em Aberto'
  end
  object Edit7: TEdit
    Left = 194
    Top = 107
    Width = 71
    Height = 28
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 304
    Height = 41
    Align = alTop
    Color = 11189162
    TabOrder = 3
    object Label3: TLabel
      Left = 56
      Top = 7
      Width = 168
      Height = 27
      Caption = 'Imprimir Circular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 58
      Top = 7
      Width = 168
      Height = 27
      Caption = 'Imprimir Circular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 362
    Width = 304
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Color = 11189162
    TabOrder = 2
    object dxButton1: TdxButton
      Left = 55
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'Imprimir'
      TabOrder = 0
    end
    object dxButton3: TdxButton
      Left = 154
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton3Click
      Caption = 'Fechar'
      TabOrder = 1
    end
  end
  object Edit1: TEdit
    Left = 71
    Top = 107
    Width = 71
    Height = 28
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object RB1: TRadioButton
    Left = 41
    Top = 72
    Width = 81
    Height = 17
    Caption = 'Modelo 01'
    Checked = True
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    TabStop = True
  end
  object RB2: TRadioButton
    Left = 169
    Top = 72
    Width = 73
    Height = 17
    Caption = 'Modelo 02'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 216
    Width = 265
    Height = 121
    Ctl3D = False
    DataSource = dsl
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Title.Caption = 'Grupo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
        Title.Caption = 'Lote'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GEROU'
        Title.Caption = 'Gerou ?'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_FALEC'
        Title.Caption = 'N'#176' Falec.'
        Visible = True
      end>
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 208
    Top = 32
  end
  object VCLReport2: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 240
    Top = 32
  end
  object sqll: TSQLClientDataSet
    CommandText = 'select * from LOTES '#13#10' where GEROU = :gera order by grupo'#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftFixedChar
        Name = 'gera'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 8
    Top = 168
    object sqllID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqllLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object sqllGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object sqllGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object sqllN_FALEC: TIntegerField
      FieldName = 'N_FALEC'
    end
  end
  object dsl: TDataSource
    DataSet = sqll
    Left = 48
    Top = 160
  end
end
