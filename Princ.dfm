object FormPrin: TFormPrin
  Left = 0
  Top = 0
  Caption = 'Folha de Pagamento'
  ClientHeight = 510
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 8
    Top = 35
    Width = 593
    Height = 467
    Columns = <>
    GridLines = True
    TabOrder = 0
    ViewStyle = vsList
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 605
    Height = 29
    Caption = 'ToolBar'
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 272
    ExplicitWidth = 150
  end
  object MainMenu: TMainMenu
    Left = 296
    Top = 264
    object Funcionrios1: TMenuItem
      Caption = 'Funcion'#225'rios'
      object Adicionar1: TMenuItem
        Caption = 'Adicionar'
      end
    end
  end
end
