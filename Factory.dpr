program Factory;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uTSimplePizza in 'uTSimplePizza.pas';

begin
  try
    { TODO -oUser -cConsole Main : Code hier einf�gen }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
