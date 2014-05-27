unit Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Menus,
  Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TFormPrin = class(TForm)
    LvFolha: TListView;
    MainMenu: TMainMenu;
    Funcionrios1: TMenuItem;
    Adicionar1: TMenuItem;
    ToolBar: TToolBar;
    ActionList: TActionList;
    ImageList: TImageList;
    PopupMenu: TPopupMenu;
    Adicionar: TAction;
    procedure AdicionarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrin: TFormPrin;

implementation

{$R *.dfm}

procedure TFormPrin.AdicionarExecute(Sender: TObject);
begin
  // TFormFunc.Create();
end;

end.
