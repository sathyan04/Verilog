<pre>
Full=0, Empty=1 : At time 0


--- Test Case 1: Write 5 elements then Read 5 elements ---

WRITE	-> data :  36 || TIME : 175000
WRITE	-> data : 129 || TIME : 205000
WRITE	-> data :   9 || TIME : 235000

Full=0, Empty=0 : At time 238000

WRITE	-> data :  99 || TIME : 265000
WRITE	-> data :  13 || TIME : 295000
READ	-> data :  36 || TIME : 438000
READ	-> data : 129 || TIME : 488000
READ	-> data :   9 || TIME : 538000
READ	-> data :  99 || TIME : 588000
READ	-> data :  13 || TIME : 638000

Full=0, Empty=1 : At time 638000


--- Test Case 2: Fill until Full ---

WRITE	-> data : 141 || TIME : 885000
WRITE	-> data : 101 || TIME : 915000

Full=0, Empty=0 : At time 938000

WRITE	-> data :  18 || TIME : 945000
WRITE	-> data :   1 || TIME : 975000
WRITE	-> data :  13 || TIME : 1005000
WRITE	-> data : 118 || TIME : 1035000
WRITE	-> data :  61 || TIME : 1065000
WRITE	-> data : 237 || TIME : 1095000
WRITE	-> data : 140 || TIME : 1125000
WRITE	-> data : 249 || TIME : 1155000
WRITE	-> data : 198 || TIME : 1185000
WRITE	-> data : 197 || TIME : 1215000
WRITE	-> data : 170 || TIME : 1245000
WRITE	-> data : 229 || TIME : 1275000
WRITE	-> data : 119 || TIME : 1305000
WRITE	-> data :  18 || TIME : 1335000

Full=1, Empty=0 : At time 1335000

WRITE	-> data : 143 || TIME : 1365000

FIFO is Full!


--- Test Case 3: Empty until Empty ---

READ	-> data : 141 || TIME : 1613000

Full=0, Empty=0 : At time 1635000

READ	-> data : 101 || TIME : 1663000
READ	-> data :  18 || TIME : 1713000
READ	-> data :   1 || TIME : 1763000
READ	-> data :  13 || TIME : 1813000
READ	-> data : 118 || TIME : 1863000
READ	-> data :  61 || TIME : 1913000
READ	-> data : 237 || TIME : 1963000
READ	-> data : 140 || TIME : 2013000
READ	-> data : 249 || TIME : 2063000
READ	-> data : 198 || TIME : 2113000
READ	-> data : 197 || TIME : 2163000
READ	-> data : 170 || TIME : 2213000
READ	-> data : 229 || TIME : 2263000
READ	-> data : 119 || TIME : 2313000
READ	-> data :  18 || TIME : 2363000

Full=0, Empty=1 : At time 2363000

READ	-> data :  18 || TIME : 2413000

FIFO is Empty!


--- Test Case 4: Simultaneous Write and Read ---

WRITE	-> data : 242 || TIME : 2665000
WRITE	-> data : 206 || TIME : 2695000
WRITE	-> data : 232 || TIME : 2725000

Full=0, Empty=0 : At time 2738000

WRITE	-> data : 197 || TIME : 2755000
WRITE	-> data :  92 || TIME : 2785000
READ	-> data : 242 || TIME : 2788000
WRITE	-> data : 189 || TIME : 2815000
READ	-> data : 206 || TIME : 2838000
WRITE	-> data :  45 || TIME : 2845000
WRITE	-> data : 101 || TIME : 2875000
READ	-> data : 232 || TIME : 2888000
WRITE	-> data :  99 || TIME : 2905000
WRITE	-> data :  10 || TIME : 2935000
READ	-> data : 197 || TIME : 2938000
WRITE	-> data : 128 || TIME : 2965000
READ	-> data :  92 || TIME : 2988000
WRITE	-> data :  32 || TIME : 2995000
WRITE	-> data : 170 || TIME : 3025000
READ	-> data : 189 || TIME : 3038000
WRITE	-> data : 157 || TIME : 3055000
WRITE	-> data : 150 || TIME : 3085000
READ	-> data :  45 || TIME : 3088000
WRITE	-> data :  19 || TIME : 3115000
READ	-> data : 101 || TIME : 3138000
WRITE	-> data :  13 || TIME : 3145000
WRITE	-> data :  83 || TIME : 3175000
READ	-> data :  99 || TIME : 3188000
WRITE	-> data : 107 || TIME : 3205000
WRITE	-> data : 213 || TIME : 3235000
READ	-> data :  10 || TIME : 3238000
WRITE	-> data :   2 || TIME : 3265000
READ	-> data : 128 || TIME : 3288000
WRITE	-> data : 174 || TIME : 3295000
WRITE	-> data :  29 || TIME : 3325000
READ	-> data :  32 || TIME : 3338000
WRITE	-> data : 207 || TIME : 3355000
WRITE	-> data :  35 || TIME : 3385000
READ	-> data : 170 || TIME : 3388000
WRITE	-> data :  10 || TIME : 3415000
READ	-> data : 157 || TIME : 3438000
WRITE	-> data : 202 || TIME : 3445000
WRITE	-> data :  60 || TIME : 3475000
READ	-> data : 150 || TIME : 3488000
WRITE	-> data : 242 || TIME : 3505000
WRITE	-> data : 138 || TIME : 3535000
READ	-> data :  19 || TIME : 3538000
READ	-> data :  13 || TIME : 3588000
READ	-> data :  83 || TIME : 3638000
READ	-> data : 107 || TIME : 3688000
READ	-> data : 213 || TIME : 3738000
READ	-> data :   2 || TIME : 3788000
READ	-> data : 174 || TIME : 3838000
READ	-> data :  29 || TIME : 3888000
READ	-> data : 207 || TIME : 3938000
READ	-> data :  35 || TIME : 3988000
READ	-> data :  10 || TIME : 4038000
READ	-> data : 202 || TIME : 4088000
READ	-> data :  60 || TIME : 4138000
READ	-> data : 242 || TIME : 4188000
</pre>
