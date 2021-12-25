program ex1;
var
   x, s ,n, i:integer;
begin
     writeln('Enter variable "x"');
     readln(x);
     writeln('Enter variable "n"');
     readln(n);
     s:=0;
     for i:=0 to n do
         s:=s+sqr(x+i);
     writeln('result s= ',s);
end.