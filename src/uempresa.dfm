inherited fEmpresa: TfEmpresa
  Left = 251
  Top = 112
  Width = 769
  Height = 544
  Caption = 'Dados da Empresa'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 463
    Width = 753
    inherited btnGravar: TdxButton [0]
      Left = 245
    end
    inherited btnIncluir: TdxButton [1]
      Left = 245
    end
    inherited btnCancelar: TdxButton [2]
      Left = 347
    end
    inherited btnSair: TdxButton [3]
      Left = 449
    end
    inherited btnExcluir: TdxButton [4]
      Left = 347
    end
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 0
    Width = 753
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = 11189162
    TabOrder = 1
    object DBTextDestaque1: TDBText
      Left = 8
      Top = 5
      Width = 603
      Height = 28
      DataField = 'NOME_EMPRESA'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBTextDestaque: TDBText
      Left = 6
      Top = 4
      Width = 604
      Height = 28
      DataField = 'NOME_EMPRESA'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = 8344832
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 41
    Width = 753
    Height = 422
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = '   DADOS EMPRESA   '
      object Label14: TLabel
        Left = 1
        Top = 344
        Width = 56
        Height = 13
        Caption = 'Rome Page'
      end
      object Label13: TLabel
        Left = 1
        Top = 299
        Width = 29
        Height = 13
        Caption = 'E-Mail'
      end
      object Label8: TLabel
        Left = 1
        Top = 203
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label9: TLabel
        Left = 377
        Top = 203
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label10: TLabel
        Left = 427
        Top = 203
        Width = 19
        Height = 13
        Caption = 'Cep'
      end
      object Label7: TLabel
        Left = 233
        Top = 153
        Width = 27
        Height = 13
        Caption = 'Bairro'
      end
      object Label6: TLabel
        Left = 1
        Top = 153
        Width = 64
        Height = 13
        Caption = 'Complemento'
      end
      object Label4: TLabel
        Left = 1
        Top = 104
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label5: TLabel
        Left = 420
        Top = 103
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label2: TLabel
        Left = 1
        Top = 56
        Width = 63
        Height = 13
        Caption = 'Raz'#227'o Social'
      end
      object Label3: TLabel
        Left = 1
        Top = 251
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object Label15: TLabel
        Left = 217
        Top = 251
        Width = 13
        Height = 13
        Caption = 'I.E'
      end
      object Label1: TLabel
        Left = 1
        Top = 7
        Width = 65
        Height = 13
        Caption = 'Nome Fatasia'
      end
      object FacDBEdit12: TFacDBEdit
        Left = 1
        Top = 359
        Width = 401
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ROME_PAGE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = FacDBEdit12Exit
        CaseMode = cmNormal
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit11: TFacDBEdit
        Left = 1
        Top = 315
        Width = 401
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'EMAIL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        CaseMode = cmLowerCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit8: TFacDBEdit
        Left = 1
        Top = 219
        Width = 369
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CIDADE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit9: TFacDBEdit
        Left = 376
        Top = 219
        Width = 41
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ESTADO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit10: TFacDBEdit
        Left = 424
        Top = 219
        Width = 90
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CEP'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object BitBtn1: TBitBtn
        Left = 634
        Top = 248
        Width = 105
        Height = 31
        Caption = 'Carregar Foto'
        TabOrder = 5
        OnClick = BitBtn1Click
        Glyph.Data = {
          B6030000424DB60300000000000076000000280000001F0000001A0000000100
          0800000000004003000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080808080808
          0808080808080808080808080808080808080808080808080800080808080808
          0808080700000000000708080808080808080808080808080800080808000000
          0000000708080808080700000000000000000000000808080800080800000000
          0000080800000000000808000000000000000000000008080800080000000000
          0008070007070707070007080000000000000000000000080800080000000000
          0008000707070707070700080000000000000000000000000800080000000000
          0800070707070707070707000800000000000000000008000800080000000000
          0800070708070707070707000800000000000000000008000800080000000000
          080007070F070707070707000800000000000000000008000800080000000000
          080007070F080707070707000800000000000000000008000800080000000000
          08000707080F0707070707000800000000000000000008000800080000000000
          0008000707080F08070700080700000000000000000008000800080000000000
          0008070007070707070007080000000000000000000008000800080000000000
          0000080800000000000808070700000000000000000008000800080000000000
          0000000008080808080F0F000000000000000000000008000800080000000000
          00000000070F0F0F0F0F0000000000000000000000000000080008000F080808
          080808080000080808080F00080808080808080808070000080008000F080808
          080808080808000000000008080808080808080808070700080008000F080808
          08080808080808080808080808080808080808080807070008000808000F0F0F
          0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0807000800080808000800
          0000070808000707070707070007080000000000070808000800080808080000
          0F0700000000080808080808000000000F0F0F07000000080800080808080808
          0000070808080008080808000700080800000000070808080800080808080808
          08080808080808000F0F0F070008080808080808080808080800080808080808
          0808080808080808000000000808080808080808080808080800080808080808
          0808080808080808080808080808080808080808080808080800}
      end
      object Panel4: TPanel
        Left = 548
        Top = 22
        Width = 197
        Height = 188
        Color = clAqua
        TabOrder = 6
        object Panel2: TPanel
          Left = 5
          Top = 4
          Width = 187
          Height = 179
          BevelOuter = bvLowered
          TabOrder = 0
          object Label16: TLabel
            Left = 24
            Top = 120
            Width = 32
            Height = 13
            Caption = 'Celular'
          end
          object Label12: TLabel
            Left = 24
            Top = 68
            Width = 17
            Height = 13
            Caption = 'Fax'
          end
          object Label11: TLabel
            Left = 24
            Top = 15
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object FacDBEdit15: TFacDBEdit
            Left = 24
            Top = 135
            Width = 138
            Height = 28
            AutoSelect = False
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'CELULAR'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            CaseMode = cmUpperCase
            ColorOnFocus = clAqua
            EnterLikeTab = True
          end
          object FacDBEdit14: TFacDBEdit
            Left = 24
            Top = 84
            Width = 138
            Height = 28
            AutoSelect = False
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'FAX'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            CaseMode = cmUpperCase
            ColorOnFocus = clAqua
            EnterLikeTab = True
          end
          object FacDBEdit13: TFacDBEdit
            Left = 24
            Top = 30
            Width = 138
            Height = 28
            AutoSelect = False
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'TELEFONE'
            DataSource = DtSrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            CaseMode = cmUpperCase
            ColorOnFocus = clAqua
            EnterLikeTab = True
          end
        end
      end
      object FacDBEdit7: TFacDBEdit
        Left = 233
        Top = 169
        Width = 281
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAIRRO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit6: TFacDBEdit
        Left = 1
        Top = 169
        Width = 225
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'COMPLEMENTO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit5: TFacDBEdit
        Left = 1
        Top = 119
        Width = 409
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ENDERECO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit4: TFacDBEdit
        Left = 417
        Top = 119
        Width = 97
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NR'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit3: TFacDBEdit
        Left = 1
        Top = 72
        Width = 513
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'RAZAO_EMPRESA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit1: TFacDBEdit
        Left = 1
        Top = 23
        Width = 513
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NOME_EMPRESA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit2: TFacDBEdit
        Left = 1
        Top = 267
        Width = 201
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CNPJ'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit16: TFacDBEdit
        Left = 217
        Top = 267
        Width = 184
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'INSCESTADUAL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object Panel5: TPanel
        Left = 438
        Top = 278
        Width = 308
        Height = 110
        TabOrder = 15
        object Image1: TImage
          Left = 1
          Top = 1
          Width = 306
          Height = 108
          Align = alClient
          AutoSize = True
          Center = True
          Proportional = True
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '   INFORMA'#199#213'ES BANCARIAS   '
      ImageIndex = 1
      object Label17: TLabel
        Left = 8
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object Label18: TLabel
        Left = 99
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
      end
      object Label19: TLabel
        Left = 243
        Top = 16
        Width = 71
        Height = 13
        Caption = 'Conta Corrente'
      end
      object Label20: TLabel
        Left = 403
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Carteira'
      end
      object Label21: TLabel
        Left = 7
        Top = 80
        Width = 42
        Height = 13
        Caption = 'N'#186' Inicial'
      end
      object Label22: TLabel
        Left = 75
        Top = 80
        Width = 37
        Height = 13
        Caption = 'N'#186' Final'
      end
      object Label23: TLabel
        Left = 144
        Top = 80
        Width = 52
        Height = 13
        Caption = 'N'#186' Proximo'
      end
      object Label24: TLabel
        Left = 178
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Dig. Ag.'
      end
      object Label25: TLabel
        Left = 343
        Top = 16
        Width = 50
        Height = 13
        Caption = 'Dig. Conta'
      end
      object Label26: TLabel
        Left = 282
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Varia'#231#227'o'
      end
      object Label27: TLabel
        Left = 212
        Top = 80
        Width = 60
        Height = 13
        Caption = 'N'#186' Conv'#234'nio'
      end
      object Label28: TLabel
        Left = 350
        Top = 80
        Width = 50
        Height = 13
        Caption = 'T. I. Carn'#234
      end
      object Label29: TLabel
        Left = 6
        Top = 140
        Width = 57
        Height = 13
        Caption = '1'#170' Instru'#231#227'o'
      end
      object Label30: TLabel
        Left = 6
        Top = 188
        Width = 57
        Height = 13
        Caption = '2'#170' Instru'#231#227'o'
      end
      object Label31: TLabel
        Left = 6
        Top = 238
        Width = 57
        Height = 13
        Caption = '3'#170' Instru'#231#227'o'
      end
      object Label32: TLabel
        Left = 414
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Ac. Doc.'
      end
      object Label33: TLabel
        Left = 480
        Top = 80
        Width = 47
        Height = 13
        Caption = 'Esp. Doc.'
      end
      object FacDBEdit17: TFacDBEdit
        Left = 8
        Top = 31
        Width = 89
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BANCO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit18: TFacDBEdit
        Left = 99
        Top = 31
        Width = 77
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'AGENCIACEDENTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit19: TFacDBEdit
        Left = 243
        Top = 31
        Width = 97
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CONTACORRENTECEDENTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit20: TFacDBEdit
        Left = 403
        Top = 31
        Width = 94
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CODIGOCEDENTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit21: TFacDBEdit
        Left = 7
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'INICIONOSSONUMERO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit22: TFacDBEdit
        Left = 75
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'FIMNOSSONUMERO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit23: TFacDBEdit
        Left = 144
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PROXIMONOSSONUMERO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit24: TFacDBEdit
        Left = 178
        Top = 31
        Width = 63
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DIGITOAGENCIA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit25: TFacDBEdit
        Left = 343
        Top = 31
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DIGITOCONTA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit26: TFacDBEdit
        Left = 282
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VARIACAO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit27: TFacDBEdit
        Left = 212
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NUMEROCONVENIO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit28: TFacDBEdit
        Left = 350
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TIPOIMPRESSAOCARNE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit29: TFacDBEdit
        Left = 6
        Top = 155
        Width = 539
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'INSTRUCAO1'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit30: TFacDBEdit
        Left = 6
        Top = 203
        Width = 539
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'INSTRUCAO2'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit31: TFacDBEdit
        Left = 6
        Top = 253
        Width = 539
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'INSTRUCAO3'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit32: TFacDBEdit
        Left = 414
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ACEITEDOCUMENTO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
      object FacDBEdit33: TFacDBEdit
        Left = 480
        Top = 95
        Width = 58
        Height = 28
        AutoSelect = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ESPECIEDOCUMENTO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        CaseMode = cmUpperCase
        ColorOnFocus = clAqua
        EnterLikeTab = True
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 592
    Top = 8
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_empresa
    Left = 553
    Top = 9
  end
  object OpenDialog1: TOpenDialog
    Left = 680
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Filter = 'JPEG files|*.JPG'
    Options = [ofPathMustExist]
    Left = 712
    Top = 8
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
    Left = 464
    Top = 48
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 604
    Top = 65
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 332
    Top = 9
  end
end
