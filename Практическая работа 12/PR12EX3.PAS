program ex3;

function fract(f:integer):integer;
begin
     if f=1 then fract:=1
     else fract:=fract(f-1)*f;
end;

function calc_A(n:integer):real;
begin
     calc_A:=sqr(n)/sqr(n+1);
end;

function calc_B(n:integer):real;
begin
     calc_B:=(sqr(n)+1)/(fract(n));
end;


var result_A, result_B:real;
    num,i:integer;
begin
     result_A:=1;
     result_B:=1;
     write('Enter n: ');
     readln(num);
     for i:=1 to num do
         result_A:=result_A*calc_A(i);

     for i:=1 to num do
         result_B:=result_B+calc_B(i);

     writeln('Result_A = ', result_A:1:6);
     writeln('Result_B = ', result_B:1:6);
end.