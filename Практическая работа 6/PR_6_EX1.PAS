program ex1;
var
   arr: array[1..10] of integer;
   i, maxAbs, pos, n: integer;
begin
     writeln('Enter n');
     read(n);
     writeln('Enter array');
     for i:=1 to n do
         begin
              write('Array[',i,'] = ');
              readln(arr[i]);
         end;

     for i:=1 to n do
         if maxAbs<abs(arr[i]) then
            begin
                 maxAbs:=abs(arr[i]);
                 pos:=i;
            end
         else;
     writeln('Position of max abs: ',pos);
     {swap}
     if arr[1] <> arr[pos] then
     begin
          arr[1]:=   arr[1] xor arr[pos];
          arr[pos]:= arr[pos] xor arr[1];
          arr[1]:=   arr[1] xor arr[pos];
     end;
     writeln('Array: ');
     for i:=1 to n do
         writeln('Array[',i,'] = ', arr[i]);
     writeln('');
end.