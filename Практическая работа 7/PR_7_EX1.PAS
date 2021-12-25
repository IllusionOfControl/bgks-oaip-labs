program ex1;
var
   matrix: array[1..10, 1..10] of integer;
   width, height, i, j, sum, count: integer;
begin
     write('Enter width: ');
     readln(width);
     write('Enter height: ');
     readln(height);
     for i:=1 to width do
         for j:=1 to height do
             begin
                  write('Matrix[',i,', ',j,']= ');
                  readln(matrix[i,j]);
             end;

     for i:=1 to width do
          begin
             for j:=1 to height do
                 write(' ',matrix[i,j]);
             writeln;
     end;

     for i:=1 to width do
         for j:=1 to height do
             begin
                  if matrix[i, j] > 0 then
                     begin
                          inc(count);
                          sum:=sum+matrix[i,j];
                     end;
             end;
     writeln('Count: ', count);
     writeln('Sum: ', sum);
end.