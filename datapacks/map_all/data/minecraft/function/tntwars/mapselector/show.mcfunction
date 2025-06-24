##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score tntwars.map state matches ..-1 run data modify block 496 21 240 front_text.messages[2] set value "\u00a7a随\u00a7b机\u00a7c地\u00a7d图"
execute if score tntwars.map state matches 0 run data modify block 496 21 240 front_text.messages[2] set value "\u00a7aBoat"
execute if score tntwars.map state matches 1 run data modify block 496 21 240 front_text.messages[2] set value "\u00a7bBallon"
execute if score tntwars.map state matches 2 run data modify block 496 21 240 front_text.messages[2] set value "\u00a7fCloud"
execute if score tntwars.map state matches 3 run data modify block 496 21 240 front_text.messages[2] set value "\u00a7dWool Planet"

