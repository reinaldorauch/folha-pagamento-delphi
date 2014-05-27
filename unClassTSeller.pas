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
  end;

implementation

{ TSeller }

procedure TSeller.SetSells(const Value: LongWord);
begin
  if (Value <> fSells) then
    fSells := Value;
end;

end.
