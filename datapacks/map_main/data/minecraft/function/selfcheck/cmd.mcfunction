##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if block 31 17 -10 redstone_block run say §a [√] 支持命令方块

execute unless block 31 17 -10 redstone_block run say §c [×] 不支持命令方块。解决方法：在服务器设置中启用命令方块。
execute unless block 31 17 -10 redstone_block run scoreboard players add syserror board 1
function selfcheck/give
function selfcheck/next

