clear @a[gamemode=adventure,team=ballgame]
tellraw @a[gamemode=adventure,team=ballgame] ["\u00a7e球出界了！"]
title @a[gamemode=adventure,team=ballgame] title ["\u00a7e球出界了！"]
execute as @a[gamemode=adventure,team=ballgame] at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
execute at @s as @s[x=773,dx=20,z=-226,dz=-15] run rotate @s 0 0
execute at @s as @s[x=773,dx=20,z=-226,dz=-15] run tp @s 793 -58 -226
execute at @s as @s[x=793,dx=20,z=-120,dz=15] run rotate @s 180 0
execute at @s as @s[x=793,dx=20,z=-120,dz=15] run tp @s 773 -58 -120
execute at @s as @s[z=-227,dz=-15] run rotate @s 0 0
execute at @s as @s[z=-227,dz=-15] run tp @s ~ -58 -226
execute at @s as @s[z=-119,dz=15] run rotate @s 180 0
execute at @s as @s[z=-119,dz=15] run tp @s ~ -58 -120
execute at @s as @s[x=822,dx=15] run rotate @s 90 0
execute at @s as @s[x=822,dx=15] run tp @s 821 -58 ~
execute at @s as @s[x=744,dx=-15] run rotate @s -90 0
execute at @s as @s[x=744,dx=-15] run tp @s 745 -58 ~
scoreboard players set ball.turn temp 0
# B来：
execute if data entity @s {data:{lasttouched:"teama"}} run scoreboard players set ball.turn temp 1
# A来：
execute if data entity @s {data:{lasttouched:"teamb"}} run scoreboard players set ball.turn temp 2
scoreboard players set ballgame.state state 2

execute if score ball.turn temp matches 2 run function minecraft:ballgame/actions/football/start_ball/a
execute if score ball.turn temp matches 1 run function minecraft:ballgame/actions/football/start_ball/b