program constants();
const 
  one = 1;
  two = 2;
  three = two;
var
  x : integer;
begin
  x := three; { reference to constant }
  two := 5 { this is probably an error }
end.
