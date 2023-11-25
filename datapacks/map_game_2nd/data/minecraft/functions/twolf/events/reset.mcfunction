scoreboard players set wolf.arsonist board 0
scoreboard players set wolf.cupid board 0
scoreboard players set wolf.guard board 0
scoreboard players set wolf.hunter board 0
scoreboard players set wolf.knight board 0
scoreboard players set wolf.predictor board 0
scoreboard players set wolf.tnt board 0
scoreboard players set wolf.whitewolf board 0
scoreboard players set wolf.witch board 0
scoreboard players set wolf.wolf board 0
scoreboard players set wolf.people board 0

# 状态
scoreboard players set wolf.event board 0

scoreboard players reset * LRS_CS

# 女巫的药水
scoreboard players set wolf.witch.rescue board 1
scoreboard players set wolf.witch.kill board 1

scoreboard players set wolf.round board 0
# scoreboard players set wolf.guard.lastprotected board 0

execute positioned 29 16 31 run kill @e[type=item,distance=..50]

tag @e[tag=wolf.used] remove wolf.used
tag @e[tag=wolf.died] remove wolf.died

tag @a remove wolf.acting
tag @a remove wolf.protected
tag @a remove wolf.killed
tag @a remove wolf.fired
tag @a remove wolf.lastprotected
tag @a remove wolf.acting