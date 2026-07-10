# tellraw @s ["\u00a7c该游戏返厂更新中..."]
# execute if entity @a[team=wait.killer,tag=play.total] run function minecraft:small_games/total/next_game_trigger

# return fail

playsound ui.button.click player @s
scoreboard players set wait.player tick 0
execute as @a[team=wait.killer,gamemode=adventure] run scoreboard players add wait.player tick 1

execute if score killer.state state matches 1.. run return run function minecraft:killerever/spec

## 检测是否禁止启动
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["§c游戏仅管理员可以开始。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0

execute unless score killer.state state matches 1.. if score wait.player tick matches ..1 run tellraw @s ["§c人数不够！请等待至少2人！"]
execute unless score killer.state state matches 1.. if score wait.player tick matches ..1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score killer.state state matches 1.. if score wait.player tick matches 2.. run function minecraft:killerever/start

