program ex3;
var
   arr: array[1..10] of integer;
   startPos, endPos, i, n, sum: integer;
begin
     writeln('Enter n');
     read(n);
     {Entering values of array}
     writeln('Enter array');
     for i:=1 to n do
         begin
              write('Array [',i,'] = ');
              readln(arr[i]);
         end;
     writeln('Enter startPos');
     read(startPos);
     writeln('Enter endPos');
     read(endPos);

     for i:=startPos to endPos do
         begin
              if (i mod 2) = 1 then
                 sum:= sum + arr[i]
              else;
         end;

     writeln('Sum = ',sum);
end.