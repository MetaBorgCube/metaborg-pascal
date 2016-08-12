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

    { Read in the integers. }
    procedure ReadArr(var size: Integer; var a: IntArrType);
        begin
            size := 1;
            while not eof do begin
                readln(a[size]);
                if not eof then
                  size := size + 1
            end
        end;

    { Use quicksort to sort the array of integers. }
    procedure Quicksort(size: Integer; var arr: IntArrType);
        { This }
        procedure QuicksortRecur(start, stop: integer);
            begin 
                splitpt := Split(start, stop)
            end;
                    
        begin { Quicksort }
            QuicksortRecur(1, size)
        end;

    begin
        { Read }
        ReadArr(size, arr);

        { Sort the contents. }
        Quicksort(size, arr);

        { Print. }
        for i := 1 to size do
            writeln(arr[i])
    end.
