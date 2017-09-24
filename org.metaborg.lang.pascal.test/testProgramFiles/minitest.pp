program test ();
  type 
	colors = (red, yellow, green, blue, tartan);
	colorCode = array[red..tartan] of integer;
	Person = record
	   name: string;
	   surname: string;
	   age: integer;
	   other: Person;
	   eyes: colors;
	   case stuff : boolean of
	   	true : (ja : string);
	   	false : (nee : string)
	end;
	col = set of colors;
  var
 	x : col;
    me: Person;
    notMe: Person;
    c : colors;
    cc : colorCode;
    i : ^integer;
    j : integer;
    b : boolean;
  function f (i : integer) : integer;
  	begin
  	  f := i;
  	end;
  begin
	c := red;
	x := [red, blue];
	b := blue in x;
	j := 0;
	cc[c] := f(j);
	me.stuff := false;
	me.other.eyes := green;
	with me do
	begin
		eyes := green;
		stuff := true;
		ja := 'test';
	end;
  end.