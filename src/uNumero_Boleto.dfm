object fNumero_Boleto: TfNumero_Boleto
  Left = 367
  Top = 267
  Width = 241
  Height = 162
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 96
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
    Top = 96
    Width = 233
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
  object VDODmPrinter1: TVDODmPrinter
    ShowDialog = True
    ShowPreview = True
    ShowProgress = True
    Title = 'VDOPrint Document'
    CharMode = cmClear
    Font.Align = faLeft
    Font.FontType = ftDraft
    Font.NLQFont = ntSansSerif
    Font.Pitch = fp10cpp
    Font.Size = fsDefault
    Font.Style = []
    LineSpacing = ls6lpp
    LineSpacingCustomValue = 36
    Paper.AutoNewPage = False
    Paper.AutoNewPageLines = 3
    Paper.Columns = 80
    Paper.Lines = 66
    Paper.MarginLeft = 0
    Paper.MarginRight = 0
    Left = 144
  end
  object sds_numero: TSQLDataSet
    CommandText = 
      'select   rc.ID_RECEBIMENTOS as CODRECEBIMENTO '#13#10'           ,rc.T' +
      'ITULO '#13#10'from RECEBIMENTOS rc '#13#10'inner join SOCIOS sc on '#13#10'sc.ID_S' +
      'OCIO = rc.ID_SOCIO  '#13#10'where rc.LOTE = :LT '#13#10'and rc.GRUPO = :GP '#13 +
      #10'and (sc.N_INSCRICAO between :INSC and :INSC1) '#13#10'and  ((sc.ID_CO' +
      'B = :COB) OR (:COB = 9999999))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSC1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COB'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 200
    Top = 8
    object sds_numeroCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_numeroTITULO: TIntegerField
      FieldName = 'TITULO'
    end
  end
  object dsp_numero: TDataSetProvider
    DataSet = sds_numero
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 32
  end
  object cds_numero: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'LT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSC1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COB'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_numero'
    Left = 200
    Top = 48
    object cds_numeroCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_numeroTITULO: TIntegerField
      FieldName = 'TITULO'
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 8
    Top = 40
  end
  object sds_N: TSQLDataSet
    CommandText = 
      'select   rc.ID_RECEBIMENTOS '#13#10'           ,rc.TITULO '#13#10'from RECEB' +
      'IMENTOS rc '#13#10'inner join SOCIOS sc on '#13#10'sc.ID_SOCIO = rc.ID_SOCIO' +
      '  '#13#10'where rc.ID_SOCIO = :CODCLI '#13#10'and (rc.ID_RECEBIMENTOS betwee' +
      'n :CODREC and :CODREC1)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODREC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODREC1'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 168
    Top = 8
    object sds_NID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      Required = True
    end
    object sds_NTITULO: TIntegerField
      FieldName = 'TITULO'
    end
  end
  object dsp_N: TDataSetProvider
    DataSet = sds_N
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 32
  end
  object cds_N: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODCLI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODREC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODREC1'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_N'
    Left = 168
    Top = 48
    object cds_NID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      Required = True
    end
    object cds_NTITULO: TIntegerField
      FieldName = 'TITULO'
    end
  end
  object cds_CR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_CR'
    Left = 72
    Top = 81
    object cds_CRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      Required = True
    end
    object cds_CRID: TIntegerField
      FieldName = 'ID'
    end
    object cds_CRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
    end
    object cds_CRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
    end
    object cds_CRPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cds_CRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cds_CRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
    end
    object cds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object cds_CRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cds_CRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
    end
    object cds_CRJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object cds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cds_CRMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object cds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 30
    end
    object cds_CRCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 50
    end
    object cds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Size = 30
    end
    object cds_CRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
    end
    object cds_CRTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object cds_CRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
    end
    object cds_CRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object cds_CRLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cds_CRGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 1
    end
    object cds_CRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object cds_CRGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cds_CRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cds_CRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object cds_CRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 2
    end
    object cds_CRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cds_CRSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object cds_CRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object cds_CRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
    end
    object cds_CRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
    end
    object cds_CRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
    end
    object cds_CRCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cds_CROBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
    object cds_CRENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object cds_CRCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object cds_CRID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
    end
    object cds_CRNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cds_CRID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object cds_CRID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
    end
    object cds_CRN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      Size = 30
    end
  end
  object dsp_CR: TDataSetProvider
    DataSet = sdsCR
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 49
  end
  object sdsCR: TSQLDataSet
    CommandText = 'select * from RECEBIMENTOS '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 72
    Top = 16
    object sdsCRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCRID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCREMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCRCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsCRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsCRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sdsCRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCRSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsCRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCROBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsCRENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCRN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
end
