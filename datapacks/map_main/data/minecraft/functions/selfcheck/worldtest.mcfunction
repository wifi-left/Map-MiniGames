##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in airworld run forceload add 1 0 1 0
execute in airworld run setblock 1 -64 0 air
execute in airworld run setblock 1 -64 0 diamond_block
execute in airworld if block 1 -64 0 diamond_block run say §a [√] 支持多世界
execute in airworld unless block 1 -64 0 diamond_block run say §c [×] 不支持多世界。请使用原版/Fabric/Forge服务端。§6§l请不要添加修改原版命令的Mod、插件！
execute in airworld unless block 1 -64 0 diamond_block run scoreboard players add syserror board 1
execute in airworld run forceload remove 1 0 1 0

function selfcheck/check_random
