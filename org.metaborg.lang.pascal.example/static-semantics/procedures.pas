program procedures();

  procedure f(x: integer);
    var
      x : integer;
    begin
      f(4)
    end;

begin
  f(3);
  writeln('3');
  writeln(3); { is this allowed? }
end.
