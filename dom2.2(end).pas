var s:=ReadLnString('Введите строку: ');
var ps:=ReadLnString('Введите подстроку: ');
var t:='';
var c:=1;
var k:=0;
var countPs:=0;
begin
  var i:=1;
while i<=Length(s) do begin
   k:=0;
   while ((i+k)<=Length(s)) and (k<Length(ps)) and (s[i+k]=ps[k+1]) do
        inc(k);
   if k=Length(ps) then Inc(countPs);
   if (k=Length(ps)) and not odd(countPs) then inc(i,k)
   else begin
     t:=t+s[i];
     inc(i);
     end;
   end;
s:=t;
writeln(s);
end.