program recursive();
type 
  { rec = array [1..5] of rec; }
  list = record
    hd : integer;
    tl : ^ list;
  end;
  coloredList = record
    color : integer;
    hd : integer;
    tl : ^ coloredList;
  end;
  { coloredList = list record
    color : integer;
  end; }
begin
end.
