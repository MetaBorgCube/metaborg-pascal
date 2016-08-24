program resolution1(foo, bar);
  const
    MaxElts = 7;
  type 
    { Type of the element array. }
    IntArrType = array [1 .. MaxElts] of Integer;

  var  
    { Indexes, exchange temp, array size. } 
    i, j, tmp, size: integer;
        
    { Array of ints }
    arr: IntArrType;

begin
  for i := 1 to size do
    writeln(size + i)
end.

