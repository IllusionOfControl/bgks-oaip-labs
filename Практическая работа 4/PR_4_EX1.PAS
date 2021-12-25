program Ex1;
var a, b, c:integer;
    x_v, y_v:real;
begin
     writeln('Enter variable "b"');
     read(b);
     writeln('Enter variable "c"');
     read(c);
     a:=1;

     x_v:=(-1*b)/(a*2);
     y_v:=sqr(x_v)+x_v*b+c;
     writeln('x_v=',x_v:1:1,'  y_v=',y_v:1:1);
end.