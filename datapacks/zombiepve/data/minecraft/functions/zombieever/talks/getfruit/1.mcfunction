##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
#pve.event.block.fruit
bossbar set zombie:zombiecount name ["\u00a7a对话：\u00a7f与亚奇洛贝"]
scoreboard players set zombie.round board 2
tellraw @a[team=play.zombie] ["\u00a7a你：\u00a7f您好，我想要注册冒险者。"]
schedule function minecraft:zombieever/talks/getfruit/2 4s append
