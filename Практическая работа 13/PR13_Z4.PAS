Program Pr13_Z4;
type
    Zap=record
     na:string[13];
     me:string[7];
     rmi:integer;
     rma:integer;
    end;
var
   fl2:file of Zap;
   z:zap;
   s2,stl:string;
   fl1:text;
   cod,L,n,k:integer;
begin
 assign(fl1,'fish.txt');
 assign(fl2,'fish.dat');
 reset(fl1);
 rewrite(fl2);
 while not eof(fl1) do
  begin
   readln(fl1,stl);
   k:=1;
   n:=1;
   L:=1;
   while k<=length(stl) do
    begin
     if (stl[k]=' ') or (stl[k]='.')
      then begin
       s2:=copy(stl,n,k-n);
       case L of
       1:z.na:=s2;
       2:z.me:=s2;
       3:val(s2,z.rmi,cod);
       4:begin
        val(s2,z.rma,cod);
        if (z.rma<=9) and (z.rmi>=4)
         then write(fl2,z);
       end
       end;
      n:=k+1;
      inc(L);
     end;
    inc(k)
   end
  end;
 close(fl1);
 close(fl2);
 readln
end.