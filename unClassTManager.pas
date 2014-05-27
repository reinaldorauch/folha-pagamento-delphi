unit unClassTManager;

interface

uses
  unClassTFunc;

Type
  EManagerError = class(EFuncError);
  ENegativeBonus = class(EManagerError);

  TManager = class(TFunc)
    private
      procedure SetBonus(const Value: Double);
    protected
      fBonus: Double;
    public
      property Bonus: Double read fBonus write SetBonus;
      function SalarioTotal: double;
      constructor Create (cNome: String; cSal, cBonus: Double); overload;
      constructor Create; overload; override;
  end;

implementation

{ TManager }

constructor TManager.Create(cNome: String; cSal, cBonus: Double);
begin
  Salario := cSal;
  Bonus   := cBonus;
  Nome    := cNome;
end;

constructor TManager.Create;
begin
  inherited;
  Bonus := 0;
end;

function TManager.SalarioTotal: double;
begin
  result := Salario + Bonus;
end;

procedure TManager.SetBonus(const Value: Double);
begin
  if(Value <> fBonus) AND (Value >= 0) then
    fBonus := Value
  else
    if Value < 0 then
      raise ENegativeBonus.Create('O Bônus de ' + Value + ' é inválido, não pode ser negativo');
end;

end.
