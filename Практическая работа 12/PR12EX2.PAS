program ex2;

function min(a,b,c:integer):integer;
var m:integer;
begin
     m:=a;
     if b<m then m:=b;
     if c<m then m:=c;
     min:=m;
end;

var c, d, l, k:integer;
    result:real;
begin
     Writeln('Enter [c d l k]');
     readln(c, d, l, k);
     result:=(min(c+d, l, k)+min(k,c,l))/(3+min(k,d-l,c+l));
     writeln('Result = ', result:1:1);
end.
