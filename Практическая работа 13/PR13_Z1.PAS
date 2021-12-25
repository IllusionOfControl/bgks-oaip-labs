program Pr13_Ex1;
var
   fll:file of integer;
   i,n:byte;
   p,k:integer;
Begin
     assign(fll,'spint.dat');
     rewrite(fll);
     write('Количество компонент файла=');
     readln(n);
     for i:=1 to n do
      begin
       readln(k);
       write(fll,k);
      end;
     seek(fll,0);
     read(fll,p);
     seek(fll,Filesize(fll)-1);
     write(fll,p);
     seek(fll,0);
     write(fll,k);
     close(fll);
     reset(fll);
     p:=0;
     writeln('Изменённый файл:');
     for i:=1 to n do
      begin
       read(fll,k);
       writeln(k);
       if abs(k)>10 then inc(p)
      end;
     writeln('Количество компонентов файла abs(k)>10=',p);
     close(fll);
     readln;
end.