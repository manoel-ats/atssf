object f_GeraBoleto: Tf_GeraBoleto
  Left = 429
  Top = 288
  Width = 419
  Height = 274
  Caption = 'f_GeraBoleto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 403
    Height = 59
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object lbl5: TLabel
      Left = 2
      Top = 2
      Width = 399
      Height = 55
      Align = alClient
      Alignment = taCenter
      Caption = 'Gerar Boletos / Remessas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Modern No. 20'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object MMJPanel3: TMMJPanel
    Left = 0
    Top = 59
    Width = 403
    Height = 118
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object lbl1: TLabel
      Left = 5
      Top = 6
      Width = 34
      Height = 13
      Caption = 'Banco:'
      Transparent = True
    end
    object lbl7: TLabel
      Left = 6
      Top = 59
      Width = 164
      Height = 13
      Caption = 'Pasta contento Logo dos Bancos :'
      Transparent = True
    end
    object cbb1: TComboBox
      Left = 5
      Top = 22
      Width = 380
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 4
      Top = 72
      Width = 380
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 1
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 177
    Width = 403
    Height = 59
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = 16776176
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object btn2: TBitBtn
      Left = 48
      Top = 14
      Width = 103
      Height = 31
      Caption = 'IMPRIMIR'
      TabOrder = 0
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 159
      Top = 14
      Width = 103
      Height = 31
      Caption = 'GERAR REMESSA'
      TabOrder = 1
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 270
      Top = 14
      Width = 103
      Height = 31
      Caption = 'SAIR'
      TabOrder = 2
      OnClick = btn4Click
    end
  end
  object ACBrBoleto1: TACBrBoleto
    Cedente.TipoInscricao = pOutras
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 16
    Top = 24
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    Left = 48
    Top = 24
  end
  object s_banco: TSQLDataSet
    CommandText = 'SELECT a.*    '#13#10'FROM BANCO a'#13#10'where  ID_BANCO = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 344
    Top = 17
    object s_bancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object s_bancoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object s_bancoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 45
    end
    object s_bancoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 15
    end
    object s_bancoSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object s_bancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 4
    end
    object s_bancoDIGAGEN: TStringField
      FieldName = 'DIGAGEN'
      Size = 1
    end
    object s_bancoCOD_CED: TStringField
      FieldName = 'COD_CED'
      Size = 15
    end
    object s_bancoID_TITULO: TIntegerField
      FieldName = 'ID_TITULO'
    end
    object s_bancoN_DOC: TIntegerField
      FieldName = 'N_DOC'
    end
    object s_bancoJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object s_bancoVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      Size = 61
    end
    object s_bancoVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      Size = 60
    end
    object s_bancoVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      Size = 58
    end
    object s_bancoLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      Size = 61
    end
    object s_bancoVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      Size = 60
    end
    object s_bancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object s_bancoCADBANCO: TStringField
      FieldName = 'CADBANCO'
      FixedChar = True
      Size = 3
    end
    object s_bancoDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      Size = 45
    end
    object s_bancoCONTACORRRENTE: TStringField
      FieldName = 'CONTACORRRENTE'
      Size = 15
    end
    object s_bancoDIGITOCONTACORRENTE: TStringField
      FieldName = 'DIGITOCONTACORRENTE'
      FixedChar = True
      Size = 1
    end
    object s_bancoINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
    end
    object s_bancoFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
    end
    object s_bancoPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
    end
    object s_bancoVARIACAO: TStringField
      FieldName = 'VARIACAO'
      FixedChar = True
      Size = 3
    end
    object s_bancoNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
    end
    object s_bancoTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object s_bancoTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      FixedChar = True
      Size = 2
    end
    object s_bancoDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object s_bancoINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object s_bancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object s_bancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object s_bancoACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object s_bancoESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object s_bancoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object s_bancoESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 5
    end
    object s_bancoACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 2
    end
    object s_bancoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 10
    end
    object s_bancoLOCALPGTO: TStringField
      FieldName = 'LOCALPGTO'
      Size = 100
    end
    object s_bancoN_BANCO: TStringField
      FieldName = 'N_BANCO'
      Size = 10
    end
    object s_bancoDIGITOBANCO: TIntegerField
      FieldName = 'DIGITOBANCO'
    end
    object s_bancoLAYOUT_BL: TStringField
      FieldName = 'LAYOUT_BL'
      Size = 10
    end
    object s_bancoLAYOUT_RM: TStringField
      FieldName = 'LAYOUT_RM'
      Size = 10
    end
    object s_bancoRESP_EMISSAO: TStringField
      FieldName = 'RESP_EMISSAO'
    end
    object s_bancoIMP_COMPROVANTE: TStringField
      FieldName = 'IMP_COMPROVANTE'
      FixedChar = True
      Size = 3
    end
    object s_bancoPASTA_REMESSA: TStringField
      FieldName = 'PASTA_REMESSA'
      Size = 100
    end
    object s_bancoPASTA_RETORNO: TStringField
      FieldName = 'PASTA_RETORNO'
      Size = 100
    end
    object s_bancoNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      Size = 30
    end
    object s_bancoC_BANCO: TIntegerField
      FieldName = 'C_BANCO'
    end
    object s_bancoMORAJUROS: TStringField
      FieldName = 'MORAJUROS'
      Size = 10
    end
    object s_bancoPERCMULTA: TFloatField
      FieldName = 'PERCMULTA'
    end
    object s_bancoCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
    end
    object s_bancoPROTESTO: TStringField
      FieldName = 'PROTESTO'
      FixedChar = True
      Size = 2
    end
  end
  object BancoSelec: TSQLDataSet
    CommandText = 'select * from BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 344
    Top = 48
    object BancoSelecID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object BancoSelecCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object BancoSelecBANCO: TStringField
      FieldName = 'BANCO'
      Size = 45
    end
    object BancoSelecCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 15
    end
    object BancoSelecSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object BancoSelecAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 4
    end
    object BancoSelecDIGAGEN: TStringField
      FieldName = 'DIGAGEN'
      Size = 1
    end
    object BancoSelecCOD_CED: TStringField
      FieldName = 'COD_CED'
      Size = 15
    end
    object BancoSelecID_TITULO: TIntegerField
      FieldName = 'ID_TITULO'
    end
    object BancoSelecN_DOC: TIntegerField
      FieldName = 'N_DOC'
    end
    object BancoSelecJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object BancoSelecVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      Size = 61
    end
    object BancoSelecVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      Size = 60
    end
    object BancoSelecVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      Size = 58
    end
    object BancoSelecLOCAL_PGTO: TStringField
      FieldName = 'LOCAL_PGTO'
      Size = 61
    end
    object BancoSelecVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      Size = 60
    end
    object BancoSelecCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object BancoSelecCADBANCO: TStringField
      FieldName = 'CADBANCO'
      FixedChar = True
      Size = 3
    end
    object BancoSelecDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      Size = 45
    end
    object BancoSelecCONTACORRRENTE: TStringField
      FieldName = 'CONTACORRRENTE'
      Size = 15
    end
    object BancoSelecDIGITOCONTACORRENTE: TStringField
      FieldName = 'DIGITOCONTACORRENTE'
      FixedChar = True
      Size = 1
    end
    object BancoSelecINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
    end
    object BancoSelecFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
    end
    object BancoSelecPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
    end
    object BancoSelecVARIACAO: TStringField
      FieldName = 'VARIACAO'
      FixedChar = True
      Size = 3
    end
    object BancoSelecNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
    end
    object BancoSelecTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object BancoSelecTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      FixedChar = True
      Size = 2
    end
    object BancoSelecDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object BancoSelecINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object BancoSelecINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object BancoSelecINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object BancoSelecACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object BancoSelecESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object BancoSelecINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object BancoSelecESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 5
    end
    object BancoSelecACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 2
    end
    object BancoSelecCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 10
    end
    object BancoSelecLOCALPGTO: TStringField
      FieldName = 'LOCALPGTO'
      Size = 100
    end
    object BancoSelecN_BANCO: TStringField
      FieldName = 'N_BANCO'
      Size = 10
    end
    object BancoSelecDIGITOBANCO: TIntegerField
      FieldName = 'DIGITOBANCO'
    end
    object BancoSelecLAYOUT_BL: TStringField
      FieldName = 'LAYOUT_BL'
      Size = 10
    end
    object BancoSelecLAYOUT_RM: TStringField
      FieldName = 'LAYOUT_RM'
      Size = 10
    end
    object BancoSelecRESP_EMISSAO: TStringField
      FieldName = 'RESP_EMISSAO'
    end
    object BancoSelecIMP_COMPROVANTE: TStringField
      FieldName = 'IMP_COMPROVANTE'
      FixedChar = True
      Size = 3
    end
    object BancoSelecPASTA_REMESSA: TStringField
      FieldName = 'PASTA_REMESSA'
      Size = 100
    end
    object BancoSelecPASTA_RETORNO: TStringField
      FieldName = 'PASTA_RETORNO'
      Size = 100
    end
    object BancoSelecNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      Size = 30
    end
    object BancoSelecC_BANCO: TIntegerField
      FieldName = 'C_BANCO'
    end
    object BancoSelecMORAJUROS: TStringField
      FieldName = 'MORAJUROS'
      Size = 10
    end
    object BancoSelecPERCMULTA: TFloatField
      FieldName = 'PERCMULTA'
    end
    object BancoSelecCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
    end
    object BancoSelecPROTESTO: TStringField
      FieldName = 'PROTESTO'
      FixedChar = True
      Size = 2
    end
  end
  object s_cliente: TSQLDataSet
    CommandText = 
      'select c.*, e.*, b.BAIRRO, m.MUNICIPIO '#13#10'from SOCIOS c '#13#10'inner j' +
      'oin ENDERECO e on e.ID_SOCIO = c.ID_SOCIO'#13#10'left outer join BAIRR' +
      'O b on e.ID_BAIRRO = e.ID_BAIRRO'#13#10'left outer join MUNICIPIO m on' +
      ' e.ID_MUNICIPIO = e.ID_MUNICIPIO'#13#10'where c.ID_SOCIO = :id '#13#10'   an' +
      'd e.TIPOEND = :tpEnd'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tpEnd'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 313
    Top = 16
    object s_clienteID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object s_clienteNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object s_clienteSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object s_clienteNAT: TStringField
      FieldName = 'NAT'
      Size = 40
    end
    object s_clienteDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object s_clientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object s_clienteCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      Size = 18
    end
    object s_clienteRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object s_clienteID_VEN: TIntegerField
      FieldName = 'ID_VEN'
    end
    object s_clienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object s_clienteN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object s_clienteGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object s_clienteDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object s_clienteDTASISTEMA: TDateField
      FieldName = 'DTASISTEMA'
    end
    object s_clienteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object s_clienteOBS: TGraphicField
      FieldName = 'OBS'
      BlobType = ftGraphic
    end
    object s_clienteTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      FixedChar = True
      Size = 1
    end
    object s_clienteESTCIV: TIntegerField
      FieldName = 'ESTCIV'
    end
    object s_clientePRAZO_PG: TIntegerField
      FieldName = 'PRAZO_PG'
    end
    object s_clienteVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object s_clienteVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
    end
    object s_clientePARCELA: TFloatField
      FieldName = 'PARCELA'
    end
    object s_clienteENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object s_clienteCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object s_clienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object s_clienteTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
    object s_clienteDIAPGTO: TIntegerField
      FieldName = 'DIAPGTO'
    end
    object s_clienteMESES: TIntegerField
      FieldName = 'MESES'
    end
    object s_clienteDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object s_clienteDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object s_clientePERCENTUALJUROS: TFloatField
      FieldName = 'PERCENTUALJUROS'
    end
    object s_clientePERCENTUALMULTA: TFloatField
      FieldName = 'PERCENTUALMULTA'
    end
    object s_clientePERCENTUALDESCONTO: TFloatField
      FieldName = 'PERCENTUALDESCONTO'
    end
    object s_clienteVALOROUTROSACRESCIMOS: TFloatField
      FieldName = 'VALOROUTROSACRESCIMOS'
    end
    object s_clienteDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object s_clienteINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object s_clienteINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object s_clienteINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object s_clienteINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
    object s_clienteTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object s_clienteACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object s_clienteESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object s_clienteSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object s_clienteGEROU: TStringField
      FieldName = 'GEROU'
      FixedChar = True
      Size = 3
    end
    object s_clienteCODIGO_T: TIntegerField
      FieldName = 'CODIGO_T'
    end
    object s_clienteCODIGO_C: TIntegerField
      FieldName = 'CODIGO_C'
    end
    object s_clientePLANO: TStringField
      FieldName = 'PLANO'
    end
    object s_clienteHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
    end
    object s_clientePLANO_ANT: TStringField
      FieldName = 'PLANO_ANT'
    end
    object s_clienteDTA_CONTRATO: TDateField
      FieldName = 'DTA_CONTRATO'
    end
    object s_clienteDTA_CONTRATO_ANT: TDateField
      FieldName = 'DTA_CONTRATO_ANT'
    end
    object s_clienteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object s_clienteDATAEXCLUSAO: TDateField
      FieldName = 'DATAEXCLUSAO'
    end
    object s_clienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object s_clienteDTA_ULTIMA_PARCELA: TDateField
      FieldName = 'DTA_ULTIMA_PARCELA'
    end
    object s_clienteFAIXA: TIntegerField
      FieldName = 'FAIXA'
    end
    object s_clienteDIAPARAPGTO: TIntegerField
      FieldName = 'DIAPARAPGTO'
    end
    object s_clienteQUTDE: TIntegerField
      FieldName = 'QUTDE'
    end
    object s_clienteID_ENDERECO: TIntegerField
      FieldName = 'ID_ENDERECO'
      Required = True
    end
    object s_clienteID_SOCIO_1: TIntegerField
      FieldName = 'ID_SOCIO_1'
      Required = True
    end
    object s_clienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 80
    end
    object s_clienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object s_clienteID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
    end
    object s_clienteID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
    end
    object s_clienteESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object s_clienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object s_clienteDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object s_clienteFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object s_clienteFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object s_clienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object s_clienteCXP: TStringField
      FieldName = 'CXP'
      Size = 15
    end
    object s_clienteTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object s_clienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object s_clienteMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 60
    end
    object s_clienteNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
  object s_empresa: TSQLDataSet
    CommandText = 'select * from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 312
    Top = 48
    object s_empresaRAZAO_EMPRESA: TStringField
      FieldName = 'RAZAO_EMPRESA'
      Size = 50
    end
    object s_empresaNCRECI: TStringField
      FieldName = 'NCRECI'
      Size = 15
    end
    object s_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object s_empresaNR: TStringField
      FieldName = 'NR'
      Size = 10
    end
    object s_empresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object s_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object s_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object s_empresaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object s_empresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object s_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object s_empresaFAX: TStringField
      FieldName = 'FAX'
      Size = 13
    end
    object s_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object s_empresaROME_PAGE: TStringField
      FieldName = 'ROME_PAGE'
      Size = 80
    end
    object s_empresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object s_empresaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 50
    end
    object s_empresaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object s_empresaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 13
    end
    object s_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object s_empresaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object s_empresaBANCO: TStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object s_empresaAGENCIACEDENTE: TStringField
      FieldName = 'AGENCIACEDENTE'
    end
    object s_empresaCONTACORRENTECEDENTE: TStringField
      FieldName = 'CONTACORRENTECEDENTE'
    end
    object s_empresaCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
    end
    object s_empresaCNPJCPFCEDENTE: TStringField
      FieldName = 'CNPJCPFCEDENTE'
      Size = 19
    end
    object s_empresaINICIONOSSONUMERO: TStringField
      FieldName = 'INICIONOSSONUMERO'
    end
    object s_empresaFIMNOSSONUMERO: TStringField
      FieldName = 'FIMNOSSONUMERO'
    end
    object s_empresaPROXIMONOSSONUMERO: TStringField
      FieldName = 'PROXIMONOSSONUMERO'
    end
    object s_empresaIDENTIFICACAOCEDENTEBOLET: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOLET'
      Size = 250
    end
    object s_empresaIDENTIFICACAOCEDENTEBOL_1: TStringField
      FieldName = 'IDENTIFICACAOCEDENTEBOL_1'
      Size = 250
    end
    object s_empresaDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      FixedChar = True
      Size = 1
    end
    object s_empresaDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      FixedChar = True
      Size = 1
    end
    object s_empresaVARIACAO: TStringField
      FieldName = 'VARIACAO'
      FixedChar = True
      Size = 3
    end
    object s_empresaNUMEROCONVENIO: TStringField
      FieldName = 'NUMEROCONVENIO'
    end
    object s_empresaTIPOIMPRESSAOCARNE: TIntegerField
      FieldName = 'TIPOIMPRESSAOCARNE'
    end
    object s_empresaTIPOCARNE: TStringField
      FieldName = 'TIPOCARNE'
      FixedChar = True
      Size = 2
    end
    object s_empresaDEMONSTRATIVO: TStringField
      FieldName = 'DEMONSTRATIVO'
      Size = 250
    end
    object s_empresaINSTRUCOESCAIXA: TStringField
      FieldName = 'INSTRUCOESCAIXA'
      Size = 250
    end
    object s_empresaINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 200
    end
    object s_empresaINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 200
    end
    object s_empresaACEITEDOCUMENTO: TStringField
      FieldName = 'ACEITEDOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object s_empresaESPECIEDOCUMENTO: TStringField
      FieldName = 'ESPECIEDOCUMENTO'
      FixedChar = True
      Size = 2
    end
    object s_empresaINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 200
    end
  end
end
