object fRel_cad_exc: TfRel_cad_exc
  Left = 394
  Top = 197
  Width = 504
  Height = 308
  BorderIcons = [biSystemMenu]
  Caption = 'Relatorio '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 281
    Top = 199
    Width = 157
    Height = 13
    Caption = 'N'#186' Etiquetas ja Utilizada na Folha'
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 84
    Width = 450
    Height = 93
    Caption = 'Periodo para Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 15
      Top = 28
      Width = 63
      Height = 16
      Caption = 'Data Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 227
      Top = 36
      Width = 54
      Height = 16
      Caption = 'Data Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Data1: TDateEdit
      Left = 95
      Top = 28
      Width = 113
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object Data2: TDateEdit
      Left = 300
      Top = 28
      Width = 109
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 1
    object Label1: TLabel
      Left = 79
      Top = 6
      Width = 8
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 136
      Top = 6
      Width = 232
      Height = 29
      Caption = 'Relat'#243'rio de S'#243'cios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 138
      Top = 7
      Width = 232
      Height = 29
      Caption = 'Relat'#243'rio de S'#243'cios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 229
    Width = 488
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 2
    object btnIncluidos: TdxButton
      Left = 167
      Top = 8
      Width = 117
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = btnIncluidosClick
      Caption = 'Imprimir Incluidos'
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 404
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'Sair'
      TabOrder = 1
    end
    object btnexcluidos: TdxButton
      Left = 168
      Top = 8
      Width = 117
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = btnexcluidosClick
      Caption = 'Imprimir Excluidos'
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 47
    Top = 191
    Width = 130
    Height = 25
    Caption = 'Imprimir Etiquetas'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 256
    Top = 192
    Width = 17
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 312
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
    FlatMenu = True
    AutoDetect = False
    Active = True
    Left = 344
    Top = 8
  end
  object proc_dep: TSQLClientDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.GRUPO'#13#10'  ' +
      '         , s.N_INSCRICAO '#13#10'           , s.SOBRENOME     '#13#10'from D' +
      'EPENDENTE d '#13#10'left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
      #13#10'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO '#13#10'where d.NO' +
      'ME_DEP like :pnome '#13#10'and d.FALECIDO<>'#39'S'#39' '#13#10'and s.TIPO_SOCIO = '#39'G' +
      #39' '#13#10'and p.DESCRICAO = '#39'SOCIO'#39
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 16
    Top = 8
    object proc_depID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object proc_depID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object proc_depNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object proc_depFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object proc_depCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object proc_depDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object proc_depDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object proc_depID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object proc_depDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object proc_depGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object proc_depN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object proc_depSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object proc_depCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
      Visible = False
    end
    object proc_depDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
      Visible = False
    end
  end
  object proc_mens: TSQLClientDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.GRUPO'#13#10'  ' +
      '         , s.N_INSCRICAO '#13#10'           , s.SOBRENOME '#13#10'          ' +
      ' , s.TIPO_SOCIO     '#13#10'from DEPENDENTE d '#13#10'left outer join PARENT' +
      'ESCO p on p.ID_PAR=d.ID_PAR '#13#10'left outer join SOCIOS s on s.ID_S' +
      'OCIO=d.ID_SOCIO '#13#10'where d.NOME_DEP like :pnome '#13#10'and s.TIPO_SOCI' +
      'O <> '#39'G'#39' '#13#10'and p.DESCRICAO = '#39'SOCIO'#39
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'pnome'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 48
    Top = 8
    object proc_mensID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object proc_mensID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object proc_mensNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object proc_mensFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object proc_mensCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object proc_mensDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object proc_mensDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object proc_mensID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object proc_mensCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object proc_mensDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object proc_mensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object proc_mensGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object proc_mensN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object proc_mensSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object proc_mensTIPO_SOCIO: TStringField
      FieldName = 'TIPO_SOCIO'
      FixedChar = True
      Size = 1
    end
  end
  object sql: TSQLDataSet
    CommandText = 
      'select nome_socio'#13#10#13#10'    '#13#10'           , e.*'#13#10'           , b.BAIR' +
      'RO'#13#10'           , m.MUNICIPIO'#13#10'                '#13#10'from socios s'#13#10#13 +
      #10#13#10'left outer join ENDERECO e on e.ID_SOCIO = s.ID_SOCIO '#13#10'left ' +
      'outer join BAIRRO b on b.ID_BAIRRO = e.ID_BAIRRO '#13#10'left outer jo' +
      'in MUNICIPIO m on m.ID_MUNICIPIO = e.ID_MUNICIPIO '#13#10'where ((e.TI' +
      'POEND = 0) or (e.TIPOEND is null)) '#13#10'and situacao = '#39'Inativo'#39' an' +
      'd nome_socio is not null'#13#10'and dataexclusao between :dataini and ' +
      ':datafin'#13#10'order by m.municipio'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'datafin'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 208
    Top = 189
    object sqlNOME_SOCIO: TStringField
      FieldName = 'NOME_SOCIO'
      Size = 80
    end
    object sqlID_ENDERECO: TIntegerField
      FieldName = 'ID_ENDERECO'
    end
    object sqlID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object sqlENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sqlCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sqlID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
    end
    object sqlID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
    end
    object sqlESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object sqlCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sqlDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sqlFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sqlFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object sqlFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sqlCXP: TStringField
      FieldName = 'CXP'
      Size = 15
    end
    object sqlTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
    end
    object sqlBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sqlMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 60
    end
  end
end
