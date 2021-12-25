program ex2;
var
   arr_A: array[1..10] of integer;
   arr_B: array[1..10] of integer;
   arr_C: array[1..10] of real;
   i, n: integer;
begin
     writeln('Enter n');
     read(n);
     {Entering values of array}
     writeln('Enter array A');
     for i:=1 to n do
         begin
              write('Array A[',i,'] = ');
              readln(arr_A[i]);
         end;
     writeln('Enter array B');
     for i:=1 to n do
         begin
              write('Array B[',i,'] = ');
              readln(arr_B[i]);
         end;
     {Calculating}
     for i:=1 to n do
         arr_C[i]:=(arr_A[i]+arr_B[i])/2;
     writeln('Array C: ');
     for i:=1 to n do
              writeln('Array B[',i,'] = ', arr_C[i]:1:1);
     writeln('');
end.