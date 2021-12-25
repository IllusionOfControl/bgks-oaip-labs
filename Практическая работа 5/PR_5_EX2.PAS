program ex2;
var
   x, s ,n, i:integer;
begin
     writeln('Enter variable "x"');
     readln(x);
     writeln('Enter variable "n"');
     readln(n);
     s:=0;
     i:=0;
     while i<=n do
           begin
                s:=s+sqr(x+i);
                i:=i+1;
           end;
     writeln('result s= ',s);
end.