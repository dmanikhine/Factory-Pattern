unit uTSimplePizzaFactory;

interface
uses uTSimplePizza,
System.SysUtils;

type
  TSimplePizzaFactory = class
    function CreatePizza(aPizzaType: string): TSimplePizza;
  end;


implementation

{ TSimplePizzaFactory }

function TSimplePizzaFactory.CreatePizza(aPizzaType: string): TSimplePizza;
begin
  if aPizzaType = 'cheese' then
  begin
    Result := TCheesePizza.Create;
  end else
    begin
      if aPizzaType = 'pepperoni' then
      begin
        Result := TPepperoniPizza.Create;
      end else
      begin
        if aPizzaType = 'veggie' then
        begin
          Result := TVeggiePizza.Create;
        end else
        begin
          raise Exception.Create('I don''t know what kind of pizza that is: ' + aPizzaType);
      end;
    end;
  end;
end;

end.
