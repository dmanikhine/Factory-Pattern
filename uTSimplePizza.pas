unit uTSimplePizza;

interface

type
  TSimplePizza = class(TObject)
  public
    procedure Prepare;
    procedure Bake;
    procedure Cut;
    procedure Box;
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
end.
