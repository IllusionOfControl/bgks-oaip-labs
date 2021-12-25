program ex3;
var
   x, s ,n, i:integer;
begin
     writeln('Enter variable "x"');
     readln(x);
     writeln('Enter variable "n"');
     readln(n);
     s:=0;
     i:=0;
     repeat
          s:=s+sqr(x+i);
          i:=i+1;
     until i>n;
     writeln('result s= ',s);
end.