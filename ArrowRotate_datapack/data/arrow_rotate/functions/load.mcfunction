#Guizhi

## 建立向量計分板
scoreboard objectives add ax dummy
scoreboard objectives add ay dummy
scoreboard objectives add az dummy
scoreboard objectives add vec_x dummy
scoreboard objectives add vec_y dummy
scoreboard objectives add vec_z dummy
scoreboard objectives add Mx dummy
scoreboard objectives add My dummy
scoreboard objectives add Mz dummy

## 建立三角函數記分板
scoreboard objectives add sin dummy
scoreboard objectives add cos dummy
scoreboard objectives add AR_tmp dummy
scoreboard objectives add mag dummy
scoreboard players set 1000 mag 1000

## by NOPEname
scoreboard objectives add nnmath_sqrt dummy
scoreboard players set 2 nnmath_sqrt 2

## 載入完成輸出
# execute as @a at @s run playsound entity.player.levelup ambient @s
