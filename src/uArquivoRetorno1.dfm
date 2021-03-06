object fArquivoRetorno1: TfArquivoRetorno1
  Left = 192
  Top = 78
  Width = 755
  Height = 615
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 6
    Top = 80
    Width = 13
    Height = 16
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 431
    Top = 253
    Width = 65
    Height = 13
    Caption = 'Recebido P'#244'r'
  end
  object Label5: TLabel
    Left = 588
    Top = 224
    Width = 18
    Height = 13
    Caption = '......'
  end
  object Label6: TLabel
    Left = 619
    Top = 224
    Width = 44
    Height = 13
    Caption = 'Registros'
  end
  object Label7: TLabel
    Left = 16
    Top = 320
    Width = 32
    Height = 13
    Caption = 'Label7'
    Visible = False
  end
  object Label8: TLabel
    Left = 456
    Top = 97
    Width = 50
    Height = 13
    Caption = 'CNAB 400'
  end
  object Label9: TLabel
    Left = 545
    Top = 97
    Width = 50
    Height = 13
    Caption = 'CNAB 240'
  end
  object Label10: TLabel
    Left = 56
    Top = 296
    Width = 25
    Height = 20
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 21
    Top = 296
    Width = 29
    Height = 20
    Caption = 'N'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Edit4: TEdit
    Left = 486
    Top = 268
    Width = 121
    Height = 21
    TabOrder = 11
    Visible = False
  end
  object Edit5: TEdit
    Left = 431
    Top = 267
    Width = 270
    Height = 24
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 98
    Width = 423
    Height = 193
    Ctl3D = False
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TITULO'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VT'
        Title.Caption = 'VALOR TITULO'
        Width = 98
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 435
    Top = 112
    Width = 89
    Height = 33
    Caption = 'PROCURAR'
    Enabled = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 337
    Width = 726
    Height = 42
    Ctl3D = False
    DataSource = DtSrcREC
    ParentCtl3D = False
    TabOrder = 2
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Vencimento'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_NF'
        Title.Caption = 'Valor R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Situa'#231#227'o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO_1'
        Title.Caption = 'Grupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_INSCRICAO'
        Title.Caption = 'Inscri'#231#227'o'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_SOCIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'S'#243'cio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 250
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 435
    Top = 148
    Width = 89
    Height = 33
    Caption = 'BAIXAR'
    Enabled = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 483
    Top = 219
    Width = 89
    Height = 38
    Caption = 'SAIR'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 73
    Align = alTop
    TabOrder = 5
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clBackground
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 259
      Top = 26
      Width = 237
      Height = 22
      Caption = 'Arquivo Retorno - Santander'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 262
      Top = 29
      Width = 237
      Height = 22
      Caption = 'Arquivo Retorno - Santander'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Memo1: TMemo
    Left = 6
    Top = 382
    Width = 726
    Height = 204
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object BitBtn4: TBitBtn
    Left = 483
    Top = 183
    Width = 89
    Height = 33
    Caption = 'IMPRIMIR'
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 624
    Top = 95
    Width = 116
    Height = 105
    Caption = 'Busca p'#244'r'
    ItemIndex = 0
    Items.Strings = (
      'n'#186' T'#237'tulo'
      'Codigo Banco')
    TabOrder = 8
  end
  object BitBtn16: TBitBtn
    Left = 702
    Top = 265
    Width = 30
    Height = 26
    Caption = '...'
    TabOrder = 10
    OnClick = BitBtn16Click
  end
  object ComboBox1: TComboBox
    Left = 91
    Top = 309
    Width = 94
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 12
    Visible = False
    Items.Strings = (
      'Entrada'
      'Emiss'#227'o')
  end
  object BitBtn5: TBitBtn
    Left = 576
    Top = 304
    Width = 105
    Height = 25
    Caption = 'Imprimir Baixas'
    TabOrder = 13
    OnClick = BitBtn5Click
  end
  object ComboBox2: TComboBox
    Left = 195
    Top = 309
    Width = 94
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 14
    Visible = False
    Items.Strings = (
      'Entrada'
      'Emiss'#227'o')
  end
  object BitBtn6: TBitBtn
    Left = 528
    Top = 113
    Width = 84
    Height = 32
    Caption = 'PROCURAR'
    TabOrder = 15
    OnClick = BitBtn6Click
  end
  object DBGrid3: TDBGrid
    Left = 6
    Top = 99
    Width = 421
    Height = 190
    DataSource = DataSource3
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'VALOR TITULO'
        Width = 109
        Visible = True
      end>
  end
  object BitBtn7: TBitBtn
    Left = 529
    Top = 149
    Width = 83
    Height = 32
    Caption = 'BAIXAR'
    TabOrder = 17
    OnClick = BitBtn7Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    FileName = 'C:\BANCO SANTANDER\retorno\COBST_SR71_02_050410P_MOV.TXT'
    Filter = 'Todos Arquivos|*.*'
    InitialDir = 'C:\BANCO SANTANDER\retorno'
    Left = 48
    Top = 194
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 112
    Top = 176
  end
  object sdsREC: TSQLDataSet
    CommandText = 
      'select  rec.*, '#13#10'           soc.NOME_SOCIO,'#13#10'           soc.GRUP' +
      'O,'#13#10'           soc.N_INSCRICAO '#13#10'from RECEBIMENTOS rec '#13#10'inner j' +
      'oin  SOCIOS soc on '#13#10'soc.ID_SOCIO = rec.ID_SOCIO '#13#10'where ((rec.C' +
      'ODIGO = :cod) '#13#10'or (rec.TITULO = :tit))'#13#10'and emissao > '#39'01/01/15' +
      #39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tit'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 80
    Top = 384
    object sdsRECID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRECID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRECDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRECID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsRECTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sdsRECSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRECSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsRECPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsRECENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsRECNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = []
      Size = 80
    end
    object sdsRECGRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsRECN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = []
    end
    object sdsRECCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRECARQUIVORETORNO: TGraphicField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object sdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dspREC: TDataSetProvider
    DataSet = sdsREC
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 384
  end
  object cdsREC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tit'
        ParamType = ptInput
      end>
    ProviderName = 'dspREC'
    Left = 160
    Top = 384
    object cdsRECID_RECEBIMENTOS: TIntegerField
      FieldName = 'ID_RECEBIMENTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRECID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cdsRECVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOR_DIF: TFloatField
      FieldName = 'VALOR_DIF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECMULTA: TFloatField
      FieldName = 'MULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECCAIXA: TStringField
      FieldName = 'CAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRECFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECTITULO: TIntegerField
      FieldName = 'TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECLOTE: TIntegerField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECGEROU: TStringField
      FieldName = 'GEROU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRECDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRECID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsRECTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsRECSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRECSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsRECPERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECPERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECPERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cdsRECENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECCODCCUSTO: TSmallintField
      FieldName = 'CODCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_DEPREC: TIntegerField
      FieldName = 'ID_DEPREC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECID_ACORDO: TIntegerField
      FieldName = 'ID_ACORDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECN_BOLETO: TStringField
      FieldName = 'N_BOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsRECNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      ProviderFlags = []
      Size = 80
    end
    object cdsRECGRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsRECN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
      ProviderFlags = []
    end
    object cdsRECCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRECARQUIVORETORNO: TGraphicField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
    object cdsRECNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DtSrcREC: TDataSource
    DataSet = cdsREC
    Left = 200
    Top = 384
  end
  object sqs: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 32
    Top = 256
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 672
    Top = 72
  end
  object sds_cbr: TSQLDataSet
    CommandText = 'select * from CBR643'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 480
    Top = 392
    object sds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftGraphic
    end
  end
  object dsp_cbr: TDataSetProvider
    DataSet = sds_cbr
    Left = 510
    Top = 392
  end
  object cds_cbr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cbr'
    Left = 540
    Top = 391
    object cds_cbrID_CBR: TIntegerField
      FieldName = 'ID_CBR'
    end
    object cds_cbrDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object cds_cbrNOMECBR: TStringField
      FieldName = 'NOMECBR'
      Required = True
      Size = 100
    end
    object cds_cbrOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
  end
  object cdsB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 240
    Top = 168
    object cdsBID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object cdsBTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object cdsBDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 8
    end
    object cdsBVALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object cdsBCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object cdsBVT: TFloatField
      FieldName = 'VT'
      DisplayFormat = ',##0.00'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 208
    Top = 168
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'Select *'#13#10'from TABRETORNO where ID = '#39'10'#39'  and valor > '#39'00000000' +
      '000'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 176
    Top = 168
    object SQLDataSet1ID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1TITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object SQLDataSet1DATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 8
    end
    object SQLDataSet1VALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object SQLDataSet1CENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1VT: TFloatField
      FieldName = 'VT'
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'Select *  from TABRETORNO where ID = '#39'10'#39' and valor > '#39'000000000' +
      '00'#39#13#10'                                                           ' +
      '                                   '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 16
    Top = 168
    object sdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object sdsTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object sdsDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 8
    end
    object sdsVALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object sdsCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object sdsVT: TFloatField
      FieldName = 'VT'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 48
    Top = 168
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 80
    Top = 168
    object cdsID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object cdsTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object cdsDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 8
    end
    object cdsVALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object cdsCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object cdsVT: TFloatField
      FieldName = 'VT'
    end
  end
  object DataSource2: TDataSource
    DataSet = cdsB
    Left = 288
    Top = 216
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 
      'select '#13#10'    rec.valor_nf,'#13#10'    rec.valor_receber,'#13#10'    rec.venc' +
      'imento,'#13#10'    rec.data_pag,'#13#10'    rec.status,'#13#10'    rec.valor_pago,' +
      #13#10'    rec.emissao,'#13#10'    rec.valor_a_rec,'#13#10'    rec.titulo,'#13#10'    r' +
      'ec.valor_1via,'#13#10'    rec.id_socio,'#13#10'    rec.lote,'#13#10'    rec.gerou,' +
      #13#10'    rec.grupo,'#13#10'    rec.cobrador,'#13#10'    rec.nomearquivoretorno,' +
      #13#10'    socios.nome_socio,'#13#10'    socios.n_inscricao,'#13#10'    socios.gr' +
      'upo'#13#10'from socios'#13#10'   inner join recebimentos rec on (socios.id_s' +
      'ocio = rec.id_socio)'#13#10'where (rec.NOMEARQUIVORETORNO = :arquivo) ' +
      #13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'arquivo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 88
    Top = 440
    object SQLDataSet2VALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
    end
    object SQLDataSet2VALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
    end
    object SQLDataSet2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object SQLDataSet2DATA_PAG: TDateField
      FieldName = 'DATA_PAG'
    end
    object SQLDataSet2STATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object SQLDataSet2VALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object SQLDataSet2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object SQLDataSet2VALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
    end
    object SQLDataSet2TITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object SQLDataSet2VALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
    end
    object SQLDataSet2ID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object SQLDataSet2LOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object SQLDataSet2GEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 1
    end
    object SQLDataSet2GRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object SQLDataSet2COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object SQLDataSet2NOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      Size = 100
    end
    object SQLDataSet2NOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object SQLDataSet2N_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object SQLDataSet2GRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      FixedChar = True
      Size = 1
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 440
  end
  object cdsRecS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'arquivo'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider2'
    Left = 168
    Top = 440
    object cdsRecSVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
    end
    object cdsRecSVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
    end
    object cdsRecSVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsRecSDATA_PAG: TDateField
      FieldName = 'DATA_PAG'
    end
    object cdsRecSSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object cdsRecSVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cdsRecSEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsRecSVALOR_A_REC: TFloatField
      FieldName = 'VALOR_A_REC'
    end
    object cdsRecSTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object cdsRecSVALOR_1VIA: TFloatField
      FieldName = 'VALOR_1VIA'
    end
    object cdsRecSID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object cdsRecSLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cdsRecSGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 1
    end
    object cdsRecSGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsRecSCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object cdsRecSNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      Size = 100
    end
    object cdsRecSNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object cdsRecSN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object cdsRecSGRUPO_1: TStringField
      FieldName = 'GRUPO_1'
      FixedChar = True
      Size = 1
    end
  end
  object c_retorno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 368
    Top = 72
    object c_retornoID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object c_retornoTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object c_retornoDATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 8
    end
    object c_retornoVALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object c_retornoCENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object c_retornoVT: TFloatField
      FieldName = 'VT'
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet3
    Left = 328
    Top = 72
  end
  object SQLDataSet3: TSQLDataSet
    CommandText = 'select * from TABRETORNO where valor > 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 296
    Top = 64
    object SQLDataSet3ID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet3TITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object SQLDataSet3DATA: TStringField
      FieldName = 'DATA'
      FixedChar = True
      Size = 8
    end
    object SQLDataSet3VALOR: TStringField
      FieldName = 'VALOR'
      FixedChar = True
      Size = 11
    end
    object SQLDataSet3CENTAVOS: TStringField
      FieldName = 'CENTAVOS'
      FixedChar = True
      Size = 2
    end
    object SQLDataSet3VT: TFloatField
      FieldName = 'VT'
    end
  end
  object DataSource3: TDataSource
    DataSet = c_retorno
    Left = 400
    Top = 72
  end
  object SQLDataSet4: TSQLDataSet
    CommandText = 'select * from RETORNO_SANTANDER where valor > 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 296
    Top = 96
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATAPGTO'
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR'
    end
    object StringField1: TStringField
      FieldName = 'TITULO'
      FixedChar = True
      Size = 13
    end
    object StringField2: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'DT'
      Size = 10
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 368
    Top = 104
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object DateField2: TDateField
      FieldName = 'DATAPGTO'
    end
    object FloatField2: TFloatField
      FieldName = 'VALOR'
    end
    object StringField4: TStringField
      FieldName = 'TITULO'
      FixedChar = True
      Size = 13
    end
    object StringField5: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 6
    end
    object StringField6: TStringField
      FieldName = 'DT'
      Size = 10
    end
  end
end
