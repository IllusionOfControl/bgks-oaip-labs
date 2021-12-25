type
    Meg=set of byte;
var
   Meg_1,Meg_2:Meg;
   i,n:byte;
begin
     randomize;
     writeln;
     write('Meg_1: ');
     for i:=1 to 10 do
         begin
              n:=random(31);
              if not (n in Meg_1) then
                 Meg_1:=Meg_1+[n]
              else begin
                   i:=i-1;
                   continue;
              end;
     end;
     for i:=0 to 30 do if i in Meg_1 then write(' ',i);
     writeln;
     write('Meg_2: ');

     for i:=1 to 5 do
         begin
              n:=random(16);
              if not (n in Meg_2) then
                 Meg_2:=Meg_2+[n]
              else begin
                   i:=i-1;
                   continue;
              end;
     end;
     Randomize;
     for i:=0 to 15 do if i in Meg_2 then write(' ',i);
     writeln;
     write('Numbers: ');
     for n:=0 to 15 do
         if (n in Meg_1) and (n in Meg_2) then
             write(' ', n);
end.