##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless score desk.state state matches 3 run tellraw @s ["\u00a7c这不是你们的轮合。"]
execute unless score desk.state state matches 3 run return 0
tellraw @a[team=deskgame,tag=touzi.team.a] ["\u00a77---------------------\n\u00a76\u00a7l出牌小结:\n\u00a7c攻击: ",{"score":{"name": "touzi.a.attack","objective": "board"},"color": "gold"},"\n\u00a7b防御: ",{"score":{"name": "touzi.a.defend","objective": "board"},"color": "gold"},"\n\u00a77---------------------"]
execute as @e[type=armor_stand,tag=desk.touzi.place] at @s run function minecraft:desk/touzi/confirmround/clear_item

function minecraft:desk/touzi/round/bturn

