\cd C:\Users\seana\Desktop\AOC2021\day5
v:(value'')" -> " vs/:read0 `:day5eg.txt
v:(value'')" -> " vs/:read0 `:day5.txt

// range function to generate from point (x1,y1) to (x2,y2)
xyrange:{[p1;p2] u:signum d:p2-p1; f:{x+y}[u;]; (max abs d) f\p1}

// part 1 - 6225
count where 1<count each group raze xyrange ./: v where {any (=/)x} each v

// part 2 - 22116
count where 1<count each group raze xyrange ./: v
