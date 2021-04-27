object fVerLotes: TfVerLotes
  Left = 315
  Top = 213
  Width = 319
  Height = 250
  BorderIcons = [biSystemMenu]
  Color = 11189162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 303
    Height = 146
    Align = alClient
    Ctl3D = False
    DataSource = DataSource1
    ParentCtl3D = False
    TabOrder = 0
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_FALEC'
        Title.Caption = 'N'#176' Falec.'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 146
    Width = 303
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    Flat = True
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 171
    Width = 303
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Color = 11189162
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 87
      Top = 10
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 175
      Top = 10
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object SQLClientDataSet1: TSQLClientDataSet
    CommandText = 'select * from LOTES '#13#10' where GEROU = :gera '#13#10' and N_FALEC = 7'
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
    Left = 40
    Top = 72
    object SQLClientDataSet1ID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLClientDataSet1LOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object SQLClientDataSet1GRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object SQLClientDataSet1GEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object SQLClientDataSet1N_FALEC: TIntegerField
      FieldName = 'N_FALEC'
    end
  end
  object DataSource1: TDataSource
    DataSet = SQLClientDataSet1
    Left = 80
    Top = 72
  end
end
