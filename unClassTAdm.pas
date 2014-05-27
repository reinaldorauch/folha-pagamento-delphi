unit unClassTAdm;

interface

uses
  unClassTFunc;

Type
  TAdmin = class(TFunc)
    public
      function SalarioTotal: double;
  end;

implementation

{ TAdmin }

function TAdmin.SalarioTotal: double;
begin
  result := Salario;
end;

end.
