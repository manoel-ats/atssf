object facordos: Tfacordos
  Left = 442
  Top = 275
  Width = 466
  Height = 244
  Caption = 'Acordos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dataini: TJvDateEdit
    Left = 91
    Top = 67
    Width = 101
    Height = 24
    BorderStyle = bsNone
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object datafin: TJvDateEdit
    Left = 243
    Top = 67
    Width = 101
    Height = 24
    BorderStyle = bsNone
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 128
    Width = 105
    Height = 41
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 208
    Top = 32
  end
end
