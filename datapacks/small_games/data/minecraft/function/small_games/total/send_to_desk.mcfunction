execute if score desk.state state matches 1.. run tellraw @s ["\u00a7c无法在桌游开始时启动此游戏：它们是冲突的。"]
execute if score desk.state state matches 1.. run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
execute if score desk.state state matches 1.. run return fail

scoreboard players set desk.type board 3
execute as @a[team=wait.total] run function desk/join

execute if score desk.type board matches 3 run data modify block 66 6 42 front_text.messages[1] set value "\u00a7b\u00a7l[商贾传奇]"

function desk/trystart