program ex4;

type pavto=^avto;
     avto=record
        marka:string;
        probeg:integer;
        rashod:real
end;

function createAvto(marka:string;probeg:integer; rashod:real):pavto;
var pa:pavto;
begin
        pa^.marka:=marka;
        pa^.probeg:=probeg;
        pa^.rashod:=rashod;
        createAvto:=pa;
end;

function calcRashod(a:avto):real;
begin
     calcRashod:=a.probeg/a.rashod;
end;

var tabl:array[1..6] of avto;
    minFuelnum, maxFuelnum, i: integer;
begin
     tabl[1]:= createAvto('PAZ'    , 240, 27.8)^;
     tabl[2]:= createAvto('Tatra'  , 320, 40.5)^;
     tabl[3]:= createAvto('LAZ'    , 320, 51.2)^;
     tabl[4]:= createAvto('ZIL'    , 180, 38)^;
     tabl[5]:= createAvto('MAZ'    , 210, 36.2)^;
     tabl[6]:= createAvto('Ikarus' , 400, 64.1)^;

     maxFuelnum:=1;
     minFuelnum:=1;
     for i:=2 to 6 do
         begin
              {dodelatb 4toto tut}
              if calcRashod(tabl[maxFuelnum])<calcRashod(tabl[i]) then maxFuelnum:=i;
              if calcRashod(tabl[minFuelnum])>calcRashod(tabl[i]) then minFuelnum:=i;
         end;
     writeln('Max Rashod: ',tabl[maxFuelnum].marka);
     writeln('Min Rashod: ',tabl[minFuelnum].marka);
end.