playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute if score bw.custom_team board matches 1 run tellraw @s ["\u00a7c目前设置已禁用自定义队伍"]
execute if score bw.custom_team board matches 1 run return 0
execute as @s[tag=GOABLE.SPEC] run tellraw @s ["\u00a7c您处于旁观者模式，无法选择队伍！"]
execute as @s[tag=GOABLE.SPEC] run return 0

execute if score @s bw.team matches 2 run tellraw @s ["\u00a7b您已经加入过这个队伍了。"]
execute if score @s bw.team matches 2 run return 0

function minecraft:bedwars/before/count_sel_team_players

execute if score bw.blue.1 tick >= bw.wait.perteammax tick run tellraw @s ["\u00a7c您无法加入此队伍：队伍已满。"]
execute if score bw.blue.1 tick >= bw.wait.perteammax tick run return 0

scoreboard players set @s bw.team 2
tellraw @s ["\u00a7b您加入了\u00a79蓝队"]

execute if score bw.state state matches -3..0 run title @s actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a79蓝队"]
