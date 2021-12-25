program ex4;
var
   matrix: array[1..10, 1..10] of integer;
   width, height, i, j, sum, minV, maxV: integer;
begin
     minV:=9999;
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
                  begin
                       write(' ',matrix[i,j]);
              end;
              writeln;
         end;

     for i:=1 to width do
         for j:=1 to height do
             begin
                  if matrix[i, j] < minV then
                     minV:=matrix[i, j];
                  if matrix[i, j] > maxV then
                     maxV:=matrix[i, j]
             end;
     writeln('Result: ', ((maxV+minV)/2):1:1);
end.