##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @a[team=play.zombie,gamemode=adventure] 519 -42 -116 -90 0
effect give @a[team=play.zombie,gamemode=adventure] darkness 10 25 true
effect give @a[team=play.zombie,gamemode=adventure] blindness 10 25 true
effect give @a[team=play.zombie,gamemode=adventure] slowness 10 2 true
tellraw @a[team=play.zombie] ["\u00a7a你：\u00a7f怎么回事？突然眼前一黑... 这好像是迷宫？赶快找到出口出去！这里的空气不太舒服！"]
scoreboard players set zombie.round board 25
