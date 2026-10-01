##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score color.time state matches ..3 run scoreboard players set color.time state 4
execute if score color.time state matches 19.. run scoreboard players set color.time state 18
execute if score color.maxtime state matches ..-1 run scoreboard players set color.maxtime state 0
execute if score color.maxtime state >= color.time state run scoreboard players operation color.maxtime state = color.time state
execute if score color.maxtime state >= color.time state run scoreboard players remove color.maxtime state 1
# 每 x 局减 1s：范围 1..30（下界防 %= 除零；上界只为显示整齐），缺省 1 = 每局都减
execute if score color.dec state matches ..0 run scoreboard players set color.dec state 1
execute if score color.dec state matches 31.. run scoreboard players set color.dec state 30


data modify block -36 29 34 front_text.messages[2] set value ["\u00a7b[",{"score":{"objective":"state","name":"color.time"},"color":"gold"}," \u00a7bs]"]
data modify block -36 28 34 front_text.messages[2] set value ["\u00a7b[",{"score":{"objective":"state","name":"color.maxtime"},"color":"gold"}," \u00a7bs]"]
# 第三块牌子（-36 30 34）显示「每几局减 1s」；该处没有告示牌时会被 all_signs 判定跳过
execute if block -36 30 34 #minecraft:all_signs run data modify block -36 30 34 front_text.messages[2] set value ["\u00a7b[",{"score":{"objective":"state","name":"color.dec"},"color":"gold"}," \u00a7b局/1s]"]
# 点牌子时在聊天里回显三项当前设置，方便确认改到了没有
tellraw @s ["\u00a7b[设置] \u00a7f每回合秒数 ",{"score":{"objective":"state","name":"color.time"},"color":"gold"}," \u00a7f| 最多减少 ",{"score":{"objective":"state","name":"color.maxtime"},"color":"gold"}," \u00a7f| 每 ",{"score":{"objective":"state","name":"color.dec"},"color":"gold"}," \u00a7f局减 1s"]


