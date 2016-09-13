program procedures();

{ const x = 10; }
var 
  x : integer; 
  a : boolean;
  a, b : boolean;
  
  function foo(x : integer; y, z : boolean) : integer;
    begin
      foo := 4 + x 
    end;

  procedure f(var x, y: integer; z : boolean); 
    var
      x : integer;
    begin
      f(4)
    end;

begin
  f(x);
  writeln('3');
  writeln(3); { is this allowed? }
end.
