##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\u00a7e亚奇洛贝：\u00a7f最近果园附近有很多怪物出没，导致果实没了收成。请你们去击败它们，并顺便采摘果实。\n"]
function zombieever/tasks/getfruit
# scoreboard players set zombie.round board 2
