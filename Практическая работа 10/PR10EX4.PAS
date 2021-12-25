program ex3;
Var
   mns,mnl:set of char;
   n,k,i,p:byte;
   s,s1:String;
begin
  k:=0;
  Readln(s);
  mns:=['-' , '*' , '.' , ',' ,';'];
  mnl:=['b'..'k'];
  For i:=1 to length(s) do
   if s[i] in mns
    then inc(k);
  Writeln('Number of separators: ', k);
  Writeln('Words containing letters from the set of mnl: ');
  s:=s+'*';
  s1:='';
  for i:=1 to length(s) do
   begin
   	if not (s[i] in mns) then
   		s1:=s1+s[i]
   		else
   			begin
   				p:=1;
   				if (s1[p] in mnl)
   					then writeln(s1)
   					else
   					while (p<=length(s1)) and not (s1[p] in mnl) do
   						begin
   							p:=p+1;
   							if s1[k] in mnl then
   								writeln(s1);
   						end;
   					s1:='';
   			end;
   		end;
end.
