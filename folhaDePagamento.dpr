program folhaDePagamento;

uses
  Vcl.Forms,
  Princ in 'Princ.pas' {FormPrin},
  unClassTFunc in 'unClassTFunc.pas',
  unClassTAdm in 'unClassTAdm.pas',
  unClassTSeller in 'unClassTSeller.pas',
  unClassTManager in 'unClassTManager.pas',
  FormFunc in 'FormFunc.pas' {FmFunc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrin, FormPrin);
  Application.Run;
end.
