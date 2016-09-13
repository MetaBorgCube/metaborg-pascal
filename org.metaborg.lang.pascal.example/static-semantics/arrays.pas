program arrays () ;
const 
  ten = 10;
type
  smallInt  = 0 .. 255;
  fooInt = 0 .. 255;
  at1 = array [1 .. 4] of integer;
  at2 = array [1 .. 4] of integer;
  { intArray  = array [smallInt] of integer; }
  intArray = array [1 .. ten] of array [1 .. ten] of integer;
var 
  arr : intArray;
  i : integer;
  ten : integer; 

{ [[ new A() ^ (s) : ty ]] :=
     Class{A} -> s, Class{A} |-> d, d : ty.
  
  [[ class A { ... } ^ (s) ]] := 
     Class{A} <- s, Class{A} : ClassT(Class{A}), 
     Class{A} ==> s', new s', [[ ... ^ (s') ]].
}

begin
  arr[i] := arr[3] + 1 + ten; 
  writeln('a')
end.
