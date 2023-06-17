playsound ui.button.click player @s
scoreboard players set wait.player tick 0 
execute as @a[team=wait.zombie,gamemode=adventure] run scoreboard players add wait.player tick 1
scoreboard players add zombie.state state 0
execute if score zombie.state state matches 1.. run function minecraft:zombieever/spec
execute unless score zombie.state state matches 1.. if score wait.player tick matches ..0 run tellraw @s ["\u00a7c人数不够！请等待至少1人！"]
execute unless score zombie.state state matches 1.. if score wait.player tick matches ..0 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score zombie.state state matches 1.. if score wait.player tick matches 1.. run function minecraft:zombieever/start
