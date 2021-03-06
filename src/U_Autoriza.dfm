object F_autoriza: TF_autoriza
  Left = 442
  Top = 206
  Width = 341
  Height = 231
  BorderIcons = []
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 143
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 0
    object MMJPanel1: TMMJPanel
      Left = 2
      Top = 2
      Width = 329
      Height = 139
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      TabStop = True
      Silhuette.Shape.ShapeText = 'Shape text'
      Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
      Silhuette.PictureShape.DisplayPicture = True
      Background.StartColor = clAqua
      Background.EndColor = clTeal
      Background.FillType = GradUpDown
      object Label2: TLabel
        Left = 66
        Top = 74
        Width = 45
        Height = 16
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 71
        Top = 34
        Width = 39
        Height = 16
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdtLogin: TEdit
        Left = 112
        Top = 31
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object EdtSenha: TEdit
        Left = 111
        Top = 71
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 143
    Width = 333
    Height = 61
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 1
    object MMJPanel2: TMMJPanel
      Left = 2
      Top = 2
      Width = 329
      Height = 57
      Align = alClient
      TabOrder = 0
      Silhuette.Shape.ShapeText = 'Shape text'
      Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
      Silhuette.PictureShape.DisplayPicture = True
      Background.StartColor = clAqua
      Background.EndColor = clTeal
      Background.FillType = GradUpDown
      object BitBtnCancelar: TBitBtn
        Left = 64
        Top = 14
        Width = 85
        Height = 34
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtnCancelarClick
        Kind = bkCancel
      end
      object BitBtnOK: TBitBtn
        Left = 176
        Top = 14
        Width = 85
        Height = 34
        Caption = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnOKClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object c_parametro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pr'
        ParamType = ptInput
      end>
    ProviderName = 'p_parametro'
    Left = 34
    Top = 58
    object c_parametroPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 60
    end
    object c_parametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object c_parametroCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
    object c_parametroPARAMETRO1: TStringField
      FieldName = 'PARAMETRO1'
      Size = 40
    end
    object c_parametroPARAMETRO2: TStringField
      FieldName = 'PARAMETRO2'
      Size = 40
    end
    object c_parametroPARAMETRO3: TStringField
      FieldName = 'PARAMETRO3'
      Size = 40
    end
    object c_parametroPARAMETRO4: TStringField
      FieldName = 'PARAMETRO4'
      Size = 40
    end
    object c_parametroPARAMETRO5: TStringField
      FieldName = 'PARAMETRO5'
      Size = 40
    end
    object c_parametroPARAMETRO6: TStringField
      FieldName = 'PARAMETRO6'
      Size = 40
    end
    object c_parametroPARAMETRO7: TStringField
      FieldName = 'PARAMETRO7'
      Size = 40
    end
    object c_parametroPARAMETRO8: TStringField
      FieldName = 'PARAMETRO8'
      Size = 40
    end
    object c_parametroPARAMETRO9: TStringField
      FieldName = 'PARAMETRO9'
      Size = 40
    end
  end
  object p_parametro: TDataSetProvider
    DataSet = s_parametro
    Left = 34
    Top = 34
  end
  object d_parametro: TDataSource
    DataSet = c_parametro
    Left = 34
    Top = 90
  end
  object s_parametro: TSQLDataSet
    CommandText = 'select * from PARAMETROS '#13#10'where PARAMETRO = :pr'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pr'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLObitos
    Left = 34
    Top = 10
  end
end
