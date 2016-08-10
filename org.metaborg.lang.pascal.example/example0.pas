{*****************************************************************************
 * A Pascal quicksort.
 *****************************************************************************}
program Sort(input, output);
    const
        { Max array size. }
        MaxElts = 50;
    type 
        { Type of the element array. }
        IntArrType = array [1..MaxElts] of Integer;

    var
        { Indexes, exchange temp, array size. }
        i, j, tmp, size: integer;
        
        { Array of ints }
        arr: IntArrType;

    begin
        { Read }
        ReadArr(size, arr);

        { Sort the contents. }
        Quicksort(size, arr);

        { Print. }
        for i := 1 to size do
            writeln(arr[i])
    end.
