inherited fMensalidades: TfMensalidades
  Left = 220
  Top = 142
  Width = 661
  Height = 382
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 3
    Top = 98
    Width = 119
    Height = 13
    Caption = 'Taxa Funer'#225'ria ..............:'
  end
  object Label2: TLabel [1]
    Left = 3
    Top = 130
    Width = 119
    Height = 13
    Caption = 'Taxa Administrativa........:'
  end
  object Label3: TLabel [2]
    Left = 3
    Top = 162
    Width = 120
    Height = 13
    Caption = 'Valor da Mensalidade.....:'
  end
  object Label6: TLabel [3]
    Left = 3
    Top = 63
    Width = 119
    Height = 13
    Caption = 'Data  .............................:'
  end
  object Label7: TLabel [4]
    Left = 3
    Top = 192
    Width = 118
    Height = 13
    Caption = 'Faixa..............................:'
  end
  inherited Panel1: TPanel
    Top = 312
    Width = 653
    inherited btnCancelar: TdxButton
      Left = 283
    end
    inherited btnExcluir: TdxButton
      Left = 283
    end
    inherited btnGravar: TdxButton
      Left = 183
    end
    inherited btnIncluir: TdxButton
      Left = 183
    end
    inherited btnSair: TdxButton
      Left = 384
    end
  end
  object DBEdit1: TDBEdit [6]
    Left = 131
    Top = 96
    Width = 121
    Height = 21
    DataField = 'TX_FUNERARIA'
    DataSource = DtSrc
    TabOrder = 2
    OnExit = DBEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [7]
    Left = 131
    Top = 128
    Width = 121
    Height = 21
    DataField = 'TX_ADMINISTRATIVA'
    DataSource = DtSrc
    TabOrder = 3
    OnExit = DBEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [8]
    Left = 131
    Top = 160
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [9]
    Left = 253
    Top = 60
    Width = 391
    Height = 228
    TabStop = False
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 5
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
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TX_FUNERARIA'
        Title.Caption = 'Tx. Funer'#225'ria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TX_ADMINISTRATIVA'
        Title.Caption = 'Tx. Administrativa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'R$ Mensalidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAIXA'
        Title.Caption = 'Faixa'
        Width = 50
        Visible = True
      end>
  end
  object Panel2: TPanel [10]
    Left = 0
    Top = 0
    Width = 653
    Height = 41
    Align = alTop
    Color = 11189162
    TabOrder = 6
    object Label4: TLabel
      Left = 184
      Top = 7
      Width = 252
      Height = 27
      Caption = 'Cadastro de Mensalidades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 186
      Top = 7
      Width = 252
      Height = 27
      Caption = 'Cadastro de Mensalidades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object DBEdit4: TDBEdit [11]
    Left = 131
    Top = 61
    Width = 119
    Height = 21
    DataField = 'DATA'
    DataSource = DtSrc
    MaxLength = 10
    TabOrder = 1
    OnExit = DBEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [12]
    Left = 131
    Top = 190
    Width = 121
    Height = 21
    DataField = 'FAIXA'
    DataSource = DtSrc
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 512
    Top = 120
  end
  inherited DtSrc: TDataSource
    DataSet = cds
    Left = 449
    Top = 105
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 120
    Top = 232
    object cdsID_VALORES: TIntegerField
      FieldName = 'ID_VALORES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = ',##0.00'
    end
    object cdsDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object cdsTX_FUNERARIA: TFloatField
      FieldName = 'TX_FUNERARIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cdsTX_ADMINISTRATIVA: TFloatField
      FieldName = 'TX_ADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cdsFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 232
  end
  object sds: TSQLDataSet
    CommandText = 
      'select * from VALORES '#13#10'where ((ID_VALORES = :pid) or (:pid = 99' +
      '99999))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 56
    Top = 232
    object sdsID_VALORES: TIntegerField
      FieldName = 'ID_VALORES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTX_FUNERARIA: TFloatField
      FieldName = 'TX_FUNERARIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTX_ADMINISTRATIVA: TFloatField
      FieldName = 'TX_ADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
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
    Left = 73
    Top = 158
  end
end
