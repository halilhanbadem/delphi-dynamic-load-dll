object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'DLL Module Test App ||| HAL'#304'L HAN BADEM'
  ClientHeight = 213
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 64
    Width = 378
    Height = 24
    Caption = 'Dinamik DLL Load // halil han badem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 164
    Width = 129
    Height = 41
    Caption = 'Mod'#252'lleri Y'#252'kle'
    TabOrder = 0
    OnClick = Button1Click
  end
end
