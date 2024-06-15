##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s ~ ~ ~ 1 1 1

## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以设定游戏选项。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

$scoreboard players $(control) wolf.$(job) state 1

$execute if score wolf.$(job) state matches ..-1 run scoreboard players set wolf.$(job) state 0
execute if score wolf.predictor state matches 1.. run scoreboard players set wolf.predictor state 1
execute if score wolf.witch state matches 1.. run scoreboard players set wolf.witch state 1
execute if score wolf.guard state matches 1.. run scoreboard players set wolf.guard state 1
execute if score wolf.cupid state matches 1.. run scoreboard players set wolf.cupid state 1
execute if score wolf.arsonist state matches 1.. run scoreboard players set wolf.arsonist state 1

$data modify block ~ 8 ~ front_text.messages[3] set value '{"score":{"objective":"state","name":"wolf.$(job)"},"color":"light_purple"}'
execute if score wolf.auto state matches 1 run title @s actionbar ["\u00a7e\u00a7l注意：\u00a7c您已启用\u00a7a[自动模式]\u00a7c，设置此处将无效。若希望其能生效，请切换至\u00a7e[手动模式]"]
