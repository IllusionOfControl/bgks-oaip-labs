Program Pr13_Z2;
Var
   L1,L2,L3:text;
   stl:string;
Begin
     assign(L1,'f1.txt');
     assign(L2,'f2.txt');
     assign(L3,'f3.txt');
     reset(L1);
     reset(L2);
     rewrite(L3);
     while not eof(L2) do
      begin
       readln(L1,stl);
       writeln(L3,stl);
       readln(L2,stl);
       writeln(L3,stl);
      end;
     close(L1);
     close(L2);
     close(L3);
     readln;
end.