object fRel_Carne: TfRel_Carne
  Left = 325
  Top = 237
  Width = 348
  Height = 231
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Parcela: TLabel
    Left = 76
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Parcela de'
  end
  object Label1: TLabel
    Left = 164
    Top = 64
    Width = 16
    Height = 13
    Caption = 'At'#233
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 41
    Align = alTop
    Color = 11189162
    TabOrder = 0
    object Label3: TLabel
      Left = 95
      Top = 7
      Width = 148
      Height = 27
      Caption = 'Imprimir Carne'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 97
      Top = 7
      Width = 148
      Height = 27
      Caption = 'Imprimir Carne'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 157
    Width = 340
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Color = 11189162
    TabOrder = 1
    object dxButton1: TdxButton
      Left = 70
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'Imprimir'
      TabOrder = 0
    end
    object dxButton3: TdxButton
      Left = 169
      Top = 8
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton3Click
      Caption = 'Fechar'
      TabOrder = 1
    end
  end
  object Edit1: TEdit
    Left = 76
    Top = 80
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 164
    Top = 80
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 96
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit3'
    Visible = False
  end
  object VCLReport1: TVCLReport
    Filename = 'C:\Arquivos de programas\meta\SysObitos\Relatorios\carne.rep'
    Title = 'Untitled'
    Left = 48
    Top = 8
  end
end
