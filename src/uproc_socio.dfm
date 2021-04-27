object fProc_socio: TfProc_socio
  Left = 212
  Top = 140
  Width = 596
  Height = 466
  Caption = 'Procurar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 588
    Height = 379
    Align = alClient
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 8
      Top = 49
      Width = 252
      Height = 16
      Caption = 'Digite o Nome  que deseja localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 8
      Top = 13
      Width = 127
      Height = 16
      Caption = 'Forma de Procura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 93
      Width = 569
      Height = 278
      TabStop = False
      DataSource = DtSrc
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'GRUPO'
          Title.Caption = 'Grupo'
          Width = 34
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
          FieldName = 'NOME_DEP'
          Title.Caption = 'Nome Dependente'
          Width = 320
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOBRENOME'
          Title.Caption = 'Sobrenome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Parentesco'
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 351
      Top = -47
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object EvDBFind1: TEvDBFind
      Left = 8
      Top = 67
      Width = 568
      Height = 24
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = EvDBFind1Enter
    end
    object ComboBox1: TComboBox
      Left = 136
      Top = 11
      Width = 177
      Height = 24
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Text = 'Nome'
      OnClick = ComboBox1Click
      OnEnter = EvDBFind1Enter
      Items.Strings = (
        'Nome'
        'Sobrenome'
        'Socio'
        'Dependente'
        'Bairro')
    end
    object Panel3: TPanel
      Left = 408
      Top = 7
      Width = 169
      Height = 57
      TabOrder = 4
      object RxLabel3: TRxLabel
        Left = 10
        Top = 9
        Width = 45
        Height = 16
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 64
        Top = 8
        Width = 35
        Height = 16
        Caption = 'Insc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditProc: TEdit
        Left = 12
        Top = -100
        Width = 51
        Height = 21
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 64
        Top = 24
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 12
        Top = 24
        Width = 51
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 123
        Top = 21
        Width = 34
        Height = 25
        Caption = '...'
        TabOrder = 3
        OnClick = BitBtn2Click
      end
    end
    object BtnProcurar: TBitBtn
      Left = 291
      Top = -30
      Width = 34
      Height = 25
      Caption = '...'
      TabOrder = 5
      OnClick = BtnProcurarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 379
    Width = 588
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 1
    object BtnOk: TBitBtn
      Left = 136
      Top = 6
      Width = 86
      Height = 30
      Caption = '&OK'
      Enabled = False
      TabOrder = 0
      Kind = bkOK
    end
    object BtnCancel: TBitBtn
      Left = 313
      Top = 6
      Width = 86
      Height = 30
      Caption = '&Cancel'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object StsBr: TStatusBar
    Left = 0
    Top = 420
    Width = 588
    Height = 19
    Panels = <>
  end
  object DtSrc: TDataSource
    Left = 304
    Top = 214
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
    Left = 272
    Top = 136
  end
  object proc_dep: TSQLClientDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.GRUPO'#13#10'  ' +
      '         , s.N_INSCRICAO '#13#10'           , s.SOBRENOME     '#13#10'from D' +
      'EPENDENTE d '#13#10'left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
      #13#10'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO '#13#10'where d.NO' +
      'ME_DEP like :nome and d.FALECIDO <> '#39'S'#39
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptInput
      end>
    DBConnection = DM.SQLObitos
    Left = 264
    Top = 214
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
      DisplayFormat = '0000'
    end
    object proc_depSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
  end
  object scdsCp_proc: TSQLClientDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.GRUPO'#13#10'  ' +
      '         , s.N_INSCRICAO '#13#10'           , s.SOBRENOME     '#13#10'from D' +
      'EPENDENTE d '#13#10'left outer join PARENTESCO p on p.ID_PAR=d.ID_PAR ' +
      #13#10'left outer join SOCIOS s on s.ID_SOCIO=d.ID_SOCIO '#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DM.SQLObitos
    Left = 200
    Top = 215
    object scdsCp_procID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object scdsCp_procID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
      Required = True
    end
    object scdsCp_procNOME_DEP: TStringField
      FieldName = 'NOME_DEP'
      Size = 80
    end
    object scdsCp_procFALECIDO: TStringField
      FieldName = 'FALECIDO'
      FixedChar = True
      Size = 1
    end
    object scdsCp_procCODPAR: TFloatField
      FieldName = 'CODPAR'
    end
    object scdsCp_procDTNASC: TDateField
      FieldName = 'DTNASC'
    end
    object scdsCp_procDTFALEC: TDateField
      FieldName = 'DTFALEC'
    end
    object scdsCp_procID_PAR: TIntegerField
      FieldName = 'ID_PAR'
    end
    object scdsCp_procCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object scdsCp_procDTACADASTRO: TDateField
      FieldName = 'DTACADASTRO'
    end
    object scdsCp_procDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object scdsCp_procGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object scdsCp_procN_INSCRICAO: TIntegerField
      FieldName = 'N_INSCRICAO'
    end
    object scdsCp_procSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
  end
  object proc_mens: TSQLClientDataSet
    CommandText = 
      'select   d.*'#13#10'           , p.DESCRICAO'#13#10'           , s.GRUPO'#13#10'  ' +
      '         , s.N_INSCRICAO '#13#10'           , s.SOBRENOME '#13#10'          ' +
      ' , s.TIPO_SOCIO     '#13#10'from DEPENDENTE d '#13#10'left outer join PARENT' +
      'ESCO p on p.ID_PAR=d.ID_PAR '#13#10'left outer join SOCIOS s on s.ID_S' +
      'OCIO=d.ID_SOCIO '#13#10'where d.NOME_DEP like :pnome '#13#10'and s.TIPO_SOCI' +
      'O = '#39'M'#39
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
    Left = 232
    Top = 214
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
end
