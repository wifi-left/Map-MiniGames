##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set live.state state 3
tp @a[team=wait.live] 105 93 168 0 90
team join play.live.runner @a[team=wait.live]
scoreboard players set givething live.all 21
scoreboard players set gamestart live.all 6
fill 106 92 169 104 92 167 minecraft:smooth_basalt
kill @e[type=item]
team modify play.live.runner friendlyFire false
clear @a[team=play.live.runner]
execute store result bossbar minecraft:live max run scoreboard players get live.timelimit live.all
scoreboard players set live.time live.all -20
effect give @a[team=play.live.runner] resistance 25 25 true
effect give @a[team=play.live.runner] regeneration 2 25 true
