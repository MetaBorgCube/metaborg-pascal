program syntax0 ();

const
   short = 7;
type
  shortArrayType = array [1 .. short] of integer; 
var
  arr : shortArrayType;
  x : integer;
begin
  while x < 10 do
    x := x + arr * arr[x] ;
  x := arr[x]; 
end.
