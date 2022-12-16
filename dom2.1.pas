begin
 var a: array of integer;
 var z,x,raz:integer;
 var n:=ReadInteger;
 SetLength(a,n);
 for var i:=0 to n-1 do a[i]:=ReadInteger;
z:=0;
x:=1;
raz:=abs(a[z]-a[x]);
  for var i:=1 to n-1 do
     for var j:=i+1 to n do
    if raz>abs(a[i-1]-a[j-1]) then begin
      z:=i-1; x:=j-1; raz:=abs(a[i-1]-a[j-1]);
    end;
  print(a[z],a[x]);
end.