object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Snakes and ladders-Start Screen'
  ClientHeight = 424
  ClientWidth = 651
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 389
    Top = 20
    Width = 254
    Height = 19
    Caption = 'Choose the amount of players :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 21
    Width = 151
    Height = 18
    Caption = 'Player Information :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 391
    Width = 131
    Height = 25
    Caption = '&Close Program'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = [fsBold]
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 18
    Top = 45
    Width = 337
    Height = 340
    BevelInner = bvRaised
    BevelKind = bkTile
    BevelWidth = 4
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    object lblPlayer1Name: TLabel
      Left = 8
      Top = 45
      Width = 72
      Height = 13
      Caption = 'Player 1 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblPlayer2Name: TLabel
      Left = 8
      Top = 111
      Width = 72
      Height = 13
      Caption = 'Player 2 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblPlayer3Name: TLabel
      Left = 8
      Top = 180
      Width = 72
      Height = 13
      Caption = 'Player 3 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblPlayer4Name: TLabel
      Left = 8
      Top = 252
      Width = 72
      Height = 13
      Caption = 'Player 4 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object shpBlue: TShape
      Left = 192
      Top = 52
      Width = 65
      Height = 33
      Brush.Color = 13632054
    end
    object shpRed: TShape
      Left = 192
      Top = 118
      Width = 65
      Height = 33
      Brush.Color = 198
    end
    object shpPurple: TShape
      Left = 192
      Top = 187
      Width = 65
      Height = 33
      Brush.Color = clPurple
    end
    object shpGreen: TShape
      Left = 192
      Top = 252
      Width = 65
      Height = 33
      Brush.Color = clGreen
    end
    object lblColour: TLabel
      Left = 178
      Top = 28
      Width = 89
      Height = 18
      Caption = 'Players colour'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentColor = False
      ParentFont = False
    end
    object edtName1: TEdit
      Left = 8
      Top = 64
      Width = 121
      Height = 21
      Color = clHighlight
      TabOrder = 0
      OnChange = edtName1Change
    end
    object edtName2: TEdit
      Left = 8
      Top = 130
      Width = 121
      Height = 21
      Color = clHighlight
      TabOrder = 1
      OnChange = edtName2Change
    end
    object edtName3: TEdit
      Left = 8
      Top = 199
      Width = 121
      Height = 21
      Color = clHighlight
      TabOrder = 2
      OnChange = edtName3Change
    end
    object edtName4: TEdit
      Left = 8
      Top = 271
      Width = 121
      Height = 21
      Color = clHighlight
      TabOrder = 3
      OnChange = edtName4Change
    end
  end
  object btnstart: TButton
    Left = 473
    Top = 282
    Width = 105
    Height = 57
    Caption = 'START'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnstartClick
  end
  object Panel1: TPanel
    Left = 433
    Top = 59
    Width = 168
    Height = 59
    BevelWidth = 3
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
    object AmountPlayers: TEdit
      Left = 24
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = AmountPlayersChange
    end
  end
end
