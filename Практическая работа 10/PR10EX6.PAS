program ex4;
Type
	familii=(petrov,ivanov,vasilev,zanko,ivacevich,grinev);
const arr_familii: array[familii] of string = ('petrov','ivanov','vasilev','zanko','ivacevich','grinev');
Var
   A,C,K,P1,P2:set of familii;
   n,j,i,p:byte;
   s:familii;
begin
  A:=[petrov, ivanov, vasilev, zanko, ivacevich, grinev];
  C:=[petrov,vasilev,grinev];
  K:=[ivanov,vasilev,zanko,grinev];
  Writeln('Valid last names: petrov, ivanov, vasilev, zanko, ivacevich, grinev');

  P1:=K*C;
  P2:=A-C-K;
  
  WriteLn('Club members have been on 2 trips: ');
  For s:=petrov to grinev do
   if s in P1
    then write(' ', arr_familii[s]);
    Writeln;
  Writeln('Club members haven`t been on trips: ');
  For s:=petrov to grinev do
   if (s in P2)
    then write(' ', arr_familii[s]);
end.
