##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
item replace entity @a[team=boat] hotbar.8 with minecraft:compass[lodestone_tracker={target:{dimension:"minecraft:boatworld2",pos:[I;-45,135,96]},tracked:0b},custom_name="\u00a7b\u00a7l终点指南针",lore=["\u00a77你到终点的直线方向"],custom_data={boatItem:1b}]

execute if score boat.type board matches 2 run item replace entity @a[team=boat] hotbar.0 with minecraft:carrot_on_a_stick[unbreakable={},custom_name="\u00a7b\u00a7l加速冲刺 \u00a77- 右键点击",custom_data={boatItem:2b},custom_model_data={floats:[13f]}]
execute if score boat.type board matches 4..5 run item replace entity @a[team=boat] hotbar.0 with minecraft:carrot_on_a_stick[unbreakable={},custom_name="\u00a7b\u00a7l加速冲刺 \u00a77- 右键点击",custom_data={boatItem:2b},custom_model_data={floats:[13f]}]
execute if score boat.type board matches 3 run item replace entity @a[team=boat] hotbar.0 with minecraft:warped_fungus_on_a_stick[unbreakable={},custom_name="\u00a7b\u00a7l加速冲刺 \u00a77- 右键点击",custom_data={boatItem:2b},custom_model_data={floats:[1f]}]

item replace entity @a[team=boat,tag=boat.notspawn] hotbar.0 with minecraft:carrot_on_a_stick[unbreakable={},custom_name="\u00a7a\u00a7l生成载具 \u00a77- 右键点击",custom_data={boatItem:3b},custom_model_data={floats:[14f]}]

execute unless score boat.type board matches 4 run item replace entity @a[team=boat] hotbar.7 with minecraft:carrot_on_a_stick[unbreakable={},custom_name="\u00a7b\u00a7l返回载具附近 \u00a77- 右键点击",lore=["\u00a77传送到你的载具附近"],custom_data={boatItem:1b},custom_model_data={floats:[15f]}]

execute if score boat.type board matches 1 run item replace entity @a[team=boat] weapon.offhand with air
execute if score boat.type board matches 3 run item replace entity @a[team=boat] weapon.offhand with warped_fungus_on_a_stick[unbreakable={},custom_data={boatItem:-1b},custom_model_data={floats:[2f]},custom_name="\u00a78你居然发现了我！"]
execute if score boat.type board matches 2 run item replace entity @a[team=boat] weapon.offhand with carrot_on_a_stick[unbreakable={},custom_data={boatItem:-1b},custom_model_data={floats:[16f]},custom_name="\u00a78你居然发现了我！"]
execute if score boat.type board matches 4 run item replace entity @a[team=boat] weapon.offhand with air

execute as @a[team=boat] at @s run function boat/detectmoreitem
execute if score boat.state state matches 1 run title @a[tag=boat.notinboat,team=boat] actionbar ["\u00a7e\u00a7l警告：您没有在您的载具里。请乘坐您的载具进行比赛！"]
execute if score boat.state state matches 2 run title @a[tag=boat.notinboat,team=boat] actionbar ["\u00a7a\u00a7l提示：请通过物品栏的工具召唤载具。"]
effect give @e[team=boat] resistance 4 25 true
execute if score boat.state state matches 2 run function boat/detectreadygo
execute if score boat.state state matches 3 run function boat/readycount


xp add @a[team=boat,level=1..] -1 levels

# 探测是否应该结束游戏
scoreboard players set boat.players tick 0
execute as @a[team=boat,gamemode=adventure] at @s run scoreboard players add boat.players tick 1
execute if score boat.state state matches 1..9 if score boat.players tick matches ..1 run function boat/over/over


