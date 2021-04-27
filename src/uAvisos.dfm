object fAvisos: TfAvisos
  Left = 509
  Top = 239
  Width = 278
  Height = 263
  BorderIcons = [biSystemMenu]
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
  object Label1: TLabel
    Left = 3
    Top = 158
    Width = 9
    Height = 13
    Caption = '...'
  end
  object FlatGauge1: TFlatGauge
    Left = 2
    Top = 172
    Width = 255
    Height = 18
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
  end
  object Memo1: TMemo
    Left = 1
    Top = 0
    Width = 268
    Height = 153
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 58
    Top = 199
    Width = 75
    Height = 25
    Caption = 'CONFIRMA'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 139
    Top = 199
    Width = 75
    Height = 25
    Caption = 'SAIR'
    TabOrder = 2
    OnClick = BitBtn2Click
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
    Left = 72
    Top = 120
  end
  object sds: TSQLDataSet
    CommandText = 'select  ID_SOCIO, OBS from SOCIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 64
    Top = 56
    object sdsID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 95
    Top = 56
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 127
    Top = 56
    object cdsID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
  end
end
