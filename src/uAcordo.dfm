object fAcordo: TfAcordo
  Left = 245
  Top = 172
  Width = 514
  Height = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 51
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 0
    object dxButton1: TdxButton
      Left = 21
      Top = 2
      Width = 117
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      Caption = 'ACORDO'
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 149
      Top = 2
      Width = 117
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      Caption = 'CANCELAR'
      TabOrder = 1
    end
    object dxButton3: TdxButton
      Left = 277
      Top = 2
      Width = 117
      Height = 41
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      Caption = 'SAIR'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 175
    Height = 147
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 63
      Width = 71
      Height = 16
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 36
      Width = 58
      Height = 16
      Caption = 'Pendente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 90
      Width = 72
      Height = 16
      Caption = 'N'#186' Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 29
      Top = 115
      Width = 47
      Height = 16
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit35: TDBEdit
      Left = 79
      Top = 36
      Width = 87
      Height = 21
      BorderStyle = bsNone
      DataField = 'PENDENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 79
      Top = 90
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 79
      Top = 115
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object mdta1: TMaskEdit
      Left = 79
      Top = 63
      Width = 88
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object DBGrid5: TDBGrid
    Left = 176
    Top = 51
    Width = 330
    Height = 262
    Align = alRight
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Data Venc.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulo R$ '
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
end
