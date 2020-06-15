object frmBirinciEklentiFormu: TfrmBirinciEklentiFormu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'BirinciEklentininFormu'
  ClientHeight = 143
  ClientWidth = 482
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
  object Label1: TLabel
    Left = 104
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Birinci Say'#305':'
  end
  object Label2: TLabel
    Left = 256
    Top = 56
    Width = 51
    Height = 13
    Caption = #304'kinci Say'#305':'
  end
  object btnMesajGoster: TButton
    Left = 0
    Top = 0
    Width = 482
    Height = 41
    Align = alTop
    Caption = 'Mesaj G'#246'ster'
    TabOrder = 0
    OnClick = btnMesajGosterClick
    ExplicitWidth = 468
  end
  object edtBirinciSayi: TEdit
    Left = 104
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtIkinciSayi: TEdit
    Left = 256
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnTopla: TButton
    Left = 104
    Top = 97
    Width = 273
    Height = 32
    Caption = 'TOPLA'
    TabOrder = 3
    OnClick = btnToplaClick
  end
end
