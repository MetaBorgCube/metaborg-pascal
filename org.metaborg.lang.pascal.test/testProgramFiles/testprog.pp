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
        { This does the actual work of the quicksort.  It takes the
          parameters which define the range of the array to work on,
          and references the array as a global. }
        procedure QuicksortRecur(start, stop: integer);
            var
                m: integer;

                { The location separating the high and low parts. }
                splitpt: integer;

            { The quicksort split algorithm.  Takes the range, and
              returns the split point. }
            function Split(start, stop: integer): integer;
                var
                    left, right: integer;       { Scan pointers. }
                    pivot: integer;             { Pivot value. }

                { Interchange the parameters. }
                procedure swap(var a, b: integer);
                    var
                        t: integer;
                    begin
                        t := a;
                        a := b;
                        b := t
                    end;

                begin { Split }
                    { Set up the pointers for the hight and low sections, and
                      get the pivot value. }
                    pivot := arr[start];
                    left := start + 1;
                    right := stop;

                    { Look for pairs out of place and swap 'em. }
                    while left <= right do begin
                        while (left <= stop) and (arr[left] < pivot) do
                            left := left + 1;
                        while (right > start) and (arr[right] >= pivot) do
                            right := right - 1;
                        if left < right then 
                            swap(arr[left], arr[right]);
                    end;

                    { Put the pivot between the halves. }
                    swap(arr[start], arr[right]);

                    { This is how you return function values in pascal.
                      Yeccch. }
                    Split := right
                end;

            begin { QuicksortRecur }
                { If there's anything to do... }
                if start < stop then begin
                    splitpt := Split(start, stop);
                    QuicksortRecur(start, splitpt-1);
                    QuicksortRecur(splitpt+1, stop);
                end
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