object FrmBlockInput: TFrmBlockInput
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'BlockInput V1.2'
  ClientHeight = 298
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpWebCam: TGroupBox
    Left = 265
    Top = 0
    Width = 346
    Height = 298
    Align = alClient
    Caption = 'WebCam'
    TabOrder = 0
    object GrpPreview: TGroupBox
      Left = 2
      Top = 73
      Width = 342
      Height = 223
      Align = alClient
      Caption = 'Preview'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      object ImgWebCam: TImage
        Left = 4
        Top = 12
        Width = 1920
        Height = 1080
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 342
      Height = 58
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object LblDispositivo: TLabel
        Left = 11
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Dispositivo:'
      end
      object SpbSettings: TSpeedButton
        Left = 223
        Top = 4
        Width = 23
        Height = 22
        Hint = 'Open video properties dialog'
        Flat = True
        Glyph.Data = {
          36090000424D3609000000000000360000002800000030000000100000000100
          1800000000000009000000000000000000000000000000000000FE00FEFE00FE
          FE00FEFE00FEFE00FEFE00FEFE00FE1EA1CD2CAAD31585B0FE00FEFE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE95
          95959A9A9A838383FE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FEFE00FEFE00FE108ABD1994C60B6997FE00FEFE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE27A5CF23A4CE1585B01E98C22C
          ABD32CABD3178AB51587B12CABD329A7D1FE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FE9898989797978383838D8D8D9A9A9AA0A0A0898989878787A2A2A2A0A0
          A0FE00FEFE00FEFE00FEFE00FEFE00FEFE00FE148DBE148DBE0B6B9A0D82B41B
          96C81F9AC90B71A00A6D9C259DC91791C3FE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FE27A5CF2CABD32CABD31DA0CC20D0F84AD7F727A5CF5EC1DC64C1DA27A5
          CFFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE9A9A9AA3A3A39595958F8F8FA2
          A2A2B5B5B59C9C9CB3B3B3B7B7B79E9E9EFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FE158EC0259DC91B96C8108ABD1BBBED32CBF61791C337ABD337ABD3158E
          C0FE00FEFE00FEFE00FEFE00FE178CB61E98C24FC2E17FDFF54FC2E13ACBEF1D
          D1FA3CD5F85DD9F674C1D6AEE2ED91E3F5178AB5FE00FEFE00FEFE00FE8C8C8C
          959595AAAAAACBCBCBB0B0B0ACACACA8A8A8B3B3B3BCBCBCBDBDBDD9D9D9C9C9
          C98A8A8AFE00FEFE00FEFE00FE0C71A10E7EAF2DA2CA68D2EC37ABD323B6E611
          C7FC24C8F845CEF437ABD39ED6E37AD3E90C71A1FE00FEFE00FEFE00FE5EC1DC
          2CABD34FC2E196E4F58BE2F55DD9F627D0F71DD1FA56D9F776DEF57FDFF53ACB
          EF2CABD327A5CFFE00FEFE00FEB3B3B3A7A7A7B0B0B0D7D7D7D3D3D3BFBFBFAC
          ACACA7A7A7BCBCBCCBCBCBCECECEAEAEAEA2A2A29A9A9AFE00FEFE00FE33A7CE
          2DA2CA37ABD37AD3E972D3EA3DCDF516C8FB11C7FC3DCDF55BD5F360D4F120B8
          E91F9AC9158EC0FE00FEFE00FE1B91BC23A4CE4FC2E17FDFF591E3F570DCF55E
          C1DC4FC2E12DCFF41DD1FA1DD1FA1DD1FA20D0F82CABD3FE00FEFE00FE8B8B8B
          9A9A9AB3B3B3CBCBCBD5D5D5BFBFBFACACACA7A6A7A5A5A59F9F9F9E9E9E9F9F
          9F9A9A9A969696FE00FEFE00FE0C7BAD1791C325B3E364D3EF7AD3E954D1F333
          A7CE2DA2CA23B6E611C6FB11C6FB11C6FB18BFF21F9AC9FE00FEFE00FE1A8FBA
          2CABD345C7E96BDBF689BECD9796969796969796969796964FC2E11DD1FA1DD1
          FA1DD1FA1D9EC9FE00FEFE00FE8C8C8C9F9F9FACACACC3C3C3C5C5C5AEAEAEAE
          AEAEAEAEAEAEAEAEA8A8A89D9D9DA3A3A3A7A6A78D8D8DFE00FEFE00FE0A74A5
          1B96C828B0DF51D0F37AD3E9807F7F807F7F807F7F807F7F2DA2CA11C6FB11C6
          FB11C6FB0F88BAFE00FEFE00FE1B91BC2CABD32CABD35DD9F6979696E2DFE3B0
          B4B7ACA3A2BEB2B297969656D9F79DE3F2AEE2ED1E98C2FE00FEFE00FE8E8E8E
          9F9F9FA5A5A5BBBBBBAEAEAEE6E6E6C5C5C5BBBBBBD7D7D7AEAEAEBDBDBDD9D9
          D9E1E1E19A9A9AFE00FEFE00FE0B77A91B96C81F9AC93DCDF5807F7FDED9D89E
          8999938C8CD0A0B5807F7F3DCDF580D3E69ED6E30E7EAFFE00FEFE00FE178CB6
          1EA1CD2CABD345C7E9979696E2DFE3B0B4B7ACA3A2BEB2B29796967FDFF5AEE2
          ED89BECD27A5CFFE00FEFE00FE8989899595959E9E9EB3B3B3AEAEAEE6E6E6C3
          C3C3BBBBBBD5D5D5AEAEAECBCBCBDDDDDDC6C6C6A2A2A2FE00FEFE00FE0A73A4
          0F88BA1B96C823B6E6807F7FDED9D89A8E96938C8CD0A0B5807F7F60D4F193D5
          E572D3EA158EC0FE00FEFE00FEFE00FE1585B021A3CE3ACBEF979696E2DFE3B0
          B4B7ACA3A2BEB2B297969667DAF664C1DA1585B0FE00FEFE00FEFE00FEFE00FE
          818181979797A9A9A9AEAEAEE6E6E6C3C3C3BBBBBBD5D5D5AEAEAEC3C3C3BBBB
          BB7D7D7DFE00FEFE00FEFE00FEFE00FE0D6894118BBE25B3E3807F7FDED9D89A
          8E96938C8CD0A0B5807F7F4BCEF34BCEF30F6691FE00FEFE00FEFE00FEFE00FE
          FE00FE1589B41A8FBA979696E2DFE3B0B4B7ACA3A2BEB2B29796961E98C21B91
          BCFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE878787888888AEAEAEE6E6E6C3
          C3C3BBBBBBD7D7D7AEAEAE9090908F8F8FFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FE0B70A00B77A9807F7FDED9D89A8E96938C8CCCA8B3807F7F0D82B40B77
          A9FE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE979696E2DFE3BA
          AFAEAAA1A1BEB2B2979696FE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FEAEAEAEE6E6E6C0C0C0BABABAD5D5D5AEAEAEFE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE807F7FDDD9D89A
          8E96918A8ACCA8B3807F7FFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FE979696B0B4B7A6A0A0989696A8A0A0979696FE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEAEAEAEC5C5C5B5
          B5B5B0B0B0B9B9B9AEAEAEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FE807F7F9E89998F8989817F7F8F8989807F7FFE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE979696E0E0E3BE
          B2B2A6A0A0B0A5A4979696FE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FEAEAEAEE6E6E6D3D3D3B9B9B9BFBFBFAEAEAEFE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE807F7FDBD7D6B7
          B7B7938C8C988F92807F7FFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FE979696E2DFE3E2DFE3B9B3B4A39E9E979696FE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEAEAEAEE6E6E6E6
          E6E6CBCBCBB5B5B5AEAEAEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FE807F7FDDD9D8DED9D8B6B6B68B8686807F7FFE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE97969697
          9696979696979696FE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE
          FE00FEFE00FEFE00FEFE00FEAEAEAEAEAEAEAEAEAEAEAEAEFE00FEFE00FEFE00
          FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE807F7F80
          7F7F807F7F807F7FFE00FEFE00FEFE00FEFE00FEFE00FEFE00FE}
        NumGlyphs = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = SpbSettingsClick
      end
      object SpbSize: TSpeedButton
        Left = 252
        Top = 4
        Width = 23
        Height = 22
        Hint = 'Open video stream properties dialog'
        Flat = True
        Glyph.Data = {
          36090000424D3609000000000000360000002800000030000000100000000100
          1800000000000009000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA05027954B25
          944A24944A24944A24944A24944A24944A24944A24944A24944A24944A24944A
          24964C25A15127FF00FF8C8C8C87878786868686868686868686868686868686
          86868686868686868686868686868686868787878D8D8DFF00FF8936157D3213
          7B31137B31137B31137B31137B31137B31137B31137B31137B31137B31137B31
          137E33138A3715FF00FFAB4E21FEF4E9FEF0E0FEECD7FEE8CFFEE4C7FEE1C1FE
          DEBBFEDDB8FEDDB8FEDDB8FEDDB8FEDDB8FEDDB8914923FF00FF8E8E8EE9E9E9
          E5E5E5E0E0E0DCDCDCD8D8D8D5D5D5D2D2D2D1D1D1D1D1D1D1D1D1D1D1D1D1D1
          D1D1D1D1858585FF00FF963511FEF0E2FEEBD7FEE6CBFEE1C1FEDCB7FED8B0FE
          D4A9FED3A5FED3A5FED3A5FED3A5FED3A5FED3A5783012FF00FFAB4E21FEF8F2
          4571FA4571FA4571FAFEE9D2A23F08A23F08A23F08FEDDB8059ACD059ACD059A
          CDFEDDB88F4823FF00FF8E8E8EEEEEEE9F9F9F9F9F9F9F9F9FDEDEDE81818181
          8181818181D1D1D1919191919191919191D1D1D1848484FF00FF963511FEF6EE
          2D56F82D56F82D56F8FEE2C58B28038B28038B2803FED3A50182BF0182BF0182
          BFFED3A5762F12FF00FFAB4E21FEFCF94571FA4571FA4571FAFEEEDCA23F08A2
          3F08A23F08FEE0BE059ACD059ACD059ACDFEDDB88F4823FF00FF8E8E8EF1F1F1
          9F9F9F9F9F9F9F9F9FE3E3E3818181818181818181D4D4D49191919191919191
          91D1D1D1848484FF00FF963511FEFBF72D56F82D56F82D56F8FEE9D18B28038B
          28038B2803FED7AC0182BF0182BF0182BFFED3A5762F12FF00FFAB4E21FEFEFE
          4571FA4571FA4571FAFEF3E7A23F08A23F08A23F08FEE3C6059ACD059ACD059A
          CDFEDDB88F4823FF00FF8E8E8EF4F4F49F9F9F9F9F9F9F9F9FE8E8E881818181
          8181818181D8D8D8919191919191919191D1D1D1848484FF00FF963511FEFEFE
          2D56F82D56F82D56F8FEEFE08B28038B28038B2803FEDAB60182BF0182BF0182
          BFFED3A5762F12FF00FFAB4E21FEFEFEFEFEFEFEFDFCFEFBF7FEF7F0FEF4E8FE
          F0E1FEECD7FEE8D0FEE4C8FEE1C0FEDEBBFEDDB88F4823FF00FF8E8E8EF4F4F4
          F4F4F4F3F3F3F0F0F0EDEDEDE9E9E9E5E5E5E0E0E0DDDDDDD9D9D9D5D5D5D2D2
          D2D1D1D1848484FF00FF963511FEFEFEFEFEFEFEFCFBFEFAF4FEF4EBFEF0E1FE
          EBD8FEE6CBFEE1C2FEDCB8FED8AFFED4A9FED3A5762F12FF00FFAB4E21FEFEFE
          CC9A99CC9A99CC9A99FEFCF9E27E03E27E03E27E03FEEDDA029A03029A03029A
          03FEDFBD8F4823FF00FF8E8E8EF4F4F4B2B2B2B2B2B2B2B2B2F1F1F198989898
          9898989898E2E2E27B7B7B7B7B7B7B7B7BD3D3D3848484FF00FF963511FEFEFE
          BD8281BD8281BD8281FEFBF7D96401D96401D96401FEE7CF0082010082010082
          01FED5AB762F12FF00FFAB4E21FEFEFECC9A99CC9A99CC9A99FEFEFEE27E03E2
          7E03E27E03FEF2E5029A03029A03029A03FEE2C48F4823FF00FF8E8E8EF4F4F4
          B2B2B2B2B2B2B2B2B2F4F4F4989898989898989898E7E7E77B7B7B7B7B7B7B7B
          7BD7D7D7848484FF00FF963511FEFEFEBD8281BD8281BD8281FEFEFED96401D9
          6401D96401FEEEDD008201008201008201FED9B4762F12FF00FFAB4E21FEFEFE
          CC9A99CC9A99CC9A99FEFEFEE27E03E27E03E27E03FEF7EE029A03029A03029A
          03FEE7CD8E4722FF00FF8E8E8EF4F4F4B2B2B2B2B2B2B2B2B2F4F4F498989898
          9898989898ECECEC7B7B7B7B7B7B7B7B7BDBDBDB838383FF00FF963511FEFEFE
          BD8281BD8281BD8281FEFEFED96401D96401D96401FEF4E90082010082010082
          01FEE0BF752E11FF00FFAB4E21E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4
          E4E4E4E4E4E4E4E4E4E2E1E4E0DCE4DED6E4DACF944D29FF00FF8E8E8EDADADA
          DADADADADADADADADADADADADADADADADADADADADADADADAD8D8D8D6D6D6D3D3
          D3CFCFCF888888FF00FF963511DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
          DCDCDCDCDCDCDCDCDCD9D8DCD7D1DCD4CADCCFC17B3416FF00FFAE5C27AE6122
          AD5F20AD5F20AD5F20AD5F20AD5F20AD5F20AD5F21AF6225AE6122AF6225AC60
          24AA61288F4823FF00FF9292929090908E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
          8E8E8F8F8F929292909090929292909090919191848484FF00FF994115994611
          9844109844109844109844109844109844109844119A47139946119A47139745
          13954616762F12FF00FFAE5C27EE9733EE9733EE9733EE9733EE9733EE9733EE
          9733EE9733EE9733EE9733EE9733EE9733EE9733B95D19FF00FF929292B0B0B0
          B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0
          B0B0B0B0919191FF00FF994115E97F1EE97F1EE97F1EE97F1EE97F1EE97F1EE9
          7F1EE97F1EE97F1EE97F1EE97F1EE97F1EE97F1EA6420CFF00FFFF00FFCB731A
          CC731ACC731ACC731ACC731ACC731ACC731ACC741ACD751BCC7318CD751BCA72
          1AC8721EFF00FFFF00FFFF00FF98989899999999999999999999999999999999
          99999999999A9A9A9898989A9A9A989898999999FF00FFFF00FFFF00FFBC580C
          BD580CBD580CBD580CBD580CBD580CBD580CBD590CBF5A0DBD580BBF5A0DBB57
          0CB8570FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        NumGlyphs = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = SpbSizeClick
      end
      object LblSalvar: TLabel
        Left = 11
        Top = 35
        Width = 51
        Height = 13
        Caption = 'Salvar em:'
      end
      object CmbDispositivo: TComboBox
        Left = 72
        Top = 5
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnClick = FormShow
      end
      object EdtSalvar: TEdit
        Left = 72
        Top = 32
        Width = 217
        Height = 21
        TabOrder = 1
        Text = 'c:\'
      end
      object BtnSalvar: TButton
        Left = 295
        Top = 32
        Width = 36
        Height = 21
        Caption = '...'
        TabOrder = 2
        OnClick = BtnSalvarClick
      end
    end
  end
  object PnlBlockInput: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 298
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object GrpExecoes: TGroupBox
      Left = 0
      Top = 0
      Width = 265
      Height = 224
      Align = alClient
      Caption = 'Lista de exce'#231#245'es'
      TabOrder = 0
      object MmoExecoes: TMemo
        Left = 2
        Top = 61
        Width = 261
        Height = 161
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = MmoExecoesKeyDown
        OnMouseDown = MmoExecoesMouseDown
      end
      object PnlExecoes: TPanel
        Left = 2
        Top = 15
        Width = 261
        Height = 46
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object RgbPermitir: TRadioButton
          Left = 10
          Top = 4
          Width = 79
          Height = 17
          Caption = 'Permitir'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RgbPermitirClick
        end
        object RgbBloquear: TRadioButton
          Left = 95
          Top = 4
          Width = 78
          Height = 17
          Caption = 'Bloquear'
          TabOrder = 1
          OnClick = RgbPermitirClick
        end
        object BtnLimpar: TButton
          Left = 178
          Top = 3
          Width = 71
          Height = 20
          Caption = 'Limpar'
          TabOrder = 2
          OnClick = BtnLimparClick
        end
        object CkbMouseMove: TCheckBox
          Left = 10
          Top = 23
          Width = 119
          Height = 17
          Caption = 'Movimento Mouse'
          TabOrder = 3
          OnClick = CkbMouseMoveClick
        end
      end
    end
    object GpbSenha: TGroupBox
      Left = 0
      Top = 224
      Width = 265
      Height = 74
      Align = alBottom
      Caption = 'Senha'
      TabOrder = 1
      object LblSenha: TLabel
        Left = 12
        Top = 43
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object BtnRevealAll: TSpeedButton
        Left = 221
        Top = 40
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000001010
          10001E1E1E00FFFFFF0080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333333333333333300003333333333333333333300003333
          3333333333333333000033333333333333333333000033333333010033333333
          0000333333300000033333330000333333300000033333330000333333300000
          0333333300003300033000000330003300003300013300003300023300003330
          0003333330000333000033330001000000003333000033333000000000033333
          0000333333000000023333330000333333330000333333330000333333333333
          3333333300003333333333333333333300003333333333333333333300003333
          33333333333333330000}
        OnMouseDown = BtnRevealAllMouseDown
        OnMouseUp = BtnRevealAllMouseUp
      end
      object LblHp: TLabel
        Left = 12
        Top = 16
        Width = 185
        Height = 13
        Caption = #201' Permitido apenas Letras Maiusculas. '
      end
      object EdtSenha: TMaskEdit
        Left = 61
        Top = 40
        Width = 154
        Height = 21
        CharCase = ecUpperCase
        PasswordChar = '*'
        TabOrder = 0
        Text = 'BLOCKINPUT'
        OnKeyPress = EdtSenhaKeyPress
      end
    end
  end
  object TrIBlockInput: TTrayIcon
    Icons = ImlIcones
    PopupMenu = PpmBlockInput
    Visible = True
    Left = 24
    Top = 68
  end
  object PpmBlockInput: TPopupMenu
    Left = 52
    Top = 68
    object MniConfig: TMenuItem
      Caption = '&Configura'#231#227'o'
      ShortCut = 16451
      OnClick = MniConfigClick
    end
    object MniMostrarLog: TMenuItem
      Caption = '&Mostrar Log'
      ShortCut = 16461
      OnClick = MniMostrarLogClick
    end
    object MniBloquearTudo: TMenuItem
      Caption = '&Bloquear em 5 segundos'
      ShortCut = 16450
      OnClick = MniBloquearTudoClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MniFechar: TMenuItem
      Caption = '&Fechar'
      OnClick = MniFecharClick
    end
  end
  object ImlIcones: TImageList
    Left = 80
    Top = 68
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C1C100BEB3B200ABADAD00C1CB
      CB00A7B0AE00CCCBC900C0B4B200C4B8B600BDBDBD00B9B9B900B7B7B700A1A1
      A10099999900B4B4B400A1A1A1000F0F0F00D6D2C100BEBCB200ABACAD00C1C3
      CB00A7ABB000CBCCC900C0BFB200C4C3B600BDBDBD00B9B9B900B7B7B700A1A1
      A10099999900B4B4B400A1A1A1000F0F0F00C5D6C100B4BEB200ACABAD00C9C1
      CB00ACA7B000C9CCCA00B3C0B200B7C4B600BDBDBD00B9B9B900B7B7B700A1A1
      A10099999900B4B4B400A1A1A1000F0F0F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF800C3C4C100242C2F00CAD5
      DB00AFBEC000313C3B00B7C1B700B5B9B100C2C2C200A6A6A600777777003C3C
      3C0066666600929292001818180004040400F9FFF800C1C4C20025242F00CDCA
      DB00AFB0C00031343C00B7C1BF00B1B9B400C2C2C200A6A6A600777777003C3C
      3C0066666600929292001818180004040400F8FFFE00C1C3C4002F242E00DBCA
      D800BFAFC00039313C00B7B9C100B1B6B900C2C2C200A6A6A600777777003C3C
      3C00666666009292920018181800040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFFFF0026272B00221C28002319
      2B00160F1E0023242C0029343100202B26001A1A1A00353535008A8A8A006666
      66001D1D1D002A2A2A002D2D2D0011111100FCFCFF0029262B00281C25002B19
      26001E0F1A0029232C00292E340020272B001A1A1A00353535008A8A8A006666
      66001D1D1D002A2A2A002D2D2D0011111100FFFCFF002B262800281F1C002B1F
      19001E130F002C2326002F29340024202B001A1A1A00353535008A8A8A006666
      66001D1D1D002A2A2A002D2D2D00111111000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFDFF00FAF9FB002E2E2C00C5C4
      C200EEEDEB002A262800D3CDD400F9F3FA0025252500EBEBEB00F8F8F800DDDD
      DD00ACACAC00434343002929290017171700FEFCFF00FBF9FB002C2E2C00C4C5
      C200EDEEEB002A272600D4CDD000FAF3F60025252500EBEBEB00F8F8F800DDDD
      DD00ACACAC00434343002929290017171700FFFCFD00FBF9F9002C2E2E00C2C5
      C300EBEEEC00292A2600D4D1CD00FAF7F30025252500EBEBEB00F8F8F800DDDD
      DD00ACACAC004343430029292900171717000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAFDF200C4F0CE009BE8A8000160
      0F004699510096CB9B0029372800C4BEC1003B3B3B0000000000EFEFEF00E9E9
      E900E4E4E400848484002A2A2A000C0C0C00EAF9FD00C4F0F0009BE8E5000160
      5A004699920096CBC40028373300C4C0BE003B3B3B0000000000EFEFEF00E9E9
      E900E4E4E400848484002A2A2A000C0C0C00EEEAFD00C5C4F0009B9EE8000107
      6000464C9900969CCB00282C3700C2C4BE003B3B3B0000000000EFEFEF00E9E9
      E900E4E4E400848484002A2A2A000C0C0C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBFFEA001C913D0011C9410005DE
      380006CB3500007F1A00002C090028372A002525250000000000E1E1E100EFEF
      EF00E3E3E300979797002222220003030300DBF8FF001C89910011C1C90005D9
      DE0006C7CB00007F7E00002C2C00283736002525250000000000E1E1E100EFEF
      EF00E3E3E300979797002222220003030300E3DBFF00251C91001B11C9000D05
      DE000D06CB0000007F0000002C00282937002525250000000000E1E1E100EFEF
      EF00E3E3E3009797970022222200030303000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021B53F0007CC36000EE0380005F2
      3A0002E134000ABF330009902900C4FFC90026393000C2CEC900A2A4A400B5B1
      B300DCD8DA008B898A00272929000F15120021B5B40007C8CC000EE0DE0005EF
      F20002DFE1000ABDBF00098D9000C4FFF80026333900C2CACE00A2A3A400B5B2
      B100DCD9D8008B8A8900272829000F1315002121B5000E07CC000F0EE0000B05
      F2000702E1000F0ABF000D099000C4CBFF002C263900C6C2CE00A3A2A400B4B5
      B100DBDCD8008A8B890028272900110F15000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000B424001BA8310024A73B0027C5
      56002ABC550035A1480025973B00026F1D00A4BBB1004D5C550043474500413D
      3F00221C1F00353334007B7F7D00060F0B0000B4B2001BA8A00024A7A30027B8
      C5002AB0BC0035A19D0025979500026B6F00A4B3BB004D575C0043464700413E
      3D00221E1C00353433007B7E7F00060C0F000000B4001B21A8002427A7003527
      C500372ABC003538A1002527970007026F00ACA4BB00524D5C00444347004041
      3D0020221C00343533007C7B7F0009060F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000032E35E00EDFFE000F1FFF100F1FC
      FF00F2FFFF00E6FFE400DCFFD60008842D00E1F6EC00EFFBF600FCFEFE00B4B2
      B300DEDADC00ADABAC00A2A6A4000000000032DDE300E0FFEC00F1FFFC00F1F1
      FF00F2F4FF00E4FFF800D6FFF100087A8400E1F0F600EFF7FB00FCFDFE00B4B3
      B200DEDBDA00ADACAB00A2A5A600000000003A32E300E0F3FF00F1F4FF00FFF1
      FF00FDF2FF00E4EBFF00D6E4FF0013088400E8E1F600F3EFFB00FDFCFE00B3B4
      B200DDDEDA00ACADAB00A3A2A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002DCA5400BFFFC500CEFFDB00C3F8
      D400CBFFDC00CDFFDB00A9FFB6001C81360000000000F4FFFA00EEF0F000B3B1
      B200F3EFF100F7F5F60000000000000000002DC5CA00BFFFF800CEFDFF00C3F3
      F800CBF9FF00CDFCFF00A9FFFA001C7C810000000000F4FBFF00EEEFF000B3B2
      B100F3F0EF00F7F6F5000000000000000000342DCA00BFC6FF00D1CEFF00C9C3
      F800D2CBFF00D1CDFF00A9ADFF00221C810000000000F8F4FF00EFEEF000B2B3
      B100F2F3EF00F6F7F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001BAA3F0010D548000BD43D000ED2
      380014E2470006D3400011B2410000000000000000000000000000000000413F
      4000000000000000000000000000000000001BA5AA0010C7D5000BCDD4000ED2
      D20014DBE20006C5D30011A5B200000000000000000000000000000000004140
      3F0000000000000000000000000000000000211BAA002110D500150BD400100E
      D2001E14E2001706D3002011B200000000000000000000000000000000004041
      3F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025D44E0008DE2E000EFF
      390000ED300000CA2B0025AB460000000000000000003A3A3A0063636300D2D2
      D200000000000000000000000000000000000000000025D0D40008DED7000EFF
      F70000EDEA0000CACA0025A7AB0000000000000000003A3A3A0063636300D2D2
      D20000000000000000000000000000000000000000002C25D400080DDE000E14
      FF000000ED000300CA002C25AB0000000000000000003A3A3A0063636300D2D2
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000117F19000B9B
      1A002BB63C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000117F70000B9B
      8C002BB6A9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111F7F000B19
      9B002B36B6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0040004000400000004000400040000000000000000000000000000000000000
      0001000100010000008300830083000001EF01EF01EF0000818F818F818F0000
      C7FFC7FFC7FF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object TmrBlock: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = TmrBlockTimer
    Left = 108
    Top = 68
  end
end
