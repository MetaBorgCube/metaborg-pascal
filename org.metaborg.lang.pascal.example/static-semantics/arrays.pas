program arrays () ;
const 
  ten = 10;
type
  intArray = array [1 .. ten] of integer;
var 
  arr : intArray;
  i : integer;
begin
  arr[i] := arr[3] + 1; 
end.
