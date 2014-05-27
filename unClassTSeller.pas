unit unClassTSeller;

interface

uses
  unClassTFunc;

Type
  ENegativeSells = class(EFuncError);

  TSeller = class(TFunc)
  private
    procedure SetSells(const Value: LongWord);
    protected
      fSells: LongWord;
    public
      property Sells: LongWord read fSells write SetSells;
      function SalarioTotal: double;
      constructor Create (cNome: String; cSal: Double; cSells: Integer); overload;
      constructor Create; overload; override;
  end;

const Percent: byte = 3;

implementation

{ TSeller }

constructor TSeller.Create;
begin
  inherited;
  Sells := 0;
end;

constructor TSeller.Create(cNome: String; cSal: Double; cSells: Integer);
begin
  Nome    := cNome;
  Sells   := cSells;
  Salario := cSal;
end;

function TSeller.SalarioTotal: double;
begin
  result := Salario + Sells * Percent / 100;
end;

procedure TSeller.SetSells(const Value: LongWord);
begin
  if (Value <> fSells) then
    fSells := Value;
end;

end.
