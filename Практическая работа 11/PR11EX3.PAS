program ex3;

type pworker=^worker;
     worker=record
        tab:integer;
        FIO:string;
        NV,AV,PN,SV:integer
end;

function createWorker(tab:integer;FIO:string;NV,AV,PN,SV:integer):pworker;
var pw:pworker;
begin
        pw^.tab:=tab;
        pw^.FIO:=FIO;
        pw^.NV:=NV;
        pw^.AV:=AV;
        pw^.PN:=PN;
        pw^.SV:=SV;
        createWorker:=pw;
end;

var tabl:array[1..5] of worker;
    maxNV, maxPNnum, minPNnum, i:integer;
begin
     tabl[1]:= createWorker(1272,'Simonchik V. V.',250,80 ,28,142)^;
     tabl[2]:= createWorker(1264,'Buntar S. V.'   ,227,75 ,24,128)^;
     tabl[3]:= createWorker(1276,'Markov L. S.'   ,195,60 ,20,115)^;
     tabl[4]:= createWorker(1251,'Petrov S. S.'   ,330,120,37,173)^;
     tabl[5]:= createWorker(1295,'Ivanov A. E.'   ,450,200,53,197)^;

     writeln('Enter maxNV');
     read(maxNV);
     for i:=1 to 5 do
         if tabl[i].NV>maxNV then writeln(tabl[i].FIO);
     maxPNnum:=1;
     minPNnum:=1;
     for i:=2 to 5 do
         begin
              if tabl[maxPNnum].PN<tabl[i].PN then maxPNnum:=i;
              if tabl[minPNnum].PN>tabl[i].PN then minPNnum:=i;
         end;
     writeln('MaxPN: ',tabl[maxPNnum].tab);
     writeln('MinPN: ',tabl[minPNnum].tab);
end.