##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless score desk.state state matches 4 run return fail
scoreboard players remove merchant.jump.step board 1

execute unless entity @e[distance=..3,sort=nearest,limit=1,type=marker,tag=merchant.point] run return run title @s actionbar ["\u00a7e无效位置。"]
title @s actionbar ["\u00a7a你还可以走 ",{score:{objective:"board",name:"merchant.jump.step"},color:aqua,bold:true},"\u00a7a 步"]

scoreboard players operation marchant.now temp = @e[distance=..3,sort=nearest,limit=1,type=marker,tag=merchant.point] board
function minecraft:merchant/player/action/jump_special_detect
tag @e[type=marker,tag=merchant.tojump] remove merchant.tojump
execute as @e[type=marker,tag=merchant.point] if score marchant.now temp = @s board run tag @s add merchant.tojump
execute as @s positioned as @e[tag=merchant.tojump,type=marker,limit=1] run tp @s ~ ~1 ~
playsound ui.button.click player @s ~ ~ ~ 1 2 1
tag @e[type=marker,tag=merchant.tojump] remove merchant.tojump

execute if score merchant.jump.step board matches ..0 run return run function minecraft:merchant/player/move_step_over
