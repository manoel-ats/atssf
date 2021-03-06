object F_aniversariantes: TF_aniversariantes
  Left = 273
  Top = 109
  Width = 845
  Height = 588
  BorderIcons = [biSystemMenu]
  Caption = 'F_Aniversariantes'
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
  object pnl1: TPanel
    Left = 0
    Top = 520
    Width = 837
    Height = 41
    Align = alBottom
    Color = clTeal
    TabOrder = 0
    object lbl3: TLabel
      Left = 206
      Top = 9
      Width = 95
      Height = 13
      Caption = 'Qtd. Ja Utilizada na '
    end
    object lbl4: TLabel
      Left = 211
      Top = 24
      Width = 83
      Height = 13
      Caption = 'Folha de Etiqueta'
    end
    object btn1: TBitBtn
      Left = 329
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 425
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btn2Click
    end
    object edt1: TEdit
      Left = 158
      Top = 11
      Width = 35
      Height = 21
      TabOrder = 2
      Text = '0'
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 78
    Align = alTop
    TabOrder = 1
    object lbl1: TLabel
      Left = 11
      Top = 48
      Width = 96
      Height = 13
      Caption = 'Entre com a data -->'
    end
    object lbl2: TLabel
      Left = 1
      Top = 1
      Width = 835
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'Lista de Aniversariantes do m'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'AR BLANCA'
      Font.Style = []
      ParentFont = False
    end
    object JvDateEdit1: TJvDateEdit
      Left = 126
      Top = 43
      Width = 121
      Height = 21
      BorderStyle = bsNone
      BevelKind = bkFlat
      TabOrder = 0
    end
    object btn3: TBitBtn
      Left = 251
      Top = 41
      Width = 162
      Height = 25
      Caption = 'Efetuar consulta'
      TabOrder = 1
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 414
      Top = 41
      Width = 162
      Height = 25
      Caption = 'Limpar consulta'
      TabOrder = 2
      OnClick = btn4Click
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 78
    Width = 837
    Height = 442
    Align = alClient
    DataSource = d_aniversarios
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'GRUPO'
        Title.Caption = 'GP'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCRICAO'
        Title.Caption = 'N'#186' Insc.'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 402
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_NASC'
        Title.Caption = 'Data de Nasc.'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDADE'
        Title.Caption = 'Idade'
        Width = 129
        Visible = True
      end>
  end
  object p_aniversarios: TDataSetProvider
    DataSet = s_aniversarios
    Left = 80
    Top = 184
  end
  object ds_aniversarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'data_consulta'
        ParamType = ptInput
      end>
    ProviderName = 'p_aniversarios'
    Left = 112
    Top = 184
    object ds_aniversariosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object ds_aniversariosDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
    end
    object ds_aniversariosGRUPO: TStringField
      FieldName = 'GRUPO'
      FixedChar = True
      Size = 2
    end
    object ds_aniversariosINSCRICAO: TIntegerField
      FieldName = 'INSCRICAO'
    end
    object ds_aniversariosID_SOCIO: TIntegerField
      FieldName = 'ID_SOCIO'
    end
    object ds_aniversariosIDADE: TIntegerField
      FieldName = 'IDADE'
    end
    object ds_aniversariosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object ds_aniversariosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object ds_aniversariosMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 100
    end
    object ds_aniversariosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object ds_aniversariosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object s_aniversarios: TSQLDataSet
    CommandText = 
      'select *'#13#10' FROM SP_ANIVERSARIO (:data_consulta) '#13#10'order by GRUPO' +
      ', NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'data_consulta'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 48
    Top = 184
  end
  object d_aniversarios: TDataSource
    DataSet = ds_aniversarios
    Left = 144
    Top = 184
  end
  object pm1: TPopupMenu
    Alignment = paCenter
    TrackButton = tbLeftButton
    Left = 560
    Top = 193
    object ImpContas: TMenuItem
      Caption = 'Imprimir &Lista'
      OnClick = ImpContasClick
    end
    object Recibo: TMenuItem
      Caption = 'Imprimir &Etiquetas'
      OnClick = ReciboClick
    end
    object ImprimirCarta1: TMenuItem
      Caption = 'Imprimir Carta'
      OnClick = ImprimirCarta1Click
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 320
    Top = 184
  end
end
