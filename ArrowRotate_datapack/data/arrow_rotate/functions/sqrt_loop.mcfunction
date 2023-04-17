##by NOPEname

scoreboard players operation out nnmath_sqrt += AR_tmp nnmath_sqrt
scoreboard players operation out nnmath_sqrt /= 2 nnmath_sqrt

scoreboard players operation AR_tmp nnmath_sqrt = in nnmath_sqrt
scoreboard players operation AR_tmp nnmath_sqrt /= out nnmath_sqrt

execute if score out nnmath_sqrt > AR_tmp nnmath_sqrt run function arrow_rotate:sqrt_loop
