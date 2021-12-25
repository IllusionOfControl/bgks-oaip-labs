program ex2;
const
   m=10;
var
   a:array[1..m] of integer;
   size,t,i,key:integer;
   smth:boolean;
begin
   write('Enter size of array: ');
   readln(size);
   writeln('Enter ',size,' elements of array:');
   for t:=1 to size do read(a[t]);
   t:=2;
   repeat
         smth:=false;
         key:=a[t];
         i:=t;
         while i>1 do
               begin
                    i:=i-1;
                    if a[i]>key then
                       begin
                            a[i+1]:=a[i];
                            smth:=true;
                       end
                    else break;
               end;
         if smth=true then a[i]:=key;
         for i:=1 to size do write(a[i]:4,' ');
         writeln;
         inc(t);
   until t>size;
   writeln('Sorted array: ');
   for t:=1 to size do begin write(a[t]:4,' '); writeln; end;
end.
