##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score color.time state matches ..3 run scoreboard players set color.time state 4
execute if score color.time state matches 19.. run scoreboard players set color.time state 18
execute if score color.maxtime state matches ..-1 run scoreboard players set color.maxtime state 0
execute if score color.maxtime state >= color.time state run scoreboard players operation color.maxtime state = color.time state
execute if score color.maxtime state >= color.time state run scoreboard players remove color.maxtime state 1


data modify block -36 29 34 front_text.messages[2] set value '["\\u00a7b[",{"score":{"objective":"state","name":"color.time"},"color":"gold"}," \\u00a7bs]"]'
data modify block -36 28 34 front_text.messages[2] set value '["\\u00a7b[",{"score":{"objective":"state","name":"color.maxtime"},"color":"gold"}," \\u00a7bs]"]'

