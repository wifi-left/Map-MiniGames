scoreboard players set wait.snow.player tick 0 
playsound ui.button.click player @s
execute as @a[team=wait.snow,gamemode=adventure] run scoreboard players add wait.snow.player tick 1

execute if score snow.state state matches 1.. run function minecraft:snow/spec
execute unless score snow.state state matches 1.. if score wait.snow.player tick matches ..1 run function minecraft:snow/notenough
execute unless score snow.state state matches 1.. if score wait.snow.player tick matches 2.. run function minecraft:snow/start