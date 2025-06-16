##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set zombie:zombiecount name ["\u00a7a对话：\u00a7f与\u00a7e亚奇洛贝"]
scoreboard players set zombie.round board 5
tellraw @a[team=play.zombie] ["§e亚奇洛贝：§f新任务来啦！请前往§bMystery Village§f将变异的村民们都杀掉。\n"]
schedule function minecraft:zombieever/tasks/rescue_village 4s append


