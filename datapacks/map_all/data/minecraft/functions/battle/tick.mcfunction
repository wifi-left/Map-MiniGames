##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[x=148,y=29,z=-420,dx=1,dy=1,dz=1,gamemode=!creative] at @s run function battle/died

# execute as @a[team=play.battle.r,gamemode=adventure] at @s as @e[type=item,distance=..3,sort=nearest] at @s run
execute as @a[team=play.battle.r,gamemode=adventure] at @s as @e[type=item,distance=..3,sort=nearest] at @s run function battle/itemdatamerge

# execute as @a[team=play.battle.b,gamemode=adventure] at @s as @e[type=item,distance=..3,sort=nearest] at @s run data modify entity @s Owner set from entity @s Thrower
# CanDestroy:["white_wool","blue_wool","red_wool"],CanPlaceOn:["sea_lantern","white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63
execute as @a[team=play.battle.b,gamemode=adventure] at @s as @e[type=item,distance=..3,sort=nearest] at @s run function battle/itemdatamerge
# execute as @a[team=play.battle.b,gamemode=adventure] at @s as @e[type=item,distance=..3,sort=nearest] at @s run data merge entity @s {PickupDelay:0}

fill 143 28 -339 145 28 -341 air destroy
fill 139 28 -345 149 35 -335 air replace #minecraft:wool



# execute as @e[type=armor_stand,tag=battle.ranpotion] at @s run function battle/ranpotiontick
