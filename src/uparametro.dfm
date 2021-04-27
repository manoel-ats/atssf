inherited fParametro: TfParametro
  Left = 200
  Top = 105
  Width = 800
  Height = 600
  Caption = 'Par'#226'metros do Sistema'
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 47
    Width = 48
    Height = 13
    Caption = 'Par'#226'metro'
  end
  object Label2: TLabel [1]
    Left = 132
    Top = 47
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel [2]
    Left = 604
    Top = 47
    Width = 19
    Height = 13
    Caption = 'Uso'
  end
  inherited Panel1: TPanel
    Top = 530
    Width = 792
    inherited btnCancelar: TdxButton
      Left = 354
    end
    inherited btnExcluir: TdxButton
      Left = 354
    end
    inherited btnGravar: TdxButton
      Left = 254
    end
    inherited btnIncluir: TdxButton
      Left = 254
    end
    inherited btnSair: TdxButton
      Left = 455
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 63
    Width = 121
    Height = 21
    DataField = 'PARAMETRO'
    DataSource = DtSrc
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 132
    Top = 63
    Width = 470
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 604
    Top = 63
    Width = 173
    Height = 21
    DataField = 'PARAMETRO1'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBGrid1: TDBGrid [7]
    Left = 8
    Top = 86
    Width = 769
    Height = 433
    DataSource = DtSrc
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PARAMETRO'
        Title.Caption = 'Par'#226'metro'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o do par'#226'metro'
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARAMETRO2'
        Title.Caption = 'Plano'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARAMETRO1'
        Title.Caption = 'Uso'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARAMETRO3'
        Title.Caption = 'Mensal'
        Visible = True
      end>
  end
  object Panel2: TPanel [8]
    Left = 0
    Top = 0
    Width = 792
    Height = 43
    Align = alTop
    BevelInner = bvRaised
    Color = 11189162
    PopupMenu = PopupMenu1
    TabOrder = 5
    object Label4: TLabel
      Left = 252
      Top = 3
      Width = 287
      Height = 36
      Caption = 'Par'#226'metros do Sistema'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 249
      Top = 0
      Width = 287
      Height = 36
      Caption = 'Par'#226'metros do Sistema'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  inherited PopupMenu1: TPopupMenu
    Top = 71
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_parametro
    Top = 72
  end
end
