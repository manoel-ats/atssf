object fAlteraSenha: TfAlteraSenha
  Left = 295
  Top = 236
  Width = 263
  Height = 187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 52
    Height = 13
    Caption = 'Login atual'
  end
  object leAtual: TEdit
    Left = 8
    Top = 22
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    OnExit = leAtualExit
    OnKeyPress = FormKeyPress
  end
  object dxButton1: TdxButton
    Left = 144
    Top = 19
    Width = 77
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = '   Gravar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000F3FFFFFBFFFF
      FFFFFFF9FEFEFEFFFBFFFFF2FDFFF9FAFCFEF7F6FFEAFEFEF6FEFEFFFDFAFFFF
      F6FEFEF8FEFDFEFEFDFFFCFBFFFCFCFFF9FCFFFBFFFFF8FEFFFAFEFFFBFFFFFF
      FFFFFDFFFDFDFFFEFCFEFFFFFDFFFFFEFDFFFFF9F6FCF7FDFEFFFCFCFFF2FCFE
      FAFFFCFFFDF7FFFFFAFCFBF9FCFDFEFEFDFFFEFDFFFBFBFEFEFEFFFBFEFEFAFF
      FFFBFDFFFCFEFFFFFEFFFFFEF8FDFFFCF8FDFFFFFCFFFDFCFFFCFFFFF9FEFDFF
      FFFFFEF9F9FFFFFFFFFFF7FFFFF8F9FDFEF9FEFFFCFEFFFEFBFEFFFFFFFFFFFF
      FFFFFEFEFDFDFDFFFFFBFDFDFEFFFFFEFCFFFFFDFDFCFFFEFAFFFDFFFDFDFDFE
      FFF7FFFFFFFFFFFFFEFEFFFDFBFFFFFFFFFFFFFFFFFFFCFFFFFCFEFFFFFEFFFF
      FFFFFFFCF8FFFFFDFFFFFAFFFFFAFFFEFCFFFFFFFFFFFFFFFCFFFBFEFFF8FEFE
      F9FFFAFFFDF7FFFFFEF7FBFC988F908982818B87818D80788E817E8780818783
      8489827E94867E9684779A8B7F857A72FFFEFBFFFFFEFDFDFBFFFFFEFFFEFEFF
      FCFFF6FDFEF2FCFAF7FFF8FFFEF4FFFFFEEEECEC8C7D7FCCC0BAB6AC9DBEA393
      C0A89BB7A69FB3A59BB5A191BDA28BBA9D85C1AC9842372CF5F4F1FFFFFFFBFC
      FCFFFFFEFFFBFBFFFCFEFFFDFEFCFFFEF2FFFDFFFFF9FFFFFFEDE5EAADA39FFF
      FFF2FFF4D5FFEED6EAD4C3D0BFAEEBD3BBFFE6C4FFE0B7FFDBB1FFDFC3615246
      F1F0F1FDFFFFFDFFFFFFFDFDFFFFFEFFFFFDFFFEFCFEFDFFF6FCFFFFFFFBFFFF
      FFEBE5EAB3A3A0FFFFECF5F1D3BDCED06C81905C6A77BAAA94F6D8B1FFE0B1FF
      DAACFFE4C5614D42F1EFF3FDFFFFFCFEFFFFFDFDFFFFFDFFFFFEFFFEFBFFFAFF
      FDF7FFFFFFFCFFFFFFE7E6EAB39F9EFFFFFDD1E6D85092B42A70A71E4F828787
      80E1CBABFFE3B5FFDCAEFFE8C6665346F1EEF3FEFFFFFEFDFFFFFDFCFFFFFCFF
      FFFEFFFDFFFFFBFFFFFAFFFEFFFEFEFFFFE4E8E6C1A8B3DCEAFA5395B23D9AD8
      4BA6F8438DDB46667F9EA19BEAD8BEFFE5BEFFE6CA6C544AF4EEF1FFFFFFFFFF
      FFFFFFF9FDFFFEFAFFFFFFFCFFFEFEFCF9FEF7F8FFFFFEFFFFEAE8E5AFA2B78C
      B6DE3995C96AA3D98FC6FB7AB6ED3A6D97637D8CC1BCB3FFE9CDFFE9D16F584C
      F6EEF0FFFFFFFFFFFDFFFFFAFDFFFEF7FFFFFFFDFEFCFFF6F1FFEFF7FFFFFFFF
      FFEDE7E3A8A6BC89BEE956ABE3BEC9E8DEE9FAAFD3E94D8BC13A668B929DA1FB
      E4CEFFEDD9755D54F7EDEFFFFFFFFFFFFAFEFFFBFAFFFFF5FFFFFFFDFFFDFFFE
      FAFEFAFFFEFFFFFFFFE9E7E2C0B6B4FFFFFFEBF6F8FFFDF9FFF7F1F1FAFD6CAB
      E63978AD51728ADDCDB6FFEED9735956F9ECF5FFFFFDFFFFF5F3FFFCF6FFFDFC
      FFF8FEFEFFFCFFFFFDFDFEFFFDFFFFFFFFE7E7E2C1B8B3FFFFFFFFF9F1FFF9EE
      FEF5EAF5F6F5A5D4FC4F8FC82C64909D9E93FAE3D0795D54F6EBF5FFFFFFFEFF
      FAF6FEFFFDFEFEFFFCFAFDFFFFFAFFFFFBFDFDFFFDFFFFFFFFE6E7E2BFB6B3FF
      FFFFFDFCF5FEF6EEFAF3E8F6F5F2C9E1F877B3E62976AF5B737AD4C9B97D5F4F
      F6EAF4FEFEFFFAFFFFFBFCFFFFFBFFFFF5FFFDFFFFFAFFFFFBFDFDFFFDFFFFFF
      FFE4E6E2C3BDBAFFFFFFFFFFF9FFFAF3FDF7EFFBF6ECF7FCF7ADDDFA4FA0D853
      7F91ADB2AC765D4FF8EDF0FFFFFFFAFFFAF8FFFEFEFBFFFFF5FFFEFEFFFBFFFF
      FBFDFDFFFDFFFFFFFFE4E5E4CAC4C1FFFFFFFFFFFBFFFDF6FEFBF3FBF7EEFCF9
      F3D9F0FCA1CCE97F8B8BAC998D745144FFEFF3FFFFFFFCFFFBF6FFFDFDFEFFFF
      FAFFFFFEFFFDFFFFFDFDFDFFFEFFFFFFFFE5E4E3CCC4C1FFFFFFFFFFFBFFFFF9
      FFFFF7FEFBF6FEF9FBFFFFFF9C9A98B2967C976D56956A61FFEBF1FFFFFFFDFF
      FDF4FFFBFCFFFBFFFEF8FFFAFCFEFEFDFFFFFFFFFCFDFFFFFFE4E1E0D8CCCAFF
      FFFFFFFFFEFFFFFDFFFDF9FFFFFDFCFFFFFFFFFFB39B80FDD2ACD6B59BEAD7D0
      FFFFFFFAFDFCF9FFFBF1FFFFF6FFF8FEFFF1FFFDFEFFFDFDFFFFFFFFFBFDFFFF
      FFECE8E7D8CCCBE8E2E0DFDEDBE4DCD9E3D8D5DDD7D3E0D9D8EFE4DBBFA290DB
      B9A3E9D4C7FEFAF8FCFFFFFDFFFCFDFFFBFAFEFFFCFEFCFCFEF9FFFDFFFFFEFE
      FFFFFFFFFDFEFFFFFFF9F6F5E7D8D9D8CFCDD1CCC9DBCFCCD7CECBD8D1CCDDCF
      CAE4D0CAE4CCC7EFDFDBFFFBF9FBFFFFFBFFFFFEFFFDFFFFFDFFFBFFFFFCFFFE
      FCFFFFFEFEFDFFFFFDFFFFFFFDFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFBFEFBF6FEF7F2FFFFF1FFFFF3FC
      FFFEFDFFFFFDFFFFFDFFFDFDFDFBFFFFF9FEFEFFFEFFFDFEFDFDFFFEFFFDFCFE
      FEFDFDFEFCFEFCF9FFFFFCFDFEFAFDFDFCFBFDFEFCFEFFFAFEFEFCFCFCFFFDFB
      FBFFFDF8FFFEF6FEFFFEFEFFFFFEFFFFFEFFFAFEFDFAFFFFF7FDFDFFFFFFFBFF
      FDFBFFFEFFFDFCFDFEFDFAFFFDFFFFFCFFFFFBFDFEFAFEFDFCFFFFFEFEFFFFF9
      F8FEFFFDFFFFFDFDFFFEFAFFFFFBFFFFFCFCFFFEFEFFFFFFFDFF}
    TabOrder = 3
  end
  object dxButton2: TdxButton
    Left = 144
    Top = 57
    Width = 77
    Height = 26
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton2Click
    Caption = 'Cancelar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFBFFFFFDFF
      FBFCFFF7FFFFF8FFFEFEFFFCFFFFF5FFFEFBFFFFFFFFFFFBFEFFFCFBFEFEFDFB
      FBFFFFFBFFFFFAFAFFFFF5FDFFF5FAFFF9FCFCFFFFFAFFFDF9FFFEFFFEFBFEFF
      FDFEFDFEFCFEFCFCFEFDFEFDFCFFFCFEFFF9FEFAFFFFFBFDFFFAF3F0F4D0CEE5
      B3B7D2A5ABC9AAA9BDB9BCC0C7CCC5E6ECEAF5F7FBFFFEFFFEFEFDFDFBF8FFFF
      FEFAFBFEFAFCFBF8FDF8F5FFF8FCFDF9FFFCFEFFF8FFFFFDFFFDFFFFE1E8F7BD
      C3D99497BC6469AE4C55A447519F4E5599656D99656F857D808EB5B1C1E3DBE8
      FFFFFFFFFFFCFFFFFEFBFBFDF8FCFBF9FFF7F1FFF3FEFEFDFFFBFFFFFFFEF1FB
      FCC0D0E9666BC72A2EB5040DAE0E24C4182ACB1322C60819C80213B509149F37
      3C9D4444846B678BBAB3C0F9F1F9FFF7FDFFFDFFFFFDFDFFFEFBF2FFF9FDFCFF
      FFFBFFF6F9FEA9BBE23F5AB41627BC202CE12333F61734F21332ED1935F01931
      FC1832F3172FDB1823B92426A43331916367909DA3ACF3F5EFFFFFFDFDFCFDFC
      FAFDF5FFFFFEFDFFFFFFFFB8BDE8344CB01134D11533F21830F8182CF4102FED
      0E32EB0C30E8102BF31232F01138E81D35EC222CE11115B42837875B6E87A7B9
      ACFFFFFDFFFCFEFAF7FFFFFDFBFCFFFFDEE6FF2F3ED01431E60C30F2162DF617
      27EF1E2DEB2F45DA3D50D44350D6293BE50D2FE10B39ED0230ED1034F41B37EE
      091FAB25358A5B6183DCD4D4FFFEFFFFF7FFFEFFFCEAEFFF7B83E31323E3102C
      FD0B2FF51933D75364DC96A1EAC9D1FFD7DFFFD5DDFFA8B8FC6A7FED1D39E90F
      31F80F30F61030ED1732E31223A6353E86A2A2A5F3F4EEFEFFFFFDFFFFB4BAF5
      353CDA1428FA112BFC0623DC859CF5E0F2FDFFFFFBFFFFFCFFFFFEFAFFFFFFFF
      FFA2ADF32E36EB1423F3182EF71734F40F2AF5172CD323339965717BD4E0D7F7
      FFFEEDEEFF626EE10F2AE61031F4152BD47E86F6FBFFFFF9FCFFFFFDF8FFFCFF
      FFFCFFFBFEFF7F87E52834D2212EEF1E29F4212FF41629EE142EFF1A32F00815
      A0676697B4B5C0FAFFF8D5D5F73243D50A2BEF1233EE2E3FC8CDCFF1FFFEFFFC
      FCFAFFFFF7FFFCFFF9FAFF949AE30F23C51A35F10E2CEF1F33E82E41E82339E6
      0E2FF9152FF41C28CC524F9B9D9EB7F9FEF7AFB5F3162DCB1033F9142DE6505F
      CBE7EDFAFFFFFFFFFFF9FDFFFAF8FFFF8E9CE71F2FC81231F6092BF60B2DE72C
      44CE91A6FF3D55D6092DEC0F2FF71C2EE22726849499B8F5FEF58297F7172FDC
      1931FA1421DA6478D7E7FFFFFCFFFFFBFFFCF9FFFF7187DE0924C60F2EF4122C
      FB1A27EA4146D6EEF8FFF2FCFF7985DE0D2DE40E2DFA1E34EE1A24809097B4F8
      FEF3637DF61B32DF1A2BF61B25E4525EC9EAF5FEFFFEFEF8FAFF939FE41022C3
      1533F0092DF4162BE24B58DBCDD7FEFFFFFFFCFFFF7F8BDE0D2BE2112DFC2031
      EE22277FA2A3C0FDFDFA7B94F51428D42030FE1120E7353CBEE6E2F6FFFDFF9A
      9DE52533C21B2DF0162FF70F2EE93B4CD0C8DAFDF0FFFEFDFFF9F9FFFF7E8EE4
      0B2BE01429FB2A32F2434493BBB5D4FFFDFF9CACF61E34D30E2CF4122FFC000F
      A88798DF8C90EC1D2BCB122EE71936FB1626E53C42D3ECFBFFF9FFFEFFFFFFFF
      FFFDDDE2FF424ECF1030E61B2EF92424DE7576B5E3E1F1FFFEFFCDD9F3253DCA
      0B2CF80B32F9082BD5142FC6222FDE1C2BEE162FFC0D2BDC4A5BDAD7DAFEFAFF
      FEFBFCFCFDF9FEF3FAFE939CF72734E9102EF01D2EEF292BCB9EA4C9F2F9FAFA
      FEFCE6F2FF5C6DE50C28EF0331F00933EE112EED1D2CF71A29FE1124F13853DE
      CBDCFEFFFFFFFFFFFFFFFEFFFFFFFFD4E1F93444D11326F8162FFD1C2BD84C52
      C8D2DEE8F5FFFAF3FEFBFFFFFFB2B2EF292DD81235F30F2FF6172CF7202CFA1B
      2AF5162CDEB8D2F4E1F3FFEFF9FFDBEDF9CDD8EE8A90F10E1EBF1331E40E34F3
      182AEC4353C9B0BEDEFBFFFEFAFFFDF4FFFFFFF9FFF7F2FF7B80E60E24DA132D
      F5132DF5182FF1152EEE041CCF132C9C4554B86066CE4252BC2030B51B27CB15
      30EC1234F70C2FE9293DCC8F9AE3E8F1F8FFFFFFFDFFFBFAFFFAFFF6FFFDFCFF
      E8F4FF3F4EE11126DB1534F30B31E91434F5152CEF1C33D6212ED51C21D61727
      DD1D2EEE2032FB0D2CF30E2EEC0A25CB7C8AE2DBE0FEFFFDFFFFFAFFFFFFFCFF
      FFF6FFFBFEF9FDFDF2FFFFE1F9FD677CDA1C32D71533EE112BF2152CF70F2CF2
      182DF61F2CFA1A2EFA1E2FF61623E8232AEB3A49D3889CE3F6FCFFFEFCFFFFFC
      FFFEFEFFFEF9FAFFFCFAFCFDFBF9FCFBF9FFFFF4FBFCF0F5FFA8AEF14758D51F
      35CA1831DD0E29EC1830EF172DE4142CE1172CD03443CF7D88E7B7C0F6F3F5FF
      FFFDFFFFFEFFF8FEFEF4FEFDFCFBFDFFF9FEF1FFF6FAFEFDFFFCFFFFFAFFFFFA
      FFFFFFFFE3E9FDB3C8F1718CF55A6DFB3851FA4161F86481F98CA4F3BDD2F4F0
      FFFFFCFFFFFFFBFFFFFAFEFEFDFBF3FFFAEAFFF5F8FDFDFFF6FF}
    TabOrder = 4
  end
  object leNova: TLabeledEdit
    Left = 8
    Top = 67
    Width = 121
    Height = 21
    EditLabel.Width = 60
    EditLabel.Height = 13
    EditLabel.Caption = 'Nova Senha'
    LabelPosition = lpAbove
    LabelSpacing = 3
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object leConfirmacao: TLabeledEdit
    Left = 8
    Top = 112
    Width = 121
    Height = 21
    EditLabel.Width = 59
    EditLabel.Height = 13
    EditLabel.Caption = 'Confirma'#231#227'o'
    LabelPosition = lpAbove
    LabelSpacing = 3
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
end
