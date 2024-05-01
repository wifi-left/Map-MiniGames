##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set zombie:zombiecount name ["\u00a7a对话：\u00a7f与\u00a7e亚奇洛贝"]
scoreboard players set zombie.round board 5
tellraw @a[team=play.zombie] ["\u00a7e亚奇洛贝：\u00a7f恭喜你们完成任务。\n"]
tellraw @a[team=play.zombie] ["\u00a76+ 3000 \u00a76Coins (任务完成)"]
schedule function zombieever/talks/crazyrabbit/1 5s
scoreboard players add @a[team=play.zombie] zombie.coin 3000

