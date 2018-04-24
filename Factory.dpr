program Factory;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uTSimplePizza in 'uTSimplePizza.pas',
  uTPizzaStore in 'uTPizzaStore.pas',
  uTSimplePizzaFactory in 'uTSimplePizzaFactory.pas';

procedure DoPizzaStore;
var PizzaStore:   TPizzaStore;
begin
  PizzaStore:=TPizzaStore.Create(TSimplePizzaFactory.Create);
  try
  PizzaStore.OrderPizza('cheese');
  finally
    PizzaStore.Free;
  end;
end;

begin
  try
  DoPizzaStore;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
