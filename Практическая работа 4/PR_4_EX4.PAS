program ex4;
var
   w, r1, r2, r3, r4:real;
   z, x, y: integer;
begin
     writeln('Enter variable "x"');
     read(x);
     writeln('Enter variable "y"');
     read(y);
     writeln('Enter variable "z"');
     read(z);
     r1:=exp(abs((y-x))*ln(x));
     r2:=exp(abs((x+y))*ln(y));
     r3:=exp(1/3*ln(z))+sqrt(x)+(2/sqr(sin(z)));
     r4:=r1+r2*ln(r3);
     w:=(1/2)*r4;
     writeln('w=', w:1:1);
end.