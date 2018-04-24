program Factory;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uTSimplePizza in 'uTSimplePizza.pas',
  uTPizzaStore in 'uTPizzaStore.pas';

 procedure DoPizzaStore;
 var PizzaStore:  TPizzaStore;
 begin
   PizzaStore:=TPizzaStore.Create;
   try
   PizzaStore.OrderPizza("cheese");

   end;
   finally
    PizzaStore.Free;
 end;
begin
  try
    { TODO -oUser -cConsole Main : Code hier einfügen }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
