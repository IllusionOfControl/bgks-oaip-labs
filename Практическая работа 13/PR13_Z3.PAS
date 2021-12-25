program Pr13_Z3;
var
   Tf:text;
   stl,s,smax:string;
   n,k:integer;
begin
     assign(Tf,'sf.txt');
     reset(Tf);
     repeat
      readln(Tf,stl);
      smax:='';
      n:=1;
      for k:=1 to length(stl) do
       if (stl[k]='*') or (stl[k]='.')
        then
         begin
          s:=copy(stl,n,k-n);
          if length(s)>length(smax)
           then smax:=s;
          n:=k+1;
         end;
      writeln(smax);
     until eof(Tf);
     close(Tf);
     readln;
end.