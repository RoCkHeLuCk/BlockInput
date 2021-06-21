object FrmLog: TFrmLog
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'BlockInput Log'
  ClientHeight = 218
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 108
    Width = 366
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
    ExplicitTop = 206
    ExplicitWidth = 432
  end
  object GrpLogTexto: TGroupBox
    Left = 0
    Top = 0
    Width = 366
    Height = 108
    Align = alClient
    Caption = 'Log de Texto'
    TabOrder = 0
    ExplicitWidth = 370
    ExplicitHeight = 130
    object MmoTexto: TMemo
      Left = 2
      Top = 15
      Width = 362
      Height = 91
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitWidth = 366
      ExplicitHeight = 113
    end
  end
  object GrpLogFoto: TGroupBox
    Left = 0
    Top = 113
    Width = 366
    Height = 105
    Align = alBottom
    Caption = 'Log de Fotos'
    TabOrder = 1
    ExplicitTop = 135
    ExplicitWidth = 370
    DesignSize = (
      366
      105)
    object LtbFoto: TListBox
      Left = 2
      Top = 15
      Width = 362
      Height = 88
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = LtbFotoClick
      ExplicitWidth = 366
    end
    object Button1: TButton
      Left = 284
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Abrir Pasta'
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = 288
    end
  end
end
