##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
scoreboard players set wait.bw.player tick 0
execute as @a[team=bw.wait,gamemode=adventure] run scoreboard players add wait.bw.player tick 1
execute unless score bw.state state matches ..-1 unless score bw.state state matches 1.. if score wait.bw.player tick matches ..1 run title @a[team=bw.wait] subtitle ["\u00a7cWait for more players !"]
execute unless score bw.state state matches ..-1 unless score bw.state state matches 1.. if score wait.bw.player tick matches ..1 run title @a[team=bw.wait] title ["\u00a7fBedwars"]
execute unless score bw.state state matches ..-1 unless score bw.state state matches 1.. if score wait.bw.player tick matches 2.. run function minecraft:bedwars/before/start
