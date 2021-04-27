object fNumero_boleto_1: TfNumero_boleto_1
  Left = 362
  Top = 284
  Width = 240
  Height = 161
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
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 232
    Height = 95
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clAqua
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 24
      Top = 25
      Width = 45
      Height = 13
      Caption = 'N'#186' Boleto'
      Transparent = True
    end
    object Label8: TLabel
      Left = 7
      Top = 63
      Width = 9
      Height = 13
      Caption = '...'
      Transparent = True
    end
    object FlatGauge1: TFlatGauge
      Left = 5
      Top = 75
      Width = 220
      Height = 16
      AdvColorBorder = 0
      ColorBorder = 8623776
      Progress = 0
    end
    object Edit1: TEdit
      Left = 80
      Top = 25
      Width = 121
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 95
    Width = 232
    Height = 39
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clAqua
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object OK: TdxButton
      Left = 40
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = OKClick
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object CANCELAR: TdxButton
      Left = 120
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      Caption = 'CANCELAR'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 8
    Top = 40
  end
  object N_boleto: TSQLDataSet
    CommandText = 
      'select MAX(CAST(TITULO as INTEGER)) from RECEBIMENTO '#13#10'where GRU' +
      'PO = :gp and LOTE = :LT'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'gp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LT'
        ParamType = ptInput
      end>
    SQLConnection = DM_SGE.sge
    Left = 104
    object N_boletoMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object cds_numero: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCLI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTAREC'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_numero'
    Left = 200
    Top = 48
    object cds_numeroCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_numeroTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
  end
  object dsp_numero: TDataSetProvider
    DataSet = sds_numero
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 32
  end
  object sds_numero: TSQLDataSet
    CommandText = 
      'select   rc.CODRECEBIMENTO '#13#10'           ,rc.TITULO '#13#10'from RECEBI' +
      'MENTO rc '#13#10'inner join CLIENTES sc on '#13#10'sc.ID_SOCIO = rc.CODCLIEN' +
      'TE '#13#10'where rc.CODCLIENTE = :pCLI '#13#10'and rc.DATAVENCIMENTO = :DTAR' +
      'EC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCLI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTAREC'
        ParamType = ptInput
      end>
    SQLConnection = DM_SGE.sge
    Left = 200
    Top = 8
    object sds_numeroCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_numeroTITULO: TStringField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 18
    end
  end
end
