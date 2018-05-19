object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Cadastro Client / Server'
  ClientHeight = 258
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 64
    Top = 40
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Employee1: TMenuItem
        Caption = 'Employee'
        OnClick = Employee1Click
      end
    end
  end
end
