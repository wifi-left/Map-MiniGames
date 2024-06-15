##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set debug board 0
execute if entity @a[team=lobby] run scoreboard players set debug board 1
team join selfcheck.debug @a[team=lobby]
execute if entity @a[team=selfcheck.debug] run say §a [√] /team 命令未受影响
execute unless entity @a[team=selfcheck.debug] if score debug board matches 0 run say §e [-] /team 命令暂时无法检测：服务器大厅无人。§6解决办法：请在服务器大厅有人时测试。
execute unless entity @a[team=selfcheck.debug] if score debug board matches 1 run say §c [×] /team 命令受到影响。§6解决方法：§c请勿使用 Paper服务端，已知会出现问题（尤其是和某个皮肤补丁一起用）；§6请删除 ESS 等修改指令的游戏插件。
execute unless entity @a[team=selfcheck.debug] if score debug board matches 1 run scoreboard players add syserror board 1
tag @a remove check.sel
function selfcheck/worldtest

team join lobby @a[team=selfcheck.debug]
