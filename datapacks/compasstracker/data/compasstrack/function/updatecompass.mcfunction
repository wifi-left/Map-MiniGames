##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute at @s run tag @p[team=play.sur,gamemode=survival] add sur.sel
clear @s compass

execute if entity @a[tag=sur.sel,limit=1] in overworld run item replace block 0 -64 0 container.0 with minecraft:compass[lodestone_tracker={target:{dimension:"minecraft:airworld",pos:[I;0,0,0]},tracked:0b},custom_name="\u00a7f玩家追踪指南针 \u00a7c(请勿移动此物品)",lore=["\u00a77默认追踪离你最近的玩家"]]

execute unless entity @a[tag=sur.sel,limit=1] in overworld run item replace block 0 -64 0 container.0 with minecraft:compass[lodestone_tracker={target:{dimension:"minecraft:airworld",pos:[I;0,0,0]},tracked:0b},custom_name="\u00a7f玩家追踪指南针 \u00a78- \u00a7c失去目标",lore=["\u00a77默认追踪离你最近的玩家"]]
# execute unless entity @a[tag=sur.sel,limit=1] run item replace entity @s[team=play.sur.zom] hotbar.8 with
execute in overworld positioned 0 -64 0 run data modify block 0 -64 0 Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @a[tag=sur.sel,limit=1] Pos
execute in overworld run loot replace entity @s hotbar.8 mine 0 -64 0 command_block[custom_data={drop_contents:1b}]
# item modify entity @s hotbar.8 compasstrack:compassupdater
tag @a remove sur.sel

