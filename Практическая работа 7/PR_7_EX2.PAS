program ex2;
var
   matrix: array[1..10, 1..10] of integer;
   height, i, j, result, count: integer;
begin
     write('Enter height of side: ');
     readln(height);
     result:=1;

     for i:=1 to height do
         for j:=1 to height do
             begin
                  write('matrix[',i,', ',j,']= ');
                  readln(matrix[i,j]);
             end;

          for i:=1 to height do
          begin
             for j:=1 to height do
                 write(' ',matrix[i,j]);
             writeln;
     end;


     for i:=1 to height do
         for j:=1 to height do
             begin
                  if matrix[i, j] < 0 then
                     begin
                          inc(count);
                     end;
                  if i = j then result:=result*matrix[i,j];
             end;
     writeln('Count: ', count);
     writeln('Result: ', result);
end.