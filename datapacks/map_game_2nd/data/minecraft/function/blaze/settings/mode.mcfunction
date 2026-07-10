playsound ui.button.click player @s ~ ~ ~ 1 1 1
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

scoreboard players add blaze.mode state 1
execute if score blaze.mode state matches 4.. run scoreboard players set blaze.mode state 1

execute if score blaze.mode state matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[占点模式]",color:green}
execute if score blaze.mode state matches 1 run data modify block ~ ~-1 ~ front_text.messages set value ['',{text:"占据据点、守卫据点，",color:white},{text:"得分最高者胜利。",color:white},'']
execute if score blaze.mode state matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[团战模式]",color:light_purple}
execute if score blaze.mode state matches 2 run data modify block ~ ~-1 ~ front_text.messages set value ['',{text:"两个队伍之间PVP，",color:white},{text:"得分最高者胜利。",color:white},'']
execute if score blaze.mode state matches 3 run data modify block ~ ~ ~ front_text.messages[1] set value {text:"[警匪模式]",color:red}
execute if score blaze.mode state matches 3 run data modify block ~ ~-1 ~ front_text.messages set value [{text:"队伍\u00a79[警]\u00a7f保护据点，",color:white},{text:"队伍\u00a7c[匪]\u00a7f攻占据点。",color:white},{text:"一段时间交换队伍，",color:white},{text:"成功完成目标得分。",color:white}]