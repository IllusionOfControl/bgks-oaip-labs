program ex4;
var
   n, i, l:integer;
   part1, part2, part3, res, x:real;
begin
     writeln('Enter variable "x"'); readln(x);
     writeln('Enter variable "n"'); readln(n);
     res:=1;
     for i:=1 to n do
         begin
              part3:=1;
              if (i mod 2)=1 then part1:=-1
              else part1:=1;
              part2:=exp(i*2*ln(x));
              for l:=1 to 2*i do
                  part3:=part3*l;
              res:=res+part1*part2/part3;
         end;
     writeln('output: res=',res:1:1);
end.