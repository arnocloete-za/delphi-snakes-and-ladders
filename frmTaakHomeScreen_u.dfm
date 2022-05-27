object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Snakes and ladders -Home screen'
  ClientHeight = 401
  ClientWidth = 734
  Color = clNavy
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 32
    Top = 8
    Width = 181
    Height = 24
    Caption = 'Player Information :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 456
    Top = 15
    Width = 275
    Height = 24
    Caption = 'Choose the amount of players :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtName2: TPanel
    Left = 24
    Top = 48
    Width = 337
    Height = 313
    BevelWidth = 7
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object lblPlayer1: TLabel
      Left = 8
      Top = 24
      Width = 90
      Height = 14
      Caption = 'Player 1 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblPlayer2: TLabel
      Left = 8
      Top = 104
      Width = 90
      Height = 14
      Caption = 'Player 2 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblPlayer3: TLabel
      Left = 8
      Top = 184
      Width = 90
      Height = 14
      Caption = 'Player 3 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblPlayer4: TLabel
      Left = 8
      Top = 256
      Width = 90
      Height = 14
      Caption = 'Player 4 Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblChooseColour: TLabel
      Left = 168
      Top = 22
      Width = 93
      Height = 14
      Caption = 'Choose colours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object edtName1: TEdit
      Left = 8
      Top = 44
      Width = 137
      Height = 21
      Color = clHighlight
      TabOrder = 0
      OnChange = edtName1Change
    end
    object Edit2: TEdit
      Left = 8
      Top = 124
      Width = 137
      Height = 21
      Color = clHighlight
      TabOrder = 1
    end
    object edtName3: TEdit
      Left = 8
      Top = 204
      Width = 137
      Height = 21
      Color = clHighlight
      TabOrder = 2
    end
    object btnChooseColour2: TButton
      Left = 168
      Top = 122
      Width = 153
      Height = 25
      Caption = 'Choose colour for player 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btnChooseColour1: TButton
      Left = 168
      Top = 42
      Width = 153
      Height = 25
      Caption = 'Choose colour for player 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object btnChooseColour3: TButton
      Left = 168
      Top = 202
      Width = 153
      Height = 25
      Caption = 'Choose colour for player 3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object edtName4: TEdit
      Left = 8
      Top = 276
      Width = 137
      Height = 21
      Color = clHighlight
      TabOrder = 6
    end
    object btnChooseColour4: TButton
      Left = 168
      Top = 274
      Width = 153
      Height = 25
      Caption = 'Choose colour for player 4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object Button1: TButton
    Left = 560
    Top = 312
    Width = 105
    Height = 49
    Hint = 'Press this button to start the game'
    Caption = 'Start'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 504
    Top = 45
    Width = 185
    Height = 84
    BevelWidth = 4
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
    object edtAmountPlayers: TEdit
      Left = 24
      Top = 27
      Width = 137
      Height = 21
      Hint = 
        'Type the number of the amount of players you want to play the ga' +
        'me'
      TabOrder = 0
      OnChange = edtAmountPlayersChange
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 367
    Width = 129
    Height = 26
    Caption = '&Close Program'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
end
