program ex1;

type
    amountOfScores=record
      games,win,lose:integer
    end;
    team=record
      name:string;
      count:amountOfScores;
      score:integer
    end;
var
   tabl:array[1..5] of team;
begin
end.