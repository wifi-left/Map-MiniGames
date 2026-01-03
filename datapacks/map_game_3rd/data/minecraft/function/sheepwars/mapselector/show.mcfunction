##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score sheepwars.map state matches ..-1 run data modify block 497 -60 734 front_text.messages[2] set value "\u00a7a随\u00a7b机\u00a7c地\u00a7d图"
execute if score sheepwars.map state matches 0 run data modify block 497 -60 734 front_text.messages[2] set value "\u00a7e沙岩"
execute if score sheepwars.map state matches 1 run data modify block 497 -60 734 front_text.messages[2] set value "\u00a7b石头"

data modify block 505 -60 734 front_text set from block 497 -60 734 front_text