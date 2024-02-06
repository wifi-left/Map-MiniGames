playsound ui.button.click player @s ~ ~ ~ 1 1 1
# 重置人数统计
scoreboard players set wait.player tick 0 
# 计算人数
execute as @a[team=deskgame,gamemode=adventure] run scoreboard players add wait.player tick 1
# 判断人数、游戏状态
execute if score desk.state state matches 1.. run function minecraft:desk/spec
execute unless score desk.state state matches 1.. if score wait.player tick matches ..1 run tellraw @s ["\u00a7c人数不够！请等待至少2人！"]
execute unless score desk.state state matches 1.. if score wait.player tick matches ..1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score desk.state state matches 1.. if score wait.player tick matches 2.. run function minecraft:desk/start