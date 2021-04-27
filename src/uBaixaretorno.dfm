object fBaixaretorno: TfBaixaretorno
  Left = 445
  Top = 306
  Width = 493
  Height = 311
  BorderIcons = [biSystemMenu]
  Caption = 'fBaixaretorno'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 8
    Top = 24
    Width = 49
    Height = 17
    DataField = 'GRUPO_1'
    DataSource = DataSource1
  end
  object DBText2: TDBText
    Left = 64
    Top = 24
    Width = 65
    Height = 17
    DataField = 'N_INSCRICAO'
    DataSource = DataSource1
  end
  object DBText3: TDBText
    Left = 144
    Top = 24
    Width = 313
    Height = 17
    DataField = 'NOME_SOCIO'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 8
    Top = 240
    Width = 41
    Height = 16
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 48
    Width = 468
    Height = 185
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Caption = 'T'#237'tulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_NF'
        Title.Caption = 'T'#237'tulo R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_RECEBER'
        Title.Caption = 'Pendente R$'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 161
    Top = 240
    Width = 75
    Height = 33
    Caption = 'BAIXAR'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 249
    Top = 240
    Width = 75
    Height = 33
    Caption = 'SAIR'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 107
    Top = 112
  end
  object sds: TSQLDataSet
    CommandText = 
      'select r.*, '#13#10'          s.NOME_SOCIO, '#13#10'          s.GRUPO,'#13#10'    ' +
      '      s.N_INSCRICAO   '#13#10'from RECEBIMENTOS r '#13#10'left outer join SO' +
      'CIOS s '#13#10'on s.ID_SOCIO = r.ID_SOCIO '#13#10'where r.ID_SOCIO = :ID '#13#10'a' +
      'nd r.STATUS <> '#39'Pago'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 16
    Top = 112
    object sdsID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sdsSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsARQUIVORETORNO: TGraphicField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = []
      Size = 80
    end
    object sdsGRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = []
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 46
    Top = 112
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 76
    Top = 112
    object cdsID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      Required = True
    end
    object cdsID: TIntegerField
      FieldName = 'ID'
    end
    object cdsVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
    end
    object cdsVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
    end
    object cdsPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
    end
    object cdsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object cdsVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cdsVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
    end
    object cdsJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object cdsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object cdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 30
    end
    object cdsCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 50
    end
    object cdsFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Size = 30
    end
    object cdsVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
    end
    object cdsTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object cdsVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
    end
    object cdsID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object cdsLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cdsGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 1
    end
    object cdsDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
    object cdsGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object cdsTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 2
    end
    object cdsSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cdsSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object cdsPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object cdsPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
    end
    object cdsPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
    end
    object cdsVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
    end
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
    object cdsENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object cdsCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
    end
    object cdsID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
    end
    object cdsNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object cdsID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
    end
    object cdsN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      Size = 30
    end
    object cdsCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object cdsARQUIVORETORNO: TGraphicField
      FieldName = 'ARQUIVORETORNO'
      BlobType = ftGraphic
    end
    object cdsNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      Size = 100
    end
    object cdsNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = []
      Size = 80
    end
    object cdsGRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = []
    end
  end
end
