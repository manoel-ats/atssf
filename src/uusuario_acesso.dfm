object fusuario_acesso: Tfusuario_acesso
  Left = 150
  Top = 86
  BorderStyle = bsNone
  ClientHeight = 345
  ClientWidth = 632
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 632
    Height = 296
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '  CADASTRO  '
      object DBRadioGroup1: TDBRadioGroup
        Left = 33
        Top = 33
        Width = 137
        Height = 49
        Caption = 'EMPRESA'
        Columns = 2
        DataField = 'EMPRESA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 173
        Top = 33
        Width = 137
        Height = 49
        Caption = 'FUNCION'#193'RIOS'
        Columns = 2
        DataField = 'FUNCIONARIOS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 33
        Top = 107
        Width = 137
        Height = 49
        Caption = 'INQUILINOS'
        Columns = 2
        DataField = 'INQUILINOS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 173
        Top = 107
        Width = 137
        Height = 49
        Caption = 'PROPRIET'#193'RIOS'
        Columns = 2
        DataField = 'PROPRIETARIOS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 313
        Top = 107
        Width = 137
        Height = 49
        Caption = 'CLI. DE VENDAS'
        Columns = 2
        DataField = 'CLI_VENDAS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 453
        Top = 107
        Width = 137
        Height = 49
        Caption = 'INTERESSADOS'
        Columns = 2
        DataField = 'INTERESSADOS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup7: TDBRadioGroup
        Left = 173
        Top = 185
        Width = 137
        Height = 49
        Caption = 'IMO. VENDAS'
        Columns = 2
        DataField = 'IMO_VENDA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup8: TDBRadioGroup
        Left = 33
        Top = 185
        Width = 137
        Height = 49
        Caption = 'IMO. LOCA'#199#195'O'
        Columns = 2
        DataField = 'IMO_LOCACAO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 7
        Values.Strings = (
          'S'
          'N')
      end
    end
    object TabSheet2: TTabSheet
      Caption = '  DOCUMENTOS  '
      ImageIndex = 1
      object DBRadioGroup9: TDBRadioGroup
        Left = 243
        Top = 109
        Width = 137
        Height = 49
        Caption = 'CONTRATOS'
        Columns = 2
        DataField = 'CONTRATOS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
    end
    object TabSheet3: TTabSheet
      Caption = '  MOVIMENTA'#199#195'O  '
      ImageIndex = 2
      object DBRadioGroup10: TDBRadioGroup
        Left = 164
        Top = 185
        Width = 137
        Height = 49
        Caption = 'REP. ALUGUEL'
        Columns = 2
        DataField = 'REP_ALUGUEL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup11: TDBRadioGroup
        Left = 323
        Top = 185
        Width = 137
        Height = 49
        Caption = 'REP. VENDAS'
        Columns = 2
        DataField = 'REP_VENDA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup12: TDBRadioGroup
        Left = 164
        Top = 107
        Width = 137
        Height = 49
        Caption = 'REC. ALUGUEL'
        Columns = 2
        DataField = 'REC_ALUGUEL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup13: TDBRadioGroup
        Left = 323
        Top = 107
        Width = 137
        Height = 49
        Caption = 'REC. VENDAS'
        Columns = 2
        DataField = 'REC_VENDA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup14: TDBRadioGroup
        Left = 323
        Top = 33
        Width = 137
        Height = 49
        Caption = 'IMO. VENDER'
        Columns = 2
        DataField = 'IMO_VENDER'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup15: TDBRadioGroup
        Left = 164
        Top = 33
        Width = 137
        Height = 49
        Caption = 'IMO. ALUGAR'
        Columns = 2
        DataField = 'IMO_ALUGAR'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          'S'
          'N')
      end
    end
    object TabSheet4: TTabSheet
      Caption = '  PESQUISA  '
      ImageIndex = 3
      object DBRadioGroup16: TDBRadioGroup
        Left = 164
        Top = 109
        Width = 137
        Height = 49
        Caption = 'PESQ. IM'#211'VEIS'
        Columns = 2
        DataField = 'CONS_IMOVEIS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup17: TDBRadioGroup
        Left = 323
        Top = 109
        Width = 137
        Height = 49
        Caption = 'PESQ. INTERESSADOS'
        Columns = 2
        DataField = 'CONS_INTERESSADOS'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
    end
    object TabSheet5: TTabSheet
      Caption = '  UTILIT'#193'RIOS  '
      ImageIndex = 4
      object DBRadioGroup18: TDBRadioGroup
        Left = 78
        Top = 73
        Width = 137
        Height = 49
        Caption = 'CAD. ENDERE'#199'OS'
        Columns = 2
        DataField = 'ENDERECO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup19: TDBRadioGroup
        Left = 246
        Top = 73
        Width = 137
        Height = 49
        Caption = 'DESPESAS / RECEITAS'
        Columns = 2
        DataField = 'DESP_REC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup20: TDBRadioGroup
        Left = 78
        Top = 146
        Width = 137
        Height = 49
        Caption = 'INDICE DE REAJUSTE'
        Columns = 2
        DataField = 'IND_REAJUSTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup21: TDBRadioGroup
        Left = 246
        Top = 146
        Width = 137
        Height = 49
        Caption = 'CRIAR DOCUMENTOS'
        Columns = 2
        DataField = 'CRIA_DOC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup22: TDBRadioGroup
        Left = 408
        Top = 146
        Width = 137
        Height = 49
        Caption = 'RESCINDE CONTRATOS'
        Columns = 2
        DataField = 'RESC_CONTRATO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
      end
    end
    object TabSheet6: TTabSheet
      Caption = '  RELAT'#211'RIOS  '
      ImageIndex = 5
      object DBRadioGroup25: TDBRadioGroup
        Left = 90
        Top = 72
        Width = 137
        Height = 49
        Caption = 'INQUILINOS'
        Columns = 2
        DataField = 'REL_1'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup26: TDBRadioGroup
        Left = 243
        Top = 72
        Width = 137
        Height = 49
        Caption = 'PROPRIET'#193'RIOS'
        Columns = 2
        DataField = 'REL_2'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup23: TDBRadioGroup
        Left = 396
        Top = 72
        Width = 137
        Height = 49
        Caption = 'CLIENTE VENDAS'
        Columns = 2
        DataField = 'REL_3'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup24: TDBRadioGroup
        Left = 90
        Top = 146
        Width = 137
        Height = 49
        Caption = 'ENTRADAS/SAIDAS'
        Columns = 2
        DataField = 'REL_4'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup27: TDBRadioGroup
        Left = 243
        Top = 146
        Width = 137
        Height = 49
        Caption = 'RECEBIMENTOS'
        Columns = 2
        DataField = 'REL_5'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup28: TDBRadioGroup
        Left = 396
        Top = 146
        Width = 137
        Height = 49
        Caption = 'REPASSES'
        Columns = 2
        DataField = 'REL_6'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          'S'
          'N')
      end
    end
    object TabSheet7: TTabSheet
      Caption = '  SISTEMA  '
      ImageIndex = 6
      object DBRadioGroup29: TDBRadioGroup
        Left = 78
        Top = 109
        Width = 137
        Height = 49
        Caption = 'BACKUP'
        Columns = 2
        DataField = 'BACKUP'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup30: TDBRadioGroup
        Left = 246
        Top = 109
        Width = 137
        Height = 49
        Caption = 'RESTAURA'
        Columns = 2
        DataField = 'RESTAURA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup31: TDBRadioGroup
        Left = 408
        Top = 109
        Width = 137
        Height = 49
        Caption = 'SENHAS'
        Columns = 2
        DataField = 'SENHA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 632
    Height = 49
    Align = alBottom
    TabOrder = 1
    object dxButton1: TdxButton
      Left = 162
      Top = 11
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      Caption = 'ALTERAR'
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 282
      Top = 11
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'GRAVAR'
      TabOrder = 1
    end
    object dxButton3: TdxButton
      Left = 396
      Top = 12
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton3Click
      Caption = 'FECHAR'
      TabOrder = 2
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
    Left = 464
    Top = 304
  end
  object DtSrc: TDataSource
    OnStateChange = DtSrcStateChange
    Left = 496
    Top = 304
  end
end
