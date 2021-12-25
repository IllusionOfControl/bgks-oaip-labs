program ex1;
var
   word: string;
   newWords:array[1..5] of string;
   i:integer;
begin
     writeln;
     word:='gelezodorognik';
     writeln(word);
     newWords[1]:=concat(copy(word,1,5),word[6]);
     newWords[2]:=copy(word,7,14); {delete(word,1,13)}
     newWords[3]:=concat(word[14],word[13],word[12],word[10]);
     newWords[4]:=concat(copy(word,9,3),word[14],word[13]);
     newWords[5]:=concat(word[9], copy(word,2,3));

     for i:=1 to 5 do writeln(newWords[i]);
end.