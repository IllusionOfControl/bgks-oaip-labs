program ex2;

var
   Meg:set of byte;
   i:integer;
begin
     for i:=100 to 250 do Meg:=Meg+[i];
     for i:=100 to 250 do
         begin
              if ((i mod 3)=0) or ((i mod 5)=0) then
                 Meg:=Meg-[i];
         end;
     writeln;
     for i:=100 to 250 do if i in Meg then write(' ',i);
end.
