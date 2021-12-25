program ex1;
const
   m=10;
var
   a:array[1..m] of integer;
   size,j,t,k,b:integer;
begin
   write('Enter size of array: ');
   readln(size);
   writeln('Enter ',size,' elements of array:');
   for j:=1 to size do read(a[j]);
   writeln;
   k:=size;
   repeat
         t:=0;
         for j:=1 to size-1 do
             if a[j]>a[j+1] then
                begin
                     b:=a[j];
                     a[j]:=a[j+1];
                     a[j+1]:=b;
                     t:=j
                end;
         k:=t;
   until t=0;
   writeln('Sorted array: ');
   for j:=1 to size do write(a[j]:4,' ');
end.
