##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless score desk.state state matches 4 run tellraw @s ["§c这不是你们的轮合。"]
execute unless score desk.state state matches 4 run return 0
tellraw @a[team=deskgame,tag=touzi.team.b] ["§7---------------------\n§6§l出牌小结:\n§c攻击: ",{"score":{"name":"touzi.b.attack","objective":"board"},"color":"gold"},"\n§b防御: ",{"score":{"name":"touzi.b.defend","objective":"board"},"color":"gold"},"\n§7---------------------"]
execute as @e[type=armor_stand,tag=desk.touzi.place] at @s run function minecraft:desk/touzi/confirmround/clear_item
function minecraft:desk/touzi/round/over

