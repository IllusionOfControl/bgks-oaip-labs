program ex1;

type vertex=record
     x,y:integer;
end;

var size, P:real;
    i:integer;
    vertices:array[1..8] of vertex;

procedure calcLength(v1,v2:vertex);
begin
     size:=sqrt(sqr(v1.x+v2.x)+sqr(v1.y+v2.y));
end;

begin
     writeln('Enter coordinates of vertex [x y]');
     for i:=1 to 8 do
         readln(vertices[i].x, vertices[i].y);
     for i:=1 to 7 do
         begin
              calcLength(vertices[i],vertices[i+1]);
              p:=p+size;
         end;
     writeln('P = ', p:1:1);
end.
