unit uTPizzaStore;

interface
uses
uTSimplePizzaFactory,
uTSimplePizza,
System.SysUtils
;
type
 TPizzaStore = class
 private
  FFactory: TSimplePizzaFactory;
  public
    constructor Create(aPizzaFactory: TSimplePizzaFactory);
    destructor Destroy; override;
    function OrderPizza(aPizzaType: string): TSimplePizza;
  end;

implementation


{ TPizzaStore }

constructor TPizzaStore.Create(aPizzaFactory: TSimplePizzaFactory);
begin
  inherited Create;
  FFactory := aPizzaFactory;
end;

destructor TPizzaStore.Destroy;
begin
    FFactory.Free;
    inherited;
end;

function TPizzaStore.OrderPizza(aPizzaType: string): TSimplePizza;
begin
  Result := FFactory.CreatePizza(aPizzaType);
  Result.Message;
  Result.Prepare;
  Result.Bake;
  Result.Cut;
  Result.Box;
end;

end.
