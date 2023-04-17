#Guizhi

## 取得箭矢當前三個方向1000倍的動量
execute as @s store result score @s Mx run data get entity @s Motion[0] 1000
execute as @s store result score @s My run data get entity @s Motion[1] 1000
execute as @s store result score @s Mz run data get entity @s Motion[2] 1000

## 取得箭矢目標三個方向1000倍的向量
execute store result score @s vec_x run data get entity @e[tag=aim_pos,limit=1] Pos[0] 1000
execute store result score @s AR_tmp run data get entity @s Pos[0] 1000
scoreboard players operation @s vec_x -= @s AR_tmp
execute store result score @s vec_y run data get entity @e[tag=aim_pos,limit=1] Pos[1] 1000
execute store result score @s AR_tmp run data get entity @s Pos[1] 1000
scoreboard players operation @s vec_y -= @s AR_tmp
execute store result score @s vec_z run data get entity @e[tag=aim_pos,limit=1] Pos[2] 1000
execute store result score @s AR_tmp run data get entity @s Pos[2] 1000
scoreboard players operation @s vec_z -= @s AR_tmp

scoreboard players operation @s ax = @s vec_x
scoreboard players operation @s ay = @s vec_y
scoreboard players operation @s az = @s vec_z

## 向量調整
execute if entity @e[tag=aim_pos] run function arrow_rotate:main

## 收尾
kill @e[tag=aim_pos,type=marker]
tag @e[tag=aim_pos] remove aim_pos
