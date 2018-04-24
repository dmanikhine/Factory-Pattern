unit uTSimplePizza;

interface

type
  TSimplePizza = class(TObject)
  public
    procedure Prepare;
    procedure Bake;
    procedure Cut;
    procedure Box;
    procedure Message; virtual; abstract;
  end;

  TCheesePizza = class(TSimplePizza )
  public
  procedure Message; override;
  end;

  TPepperoniPizza = class(TSimplePizza)
  public
  procedure Message; override;
  end;

  TVeggiePizza = class(TSimplePizza )
  public
  procedure Message; override;
  end;

implementation
 procedure TSimplePizza .Bake;
begin
  WriteLn('Bake the pizza');
end;

procedure TSimplePizza .Box;
begin
  WriteLn('Put the pizza in a box');
end;

procedure TSimplePizza .Cut;
begin
  WriteLn('Cut the pizza');
end;

procedure TSimplePizza .Prepare;
begin
  WriteLn('Prepare the Pizza');
end;

procedure  TCheesePizza.Message;
begin
 WriteLn('Order for Pizza Cheesse');
end;

procedure  TPepperoniPizza.Message;
begin
 WriteLn('Order for Pizza Pepperoni');
end;

{ TVeggiePizza }

procedure TVeggiePizza.Message;
begin
 WriteLn('Order for Pizza Veggie');
end;

end.
