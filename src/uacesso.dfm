object fAcesso: TfAcesso
  Left = 199
  Top = 160
  Width = 322
  Height = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 3
    Top = 2
    Width = 308
    Height = 41
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 300
      Height = 20
      Alignment = taCenter
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 3
    Top = 46
    Width = 185
    Height = 201
    BevelOuter = bvLowered
    TabOrder = 1
    object DBRadioGroup7: TDBRadioGroup
      Left = 42
      Top = 5
      Width = 102
      Height = 37
      Caption = 'INCLUIR'
      Color = clBtnFace
      Columns = 2
      DataField = 'INCLUIR'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        'S'
        'N')
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 42
      Top = 43
      Width = 102
      Height = 37
      Caption = 'EXCLUIR'
      Columns = 2
      DataField = 'EXCLUIR'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
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
    object DBRadioGroup2: TDBRadioGroup
      Left = 42
      Top = 120
      Width = 102
      Height = 37
      Caption = 'CONSULTAR'
      Columns = 2
      DataField = 'PROCURAR'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
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
    object DBRadioGroup3: TDBRadioGroup
      Left = 42
      Top = 158
      Width = 102
      Height = 37
      Caption = 'CANCELAR'
      Columns = 2
      DataField = 'CANCELAR'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
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
    object DBRadioGroup4: TDBRadioGroup
      Left = 42
      Top = 81
      Width = 102
      Height = 37
      Caption = 'ALTERAR'
      Columns = 2
      DataField = 'ALTERAR'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
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
  object Panel3: TPanel
    Left = 191
    Top = 46
    Width = 120
    Height = 201
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 2
    object dxButton1: TdxButton
      Left = 34
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = '&Gravar'
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 34
      Top = 40
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = '&Cancelar'
      TabOrder = 1
    end
    object dxButton3: TdxButton
      Left = 34
      Top = 72
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton3Click
      Caption = '&Sair'
      TabOrder = 2
    end
  end
  object DtSrc: TDataSource
    Left = 80
    Top = 8
  end
end
