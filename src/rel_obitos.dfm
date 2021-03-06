object fRel_obitos: TfRel_obitos
  Left = 625
  Top = 207
  Width = 365
  Height = 246
  Caption = 'fRel_obitos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 45
    Top = 100
    Width = 51
    Height = 13
    Caption = 'Data Inicio'
  end
  object Label8: TLabel
    Left = 177
    Top = 100
    Width = 42
    Height = 13
    Caption = 'Data Fim'
  end
  object Label25: TLabel
    Left = 43
    Top = 60
    Width = 49
    Height = 13
    Caption = 'Tipo '#211'bito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Data1: TDateEdit
    Left = 45
    Top = 114
    Width = 118
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
    Left = 178
    Top = 114
    Width = 118
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 2
    object Label2: TLabel
      Left = 94
      Top = 6
      Width = 229
      Height = 29
      Caption = 'Relat'#243'rio de '#211'bitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 92
      Top = 6
      Width = 229
      Height = 29
      Caption = 'Relat'#243'rio de '#211'bitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 166
    Width = 349
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 11189162
    TabOrder = 3
    object dxButton1: TdxButton
      Left = 14
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'Imprimir'
      TabOrder = 0
    end
    object dxButton2: TdxButton
      Left = 270
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'Sair'
      TabOrder = 1
    end
    object dxButton3: TdxButton
      Left = 104
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton3Click
      Caption = 'Gerar PDF'
      TabOrder = 2
    end
    object dxButton4: TdxButton
      Left = 184
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton4Click
      Caption = 'Juntar PDF'
      TabOrder = 3
    end
  end
  object ComboBox1: TComboBox
    Left = 97
    Top = 58
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Oficial'
      #241' Oficial'
      'Oficial C'
      'Todos')
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Top = 136
  end
  object cdsPDF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datafin'
        ParamType = ptInput
      end>
    ProviderName = 'dspPDF'
    Left = 192
    Top = 144
    object cdsPDFID: TIntegerField
      FieldName = 'ID'
    end
    object cdsPDFSERIE: TStringField
      FieldName = 'SERIE'
      Size = 120
    end
    object cdsPDFFALECIDO: TStringField
      FieldName = 'FALECIDO'
      Size = 100
    end
    object cdsPDFDATA_FAL: TDateField
      FieldName = 'DATA_FAL'
    end
  end
  object dspPDF: TDataSetProvider
    DataSet = sqlPDF
    Left = 136
    Top = 144
  end
  object sqlPDF: TSQLDataSet
    CommandText = 'select * from IMP_TODOS_OBITOS(:dataini, :datafin)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datafin'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 96
    Top = 144
  end
  object VCLReport2: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 15
    Top = 81
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 392
    Top = 32
  end
end
