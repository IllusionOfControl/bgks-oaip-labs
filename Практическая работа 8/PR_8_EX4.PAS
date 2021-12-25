program ex4;
var
    sum,i,value,code: integer;
    number: string;
begin
     sum:=1;
     write('Enter number: ');
     readln(number);
     for i:=1 to length(number) do
         begin
              Val(number[i],value, code);
              if code<>0 then begin writeln('Error'); break; end;
              sum:=sum*value;
         end;
     writeln('Result: ',sum)
end.