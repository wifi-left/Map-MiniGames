##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add snow.tntrun state 1
execute if score snow.tntrun state matches 4.. run scoreboard players set snow.tntrun state 0
# snow.mode bo1ard
execute if score snow.tntrun state matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value {"text":"掘一死战","color":"aqua",bold:true}
execute if score snow.tntrun state matches 0 run data modify block ~ ~-1 ~ front_text.messages set value ["","\u00a76用工具让对手落下！","非常简单的模式",""]
execute if score snow.tntrun state matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value {"text":"TNTRUN","color":"red",bold:true}
execute if score snow.tntrun state matches 1 run data modify block ~ ~-1 ~ front_text.messages set value ["","\u00a76不停奔跑，小心掉落！","走过的方块会掉落消失",""]
execute if score snow.tntrun state matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value {"text":"混合模式","color":"yellow",bold:true}
execute if score snow.tntrun state matches 2 run data modify block ~ ~-1 ~ front_text.messages set value ["","\u00a76大杂烩!两种模式混合!","(不包含爆炸弓模式)",""]
execute if score snow.tntrun state matches 3 run data modify block ~ ~ ~ front_text.messages[1] set value {"text":"爆炸弓模式","color":"red",bold:true}
execute if score snow.tntrun state matches 3 run data modify block ~ ~-1 ~ front_text.messages set value ["","\u00a76射向敌人脚下的方块！","SHOOOOOT",""]

playsound ui.button.click player @s ~ ~ ~ 1 1 1

