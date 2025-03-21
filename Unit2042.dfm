object Form2042: TForm2042
  Left = 0
  Top = 0
  Caption = 'Form2042'
  ClientHeight = 243
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 40
    Top = 64
    Width = 497
    Height = 89
    Lines.Strings = (
      'Memo Line Memo Line Memo Line Memo Line Memo Line'
      'Memo Line Memo Line Memo Line Memo Line Memo Line')
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 40
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object CheckBox1: TCheckBox
    Left = 128
    Top = 20
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 3
  end
  object ListBox1: TListBox
    Left = 167
    Top = 159
    Width = 210
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
end

