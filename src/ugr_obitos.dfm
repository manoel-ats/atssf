object fGr_obitos: TfGr_obitos
  Left = 111
  Top = 81
  Width = 544
  Height = 375
  Caption = 'fGr_obitos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 48
    Top = 32
    Width = 400
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      #211'bitos')
    AxisVisible = False
    BottomAxis.Title.Caption = 'Data'
    ClipPoints = False
    Frame.Visible = False
    LeftAxis.Title.Caption = 'Obitos'
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    BevelOuter = bvNone
    TabOrder = 0
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      DataSource = cds_Obitos
      SeriesColor = clRed
      Title = 'Obitos'
      XLabelsSource = 'DATA_FAL'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = True
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1
      PieValues.Order = loNone
      PieValues.ValueSource = 'DATA_FAL'
    end
  end
  object MaskEdit1: TMaskEdit
    Left = 48
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'MaskEdit1'
  end
  object sds_Obitos: TSQLDataSet
    SQLConnection = DM.SQLObitos
    CommandText = 'select * from OBITOS'
    Params = <>
    Left = 64
    object sds_ObitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_ObitosDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sds_ObitosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosIDADE: TStringField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sds_ObitosESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosENDERECO_FAL: TStringField
      FieldName = 'ENDERECO_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_ObitosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE_3: TStringField
      FieldName = 'FONE_3'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosESTCIVIL_PAI: TStringField
      FieldName = 'ESTCIVIL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosESTCIVIL_MAE: TStringField
      FieldName = 'ESTCIVIL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosENDERECO_PAIS: TStringField
      FieldName = 'ENDERECO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosNUMERO_PAIS: TStringField
      FieldName = 'NUMERO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosBAIRRO_PAIS: TStringField
      FieldName = 'BAIRRO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCIDADE_PAIS: TStringField
      FieldName = 'CIDADE_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosUF_PAIS: TStringField
      FieldName = 'UF_PAIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sds_ObitosCEP_PAIS: TStringField
      FieldName = 'CEP_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosFONE1_PAIS: TStringField
      FieldName = 'FONE1_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosFONE2_PAIS: TStringField
      FieldName = 'FONE2_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosDEIXA_BENS: TStringField
      FieldName = 'DEIXA_BENS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosDEIXA_TESTAMENTO: TStringField
      FieldName = 'DEIXA_TESTAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosELEITOR: TStringField
      FieldName = 'ELEITOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosCIDADE_ELEITORAL: TStringField
      FieldName = 'CIDADE_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_ObitosCEMITERIO: TStringField
      FieldName = 'CEMITERIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosDATA_SEP: TDateField
      FieldName = 'DATA_SEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosHORA_SEP: TTimeField
      FieldName = 'HORA_SEP'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosLOCAL_FAL: TStringField
      FieldName = 'LOCAL_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosDATA_FAL: TDateField
      FieldName = 'DATA_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosHORA_FAL: TTimeField
      FieldName = 'HORA_FAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosMEDICO_1: TStringField
      FieldName = 'MEDICO_1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosMEDICO_2: TStringField
      FieldName = 'MEDICO_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosCRM_1: TStringField
      FieldName = 'CRM_1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosCRM_2: TStringField
      FieldName = 'CRM_2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosCAUSA_MORTE: TStringField
      FieldName = 'CAUSA_MORTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_ObitosNUPCIAS: TStringField
      FieldName = 'NUPCIAS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosDATA_CASAMENTO: TDateField
      FieldName = 'DATA_CASAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCONJUGE: TStringField
      FieldName = 'CONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosLIVRO: TStringField
      FieldName = 'LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosFOLHAS: TStringField
      FieldName = 'FOLHAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosNUM: TStringField
      FieldName = 'NUM'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sds_ObitosDOC_APRESENTADO: TStringField
      FieldName = 'DOC_APRESENTADO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_ObitosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosDECLARANTE: TStringField
      FieldName = 'DECLARANTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_ObitosRG_CPF: TStringField
      FieldName = 'RG_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPROFISSAO_DECL: TStringField
      FieldName = 'PROFISSAO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosFONE_DECL: TStringField
      FieldName = 'FONE_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sds_ObitosENDERECO_DECL: TStringField
      FieldName = 'ENDERECO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_ObitosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_ObitosOBS_GERAIS: TBlobField
      FieldName = 'OBS_GERAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sds_ObitosPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosTIPO_OBITO: TStringField
      FieldName = 'TIPO_OBITO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosTIPO_URNA: TStringField
      FieldName = 'TIPO_URNA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sds_ObitosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosN_FICHA: TStringField
      FieldName = 'N_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_ObitosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_ObitosINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_ObitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp_Obitos: TDataSetProvider
    DataSet = sds_Obitos
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 96
  end
  object cds_Obitos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Obitos'
    Left = 128
    object cds_ObitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ObitosDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosVIA: TStringField
      FieldName = 'VIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosFALECIDO: TStringField
      FieldName = 'FALECIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cds_ObitosSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosIDADE: TStringField
      FieldName = 'IDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_ObitosESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosENDERECO_FAL: TStringField
      FieldName = 'ENDERECO_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_ObitosCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosFONE_1: TStringField
      FieldName = 'FONE_1'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE_2: TStringField
      FieldName = 'FONE_2'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE_3: TStringField
      FieldName = 'FONE_3'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosESTCIVIL_PAI: TStringField
      FieldName = 'ESTCIVIL_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosESTCIVIL_MAE: TStringField
      FieldName = 'ESTCIVIL_MAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosENDERECO_PAIS: TStringField
      FieldName = 'ENDERECO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosNUMERO_PAIS: TStringField
      FieldName = 'NUMERO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosBAIRRO_PAIS: TStringField
      FieldName = 'BAIRRO_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCIDADE_PAIS: TStringField
      FieldName = 'CIDADE_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosUF_PAIS: TStringField
      FieldName = 'UF_PAIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cds_ObitosCEP_PAIS: TStringField
      FieldName = 'CEP_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosFONE1_PAIS: TStringField
      FieldName = 'FONE1_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosFONE2_PAIS: TStringField
      FieldName = 'FONE2_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cds_ObitosDEIXA_BENS: TStringField
      FieldName = 'DEIXA_BENS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosDEIXA_TESTAMENTO: TStringField
      FieldName = 'DEIXA_TESTAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosELEITOR: TStringField
      FieldName = 'ELEITOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosCIDADE_ELEITORAL: TStringField
      FieldName = 'CIDADE_ELEITORAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_ObitosCEMITERIO: TStringField
      FieldName = 'CEMITERIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosDATA_SEP: TDateField
      FieldName = 'DATA_SEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosHORA_SEP: TTimeField
      FieldName = 'HORA_SEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cds_ObitosLOCAL_FAL: TStringField
      FieldName = 'LOCAL_FAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosDATA_FAL: TDateField
      FieldName = 'DATA_FAL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosHORA_FAL: TTimeField
      FieldName = 'HORA_FAL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cds_ObitosMEDICO_1: TStringField
      FieldName = 'MEDICO_1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosMEDICO_2: TStringField
      FieldName = 'MEDICO_2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosCRM_1: TStringField
      FieldName = 'CRM_1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosCRM_2: TStringField
      FieldName = 'CRM_2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosCAUSA_MORTE: TStringField
      FieldName = 'CAUSA_MORTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_ObitosNUPCIAS: TStringField
      FieldName = 'NUPCIAS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosDATA_CASAMENTO: TDateField
      FieldName = 'DATA_CASAMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosCONJUGE: TStringField
      FieldName = 'CONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosLIVRO: TStringField
      FieldName = 'LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosFOLHAS: TStringField
      FieldName = 'FOLHAS'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosNUM: TStringField
      FieldName = 'NUM'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_ObitosDOC_APRESENTADO: TStringField
      FieldName = 'DOC_APRESENTADO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_ObitosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosDECLARANTE: TStringField
      FieldName = 'DECLARANTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_ObitosRG_CPF: TStringField
      FieldName = 'RG_CPF'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosPROFISSAO_DECL: TStringField
      FieldName = 'PROFISSAO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosFONE_DECL: TStringField
      FieldName = 'FONE_DECL'
      ProviderFlags = [pfInUpdate]
      EditMask = '!\(00\)0000-0000;1;_'
      Size = 13
    end
    object cds_ObitosENDERECO_DECL: TStringField
      FieldName = 'ENDERECO_DECL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_ObitosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_ObitosOBS_GERAIS: TBlobField
      FieldName = 'OBS_GERAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cds_ObitosPRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_ObitosVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_ObitosPARCELA: TFloatField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosTIPO_OBITO: TStringField
      FieldName = 'TIPO_OBITO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosTIPO_URNA: TStringField
      FieldName = 'TIPO_URNA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_ObitosSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosNOTAFISCAL: TSmallintField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosN_FICHA: TStringField
      FieldName = 'N_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_ObitosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_ObitosINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ObitosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000'
    end
  end
end
