program ex5;

function fract(f:integer):integer;
begin
     if f=1 then fract:=1
     else fract:=fract(f-1)*f;
end;
var a,b:integer;
    y:real;
begin
     y:=1;
     writeln('Enter [a b]');
     readln(a,b);
     y:=(fract(a)-b)/(fract(a)+fract(b));
     writeln('Y= ', y:1:2);
end.
