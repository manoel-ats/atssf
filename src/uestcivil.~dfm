inherited fEstcivil: TfEstcivil
  Left = 461
  Top = 260
  Width = 396
  Height = 335
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 42
    Top = 5
    Width = 76
    Height = 13
    Caption = 'ESTADO CIVIL:'
  end
  inherited Panel1: TPanel
    Top = 265
    Width = 388
    inherited btnCancelar: TdxButton
      Left = 143
    end
    inherited btnExcluir: TdxButton
      Left = 143
    end
    inherited btnGravar: TdxButton
      Left = 38
    end
    inherited btnIncluir: TdxButton
      Left = 38
    end
    inherited btnSair: TdxButton
      Left = 255
    end
  end
  object DBEdit1: TDBEdit [2]
    Left = 42
    Top = 23
    Width = 276
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [3]
    Left = 40
    Top = 51
    Width = 313
    Height = 198
    TabStop = False
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
  inherited PopupMenu1: TPopupMenu
    Left = 176
    Top = 16
  end
  inherited DtSrc: TDataSource
    DataSet = cds_serie
    Left = 233
    Top = 193
  end
  object sdsSerie: TSQLDataSet
    CommandText = 'select  DESCRICAO  from EST_CIVIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 72
    Top = 195
    object sdsSerieDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object cds_serie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspserie'
    Left = 176
    Top = 192
  end
  object dspserie: TDataSetProvider
    DataSet = sdsSerie
    Left = 120
    Top = 192
  end
  object sdsSerie1: TSQLDataSet
    CommandText = 'select MAX(ID_ESTCIVIL) from EST_CIVIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLObitos
    Left = 8
    Top = 123
    object sdsSerie1MAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
end
