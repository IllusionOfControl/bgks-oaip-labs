program ex3;
var a, b: integer;
    x: real;
begin
     writeln('Enter variable "a"');
     read(a);
     writeln('Enter variable "b"');
     read(b);
     if a>b then
        x:=b/a+2
     else if a=b then
             x:=-11
          else
             x:=(a-8)/b;
     writeln('x=',x:1:1);
end.