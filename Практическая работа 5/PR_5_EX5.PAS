program ex5;
const startPoint=1984;
var curY, curSC, curSY: integer; {SC- subCycle, SY - subYear}
    nameYear, nameSC, nameSY: string;
begin
    writeln('Enter current year'); readln(curY);
    curSC:=(abs(curY - startPoint) mod 60) div 12;
    curSY:=(abs(curY - startPoint) mod 60) mod 12;
    case curSY of
         0:   nameSY:='rat';
         1:   nameSY:='cow';
         2:   nameSY:='tiger';
         3:   nameSY:='rabit';
         4:   nameSY:='dragon';
         5:   nameSY:='snake';
         6:   nameSY:='hourse';
         7:   nameSY:='sheep';
         8:   nameSY:='monkey';
         9:   nameSY:='chicken';
         10:  nameSY:='dog';
         11:  nameSY:='pig';
    end;
    case curSC of
         0:  nameSC:='green';
         1:  nameSC:='red';
         2:  nameSC:='yellow';
         3:  nameSC:='white';
         4:  nameSC:='black';
    end;
    nameYear:=concat(nameSC,' ', nameSY);
    writeln('Current name of year: ', nameYear);
end.
