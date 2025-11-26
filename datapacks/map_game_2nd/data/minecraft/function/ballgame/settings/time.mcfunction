playsound ui.button.click player @s ~ ~ ~ 1 1 1
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add ballgame.time state 2
execute if score ballgame.time state matches 31.. run scoreboard players set ballgame.time state 2

data modify block ~ ~ ~ front_text.messages[1] set value [{text:"[ ",color:green},{score:{name:ballgame.time,objective:state},color:green},{text:"min ]",color:green}]
