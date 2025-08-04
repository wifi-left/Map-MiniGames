##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set touzi.shop.id board 6
scoreboard players set touzi.shop.need board 6000

scoreboard players set touzi.shop.success board 0

## WARNING: Macros may be not fully supported yet.
$execute if score touzi.money.$(team) board >= touzi.shop.need board run scoreboard players set touzi.shop.success board 1

## WARNING: Macros may be not fully supported yet.
$execute if score touzit.$(team).touzi$(place) board = touzi.shop.id board run scoreboard players set touzi.shop.success board 2


## WARNING: Macros may be not fully supported yet.
$execute if score touzi.shop.success board matches 1 run tellraw @a[team=deskgame,tag=touzi.team.$(team)] [{"selector":"@s"},"§a购买了",{"text":"龙骰子","color":"aqua"},"§a，将其替换了",{"text":"骰子$(place)","color":"yellow","bold":true}]

## WARNING: Macros may be not fully supported yet.
$execute if score touzi.shop.success board matches 1 run scoreboard players operation touzit.$(team).touzi$(place) board = touzi.shop.id board

## WARNING: Macros may be not fully supported yet.
$execute if score touzi.shop.success board matches 1 run scoreboard players operation touzi.money.$(team) board -= touzi.shop.need board

execute unless score touzi.shop.success board matches 1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
execute if score touzi.shop.success board matches 0 run tellraw @s ["§c购买失败！金钱不够。"]
execute if score touzi.shop.success board matches 2 run tellraw @s ["§c购买失败！该位置已为此骰子。"]

