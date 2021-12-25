program ex2;
var
aBagOfWords, word:string;
startPos, endPos:integer;
begin
    writeln('Enter: ');
    readln(aBagOfWords);
    if aBagOfWords='' then
       begin
            aBagOfWords:='Everything is nothing and nothing is everything...';
            writeln(aBagofWords);
       end;

    while pos('.',aBagOfWords)<>0 do
          aBagOfWords[pos('.',aBagOfWords)]:=',';
    writeln(aBagOfWords);

    writeln('Enter word, which must to delete');
    readln(word);
    while pos(word, aBagOfWords)<>0 do
    begin
          startPos:=pos(word,aBagOfWords);
          endPos:=length(word);
          delete(aBagOfWords, startPos, endPos);
    end;
    writeln(aBagOfWords);

    {TODO: DODELATb ETO}
end.