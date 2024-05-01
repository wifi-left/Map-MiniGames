##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set touzi.shop.id board 7
scoreboard players set touzi.shop.need board 8000

scoreboard players set touzi.shop.success board 0

$execute if score touzi.money.$(team) board >= touzi.shop.need board run scoreboard players set touzi.shop.success board 1

$execute if score touzit.$(team).touzi$(place) board = touzi.shop.id board run scoreboard players set touzi.shop.success board 2

$execute if score touzi.shop.success board matches 1 run tellraw @a[team=deskgame,tag=touzi.team.$(team)] [{"selector":"@s"},"\u00a7a购买了",{"text":"TNT骰子","color":"aqua"},"\u00a7a，将其替换了",{"text":"骰子$(place)","color": "yellow","bold": true}]

$execute if score touzi.shop.success board matches 1 run scoreboard players operation touzit.$(team).touzi$(place) board = touzi.shop.id board

$execute if score touzi.shop.success board matches 1 run scoreboard players operation touzi.money.$(team) board -= touzi.shop.need board
execute unless score touzi.shop.success board matches 1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
execute if score touzi.shop.success board matches 0 run tellraw @s ["\u00a7c购买失败！金钱不够。"]
execute if score touzi.shop.success board matches 2 run tellraw @s ["\u00a7c购买失败！该位置已为此骰子。"]
