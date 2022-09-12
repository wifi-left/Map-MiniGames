tag @a[limit=1,sort=random] add check.sel
execute store result score check.tmp board run clear @a paper{testfor:1b}
execute if score check.tmp board matches 1.. run say §a [√] /give 命令未受影响
execute unless score check.tmp board matches 1.. run say §c [×] /give 命令受到影响。§6解决方法：如果服务器无人，请等待服务器有人后重新执行检查命令；请删除 ESS 等修改指令的游戏插件。
execute unless score check.tmp board matches 1.. run scoreboard players add syserror board 1
tag @a remove check.sel
function selfcheck/worldtest