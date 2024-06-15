##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players remove temp state 1
summon marker 0 0 0 {Tags:["beliran"]}
execute if score temp state matches 1.. run function believer/summon
