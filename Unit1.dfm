object Form1: TForm1
  Left = 191
  Top = 120
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Algas kalkulators'
  ClientHeight = 400
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 231
    Height = 16
    Caption = 'Darba alga pirms nodok'#316'u ietur'#275#353'anas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 209
    Height = 16
    Caption = 'Vai ir iesniegta nodok'#316'u gr'#257'mati'#326'a?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 120
    Width = 158
    Height = 16
    Caption = 'Neapliekamais minimums:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 104
    Top = 152
    Width = 144
    Height = 16
    Caption = 'Cik personas apg'#257'd'#299'b'#257':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 112
    Top = 184
    Width = 135
    Height = 16
    Caption = 'Papildus atvieglojums:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object alga_bruto_f: TEdit
    Left = 256
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 0
    Text = '430.00'
  end
  object NG_f: TComboBox
    Left = 256
    Top = 88
    Width = 81
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'ja'
    OnSelect = NG_fSelect
    Items.Strings = (
      'ja'
      'ne')
  end
  object apg_f: TEdit
    Left = 256
    Top = 152
    Width = 81
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object NM_dif_f: TEdit
    Left = 256
    Top = 120
    Width = 81
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Button1: TButton
    Left = 158
    Top = 360
    Width = 75
    Height = 25
    Caption = 'R'#275#311'in'#257't'
    TabOrder = 4
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 10
    Top = 8
    Width = 369
    Height = 41
    Caption = 'Kalkulatora veids'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'uz pap'#299'ra -> uz rok'#257'm'
      'uz rok'#257'm -> uz pap'#299'ra')
    TabOrder = 5
  end
  object atvieglojums_f: TComboBox
    Left = 256
    Top = 184
    Width = 81
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    Items.Strings = (
      'nav'
      '1. grupa'
      '2. grupa'
      '3. grupa'
      'represetais')
  end
  object GroupBox1: TGroupBox
    Left = 55
    Top = 216
    Width = 281
    Height = 129
    Caption = 'Apr'#275#311'ini'
    TabOrder = 7
    object Label7: TLabel
      Left = 80
      Top = 73
      Width = 19
      Height = 16
      Caption = 'IIN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 80
      Top = 49
      Width = 22
      Height = 16
      Caption = 'SN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 64
      Top = 25
      Width = 42
      Height = 16
      Caption = 'DDSN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 72
      Top = 97
      Width = 37
      Height = 16
      Caption = 'Alga:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object alga_f: TPanel
      Left = 112
      Top = 96
      Width = 65
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object SN_f: TPanel
      Left = 112
      Top = 48
      Width = 65
      Height = 17
      TabOrder = 1
    end
    object IIN_f: TPanel
      Left = 112
      Top = 72
      Width = 65
      Height = 17
      TabOrder = 2
    end
    object DDSN_f: TPanel
      Left = 112
      Top = 24
      Width = 65
      Height = 17
      TabOrder = 3
    end
  end
end
