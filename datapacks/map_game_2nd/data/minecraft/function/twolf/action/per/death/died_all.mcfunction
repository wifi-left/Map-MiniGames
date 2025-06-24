##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

gamemode spectator
team join wait.wolfpeople
scoreboard players add wolf.deathcount board 1
tellraw @s ["§c你死了\n§b你已进入等待队列。为保证游戏体验，请使用 §6/tm <消息>§b 在旁观玩家中交流"]

# tellraw @s ["\u00a7c你死了"]
# execute at @s run tp @s ~ -20 ~
tag @s remove wolf.sell

tag @s remove wolf.protected
tag @s remove wolf.killed
tag @s remove wolf.fired
tag @s remove wolf.rescued
tag @s remove wolf.poisoned
tag @s remove wolf.lastprotected
tag @s remove wolf.acting
execute as @s[tag=wolf.connected] run function minecraft:twolf/action/per/death/died_cupid

tag @s remove wolf.connected

