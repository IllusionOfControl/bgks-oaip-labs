program ex3;

const
   m=10;
var
   a:array[1..m] of integer;
   size,t,i,b, min:integer;
   smth:boolean;
begin
   write('Enter size of array: ');
   readln(size);
   writeln('Enter ',size,' elements of array:');
   for t:=1 to size do read(a[t]);
   t:=1;
   repeat
         min:=t;
         for i:=t to size do
             begin
                  if a[min] > a[i] then min:=i;
             end;
         b:=a[t];
         a[t]:=a[min];
         a[min]:=b;
         for i:=1 to size do write(a[i]:4,' ');
         writeln;
         inc(t);
   until t=size;
   writeln('Sorted array: ');
   for t:=1 to size do begin write(a[t]:4,' '); writeln; end;
end.
