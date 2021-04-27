object faltera_contrato: Tfaltera_contrato
  Left = 394
  Top = 328
  Width = 259
  Height = 157
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 49
    Top = 6
    Width = 153
    Height = 13
    Caption = 'Data de Inicio do Novo Contrato'
  end
  object Label2: TLabel
    Left = 38
    Top = 55
    Width = 189
    Height = 13
    Caption = 'Essa Data n'#227'o ser'#225' a data de Cadastro.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object mdtaContrato: TMaskEdit
    Left = 64
    Top = 21
    Width = 120
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 88
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
end
