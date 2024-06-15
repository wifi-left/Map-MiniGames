##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute run tellraw @a ["\u00a7b [SYS] 地图自检信息："]
say §b [SYS] 地图自检信息：
function version/version1
function minecraft:version/gamev
playsound entity.experience_orb.pickup player @s ~ ~ ~ 2 1 1
scoreboard players set syserror board 0
setblock 31 17 -10 air
setblock 31 15 -10 air
execute run tellraw @a ["\u00a78\u00a7o 检查是否支持命令方块中..."]
setblock 31 15 -10 command_block{Command:"/setblock 31 17 -10 redstone_block",auto:1b} replace
schedule function selfcheck/cmd 1s replace
