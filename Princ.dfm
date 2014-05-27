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
  DesignSize = (
    605
    510)
  PixelsPerInch = 96
  TextHeight = 13
  object LvFolha: TListView
    Left = 8
    Top = 35
    Width = 589
    Height = 467
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = '#'
      end
      item
        Caption = 'Nome'
      end
      item
        Caption = 'Sal'#225'rio'
      end>
    GridLines = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 605
    Height = 29
    ButtonWidth = 67
    Caption = 'ToolBar'
    Images = ImageList
    ShowCaptions = True
    TabOrder = 1
    Transparent = True
  end
  object MainMenu: TMainMenu
    Images = ImageList
    Left = 512
    Top = 416
    object Funcionrios1: TMenuItem
      Caption = 'Funcion'#225'rios'
      object Adicionar1: TMenuItem
        Caption = 'Adicionar'
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 448
    Top = 416
    object Adicionar: TAction
      Caption = 'AcAddFunc'
      OnExecute = AdicionarExecute
    end
  end
  object ImageList: TImageList
    Left = 384
    Top = 416
  end
  object PopupMenu: TPopupMenu
    Images = ImageList
    Left = 312
    Top = 416
  end
end
