unit unClassTFunc;

interface

uses
  SysUtils;

Type
  EFuncError      = class(Exception);
  ENameLength     = class(EFuncError);
  ENegativeSalary = class(EFuncError);

  TFunc = class
  private
    procedure SetNome(const Value: String);
    procedure SetSalario(const Value: Double);
  protected
    fNome: String;
    fSalario: Double;
    constructor Create (cNome: String; cSal: Double); overload; virtual;
    constructor Create; overload; virtual;
    function SalarioTotal: double; virtual; abstract;
  public
    property Nome: String read fNome write SetNome;
    property Salario: Double read fSalario write SetSalario;
end;

implementation



{ TFunc }

constructor TFunc.Create(cNome: String; cSal: Double);
begin
  Nome := cNome;
  Salario := cSal;
end;

constructor TFunc.Create;
begin
   Nome := 'Josnei';
    Salario := 0;
end;

procedure TFunc.SetNome(const Value: String);
begin
  if((Length(value) > 3) OR (Value <> fNome)) then
    fNome := Value
  else
    if(Length(value) <= 3) then
      raise ENameLength.Create('Nome "' + Value + '" inválido, é necessário mais de 3 caracteres');
end;

procedure TFunc.SetSalario(const Value: Double);
begin
  if((Value <> fSalario) OR (Value >= 0)) then
    fSalario := Value
  else
    if Value < 0 then
      raise ENegativeSalary.Create('Salário' + FloatToStr(Value) + ' é inválido, é negativo');
end;

end.
