##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score live.timelimit live.all matches ..29 run tellraw @s ["\u00a7e[Warn] \u00a7e这个时间太短了！"]
execute if score live.timelimit live.all matches ..29 run scoreboard players set live.timelimit live.all 30
execute if score live.timelimit live.all matches 301.. run tellraw @s ["\u00a7e[Warn] \u00a7e这个时间太长了！"]
execute if score live.timelimit live.all matches 301.. run scoreboard players set live.timelimit live.all 300
tellraw @s ["\u00a7a[INFO] \u00a7d时间限制: ",{"score":{"objective":"live.all","name":"live.timelimit"},"color":"aqua"},"\u00a7b s"]
data modify block 25 7 11 front_text.messages[2] set value "[{\"score\":{\"objective\":\"live.all\",\"name\":\"live.timelimit\"},\"color\":\"aqua\"},\"\\u00a7b s\"]"

