##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @e[team=boom] resistance 3 25 true
effect give @e[team=boom] night_vision 15 25 true
execute if score boom.state state matches 2..4 run function minecraft:bomb/round/testfor
execute if score boom.state state matches 1..4 run function minecraft:bomb/detect_unexpected

execute if score boom.state state matches 2..4 run scoreboard players remove boom.time board 1
execute if score boom.state state matches 2..4 run bossbar set minecraft:boom name ["\u00a7f拆弹专家\u00a7b【地图\u00a7a#",{score:{name:"boob.level",objective:board}},"\u00a7b】 \u00a78| \u00a76时间限制 \u00a7bTime Limit \u00a77| \u00a7a剩余：",{"score": {"objective": "board","name": "boom.time"},"color": "#078848"},"\u00a7as"]
execute if score boom.state state matches 2..4 run execute store result bossbar boom value run scoreboard players get boom.time board

execute if score boom.state state matches 2..4 run item replace entity @a[team=boom,gamemode=adventure] hotbar.0 with netherite_hoe[unbreakable={},item_name={text:"幽匿铲除器"},can_break={blocks:["sculk","sculk_catalyst","sculk_sensor","sculk_shrieker","sculk_vein"]},tooltip_display={hidden_components:["can_break","unbreakable"]},enchantments={efficiency:5}]
execute if score boom.state state matches 2..4 run item replace entity @a[team=boom,gamemode=adventure] hotbar.1 with lime_wool[unbreakable={},item_name={text:"幽匿阻碍器"},can_place_on=[{blocks:["black_wool"]},{blocks:"#sculk_blocks"}],can_break={blocks:"#sculk_blocks"},tooltip_display={hidden_components:["can_break","unbreakable"]}] 4
execute if score boom.state state matches 2..4 run item replace entity @a[team=boom,gamemode=adventure] hotbar.7 with minecraft:potion[custom_name="\u00a7b重来 \u00a77- 长按使用",food={can_always_eat:true,nutrition:1,saturation:1},consumable={consume_seconds:1},custom_data={boom:1},potion_contents={custom_color:361162}]
execute if score boom.state state matches 2..5 run item replace entity @a[team=boom,gamemode=adventure] hotbar.8 with minecraft:potion[custom_name="\u00a7c放弃 \u00a77- 长按使用",food={can_always_eat:true,nutrition:1,saturation:1},consumable={consume_seconds:1},custom_data={boom:2},potion_contents={custom_color:13700358}]
