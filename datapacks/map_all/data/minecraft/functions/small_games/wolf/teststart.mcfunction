# playsound entity.experience_orb.pickup player @s ~ ~ ~ 100 1 1
playsound ui.button.click player @s
scoreboard players set wait.player tick 0 
execute as @a[team=Who_Killer_Text,gamemode=adventure] run scoreboard players add wait.player tick 1

execute if score wolf.state state matches 1.. run function minecraft:small_games/wolf/spec
execute unless score wolf.state state matches 1.. if score wait.player tick matches ..2 run tellraw @s ["\u00a7c人数不够！请等待至少3人！"]
execute unless score wolf.state state matches 1.. if score wait.player tick matches ..2 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score wolf.state state matches 1.. if score wait.player tick matches 3.. run function minecraft:small_games/wolf/start