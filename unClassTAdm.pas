unit unClassTAdm;

interface

uses
  unClassTFunc;

Type
  TAdmin = class(TFunc)
    public
      function SalarioTotal: double;
      constructor Create; overload; override;
      constructor Create (cNome: String; cSal: Double); overload; override;
  end;

implementation

{ TAdmin }

constructor TAdmin.Create(cNome: String; cSal: Double);
begin
  inherited;
end;

constructor TAdmin.Create;
begin
  inherited;
end;

function TAdmin.SalarioTotal: double;
begin
  result := Salario;
end;

end.
