\cd C:\Users\seana\Desktop\AOC2021\day2
f:`:day2eg.txt
f:`:day2.txt
l:{x:" "vs x;(first x[0];"J"$x[1])} each read0 f

// part 1 - 1507611
m:"fdu"!(1 0;0 -1;0 1)
prd abs {x+y[1]*m y[0]}/[0 0;l]
\ts:1000 prd abs {x+y[1]*m y[0]}/[0 0;l] 
// 421 2176

// part 2 - 1880593125
\ts:1000 prd 2# {
  x+y[1]*$["d"=a:y[0];
    0 0 1;
    "u"=a;
    0 0 -1;
    1, x[2], 0]
  }/[0 0 0;l]
// 603 6048
prd 2# {m:"fdu"!(1,x[2],0;0 0 1;0 0 -1); x+y[1]*m y[0]}/[0 0 0;l]

// part 1 - for fun
forward:{state+:x*1 0}
down:{state+:x*0 -1}
up:{state+:x*0 1}
state:0 0; value each read0 `:day2.txt; prd abs state
\ts:1000 state:0 0; value each read0 `:day2.txt

// part 2 - for fun
forward:{state+:x*(1;aim)}
down:{aim+:x}
up:{aim-:x}
aim:0; state:0 0; value each read0 `:day2.txt; prd abs state
// 1580 53072 - way slower but hey!
\ts:1000 aim:0; state:0 0; value each read0 `:day2.txt
