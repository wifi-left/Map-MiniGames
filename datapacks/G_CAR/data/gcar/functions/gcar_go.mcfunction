# execute positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^2 {Tags:["GCAR.way"]}
# tag @a[tag=GCAR.go,y_rotation=-22.5..22.5] add GCAR.go0
# tag @a[tag=GCAR.go,y_rotation=22.5..67.5] add GCAR.go1
# tag @a[tag=GCAR.go,y_rotation=67.5..112.5] add GCAR.go2
# tag @a[tag=GCAR.go,y_rotation=112.5..157.5] add GCAR.go3
# tag @a[tag=GCAR.go,y_rotation=157.5..-157.5] add GCAR.go4
# tag @a[tag=GCAR.go,y_rotation=-157.5..-112.5] add GCAR.go5
# tag @a[tag=GCAR.go,y_rotation=-112.5..-67.5] add GCAR.go6
# tag @a[tag=GCAR.go,y_rotation=-67.5..-22.5] add GCAR.go7
# data modify entity @s Motion[0] set value 0
# data modify entity @s Motion[2] set value 0

execute as @s at @s unless block ~ ~-0.5 ~ air run scoreboard players add @s[tag=GCAR.go] GCAR.tick 1
execute as @s[scores={GCAR.tick=2..}] at @s run scoreboard players add @s GCAR.long 1
execute as @s[scores={GCAR.tick=2..}] at @s run scoreboard players set @s GCAR.tick 0
## Rotation
execute as @s[tag=GCAR.go] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~ ~-0.5 ~ air run data modify entity @s Motion[1] set value 0.04

## go0
execute as @s[tag=GCAR.go0] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value 0.0
execute as @s[tag=GCAR.go0] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[2] set value 2.0
execute as @s[tag=GCAR.go0] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~ ~ ~1 air if block ~ ~1.5 ~1 air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2
## go1
execute as @s[tag=GCAR.go1] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value 45.0
execute as @s[tag=GCAR.go1] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[2] set value 2.0
execute as @s[tag=GCAR.go1] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[0] set value -2.0
execute as @s[tag=GCAR.go1] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~-1 ~ ~1 air if block ~-1 ~1.5 ~1 air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2

## go2
execute as @s[tag=GCAR.go2] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value 180.0
execute as @s[tag=GCAR.go2] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[0] set value -2.0
execute as @s[tag=GCAR.go2] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~-1 ~ ~ air if block ~-1 ~1.5 ~ air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2

## go3
execute as @s[tag=GCAR.go3] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value 135.0
execute as @s[tag=GCAR.go3] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[2] set value -2.0
execute as @s[tag=GCAR.go3] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[0] set value -2.0
execute as @s[tag=GCAR.go3] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~-1 ~ ~-1 air if block ~-1 ~1.5 ~-1 air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2

## go4
execute as @s[tag=GCAR.go4] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value 90.0
execute as @s[tag=GCAR.go4] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[2] set value -2.0
execute as @s[tag=GCAR.go4] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~ ~ ~-1 air if block ~ ~1.5 ~-1 air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2

## go5
execute as @s[tag=GCAR.go5] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value -135.0
execute as @s[tag=GCAR.go5] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[2] set value -2.0
execute as @s[tag=GCAR.go5] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[0] set value 2.0
execute as @s[tag=GCAR.go5] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~-1 ~ ~1 air if block ~-1 ~1.5 ~1 air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2

## go6
execute as @s[tag=GCAR.go6] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value -90.0
execute as @s[tag=GCAR.go6] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[0] set value 2.0
execute as @s[tag=GCAR.go6] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~1 ~ ~ air if block ~1 ~1.5 ~ air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2

## go7
execute as @s[tag=GCAR.go6] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Rotation[0] set value -45.0

execute as @s[tag=GCAR.go7] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[0] set value 2.0
execute as @s[tag=GCAR.go7] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[2] set value 2.0
execute as @s[tag=GCAR.go7] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~1 ~ ~1 air if block ~1 ~1.5 ~1 air unless block ~ ~-0.9 ~ air run data modify entity @s Motion[1] set value 0.2

# execute as @s[tag=GCAR.go] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s if block ~ ~-0.1 ~ air run data modify entity @s Motion[1] set value -0.15
execute as @s[tag=GCAR.go] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s if block ~ ~-0.5 ~ lime_glazed_terracotta run data modify entity @s Motion[1] set value 1.0
execute as @s[tag=GCAR.go] as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ~ ~ ~ air unless block ~ ~ ~ #wall_signs unless block ~ ~ ~ #signs unless block ~ ~ ~ torch run data modify entity @s Motion[1] set value 0.2

# execute as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s unless block ^ ^ ^0.1 air run data modify entity @s Motion[1] set value 0.1
# execute as @e[distance=0..1,sort=nearest,limit=1,tag=ridden,tag=GCAR] at @s run data modify entity @s Motion[2] set from entity @e[limit=1,sort=nearest,type=marker,tag=GCAR.way] Pos[2]
kill @e[type=marker,tag=GCAR.way]
