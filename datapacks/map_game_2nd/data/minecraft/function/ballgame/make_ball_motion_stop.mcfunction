execute if items entity @s weapon.* leather_boots run return run tellraw @s ["\u00a7c请左键发球。"]
execute unless items entity @s armor.feet leather_boots run return fail

data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[0] set value 0d
data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[1] set value 0d
data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] Motion[2] set value 0d
execute at @s run playsound entity.wind_charge.throw player @s ~ ~ ~ 1 1 1 
execute as @s[tag=ball.teama] run data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] data.lasttouched set value "teama"
execute as @s[tag=ball.teamb] run data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] data.lasttouched set value "teamb"
execute unless entity @s[tag=ball.teama] unless entity @s[tag=ball.teamb] run data modify entity @e[distance=..10,tag=ballgame.ball,type=armor_stand,limit=1,sort=nearest] data.lasttouched set value "unknown"