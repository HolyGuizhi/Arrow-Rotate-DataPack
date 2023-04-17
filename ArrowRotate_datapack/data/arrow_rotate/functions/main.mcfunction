#Guizhi

## 取得向量大小
    scoreboard players operation @s Mx *= @s Mx
    scoreboard players operation @s My *= @s My
    scoreboard players operation @s Mz *= @s Mz
    scoreboard players operation in nnmath_sqrt = @s Mx
    scoreboard players operation in nnmath_sqrt += @s My
    scoreboard players operation in nnmath_sqrt += @s Mz

    ##by NOPEname (below 3 lines)
    scoreboard players operation out nnmath_sqrt = in nnmath_sqrt
    scoreboard players set AR_tmp nnmath_sqrt 1
    execute if score out nnmath_sqrt > AR_tmp nnmath_sqrt run function arrow_rotate:sqrt_loop

    scoreboard players operation motion mag = out nnmath_sqrt

## 取得新向量方向 (sin, cos)
    scoreboard players operation @s vec_x *= @s vec_x
    scoreboard players operation @s vec_y *= @s vec_y
    scoreboard players operation @s vec_z *= @s vec_z
    scoreboard players operation in nnmath_sqrt = @s vec_x
    scoreboard players operation in nnmath_sqrt += @s vec_z
    
    ##by NOPEname (below 3 lines)
    scoreboard players operation out nnmath_sqrt = in nnmath_sqrt
    scoreboard players set AR_tmp nnmath_sqrt 1
    execute if score out nnmath_sqrt > AR_tmp nnmath_sqrt run function arrow_rotate:sqrt_loop

    scoreboard players operation r mag = out nnmath_sqrt
    scoreboard players operation in nnmath_sqrt += @s vec_y

    ##by NOPEname (below 3 lines)
    scoreboard players operation out nnmath_sqrt = in nnmath_sqrt
    scoreboard players set AR_tmp nnmath_sqrt 1
    execute if score out nnmath_sqrt > AR_tmp nnmath_sqrt run function arrow_rotate:sqrt_loop

    scoreboard players operation R mag = out nnmath_sqrt

scoreboard players operation phi sin = @s ay
scoreboard players operation phi sin *= 1000 mag
scoreboard players operation phi sin /= R mag

scoreboard players operation phi cos = r mag
scoreboard players operation phi cos *= 1000 mag
scoreboard players operation phi cos /= R mag

scoreboard players operation theta sin = @s az
scoreboard players operation theta sin *= 1000 mag
scoreboard players operation theta sin /= r mag

scoreboard players operation theta cos = @s ax
scoreboard players operation theta cos *= 1000 mag
scoreboard players operation theta cos /= r mag

## 改動向量
scoreboard players operation @s Mx = motion mag
scoreboard players operation @s Mx *= phi cos
scoreboard players operation @s Mx /= 1000 mag
scoreboard players operation @s Mx *= theta cos

scoreboard players operation @s My = motion mag
scoreboard players operation @s My *= phi sin

scoreboard players operation @s Mz = motion mag
scoreboard players operation @s Mz *= phi cos
scoreboard players operation @s Mz /= 1000 mag
scoreboard players operation @s Mz *= theta sin

## Motion資料輸入
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get @s Mx
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get @s My
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get @s Mz
