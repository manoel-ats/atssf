object fMuda_Plano: TfMuda_Plano
  Left = 192
  Top = 107
  Width = 563
  Height = 343
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid5: TDBGrid
    Left = 176
    Top = 0
    Width = 379
    Height = 309
    Align = alRight
    DataSource = dtsrc_CR1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data Venc.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulo R$ '
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 148
    Width = 175
    Height = 157
    TabOrder = 1
    object dxButton1: TdxButton
      Left = 29
      Top = 14
      Width = 117
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'ACORDO'
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 29
      Top = 58
      Width = 117
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'CANCELAR'
      TabOrder = 1
    end
    object dxButton3: TdxButton
      Left = 29
      Top = 102
      Width = 117
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton3Click
      Caption = 'SAIR'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 175
    Height = 147
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 63
      Width = 71
      Height = 16
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 36
      Width = 58
      Height = 16
      Caption = 'Pendente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 90
      Width = 72
      Height = 16
      Caption = 'N'#186' Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 29
      Top = 115
      Width = 47
      Height = 16
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 26
      Top = 8
      Width = 50
      Height = 16
      Caption = 'Contrato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit35: TDBEdit
      Left = 79
      Top = 36
      Width = 87
      Height = 21
      BorderStyle = bsNone
      DataField = 'PENDENTE'
      DataSource = ds_pendente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 79
      Top = 90
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 79
      Top = 115
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object mdta1: TMaskEdit
      Left = 79
      Top = 63
      Width = 88
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object mdtaContrato: TMaskEdit
      Left = 79
      Top = 8
      Width = 88
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object Memo2: TMemo
    Left = 384
    Top = 120
    Width = 161
    Height = 89
    TabOrder = 4
    Visible = False
  end
  object Memo3: TMemo
    Left = 384
    Top = 208
    Width = 161
    Height = 89
    TabOrder = 5
    Visible = False
  end
  object Memo1: TMemo
    Left = 216
    Top = 120
    Width = 161
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 3
    Visible = False
  end
  object Memo4: TMemo
    Left = 216
    Top = 208
    Width = 161
    Height = 89
    TabOrder = 6
    Visible = False
  end
  object sds_CR: TSQLDataSet
    CommandText = 
      'select * from RECEBIMENTOS '#13#10'where ID_SOCIO = :pcod and STATUS <' +
      '> '#39'Pago'#39' '#13#10'order by  VENCIMENTO, LOTE, TITULO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 288
    Top = 128
    object sds_CRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_CRID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_CRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/00;1;_'
    end
    object sds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_CRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sds_CRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_CRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_CRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_CRSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsp_CR: TDataSetProvider
    DataSet = sds_CR
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 129
  end
  object cds_CR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CR'
    Left = 392
    Top = 129
    object cds_CRID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CRID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_CRVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds_CRPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object cds_CRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CREMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!00/00/0000;1;_'
    end
    object cds_CRN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_CRFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_CRVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_CRTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_CRID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_CRSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_CRPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CRSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dtsrc_CR1: TDataSource
    DataSet = cds_CR
    Left = 432
    Top = 128
  end
  object pendente: TSQLDataSet
    CommandText = 
      'select SUM(VALOR_NF) as pendente '#13#10'from RECEBIMENTOS '#13#10'where ID_' +
      'SOCIO = :pcod '#13#10'and status = '#39'Pendente'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 290
    Top = 179
    object pendentePENDENTE: TFloatField
      FieldName = 'PENDENTE'
      ReadOnly = True
      DisplayFormat = ',#0.00'
    end
  end
  object ds_pendente: TDataSource
    DataSet = pendente
    Left = 320
    Top = 179
  end
end
