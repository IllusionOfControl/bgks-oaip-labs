program ex3;
var
   matrix: array[1..10, 1..10] of integer;
   height, i, j, sum, count: integer;
begin
     write('Enter height: ');
     readln(height);
     for i:=1 to height do
         for j:=1 to height do
             begin
                  write('Matrix[',i,', ',j,']= ');
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
                  if matrix[i, j] = 0 then
                     begin
                          inc(matrix[i, j]);
                     end;
                     if i = j then sum:=sum+matrix[i,j];
             end;

     for i:=1 to height do
          begin
             for j:=1 to height do
                 write(' ',matrix[i,j]);
             writeln;
     end;

     writeln('Sum: ', sum);
end.