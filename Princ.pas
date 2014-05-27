unit Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Menus;

type
  TFormPrin = class(TForm)
    ListView1: TListView;
    MainMenu: TMainMenu;
    Funcionrios1: TMenuItem;
    Adicionar1: TMenuItem;
    ToolBar: TToolBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrin: TFormPrin;

implementation

{$R *.dfm}

end.
