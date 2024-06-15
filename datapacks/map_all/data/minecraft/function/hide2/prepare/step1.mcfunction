##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players remove hide2.huntgo board 1
title @a[team=hide.killer] actionbar ["\u00a7a你将在 ",{"score":{"objective":"board","name":"hide2.huntgo"},"color":"yellow"},"\u00a7es\u00a7a 后出动"]
title @a[team=hide.runner] actionbar ["\u00a7a猎人将在 ",{"score":{"objective":"board","name":"hide2.huntgo"},"color":"yellow"},"\u00a7es\u00a7a 后出动"]
execute if score hide2.huntgo board matches ..0 run function hide2/prepare/hungo

# execute if score hide2.huntgo board matches 25 as @a[team=hide.play.ani] at @s run function hide2/changeanimal

